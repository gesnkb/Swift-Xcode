//
//  TasksViewController.swift
//  Tasks
//
//  Created by Scott Sanders on 4/8/21.
//

import UIKit

class TasksViewController: UIViewController {

    @IBOutlet weak var tasksTableView: UITableView!
    
    let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dateFormatter.timeStyle = .long
        dateFormatter.dateStyle = .long
    }
    
    @IBAction func addNewTask(_ sender: Any) {
        performSegue(withIdentifier: "showTask", sender: self)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
