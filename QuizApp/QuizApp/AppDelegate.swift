//
//  AppDelegate.swift
//  QuizApp
//
//  Created by Nivardo Ibarra Florencio on 5/11/17.
//  Copyright © 2017 nivardoibarra.com. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
//        let window = UIWindow(frame: UIScreen.main.bounds)
//        let viewController = QuestionViewController(question: "A question", options: ["option 1", "option 2"]) {
//            print($0)
//        }
//        _ = viewController.view
//        viewController.tableView.allowsMultipleSelection = false //true
//        window.rootViewController = viewController
//        self.window = window
//        window.makeKeyAndVisible()
        let viewController = ResultsViewController(summary: "You got 1/2 correct", answers: [
            PresentableAnswer(question: "Question blabla...blabla...blabla...blabla...blabla...blabla...blabla...blabla...???", answer: "Yeah ..... blabla...blabla...blabla...blabla...blabla...blabla...", wrongAnswer: nil),
            PresentableAnswer(question: "Another Question???", answer: "Hello Yeah", wrongAnswer: "Hello No!!!!")])
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = viewController
        self.window = window
        window.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

