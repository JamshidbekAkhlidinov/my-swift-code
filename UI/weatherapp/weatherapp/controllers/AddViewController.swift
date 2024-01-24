//
//  AddViewController.swift
//  weatherapp
//
//  Created by ustadev.uz on 24/01/24.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var cityNameInput: UITextField!
    private let networkingManager = NetworkingManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveCityName(_ sender: UIButton) {
        
        guard let cityName = cityNameInput.text, !cityName.isEmpty else {
            return
        }
        
        networkingManager.getWeatherData(cityName) { data in
            print(data ?? "test")
        }
        
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
