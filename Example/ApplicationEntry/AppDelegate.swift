//
//  AppDelegate.swift
//  ApplicationEntry
//
//  Created by kalanhall@163.com on 09/12/2020.
//  Copyright (c) 2020 kalanhall@163.com. All rights reserved.
//

import UIKit
import ApplicationEntry

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var selectedItem: HotBtn? = nil

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        window?.rootViewController = UINavigationController(rootViewController: ViewController())
        window?.makeKeyAndVisible()
        
        UINavigationController.barAppearance(attributes: [
            NavAppearanceType
            .tincolor: UIColor.purple,
            .barTincolor: UIColor.white,
            .backIndicatorImage : UIImage(named: "back")!,
            .titleTextAttributes: [NSAttributedString.Key.font: UIFont(name: "MarkerFelt-Thin", size: 30),
                                   NSAttributedString.Key.foregroundColor: UIColor.purple],
            .barItemTextAttributes: [([NSAttributedString.Key.foregroundColor: UIColor.clear], UIControl.State.normal),
                                     ([NSAttributedString.Key.foregroundColor: UIColor.clear], .highlighted)]
        ])
        
        return true
    }
}

extension NSObject {
    func extension_imageWith(_ color: UIColor, size: CGSize) -> UIImage? {
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()!
        context.setFillColor(color.cgColor)
        context.fill(rect)
        let theImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext();
        return theImage
    }
}
