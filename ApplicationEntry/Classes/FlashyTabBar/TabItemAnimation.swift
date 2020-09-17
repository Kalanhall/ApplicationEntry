//
//  TabItemAnimation.swift
//  FlashyTabBarController
//
//  Created by Anton Skopin on 28/11/2018.
//  Copyright © 2018 cuberto. All rights reserved.
//

import Foundation

protocol TabItemAnimation {

    func playAnimation(forTabBarItem item: TabBarButton)
    func playAnimation(forTabBarItem item: TabBarButton, completion: (() -> Void)?)

}

extension TabItemAnimation {

    func playAnimation(forTabBarItem item: TabBarButton) {
        playAnimation(forTabBarItem: item, completion: nil)
    }

}
