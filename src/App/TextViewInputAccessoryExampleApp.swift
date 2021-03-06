import UIKit

@UIApplicationMain
class TextViewInputAccessoryExampleApp: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = UINavigationController(rootViewController: TextViewController())
        self.window = window
        window.makeKeyAndVisible()

        return true
    }

}
