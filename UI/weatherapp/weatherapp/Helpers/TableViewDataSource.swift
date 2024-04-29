//
//  TableViewDataSource.swift
//  weatherapp
//
//  Created by ustadev.uz on 16/02/24.
//

import UIKit

class TableViewDataSource<CellType,Data>:NSObject, UITableViewDataSource where CellType: UITableViewCell {
    
    let cellIdentifier:String
    var items:[Data]
    let configurationCell: (CellType,Data) -> ()
    
    init(cellIdentifier: String, items: [Data], configurationCell: @escaping (CellType, Data) -> ()) {
        self.cellIdentifier = cellIdentifier
        self.items = items
        self.configurationCell = configurationCell
    }
    
    func updateItems(_ items:[Data]){
        self.items = items
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? CellType else {
            fatalError("Cell type not found")
        }
        
        return cell
    }

}
