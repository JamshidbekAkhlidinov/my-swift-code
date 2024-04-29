//
//  checkListItem.swift
//  ToDoApp
//
//  Created by ustadev.uz on 06/03/24.
//

import Foundation


class CheckListItem:NSObject {
    var name:String
    var checked:Bool
    
    init(name: String, checked: Bool) {
        self.name = name
        self.checked = checked
    }
}
