//
//  ViewController.swift
//  Werdd
//
//  Created by Paul Park on 10/22/22.
//

import UIKit


class HomeViewController: UIViewController {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Werdd."
        label.font = UIFont(name: "Rubik-SemiBold", size: 36)
        return label
    }()
    
    let werddContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(named: "WerddBlue")
        view.layer.cornerRadius = 30
        return view
    }()
    
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
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(named: "Taupe")
        setUpUI()
    }
    
    func setUpUI() {
        setUpTitleLabel()
        setUpWerddContainerView()
        setUpWerddLabel()
        setUpPartOfSpeechLabel()
        setUpDefinitionLabel()
    }
    
    func setUpTitleLabel() {
        view.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 18),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
        ])
    }
    
    func setUpWerddContainerView() {
        view.addSubview(werddContainerView)
        NSLayoutConstraint.activate([
            werddContainerView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 23),
            werddContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            werddContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            werddContainerView.heightAnchor.constraint(equalToConstant: 304),
        ])
    }
    
    func setUpWerddLabel() {
        view.addSubview(werddLabel)
        NSLayoutConstraint.activate([
            werddLabel.topAnchor.constraint(equalTo: werddContainerView.topAnchor, constant: 20),
            werddLabel.leadingAnchor.constraint(equalTo: werddContainerView.leadingAnchor, constant: 24)
        ])
    }
    
    func setUpPartOfSpeechLabel() {
        view.addSubview(partOfSpeechLabel)
        NSLayoutConstraint.activate([
            partOfSpeechLabel.bottomAnchor.constraint(equalTo: werddLabel.bottomAnchor, constant: -5),
            partOfSpeechLabel.leadingAnchor.constraint(equalTo: werddLabel.trailingAnchor, constant: 5)
        ])
    }
    
    func setUpDefinitionLabel() {
        view.addSubview(definitionLabel)
        NSLayoutConstraint.activate([
            definitionLabel.topAnchor.constraint(equalTo: werddLabel.bottomAnchor, constant: 7),
            definitionLabel.leadingAnchor.constraint(equalTo: werddContainerView.leadingAnchor, constant: 24),
            definitionLabel.trailingAnchor.constraint(equalTo: werddContainerView.trailingAnchor, constant: -24)
        ])
    }
    

}

