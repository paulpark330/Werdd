//
//  RoundedViewWithColor.swift
//  Werdd
//
//  Created by Paul Park on 10/31/22.
//

import Foundation
import UIKit

class RoundedViewWithColor: UIView {
    
    var completion: (() -> Void)?
    
    
    let werddLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Programming"
        label.font = UIFont(name: "Rubik-Bold", size: 24)
        return label
    } ()
    
    let partOfSpeechLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "noun"
        label.font = UIFont(name: "Rubik-LightItalic", size: 12)
        return label
    }()
    
    let definitionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "creating a sequence of instructions to enable the computer to do something"
        label.font = UIFont(name: "Rubik-Light", size: 16)
        label.lineBreakMode = .byTruncatingTail
        label.numberOfLines = 3
        return label
    }()
    
    lazy var refreshButton: RefreshButton = {
        let button = RefreshButton {
            self.completion?()
        }
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    } ()
    
    init(completion: (() -> Void)?) {
        self.completion = completion
        super.init(frame: .zero)
        setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpUI() {
        backgroundColor = UIColor(named: "WerddBlue")
        layer.cornerRadius = 30
        
        setUpWerddLabel()
        setUpPartOfSpeechLabel()
        setUpDefinitionLabel()
        setUpRefreshButton()
    }
    
    func setUpWerddLabel() {
        addSubview(werddLabel)
        NSLayoutConstraint.activate([
            werddLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            werddLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24)
        ])
    }
    
    func setUpPartOfSpeechLabel() {
        addSubview(partOfSpeechLabel)
        NSLayoutConstraint.activate([
            partOfSpeechLabel.bottomAnchor.constraint(equalTo: werddLabel.bottomAnchor, constant: -5),
            partOfSpeechLabel.leadingAnchor.constraint(equalTo: werddLabel.trailingAnchor, constant: 5)
        ])
    }
    
    func setUpDefinitionLabel() {
        addSubview(definitionLabel)
        NSLayoutConstraint.activate([
            definitionLabel.topAnchor.constraint(equalTo: werddLabel.bottomAnchor, constant: 7),
            definitionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            definitionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24)
        ])
    }
    
    func setUpRefreshButton() {
        addSubview(refreshButton)
        NSLayoutConstraint.activate([
            refreshButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            refreshButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -12),
        ])
    }
    
    func updateWerddView(withWerdd werdd: Werdd?) {
        werddLabel.text = werdd?.name
        partOfSpeechLabel.text = werdd?.partOfSpeech
        definitionLabel.text = werdd?.definition
    }
}
