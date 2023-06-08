
import UIKit
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // Enabled App Center SDK verbose logs
        AppCenter.logLevel = .verbose
        
        AppCenter.start(withAppSecret: "2a6b26aa-beae-42a3-af49-24aca441ad60", services: [
            Analytics.self,
            Crashes.self,
        ])
        
        return true
    }
}
