//
//  Webservice.swift
//  SomeNews
//
//  Created by Jigneshkumar Patil on 2022/08/18.
//

import Foundation

class Webservices {
    
    func getArticles(url: URL, completion: @escaping ([Any]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                
                print(data)
            }
            
        }.resume()
    }
}
