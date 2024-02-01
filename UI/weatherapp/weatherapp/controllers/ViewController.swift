//
//  ViewController.swift
//  weatherapp
//
//  Created by ustadev.uz on 24/01/24.
//

import UIKit

class ViewController: UIViewController, AddWeatherDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    private lazy var weatherData: [WeatherData] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddViewController" {
            
            guard let nav = segue.destination as? UINavigationController else { return }
                
            guard let addWeather = nav.viewControllers.first as? AddViewController else { return }
            
            addWeather.delegate = self
        }
    }

    func sendWeather(data: WeatherData) {
        print(data)
        weatherData.append(data)
        tableView.reloadData()
    }
}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weatherData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "weatherCell",
            for:indexPath
        ) as! WeatherListTableViewCell
        
        cell.setData(data: weatherData[indexPath.row])
        
        return cell
    }
    
    
    
}
