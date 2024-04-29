//
//  WeatherData.swift
//  weatherapp
//
//  Created by ustadev.uz on 24/01/24.
//

import Foundation

struct WeatherData: Decodable {
    let weather:[Weather]
    let base:String?
    let currentTemperature: Main?
    let name:String?
    
    private enum CodingKeys: String, CodingKey {
        case weather
        case currentTemperature = "main"
        case name
        case base
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        weather = try container.decode([Weather].self, forKey: .weather)
        currentTemperature = try container.decodeIfPresent(Main.self, forKey: .currentTemperature)
        name = try container.decodeIfPresent(String.self, forKey: .name)
        base = try container.decodeIfPresent(String.self, forKey: .base)
    }
}

struct Weather: Decodable {
    let id:Int?
    let main:String?
    let description:String?
}

struct Main: Decodable {
    let temperature:Dynamic<Double>
    let temperatureMax:Dynamic<Double>
    let temperatureMin:Dynamic<Double>
    
    init(from decoder:Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        temperature = Dynamic(try container.decode(Double.self,forKey: .temperature))
        temperatureMin = Dynamic(try container.decode(Double.self, forKey: .temperatureMin))
        temperatureMax = Dynamic(try container.decode(Double.self, forKey: .temperatureMax))
        
    }
    
    private enum CodingKeys: String, CodingKey {
        case temperature = "temp"
        case temperatureMax = "temp_max"
        case temperatureMin = "temp_min"
    }
}

class Dynamic <T>: Decodable where T: Decodable {
    
    typealias Listener = (T) -> ()
    
    var listener: Listener?
    
    var value:T {
        didSet {
            listener?(value)
        }
    }
    
    func bind(listener: @escaping Listener){
        self.listener = listener
        self.listener?(value)
    }
    
    init(_ value:T) {
        self.value = value
    }
    
    private enum CodingKeys:CodingKey {
        case value
    }
}
