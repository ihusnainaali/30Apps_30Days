//
//  MainView.swift
//  RandomColorGenerator
//
//  Created by Vlad Munteanu on 3/1/19.
//  Copyright © 2019 Vlad Munteanu. All rights reserved.
//

import Foundation
import SnapKit

public class MainView: UIView {
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame = CGRect.zero
        intializeUI()
        createConstraints()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    internal func intializeUI() {
        addSubview(hexLabel)
        addSubview(rgbLabel)
        addSubview(randomButton)
    }
    
    //TODO: Create Constraints
    internal func createConstraints() {
        
    }
    
    func updateBackgroundColor() {
        self.backgroundColor = .random()
    }
    
    //Just Two Labels
    internal let hexLabel: UILabel = {
        let hexlabel = UILabel()
        
        //TODO: Make sure font scales
        hexlabel.font = UIFont(name: "System", size: 35)
        hexlabel.text = "Hex Code = "
        hexlabel.translatesAutoresizingMaskIntoConstraints = false
        return hexlabel
    }()
    
    internal let rgbLabel: UILabel =  {
        let rgblabel = UILabel()
        rgblabel.font = UIFont(name: "System", size: 35)
        rgblabel.text = "RGB Code = "
        rgblabel.translatesAutoresizingMaskIntoConstraints = false
        return rgblabel
    }()
    
    //Button
    public let randomButton: UIButton = {
        let randButton = UIButton()
        randButton.titleLabel?.text = "New Color"
        return randButton
    }()
}

//random color generator

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

//TODO: Return Hex number and rgb color of UIColor
extension UIColor {
    static func random() -> UIColor {
        return UIColor(red: .random(),
                       green: .random(),
                       blue: .random(),
                       alpha: 1.0)
    }
}
