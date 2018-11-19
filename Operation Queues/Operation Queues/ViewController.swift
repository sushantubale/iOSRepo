//
//  ViewController.swift
//  Operation Queues
//
//  Created by Sushant Ubale on 11/18/18.
//  Copyright © 2018 Sushant Ubale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let url1 = URL(string: "https://cdn.xl.thumbs.canstockphoto.com/-stock-photo_csp8319274.jpg")
    let url2 = URL(string: "https://cdn.xl.thumbs.canstockphoto.com/-stock-photo_csp8319274.jpg")
    let url3 = URL(string: "https://image.shutterstock.com/display_pic_with_logo/2764438/383231005/stock-vector-software-testing-flat-icon-software-testing-vector-illustration-flat-design-software-testing-383231005.jpg")
    let url4 = URL(string: "https://img.clipartxtras.com/c42e21b7e2d0369614edc96c4a533048_education-cartoon-about-a-boy-who-dislikes-standardized-drawing-standardized-drawing_368-470.jpeg")
    var operationQueue1 = OperationQueue()

    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func downloadButtonClicked(_ sender: UIButton) {
        downloadImages()
    }
    
    func downloadImages() {
        
operaton1()


        

    }
    
    func operaton1() {
        
        let op1 = BlockOperation { [weak self] in
            URLSession.shared.dataTask(with: (self?.url1)!, completionHandler: { (data, response, error) in
                let image1 = UIImage(data:data!,scale:1.0)
                
                DispatchQueue.main.async {
                    self?.image1.image  = image1
                }
//                print(data)
//                print(response)
            }).resume()
        }
        
        operationQueue1.addOperation(op1)
        op1.completionBlock = {print("done 1")}
        
        
        let op2 = BlockOperation{[weak self] in
            URLSession.shared.dataTask(with: (self?.url2)!, completionHandler: { (data, response, error) in
                let image1 = UIImage(data:data!,scale:1.0)
                DispatchQueue.main.async {
                    self?.image2.image  = image1
                }

                //                print(data)
                //                print(response)
            }).resume()
        }
        operationQueue1.addOperation(op2)
        
        
        let op3 = BlockOperation{[weak self] in
            URLSession.shared.dataTask(with: (self?.url3)!, completionHandler: { (data, response, error) in
                let image1 = UIImage(data:data!,scale:1.0)
                DispatchQueue.main.async {
                    self?.image3.image  = image1
                }

                //                print(data)
                //                print(response)
            }).resume()
        }
        operationQueue1.addOperation(op3)
        op3.completionBlock = {print("done 3")}
        
        let op4 = BlockOperation{[weak self] in
            URLSession.shared.dataTask(with: (self?.url4)!, completionHandler: { (data, response, error) in
                let image1 = UIImage(data:data!,scale:1.0)
                DispatchQueue.main.async {
                    self?.image4.image  = image1
                }

                //                print(data)
                //                print(response)
            }).resume()
        }
        operationQueue1.addOperation(op4)
        op4.completionBlock = {print("done 4")}

        

    }
    
    func operation2() {
        

    }
    
    func operation3() {
        

    }
    
    func operation4() {
        

    }
}

