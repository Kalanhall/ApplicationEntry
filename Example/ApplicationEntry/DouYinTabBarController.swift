//
//  DouYinTabBarController.swift
//  ApplicationEntry_Example
//
//  Created by Kalan on 2020/9/15.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import ApplicationEntry

class DouYinTabBarController: UITabBarController {
    
    var selectedItem: HotBtn? = nil
    
    lazy var animatedView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        view.isUserInteractionEnabled = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let vc1 = UINavigationController(rootViewController: DemoViewController(), title: nil, image: nil, selectedImage: nil)
        let vc2 = UINavigationController(rootViewController: DemoImageViewController(), title: nil, image: nil, selectedImage: nil)
        let vc3 = UINavigationController(rootViewController: UIViewController(), title: nil, image: nil, selectedImage: nil)
        let vc4 = UINavigationController(rootViewController: DemoViewController(), title: nil, image: nil, selectedImage: nil)
        let vc5 = UINavigationController(rootViewController: DemoImageViewController(), title: nil, image: nil, selectedImage: nil)
        self.viewControllers = [vc1, vc2, vc3, vc4, vc5]
        
        /***********************    配置开始  ***********************/
        barAppearance(attributes: [
            TabAppearanceType
            .backgroundImage: extension_imageWith(UIColor.clear, size: CGSize(width: 1, height: 1))!
        ])
        
        // 动画自定义背景
        animatedView = overlayTabBarBackgroundView()
        animatedView.backgroundColor = UIColor.black
        // 特殊按钮
        let titles: [String] = ["首页", "朋友", "", "消息", "我"]
        let items = overlayItems(titles: titles)
        overlayTabBarItems(items!, systemItemEndable: false)
        /***********************    配置结束  ***********************/
    }
    
    @objc func itemSelected(_ item: HotBtn) {
        if item.tag == 2 {
            print("抖音")
        } else {
            selectedIndex = item.tag
            UIView.animate(withDuration: 0.25, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0.1, options: .curveEaseInOut, animations: {
                self.selectedItem?.transform = CGAffineTransform.identity
                item.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            }, completion: nil)
            selectedItem?.isSelected = false
            item.isSelected = true
            selectedItem = item
            
            // 背景透明处理
            UIView.animate(withDuration: 0.25) {
                if item.tag == 1 || item.tag == 4 {
                    self.animatedView.alpha = 0
                } else {
                    self.animatedView.alpha = 1
                }
            }
        }
    }
    
    func overlayItems(titles: [String]) -> [UIView]? {
        guard titles.count > 0 else {
            return nil
        }
        var items = [HotBtn]()
        for index in 0 ..< titles.count {
            let name = titles[index]
            let item = HotBtn(type: .custom)
            item.setTitle(name, for: .normal)
            item.titleLabel?.font = .systemFont(ofSize: 14)
            item.setTitleColor(.lightGray, for: .normal)
            item.setTitleColor(.white, for: .selected)
            item.addTarget(self, action: #selector(itemSelected), for: .touchUpInside)
            items.append(item)
            if index == 0 {
                selectedItem = item
                itemSelected(selectedItem!)
            } else if index == 2 {
                item.setImage(UIImage(named: "douyin"), for: .normal)
            }
        }
        return items
    }
}
