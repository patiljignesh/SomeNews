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
    }
}
