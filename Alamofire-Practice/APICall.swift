//
//  APICall.swift
//  Alamofire-Practice
//
//  Created by MySoftheaven BD on 27/3/18.
//  Copyright © 2018 MySoftheaven BD. All rights reserved.
//

import Foundation
import Alamofire
import UIKit


class APICall {
    
    private init(){}
    
    static func getDataFromAPI(urlString: String, complition:  @escaping ([String: Any]) -> Void ) {
        Alamofire.request(urlString).responseJSON { response in
            
            print("result : \(response.result)")
            
            if let json  = response.result.value {
                print(json)
                
                let jsonDict = json as! [String: Any]
                complition(jsonDict)
            }
            
        }
    }
    
    static func getActorData(url: String, complition: @escaping (Information) -> Void) {
        Alamofire.request(url).responseJSON { response in
            
            print("result : \(response.result)")
//
//            if let json  = response.result.value {
//                //print(json)
//
//            }
            
            if let data = response.data {
                do {
                    let information = try JSONDecoder().decode(Information.self, from: data)
                    complition(information)
                } catch {
                    
                }
                
            }
        }
    }
    
    
    
}
