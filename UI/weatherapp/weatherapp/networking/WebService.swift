//
//  WebService.swift
//  weatherapp
//
//  Created by ustadev.uz on 01/02/24.
//

import Foundation

struct Resource<T>{
    let url: URL
    let parse:(Data)->T?
}


final class WebService {

    func load<T>(resource:Resource<T>, completion: @escaping (T?)->()){
        URLSession.shared.dataTask(with: resource.url){ data, response, error in
            if let data = data {
                DispatchQueue.main.async {
                    completion(resource.parse(data))
                }
            }else{
                completion(nil)
            }
        }.resume()
    }

}
