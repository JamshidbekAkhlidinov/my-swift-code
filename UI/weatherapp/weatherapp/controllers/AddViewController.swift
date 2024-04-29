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
    lazy var delegate:AddWeatherDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveCityName(_ sender: UIButton) {
        
        guard let cityName = cityNameInput.text, !cityName.isEmpty else {
            return
        }
        
        let apiKey:String = "a421f18853f3f97ef6b102c067a39a4e"
        
        guard let weatherUrl = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(cityName)&appid=\(apiKey)") else {
            return
        }
        
        let weatherResource = Resource<WeatherData>(url: weatherUrl) { data in
            let decoderWeatherData = try? JSONDecoder().decode(WeatherData.self, from: data)
            return decoderWeatherData
        }
        
        
        WebService().load(resource: weatherResource){ result in
            if let data = result {
               self.delegate?.sendWeather(data: data)
               self.dismiss(animated: true,completion: nil)
            }
        }
        
//        networkingManager.getWeatherData(cityName) { data in
//            if let data = data {
//                
//                self.delegate?.sendWeather(data: data)
//                self.dismiss(animated: true,completion: nil)
//            }
//            
//        }
    }
}

protocol AddWeatherDelegate {
    func sendWeather(data: WeatherData)
}
