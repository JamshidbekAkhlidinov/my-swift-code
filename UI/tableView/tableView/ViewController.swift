//
//  ViewController.swift
//  tableView
//
//  Created by ustadev.uz on 14/01/24.
//

import UIKit

class ViewController: UIViewController {

    var names:[String] = ["Joxa","Joma","Alex","Dilmurod","Poli","Molli"]
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
}

extension ViewController:UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        
        return cell;
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        return UISwipeActionsConfiguration(actions: [deleteItem(formAt: indexPath),updateItem(formAt:1, newPosition: 3)])
    }
    
    func deleteItem(formAt indexPath:IndexPath) -> UIContextualAction {
        return UIContextualAction(style: .destructive, title: "O'chirish") { action, swipeButtonView, compation in
            compation(true)
            self.names.remove(at: indexPath.row)
            self.tableView.reloadData()
        }
    }
    
    func updateItem(formAt indexPath:Int, newPosition:Int) ->UIContextualAction {
        return UIContextualAction(style: .normal, title: "Taxrirlash") { action, swipeButtonView, compation in
            compation(true)
            var oldText = self.names.remove(at: indexPath)
            self.names.insert(oldText, at: newPosition)
            self.tableView.reloadData()
        }
    }
    
}

