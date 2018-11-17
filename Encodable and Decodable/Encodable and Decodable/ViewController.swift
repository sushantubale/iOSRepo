//
//  ViewController.swift
//  Encodable and Decodable
//
//  Created by Sushant Ubale on 11/17/18.
//  Copyright © 2018 Sushant Ubale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func postTapped() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {return}
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")


        let newPosts = posts(userid: "123", message: "Hello this is Sushant", username: "sushant", password: "password")
        do {
            let values = try JSONEncoder().encode(newPosts)

            request.httpBody = values
            
        }catch {print(error)}
        
        let session = URLSession.shared
        session.dataTask(with: request) { (data, response, error) in
            
            if let data = data {
                print(data)
                
                do {
                    let json = try JSONDecoder().decode(posts.self, from: data)
                    print(json)
                }catch {
                    print(error)
                    
                }
            }
            
            if let response = response {
                print(response)
                
            }
            
            
        }.resume()

        
    }
}

