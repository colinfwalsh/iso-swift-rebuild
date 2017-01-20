//
//  APIRequestTest.swift
//  ios-swift-rebuild
//
//  Created by cfw37 on 1/20/17.
//  Copyright © 2017 cfw37. All rights reserved.
//

import Foundation


struct APIRequestTest {
    
    static func APIReqest (url: URL, completion: @escaping (AnyObject) -> ()) {
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: url) {(data, response, error) in
            guard let data = data else {fatalError("Unable to get data \(error?.localizedDescription)") }
            
            if let responseArray = try? JSONSerialization.jsonObject(with: data, options: []) as? NSArray {
                if let responseArray = responseArray {
                    completion(responseArray)
                } else {
                    if let responseDictionary = try? JSONSerialization.jsonObject(with: data, options: []) as? NSDictionary {
                        if let responseDictionary = responseDictionary {
                            completion(responseDictionary)
                        }
                    }
                }
            
           
            }
        }
        
        task.resume()
    }
    
}
