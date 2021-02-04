//
//  ios_login_dbauthApp.swift
//  ios-login-dbauth
//
//  Created by andronick martusheff on 2/3/21.
//

import SwiftUI
import Firebase

@main
struct ios_login_dbauthApp: App {
    @UIApplicationDelegateAdaptor(Delegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

// initializing...
class Delegate: NSObject, UIApplicationDelegate{
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey:Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
    
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        // needed for phone auth
    }
}
