//
//  NewsListTableViewController.swift
//  SomeNews
//
//  Created by Jigneshkumar Patil on 2022/08/18.
//

import Foundation
import UIKit

class NewsListTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup(){
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=1d38baf2f91547a28752a9a255b59779")!
        Webservices().getArticles(url: url) { _ in
            
        }
    }
        
}
