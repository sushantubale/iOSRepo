//
//  ViewController.swift
//  Core Data:
//
//  Created by Sushant Ubale on 11/17/18.
//  Copyright © 2018 Sushant Ubale. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    @IBOutlet weak var myTaleView: UITableView!

    var people = [Person]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fetch: NSFetchRequest<Person> = Person.fetchRequest()
        do {
        
            let people = try PersistenceService.persistenceShared.fetch(fetch)
        self.people = people
            
        }
        catch {print(error)}
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func onAddTapped() {
        var alert = UIAlertController(title: "Add information", message: "add your name and age", preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = "Name"
            
        }
        alert.addTextField { (textField) in
            textField.placeholder = "Age"
            textField.keyboardType = .numberPad
        }
        let action = UIAlertAction(title: "Post", style: .default) { (_) in
            let name = alert.textFields?.first?.text!
            let age = alert.textFields?.last?.text!
            print(name)
            print(age)
            
            let person = Person(context: PersistenceService.persistenceShared)
            person.name = name
            person.age = Int16(age ?? "0")!
            PersistenceService.saveContext()
            self.people.append(person)
            self.myTaleView.reloadData()
            
        }
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        
        
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return people.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = people[indexPath.row].name
        cell.detailTextLabel?.text = "\(people[indexPath.row].age)"
        return cell
        
    }
}
