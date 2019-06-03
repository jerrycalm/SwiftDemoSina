//
//  MainTabBarViewController.swift
//  SinaDemo
//
//  Created by Dylan on 2019/6/3.
//  Copyright © 2019 GT. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let tabbar = UITabBar.appearance()
        
        tabbar.tintColor = UIColor(red: 245 / 255.0, green: 90 / 255.0, blue: 93 / 255.0, alpha: 1.0)
        
        addchildViewControllers()
        
    }
    
    
    func addchildViewControllers() {
        
        addChildViewController(HomeViewController(), title: "首页", imageName: "", seleImageName: "")
        
        addChildViewController(VideoViewController(), title: "视频", imageName: "", seleImageName: "")

        addChildViewController(HuosViewController(), title: "小视频", imageName: "", seleImageName: "")

        addChildViewController(MineViewController(), title: "我的", imageName: "", seleImageName: "")

        
    }
    
    func addChildViewController(_ childController: UIViewController, title: String, imageName: String, seleImageName: String) {
        
        childController.title = title
        
        childController.tabBarItem.image = UIImage(named: imageName)
        
        childController.tabBarItem.selectedImage = UIImage(named: seleImageName)
        
        let navVc = MainNavViewController.init(rootViewController: childController)
        
        addChild(navVc)
    }
    
    
    

    
    
    

    
    

}
