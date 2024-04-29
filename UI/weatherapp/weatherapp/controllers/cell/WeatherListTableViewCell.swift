//
//  WeatherListTableViewCell.swift
//  weatherapp
//
//  Created by ustadev.uz on 01/02/24.
//

import UIKit

class WeatherListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cityNameLabel:UILabel!
    @IBOutlet weak var tempuratureLabel:UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

  
    func setData(data:WeatherData){
//        cityNameLabel.text = data.name
//        tempuratureLabel.text = "\(data.main?.temp ?? 0.0)"
    }
}
