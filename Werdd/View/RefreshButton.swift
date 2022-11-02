//
//  RefreshButton.swift
//  Werdd
//
//  Created by Paul Park on 10/31/22.
//

import UIKit

class RefreshButton: UIButton {
    
    var completion: (() -> Void)?
    
    init(completion: (() -> Void)?) {
        super.init(frame: .zero)
        self.completion = completion
        setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpUI() {
        tintColor = .white
        
        let symbolConfiguration = UIImage.SymbolConfiguration(pointSize: 36, weight: .regular, scale: .medium)
        let image = UIImage(systemName: "arrow.clockwise.circle", withConfiguration: symbolConfiguration)
        setImage(image, for: .normal)
        addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
    
    @objc func buttonPressed() {
        completion?()
    }
    
}
