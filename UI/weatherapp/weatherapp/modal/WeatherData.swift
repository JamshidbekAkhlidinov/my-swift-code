//
//  WeatherData.swift
//  weatherapp
//
//  Created by ustadev.uz on 24/01/24.
//

import Foundation

struct WeatherData:Codable {
    let weather:[Weather]
    let base:String?
    let main: Main
    let name:String?
}

struct Weather:Codable {
    let id:Int?
    let main:String?
    let description:String?
}

struct Main:Codable {
    let temp:Double?
    let temp_min:Double?
    let temp_max:Double
}
