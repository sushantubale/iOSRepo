//
//  ViewController.swift
//  URLSession KiloLoco
//
//  Created by Sushant Ubale on 11/16/18.
//  Copyright © 2018 Sushant Ubale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func postButtonTapped(_ sender: UIButton) {
        let parameters = ["username": "sushant", "tweet": "HelloWorld"]
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        guard let httpBody = try? JSONSerialization.data(withJSONObject: parameters, options: []) else {return }
        request.httpBody = httpBody
        let session = URLSession.shared
        session.dataTask(with: request) { (data, response, error) in
            if let response = response {
                print(response)
            }
            if let data = data {
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    print(json)
                } catch {
                    print(error)
                }
            }
            
            }.resume()

    }
    
    @IBAction func getButonTapped(_ sender: UIButton) {
    
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else {return}
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard let _ = response else {return}
            guard let data = data else {return}
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                print(json)
            }
            catch {print(error)}
        }.resume()

    }
}

