//
//  DemoImageViewController.swift
//  ApplicationEntry_Example
//
//  Created by Kalan on 2020/9/15.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

class DemoImageViewController: UIViewController {
    
    var imageView: UIImageView?

    override func viewDidLoad() {
        super.viewDidLoad()

        imageView = UIImageView()
        imageView?.contentMode = .scaleAspectFill
        imageView?.image = UIImage(named: "dy_bg")
        view.addSubview(imageView!)
        imageView?.frame = view.bounds
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }

}
