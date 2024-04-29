//
//  CheckListTableViewController.swift
//  ToDoApp
//
//  Created by ustadev.uz on 05/03/24.
//

import UIKit

class CheckListTableViewController: UITableViewController,ItemDetailTableViewControllerDelegate {

    
    var listOfCheckList = [
        CheckListItem(name: "One", checked: false),
        CheckListItem(name: "Two", checked: true),
        CheckListItem(name: "Three", checked: false),
        CheckListItem(name: "Four", checked: false),
        CheckListItem(name: "Five", checked: false),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listOfCheckList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "checkListItem", for: indexPath)
                
        let item = listOfCheckList[indexPath.row]
       
        configurateText(for: cell, with: item)
        configurateCheckMark(for: cell, with: item)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let cell = tableView.cellForRow(at: indexPath){
            let item  =  listOfCheckList[indexPath.row]
            //item.checked = !item.checked
            item.checked.toggle()

            configurateCheckMark(for: cell, with: item)
           
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    @IBAction func addItem(text:String){
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addItemVide"{
            let controller = segue.destination as! ItemDetailViewController
            controller.delegate = self
        }else if segue.identifier=="editItemView"{
            let controller = segue.destination as! ItemDetailViewController
            controller.delegate = self
            if let indexPath = tableView.indexPath(for: sender as! UITableViewCell){
                controller.itemToEdit = listOfCheckList[indexPath.row]
            }
        }
    }
    
    func addItemVCDone(_ vc: ItemDetailViewController, didFinishAdding item: CheckListItem) {
        let newRowIndex = listOfCheckList.count
                
        listOfCheckList.append(item)
        
        let indexPath = IndexPath(row: newRowIndex, section: 0)
        
        let indexPaths = [indexPath]
        
        tableView.insertRows(at: indexPaths, with: .automatic)
        navigationController?.popViewController(animated: true)
    }
    
    
    func addItemVCDone(_ vc: ItemDetailViewController, didFinishEditing item: CheckListItem) {
        if let index  = listOfCheckList.firstIndex(of: item){
            let indexPath = IndexPath(row: index, section: 0)
            if let cell = tableView.cellForRow(at: indexPath){
                configurateText(for: cell, with: item)
            }
        }
        navigationController?.popViewController(animated: true)
    }
    
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        listOfCheckList.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .automatic)
    }
    
    
    func configurateText(for cell:UITableViewCell, with item:CheckListItem){
        let label = cell.viewWithTag(1000) as! UILabel
        label.text  = item.name
    }
    func configurateCheckMark(for cell:UITableViewCell, with item:CheckListItem){
        let checkLabel = cell.viewWithTag(1001) as! UILabel

        if item.checked {
            checkLabel.text =  "✅"
        }else{
            checkLabel.text =  ""
        }
    }
    
}
