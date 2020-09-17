//
//  FlashyTabBarController.swift
//  ApplicationEntry_Example
//
//  Created by Kalan on 2020/9/17.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import ApplicationEntry

class CustomTabBarController: FlashyTabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        FlashyTabBar.appearance().tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        FlashyTabBar.appearance().barTintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.barHeight = 49
//        self.hasDotView = false
//        self.imageTintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        let vc1 = UINavigationController(rootViewController: DemoViewController(), title: "首页", image: UIImage(named: "tab0-s"), selectedImage: nil)
        let vc2 = UINavigationController(rootViewController: DemoViewController(), title: "发现", image: UIImage(named: "tab1-s"), selectedImage: nil)
        let vc3 = UINavigationController(rootViewController: DemoViewController(), title: "消息", image: UIImage(named: "tab3-s"), selectedImage: nil)
        let vc4 = UINavigationController(rootViewController: DemoViewController(), title: "会员", image: UIImage(named: "tab4-s"), selectedImage: nil)
        viewControllers = [vc1, vc2, vc3, vc4]
    }
    
}
