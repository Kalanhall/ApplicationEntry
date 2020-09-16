//
//  JingDongTabBarController.swift
//  ApplicationEntry_Example
//
//  Created by Kalan on 2020/9/15.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import ApplicationEntry
import Lottie

class JingDongTabBarController: UITabBarController {
    
    var currentItem: AnimationView?
    var overlayItems: [AnimationView]?

    override func viewDidLoad() {
        super.viewDidLoad()

        let vc1 = UINavigationController(rootViewController: DemoViewController(), title: nil, image: nil, selectedImage: nil)
        let vc2 = UINavigationController(rootViewController: DemoViewController(), title: nil, image: nil, selectedImage: nil)
        let vc3 = UINavigationController(rootViewController: DemoViewController(), title: nil, image: nil, selectedImage: nil)
        let vc4 = UINavigationController(rootViewController: DemoViewController(), title: nil, image: nil, selectedImage: nil)
        let vc5 = UINavigationController(rootViewController: DemoViewController(), title: nil, image: nil, selectedImage: nil)
        self.viewControllers = [vc1, vc2, vc3, vc4, vc5]
        
        /***********************    配置开始  ***********************/
        barAppearance(attributes: [
            TabAppearanceType
            .backgroundImage: extension_imageWith(.white, size: CGSize(width: 1, height: 1))!
        ])
        
        let jsons: [String] = ["home", "category", "discover", "cart", "user"]
        overlayItems = overlayItems(jsons: jsons)
        guard overlayItems != nil else {
            return
        }
        overlayTabBarItems(overlayItems!, systemItemEndable: false)
        /***********************    配置结束  ***********************/
    }
    
    func overlayItems(jsons: [String]) -> [AnimationView]? {
        guard jsons.count > 0 else {
            return nil
        }
        var items = [AnimationView]()
        for index in 0 ..< jsons.count {
            let name = jsons[index]
            let animation = Animation.named(name, subdirectory: "Animations")
            let item = AnimationView()
            item.animation = animation
            item.isUserInteractionEnabled = false
            items.append(item)
            if index == 0 {
                currentItem = item
                currentItem?.play()
            }
        }
        return items
    }

    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        guard let index = tabBar.items?.firstIndex(of: item) else { return }
        if index == selectedIndex {
            print("Double Touch Refresh.")
        }
        let item = overlayItems?[index]
        currentItem?.stop()
        item?.play()
        currentItem = item
    }
}
