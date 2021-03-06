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
    
    //let scanUrl = URL(string: "http://192.168.4.1/ssids.html")!
    let attackUrl = URL(string: "http://192.168.4.1/attack.html")!
    var snapshots = [Snapshot]()
    
    
    let webView: UIWebView = UIWebView()
    
    class func attackNetwork(_ url: URL) {
        open(url)
           // >>* get(by: .name("deauth"))
            >>> execute("""
document.getElementById("deauth").click()
""")
            //>>> inspect()
            === myOutput
    }
    
    class func myOutput(result: JavaScriptResult?) {
        // handle result
    }
    
    
    class func refreshWIFI(_ url: URL) {
    open(url)
//        >>> execute("""
//                    scan()
//                    """)
        >>> execute("""
                    load()
                    """)
        === myOutput
        
        refreshGetItems(url)
    }
    
    class func refreshGetItems(_ url: URL) {
        open(url)
        
            //>>* getAll(by: .contains("class=\"ssid\"", ""))
            >>* getAll(by: .contains("class", "ssid"))
            === myWifiOutput
    }
    
    class func myWifiOutput(result: [HTMLTableColumn]?) {
        print(result)
        items = result
    }
}
