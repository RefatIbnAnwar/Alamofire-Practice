//
//  ModelEmployeeClass.swift
//  Alamofire-Practice
//
//  Created by MySoftheaven BD on 27/3/18.
//  Copyright © 2018 MySoftheaven BD. All rights reserved.
//

import Foundation

struct Information : Decodable {
    let actors : [Actor]
}

struct Actor : Decodable {
    let name : String
    let description : String
    let dob : String
    let country : String
    let height : String
    let children : String
    let image : String
}
