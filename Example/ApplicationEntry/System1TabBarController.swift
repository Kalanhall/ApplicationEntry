//
//  System1TabBarController.swift
//  ApplicationEntry_Example
//
//  Created by Kalan on 2020/9/15.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import ApplicationEntry

class System1TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1 = UINavigationController(rootViewController: DemoViewController(), title: "主页", image: UIImage(named: "tab0-n")?.withRenderingMode(.alwaysOriginal),
                                         selectedImage: UIImage(named: "tab0-s")?.withRenderingMode(.alwaysOriginal))
        let vc2 = UINavigationController(rootViewController: DemoViewController(), title: "友圈", image: UIImage(named: "fish")?.withRenderingMode(.alwaysOriginal),
                                         selectedImage: UIImage(named: "fish")?.withRenderingMode(.alwaysOriginal))
        let vc3 = UINavigationController(rootViewController: DemoViewController(), title: "消息", image: UIImage(named: "fish")?.withRenderingMode(.alwaysOriginal),
                                         selectedImage: UIImage(named: "fish")?.withRenderingMode(.alwaysOriginal))
        let vc4 = UINavigationController(rootViewController: DemoViewController(), title: "会员", image: UIImage(named: "tab4-n")?.withRenderingMode(.alwaysOriginal),
                                         selectedImage: UIImage(named: "tab4-s")?.withRenderingMode(.alwaysOriginal))
        self.viewControllers = [vc1, vc2, vc3, vc4]
        
        /***********************    配置开始  ***********************/
        // 自定义TabBar
        barAppearance(attributes: [
            TabAppearanceType
            .titleTextAttributes: [([NSAttributedString.Key.font: UIFont.systemFont(ofSize: 11)], UIControl.State.normal),
                                   ([.foregroundColor: UIColor.black], .normal),
                                   ([.foregroundColor: UIColor.red], .selected)],
            .titlePositionAdjustment: UIOffset(horizontal: 0, vertical: -3),
            .imageInsets: (UIEdgeInsets(top: -2, left: 0, bottom: 2, right: 0),             // 默认布局
                           UIEdgeInsets(top: -17, left: 0, bottom: 17, right: 0), [1, 2]),  // 1，2特殊布局
            .shadowImage: extension_imageWith(UIColor.clear, size: CGSize(width: 0.5, height: 0.5))!,
            .backgroundImage: extension_imageWith(UIColor.white, size: CGSize(width: 1, height: 1))!
        ])

        tabBar.layer.shadowColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1).cgColor
        tabBar.layer.shadowOffset = CGSize(width: 0, height: -1)
        tabBar.layer.shadowOpacity = 0.5
        /***********************    配置结束  ***********************/
    }

}
