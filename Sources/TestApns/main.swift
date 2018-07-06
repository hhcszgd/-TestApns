import PerfectNotifications
import Foundation
print("entrance of this application")
let id1 = "bef9feb1de8cf0039b46d61c4ee83ac6b8dcd884529e259f4a06c8735a777434"//玉龙
let id2 = "46032539bb24a930ea172fdbea27f904b979b0327894aaa1b53b3abf703f49bf"//玉龙
let id3 = "f4b7f0bdcf84096df2a0a61a2ebf8ad747da36465b15e06c7fec92e61720133b"//一把通
let idMe = "ed262f338e951fd1d80f33dba92bc50c8b174c9b9b08705bb2d69a086d25515a"//一把通
let deviceIds: [String] = [ idMe]
DDNotificationManager.share.pushNotification(deviceIDs: deviceIds)
// 维持生命周期 , 测试用
Thread.sleep(forTimeInterval: 3)
print("application is exit")
