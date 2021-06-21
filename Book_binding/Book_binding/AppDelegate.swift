//
//  AppDelegate.swift
//  Book_binding
//
//  Created by Светлана Люкина on 25.05.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //указываем ViewController для отображения
        let viewController = BookPageViewController()
            //QuotesViewController()
            //BooksViewController() //CollectionViewController()
        //CollectionBookViewController()
        //AllBooksViewController()
        
       
        window = UIWindow()
        window?.rootViewController = viewController
        window?.makeKeyAndVisible() //пользователь взаимодействует с этим окном
        
        return true
    }

}

