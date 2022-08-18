//
//  Webservice.swift
//  SomeNews
//
//  Created by Jigneshkumar Patil on 2022/08/18.
//

import Foundation

class Webservices {
    
    func getArticles(url: URL, completion: @escaping ([Article]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
                if let articleList = articleList{
                    completion(articleList.articles)
                }
                print(articleList)
            }
            
        }.resume()
    }
}
