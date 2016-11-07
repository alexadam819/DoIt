//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Alex Adam on 11/5/16.
//  Copyright © 2016 Alex Adam. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var taskNameText: UITextField!
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTask(_ sender: AnyObject) {
        // Create a Task from the outlet information
        let task = Task()
        task.name = taskNameText.text!
        task.important = importantSwitch.isOn
        
        // Add new task to array in previous viewController

        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        
        navigationController!.popViewController(animated: true)
    }
    
    

}
