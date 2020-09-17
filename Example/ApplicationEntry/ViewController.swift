//
//  ViewController.swift
//  ApplicationEntry
//
//  Created by kalanhall@163.com on 09/12/2020.
//  Copyright (c) 2020 kalanhall@163.com. All rights reserved.
//

import UIKit
import ApplicationEntry

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    lazy var tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.delegate = self
        table.dataSource = self
        table.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.description())
        return table
    }()
    
    lazy var titles: [[String]] = {
        return [["System", "System 1", "System 2"], ["XianYu", "Hot Book", "JingDong", "WeiBo", "DouYin"], ["Flashy"]]
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.navigationItem.title = "TabBar Style"
        
        tableView.frame = view.bounds
        view.addSubview(tableView)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return titles.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.description())
        cell?.accessoryType = .disclosureIndicator
        cell?.textLabel?.text = titles[indexPath.section][indexPath.row]
        cell?.textLabel?.font = UIFont(name: "MarkerFelt-Thin", size: 30)
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        if indexPath.section == 0 {
            switch indexPath.row {
            case 0:
                navigationController?.pushViewController(SystemTabBarController(), animated: true)
            case 1:
                navigationController?.pushViewController(System1TabBarController(), animated: true)
            case 2:
                navigationController?.pushViewController(System2TabBarController(), animated: true)
            default:
                break
            }
        } else if (indexPath.section == 1) {
            switch indexPath.row {
            case 0:
                navigationController?.pushViewController(XianYuTabBarController(), animated: true)
            case 1:
                navigationController?.pushViewController(HotBookTabBarController(), animated: true)
            case 2:
                navigationController?.pushViewController(JingDongTabBarController(), animated: true)
            case 3:
                navigationController?.pushViewController(WeiBoTabBarController(), animated: true)
            case 4:
                navigationController?.pushViewController(DouYinTabBarController(), animated: true)
            default:
                break
            }
        } else {
            navigationController?.pushViewController(CustomTabBarController(), animated: true)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
}

