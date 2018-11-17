//
//  Post.swift
//  Encodable and Decodable
//
//  Created by Sushant Ubale on 11/17/18.
//  Copyright © 2018 Sushant Ubale. All rights reserved.
//

import Foundation

struct posts: Encodable, Decodable {
    
    let userid: String
    let message: String
    let username: String
    let password: String
}
