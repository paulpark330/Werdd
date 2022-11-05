//
//  WerddTableViewCell.swift
//  Werdd
//
//  Created by Paul Park on 11/4/22.
//

import UIKit

class WerddTableViewCell: UITableViewCell {
    
    static let cellID = "WerddTableViewCell"
    
    private let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(named: "OrangeCream")
        view.layer.cornerRadius = 20
        return view
    }()
    
    private let werddLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Rubik-Bold", size: 16)
        return label
    }()
    
    private let partOfSpeechLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Rubik-LightItalic", size: 12)
        return label
    }()
    
    private let definitionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Rubik-Light", size: 12)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpUI() {
        
        contentView.backgroundColor = UIColor(named: "Stone")
        
        setUpContainerView()
        setUpWerddLabel()
        setUpPartOfSpeechLabel()
        setUpDefinitionLabel()

    }
    
    private func setUpContainerView() {
        contentView.addSubview(containerView)
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 4),
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -4),
            containerView.heightAnchor.constraint(greaterThanOrEqualToConstant: 60)
        ])
    }
    
    private func setUpWerddLabel() {
        containerView.addSubview(werddLabel)
        NSLayoutConstraint.activate([
            werddLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10),
            werddLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 15)
        ])
    }
    
    private func setUpPartOfSpeechLabel() {
        containerView.addSubview(partOfSpeechLabel)
        NSLayoutConstraint.activate([
            partOfSpeechLabel.bottomAnchor.constraint(equalTo: werddLabel.bottomAnchor, constant: -2),
            partOfSpeechLabel.leadingAnchor.constraint(equalTo: werddLabel.trailingAnchor, constant: 5)
        ])
    }
    
    
    private func setUpDefinitionLabel() {
        containerView.addSubview(definitionLabel)
        NSLayoutConstraint.activate([
            definitionLabel.topAnchor.constraint(equalTo: werddLabel.bottomAnchor, constant: 0),
            definitionLabel.leadingAnchor.constraint(equalTo: werddLabel.leadingAnchor),
            definitionLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -4),
            
        ])
    }
    

    
    func configure(werdd: String, partOfSpeech: String, definition: String) {
        werddLabel.text = werdd
        partOfSpeechLabel.text = partOfSpeech
        definitionLabel.text = definition
    }
    
    
}
