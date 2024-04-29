//
//  SecountViewController.swift
//  TabBar
//
//  Created by ustadev.uz on 16/04/24.
//

import UIKit

class SecountViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var myList = [
        "jamshidbek",
        "burxon",
        "valisher",
        "azizbek",
        "Shahzodbek"
    ]
    
    var colorList = [
        UIColor.red,
        UIColor.blue,
        UIColor.yellow,
        UIColor.lightGray,
        UIColor.cyan
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "DemoTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "DemoTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "DemoTableViewCell", for: indexPath) as! DemoTableViewCell
        //cell.textLabel?.text = myList[indexPath.row]
        cell.labelCell.text =  "TEST:" + myList[indexPath.row]
        cell.button.titleLabel?.text = myList[indexPath.row]

        //cell.imageCell.backgroundColor = .red
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(myList[indexPath.row] + " tapped");
    }
}
