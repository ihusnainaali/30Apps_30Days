//
//  InputView.swift
//  TextToSpeech
//
//  Created by Vlad Munteanu on 3/6/19.
//  Copyright © 2019 Vlad Munteanu. All rights reserved.
//

import Foundation
import SnapKit
import JVFloatLabeledTextField

public class InputView: UIView {
    
    
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
        addSubview(textTF)
    }
    
    internal func createConstraints(){
        backgroundView.snp.makeConstraints { make in
            make.height.equalToSuperview()
            make.width.equalToSuperview()
        }
        textTF.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().multipliedBy(0.6)
            make.width.equalToSuperview().multipliedBy(0.95)
        }
    }
    
    //Main Background Subview
    public let backgroundView: UIView = {
        let backgroundView = UIView()
        backgroundView.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        return backgroundView
    }()
    
    //Textfields
    public let textTF: JVFloatLabeledTextField = {
        let tf = JVFloatLabeledTextField()
        tf.floatingLabel.text = "Text"
        tf.floatingLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        tf.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return tf
    }()
    
}
