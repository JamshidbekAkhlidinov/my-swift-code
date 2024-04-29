//
//  ThreeViewController.swift
//  TabBar
//
//  Created by ustadev.uz on 16/04/24.
//

import UIKit

class ThreeViewController: UIViewController {

    @IBOutlet var table: UITableView!
    
    var myData = [
        "Jamshidbek",
        "Sardor",
        "Burxon",
        "Valisher",
        "Shahzodbek",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
    }

}

extension ThreeViewController:UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Tab \(myData[indexPath.row])")
    }
}

extension ThreeViewController: UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = myData[indexPath.row]
        return cell
    }
    
    
}
