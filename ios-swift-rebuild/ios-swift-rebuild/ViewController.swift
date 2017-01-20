//
//  ViewController.swift
//  ios-swift-rebuild
//
//  Created by cfw37 on 1/20/17.
//  Copyright © 2017 cfw37. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // let url = URL(string: "https://doxa.rutgers.edu/mobile/2/rutgers-dining.txt")
         let url = URL(string: "https://doxa.rutgers.edu/mobile/2/sports/baseball.json")
        // let url = URL(string: "https://doxa.rutgers.edu/mobile/2/athleticsfaq.txt")
        // let url = URL(string: "https://doxa.rutgers.edu/mobile/2/ordered_content.json")
        // let url = URL(string: "https://doxa.rutgers.edu/mobile/2/rutgersrouteconfig.txt")
        // let url = URL(string: "https://doxa.rutgers.edu/mobile/2/rutgers-newarkrouteconfig.txt")
        // let url = URL(string: "https://doxa.rutgers.edu/mobile/2/places.txt")
        // let url = URL(string: "https://doxa.rutgers.edu/mobile/2/soc_conf.txt")
        
        
        
        
        APIRequestTest.APIReqest (url: url!){ (object) in
            print(object)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
       
    }
    
}

