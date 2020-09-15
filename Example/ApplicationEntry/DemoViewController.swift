//
//  DemoViewController.swift
//  ApplicationEntry_Example
//
//  Created by Kalan on 2020/9/14.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

class DemoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.black
        
        let back = UIButton(type: .custom)
        back.titleLabel?.font = UIFont(name: "MarkerFelt-Thin", size: 30)
        back.setTitle("No.\(arc4random_uniform(100)) Back", for: .normal)
        back.setTitleColor(.purple, for: .normal)
        back.frame = CGRect(x: 0, y: 0, width: view.bounds.size.width, height: 60)
        back.center = view.center
        back.addTarget(self, action: #selector(backtoview), for: .touchUpInside)
        view.addSubview(back)
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }

    @objc func backtoview() {
        tabBarController?.navigationController?.popViewController(animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let vc = DemoViewController()
        vc.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(vc, animated: true)
    }
}
