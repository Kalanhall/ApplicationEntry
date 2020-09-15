//
//  XianYuTabBarController.swift
//  ApplicationEntry_Example
//
//  Created by Kalan on 2020/9/14.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import ApplicationEntry

class XianYuTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1 = UINavigationController(rootViewController: DemoViewController(), title: "主页", image: UIImage(named: "tab0-n")?.withRenderingMode(.alwaysOriginal),
                                         selectedImage: UIImage(named: "tab0-s")?.withRenderingMode(.alwaysOriginal))
        let vc2 = UINavigationController(rootViewController: DemoViewController(), title: "友圈", image: UIImage(named: "tab1-n")?.withRenderingMode(.alwaysOriginal),
                                         selectedImage: UIImage(named: "tab1-s")?.withRenderingMode(.alwaysOriginal))
        let vc3 = UINavigationController(rootViewController: UIViewController(), title: "发布", image: UIImage(named: "fish")?.withRenderingMode(.alwaysOriginal),
                                         selectedImage: UIImage(named: "fish")?.withRenderingMode(.alwaysOriginal))
        let vc4 = UINavigationController(rootViewController: DemoViewController(), title: "消息", image: UIImage(named: "tab3-n")?.withRenderingMode(.alwaysOriginal),
                                         selectedImage: UIImage(named: "tab3-s")?.withRenderingMode(.alwaysOriginal))
        let vc5 = UINavigationController(rootViewController: DemoViewController(), title: "会员", image: UIImage(named: "tab4-n")?.withRenderingMode(.alwaysOriginal),
                                         selectedImage: UIImage(named: "tab4-s")?.withRenderingMode(.alwaysOriginal))
        self.viewControllers = [vc1, vc2, vc3, vc4, vc5]
        
        /***********************    配置开始  ***********************/
        // 自定义TabBar
        barAppearance(attributes: [
            TabAppearanceType
            .titleTextAttributes: [([NSAttributedString.Key.font: UIFont.systemFont(ofSize: 11)], UIControl.State.normal),
                                    ([NSAttributedString.Key.foregroundColor: UIColor.black], .normal),
                                    ([NSAttributedString.Key.foregroundColor: UIColor.black], .selected)],
            .titlePositionAdjustment: UIOffset(horizontal: 0, vertical: -3),
            .imageInsets: (UIEdgeInsets(top: -3, left: 0, bottom: 3, right: 0), UIEdgeInsets(top: -15, left: 0, bottom: 15, right: 0), [2]), // 中间按钮图片调整
            .shadowImage: extension_imageWith(UIColor.clear, size: CGSize(width: 0.5, height: 0.5))!,
            .backgroundImage: extension_imageWith(UIColor.white, size: CGSize(width: 1, height: 1))!
        ])

        let item = HotBtn(type: .custom)
        item.addTarget(self, action: #selector(itemSelected), for: .touchUpInside)
        overlayTabBarItem(item, index: 2, height: 74)
        /***********************    配置结束  ***********************/
    }
    
    @objc func itemSelected(_ item: HotBtn) {
        print("发布")
    }

}
