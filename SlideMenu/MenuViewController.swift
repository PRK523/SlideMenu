//
//  MenuViewController.swift
//  SlideMenu
//
//  Created by Pranoti Kulkarni on 5/24/18.
//  Copyright © 2018 Pranoti Kulkarni. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var menu_tableView: UITableView!
    
    let title_arr = ["Home", "Settings", "Privacy", "Contact Us"]
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return title_arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = menu_tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.tag = indexPath.row
        cell.textLabel?.text = title_arr[indexPath.row]
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menu_tableView.delegate = self
        menu_tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
