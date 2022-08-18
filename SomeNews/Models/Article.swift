//
//  Article.swift
//  SomeNews
//
//  Created by Jigneshkumar Patil on 2022/08/18.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String
}
