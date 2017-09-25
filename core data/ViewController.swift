//
//  ViewController.swift
//  core data
//
//  Created by subinNew on 9/25/17.
//  Copyright © 2017 Lithin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
        @IBOutlet var addname: UIBarButtonItem!

        @IBAction func abname(_ sender: UIBarButtonItem) {
                
                
                
        }
        @IBOutlet var tableview: UITableView!
        var names: [String] = []
        override func viewDidLoad() {
                super.viewDidLoad()
                tableview.delegate=self as? UITableViewDelegate
                tableview.dataSource=self as? UITableViewDataSource
                // Do any additional setup after loading the view, typically from a nib.
                title = "The List"
                tableview.register(UITableViewCell.self,
                                   forCellReuseIdentifier: "Cell")
        }

        override func didReceiveMemoryWarning() {
                super.didReceiveMemoryWarning()
                // Dispose of any resources that can be recreated.
        }

        
                func tableView(_ tableView: UITableView,
                               numberOfRowsInSection section: Int) -> Int {
                        return names.count
                }
                
                func tableView(_ tableView: UITableView,
                               cellForRowAt indexPath: IndexPath)
                        -> UITableViewCell {
                                
                                let cell =
                                        tableView.dequeueReusableCell(withIdentifier: "Cell",
                                                                      for: indexPath)
                                cell.textLabel?.text = names[indexPath.row]
                                return cell
                }
        }

