//
//  APICaller.swift
//  newsapplication
//
//  Created by ustadev.uz on 28/02/24.
//

import Foundation

final class APICaller{
    static let shared = APICaller()
    
    struct Constans{
        static let topHeaderLinesUrl = URL(string: "https://newsapi.org/v2/everything?q=apple&from=2024-02-29&to=2024-02-29&sortBy=popularity&apiKey=c3fd4786b55842358bf206ee8eee63c5")
    }
    
    private init(){}
    
    public func getTopStories(completion: @escaping (Result<[Article], Error>)->Void){
        
        guard let url = Constans.topHeaderLinesUrl else { return }
        
        let task = URLSession.shared.dataTask(with: url){ data, _, error in
            
            if let error = error {
                completion(.failure(error))
            }
            else if let data = data
            {
                do{
                    let result = try JSONDecoder().decode(ApiResponse.self, from: data)
                    print("Articles: \(result.articles.count)")
                    completion(.success(result.articles))
                    
                }catch{
                    completion(.failure(error))
                }
            }
            
        }
        
        task.resume();
        
    }
    
}


//models

struct ApiResponse:Codable{
    let articles: [Article]
}

struct Article:Codable {
    let source:Source
    let title:String
    let description:String?
    let url:String?
    let urlToImage:String?
    let publishedAt:String?
}

struct Source:Codable{
    let name:String
}
