//
//  MapView.swift
//  Speed Limit Checker
//
//  Created by Vlad Munteanu on 3/2/19.
//  Copyright © 2019 Vlad Munteanu. All rights reserved.
//

import UIKit

class MapVC: UIViewController {
    let mapView = MapView()
    public override func loadView() {
        self.view = mapView
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
}