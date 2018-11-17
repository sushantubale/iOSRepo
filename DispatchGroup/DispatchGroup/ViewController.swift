//
//  ViewController.swift
//  DispatchGroup
//
//  Created by Sushant Ubale on 11/17/18.
//  Copyright © 2018 Sushant Ubale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var user = ["user1", "user2"]
    var person = ["pserson1", "person2"]
    var cousin = ["cousin1", "cousin2"]
    var totalArrays = [String]()
    
    var myDispatchGroup = DispatchGroup()
    
    @IBOutlet weak var myTableView: UITableView!
    @IBAction func downloadButtonTapped(_ sender: UIBarButtonItem) {
        downloadUser1()
        downloadUser2()
        downloadUser3()
        myDispatchGroup.notify(queue: DispatchQueue.main) {
            self.reloadMyTableView()
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func run(after seconds: Int, completionhandler: @escaping () -> Void) {
        
        let deadline = DispatchTime.now() + .seconds(seconds)
        DispatchQueue.main.asyncAfter(deadline: deadline) {
            completionhandler()
        }
    }
    
    func downloadUser1() {
    myDispatchGroup.enter()
        run(after: 2) {

            self.totalArrays.append(contentsOf: self.user)
            print("download user 1")
            self.myDispatchGroup.leave()

        }

    }
    
    func downloadUser2() {
        myDispatchGroup.enter()
        run(after: 4) {
            self.totalArrays.append(contentsOf: self.person)
            print("download user 2")
self.myDispatchGroup.leave()
        }
    }
    
    func downloadUser3() {
        myDispatchGroup.enter()
        run(after: 6) {
            self.totalArrays.append(contentsOf: self.cousin)
            print("download user 3")
            
            self.myDispatchGroup.leave()
        }
        
    }

    func reloadMyTableView() {
        myDispatchGroup.enter()
        print("my table view downloaded")
        DispatchQueue.main.async { [weak self] in
            self?.myTableView.reloadData()
            self?.myDispatchGroup.leave()

        }
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return totalArrays.count
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = totalArrays[indexPath.row]
        return cell
    }
    
    
}
