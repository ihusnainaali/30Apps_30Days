//
//  MainView.swift
//  Speed Limit Checker
//
//  Created by Vlad Munteanu on 3/2/19.
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
        addSubview(backgroundView)
        addSubview(backgroundSubView)
        addSubview(titleLabel)
        addSubview(speedLabel)
    }
    
    internal func createConstraints() {
        backgroundView.snp.makeConstraints { make in
            make.height.equalToSuperview()
            make.width.equalToSuperview()
        }
        titleLabel.snp.makeConstraints { make in
            make.height.equalToSuperview().multipliedBy(0.2)
            make.left.equalToSuperview().multipliedBy(0.2)
        }
        backgroundSubView.snp.makeConstraints { make in
            make.height.equalToSuperview().multipliedBy(0.7)
            make.width.equalToSuperview().multipliedBy(0.7)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        speedLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            
            
        }
        
        
    }
    
    //Main Background Subview
    public let backgroundView: UIView = {
        let backgroundView = UIView()
        backgroundView.backgroundColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
        return backgroundView
    }()
    
    //BackgroundSubview
    public let backgroundSubView: UIView = {
        let backsubview = UIView()
        backsubview.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8470588235)
        return backsubview
        //TODO: Add curved corners
    }()
    
    //Title Label
    public let titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.font = UIFont(name: "Futura", size: 48)
        titleLabel.text = "Speed Limit"
        titleLabel.numberOfLines = 1
        titleLabel.minimumScaleFactor = 0.5
        titleLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        titleLabel.adjustsFontSizeToFitWidth = true
        titleLabel.textAlignment = .left
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }()
    
    //Speed Label
    public let speedLabel: UILabel = {
        let speedlabel = UILabel()
        speedlabel.font = UIFont(name: "Futura", size: 48)
        speedlabel.text = "25 MPH"
        speedlabel.numberOfLines = 1
        speedlabel.minimumScaleFactor = 0.5
        speedlabel.shadowOffset = CGSize(width: -3, height: 2)
        speedlabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        speedlabel.shadowColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        speedlabel.adjustsFontSizeToFitWidth = true
        speedlabel.textAlignment = .center
        speedlabel.translatesAutoresizingMaskIntoConstraints = false
        return speedlabel
    }()
    
    
}
