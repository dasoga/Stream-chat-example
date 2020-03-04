//
//  AppDelegate.swift
//  JoyLabs-Chat
//
//  Created by Dante Solorio on 02/03/20.
//  Copyright © 2020 Dasoga. All rights reserved.
//

import UIKit
import StreamChat
import StreamChatCore

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        Client.config = .init(apiKey: "b67pax5b2wdq", logOptions: .info)
        Client.shared.set(user: User(id: "rapid-mud-4",
                                      name: "Rapid mud"),
                          token: "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoicmFwaWQtbXVkLTQifQ.kcIOil5wrWcNGcLa_G977XgZv17rx1-_isB2SH63N3Y")
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

