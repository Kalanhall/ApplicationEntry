//
//  WeiBoTabBarController.swift
//  ApplicationEntry_Example
//
//  Created by Kalan on 2020/9/15.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import ApplicationEntry

class WeiBoTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1 = UINavigationController(rootViewController: DemoViewController(), title: nil,
                                         image: UIImage(named: "wb-home")?.withRenderingMode(.alwaysOriginal),
                                         selectedImage: UIImage(named: "wb-home-s")?.withRenderingMode(.alwaysOriginal))
        let vc2 = UINavigationController(rootViewController: DemoViewController(), title: nil,
                                         image: UIImage(named: "wb-video")?.withRenderingMode(.alwaysOriginal),
                                         selectedImage: UIImage(named: "wb-video-s")?.withRenderingMode(.alwaysOriginal))
        let vc3 = UINavigationController(rootViewController: DemoViewController(), title: nil,
                                         image: UIImage(named: "wb-faxian")?.withRenderingMode(.alwaysOriginal),
                                         selectedImage: UIImage(named: "wb-faxian-s")?.withRenderingMode(.alwaysOriginal))
        let vc4 = UINavigationController(rootViewController: DemoViewController(), title: nil,
                                         image: UIImage(named: "wb-msg")?.withRenderingMode(.alwaysOriginal),
                                         selectedImage: UIImage(named: "wb-msg-s")?.withRenderingMode(.alwaysOriginal))
        let vc5 = UINavigationController(rootViewController: DemoViewController(), title: nil,
                                         image: UIImage(named: "wb-user")?.withRenderingMode(.alwaysOriginal),
                                         selectedImage: UIImage(named: "wb-user-s")?.withRenderingMode(.alwaysOriginal))
        self.viewControllers = [vc1, vc2, vc3, vc4, vc5]
        
        /***********************    配置开始  ***********************/
        // 自定义TabBar
        barAppearance(attributes: [
            TabAppearanceType
            .imageInsets: UIEdgeInsets(top: 4, left: 0, bottom: -4, right: 0),
            .shadowImage: extension_imageWith(UIColor.clear, size: CGSize(width: 0.5, height: 0.5))!,
            .backgroundImage: extension_imageWith(UIColor.white.withAlphaComponent(0.8), size: CGSize(width: 1, height: 1))!
        ])
        /***********************    配置结束  ***********************/
    }

}
