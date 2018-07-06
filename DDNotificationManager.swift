//
//  DDNotificationManager.swift
//  COpenSSL
//
//  Created by WY on 2018/6/12.
//

import PerfectNotifications
private let appBoundleId = "com.16lao.yibatong"// "com.16lao.ylmedia"//
private let apnsKeyIdentifier = "PT5BWBT27N"
private let apnsTeamIdentifier = "EY693LHB6N"
//private let apnsPrivateKeyFilePath = "/Users/wy/Documents/vapor/TestApns/AuthKey_PT5BWBT27N.p8"//相对于推送授权文件的路径
private let apnsPrivateKeyFilePath = "/Users/wy/MySource/project/githubProject/web/vapor/TestApns/AuthKey_PT5BWBT27N.p8"
open class DDNotificationManager {
    static let share : DDNotificationManager = {
        let instence = DDNotificationManager()
        instence.configrationNotification()
        return instence
    }()
    func pushNotification(deviceIDs:[String]){
        performPush(deviceIDS:deviceIDs)
    }
}









extension DDNotificationManager{
    private func performPush(deviceIDS:[String]? = nil){
        guard let deviceIds = deviceIDS else {
            return
        }
        let n = NotificationPusher(apnsTopic: appBoundleId)
        n.pushAPNS(
            configurationName: appBoundleId,
            deviceTokens: deviceIds,
            notificationItems: [.alertBody("this is for you"),.alertTitle("alertTitle"),.badge(99999),.category("category"), .sound("default")]) {
                responses in
                print("push result : \(responses)")
        }
    }
    private func configrationNotification(){
        NotificationPusher.addConfigurationAPNS(
            name: appBoundleId,
            production: false, // 如果是调试程序，则将这个生产服务器标志设置为“伪”
            keyId: apnsKeyIdentifier,
            teamId: apnsTeamIdentifier,
            privateKeyPath: apnsPrivateKeyFilePath
        )
    }
}
