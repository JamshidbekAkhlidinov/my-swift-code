//
//  NetworkingManager.swift
//  weatherapp
//
//  Created by ustadev.uz on 24/01/24.
//

import Foundation

struct NetworkingManager {
    
    func getWeatherData(_ cityName:String,handler: @escaping(WeatherData?)->()){
        
        let apiKey:String = "a421f18853f3f97ef6b102c067a39a4e"
        guard let apiUrl = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(cityName)&appid=\(apiKey)") else { return }
        
        var request = URLRequest(url: apiUrl)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = ["Content-Type":"application/json"]
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            
            let response = response as? HTTPURLResponse
            
            if let data = data, let response = response, response.statusCode == 200 {
                
                if let decodeWeatherData = try? JSONDecoder().decode(WeatherData.self, from: data){
                    DispatchQueue.main.sync{
                        handler(decodeWeatherData)
                    }
                    return
                }
            }else{
                handler(nil)
            }
        }.resume()
    }
}
