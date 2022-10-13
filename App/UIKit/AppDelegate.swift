//
//  AppDelegate.swift
//  App
//
//  Created by even.gabrielsen@vipps.no on 13/10/2022.
//

import UIKit

class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let initialViewController = storyboard.instantiateInitialViewController() // Or create programmatically.

        window.rootViewController = initialViewController
        window.makeKeyAndVisible()
        self.window = window

        return true
    }
}
