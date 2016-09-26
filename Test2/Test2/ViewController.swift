//
//  ViewController.swift
//  Test2
//
//  Created by Nisit Sirimarnkit on 9/25/2559 BE.
//  Copyright © 2559 Nisit Sirimarnkit. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    let tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.isScrollEnabled = false
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "tbCell")
        view.addSubview(tableView)
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
 
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tbCell", for: indexPath) as! TableViewCell
        cell.myText.text = "Hello World"
        cell.myImage.image = UIImage(named: "bk955")
        return cell
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

