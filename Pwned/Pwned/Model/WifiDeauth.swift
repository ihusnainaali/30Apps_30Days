//
//  WifiDeauth.swift
//  Pwned
//
//  Created by Vlad Munteanu on 3/5/19.
//  Copyright © 2019 Vlad Munteanu. All rights reserved.
//

import Foundation
import WKZombie

public class WifiDeauth {
    
    /*WorkFlow for Deauthing a network
     1. Go to http://192.168.4.1/ssids.html
     2. Click "SCAN APs", wait until blue light goes away, click "RELOAD"
     3. Go to http://192.168.4.1/attack.html
     4. Click "START" on Deauth attack
     5. $$$
     6. Click "STOP" to stop Attack
    */
    
    //Disclaimer: Does not work on devices with 802.11w-2009 standard.
    
    let scanUrl = URL(string: "http://192.168.4.1/ssids.html")!
    let attackUrl = URL(string: "http://192.168.4.1/attack.html")!
    var snapshots = [Snapshot]()
    
    
    static func attackNetwork(_ url: URL) {
        open(url)
            >>* get(by: .contains("button id=\"deauth\"", "onclick=\"start(0)\""))
            >>> click(then: .wait(2.5))
            >>* getAll(by: .contains("class", "row-"))
            === myOutput
    }
    
    class func myOutput(result: [HTMLTableColumn]?) {
        // handle result
    }
    
//    class func refreshGetItems() -> [HTMLTableColumn] {
//        let hanlderBlock: (Bool) -> Void = {
//            doneWork in
//
//            if doneWork {
//                print("We've finished working, bruh")
//            }
//        }
//    }
    
    
}