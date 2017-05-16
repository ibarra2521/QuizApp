//
//  QuestionViewController.swift
//  QuizApp
//
//  Created by Nivardo Ibarra Florencio on 5/15/17.
//  Copyright © 2017 nivardoibarra.com. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController, UITableViewDataSource {

//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//    }
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    private var question = ""
    private var options: [String] = []
    
    convenience init(question: String, options: [String]) {
        self.init()
        self.question = question
        self.options = options
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.headerLabel.text = self.question
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = self.options[indexPath.row]
        return cell
    }
}
