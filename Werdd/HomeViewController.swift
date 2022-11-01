//
//  ViewController.swift
//  Werdd
//
//  Created by Paul Park on 10/22/22.
//

import UIKit

struct Werdd {
    let werdd: String
    let partOfSpeed: String
    let definition: String
}

class HomeViewController: UIViewController {
    
    let werddArray: [Werdd] = [
        Werdd(werdd: "Programming", partOfSpeed: "noun", definition: "creating a sequence of instructions to enable the computer to do something"),
        Werdd(werdd: "Abbot", partOfSpeed: "noun", definition: "the superior of a monastery for men"),
        Werdd(werdd: "Mauve", partOfSpeed: "noun", definition: "a moderate purple, violet, or lilac color"),
        Werdd(werdd: "Stochastic", partOfSpeed: "adjective", definition: "involving a random variable"),
        Werdd(werdd: "Stilt", partOfSpeed: "noun", definition: "one of two poles each with a rest or strap for the foot used to elevate the wearer above the ground in walking"),
        Werdd(werdd: "Abbreviation", partOfSpeed: "noun", definition: "a shortened form of a written word or phrase used in place of the whole word or phrase"),
        Werdd(werdd: "Avuncular", partOfSpeed: "adjective", definition: "suggestive of an uncle especially in kindliness or geniality"),
        Werdd(werdd: "Spiel", partOfSpeed: "verb", definition: "to play music"),
        Werdd(werdd: "Writhe", partOfSpeed: "verb", definition: "to twist into coils or folds"),
        Werdd(werdd: "Transmogrify", partOfSpeed: "verb", definition: "to change or alter greatly and often with grotesque or humorous effect"),
        Werdd(werdd: "Frenetic", partOfSpeed: "adjective", definition: "marked by fast and energetic, disordered, or anxiety-driven activity"),
    ]
    
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
    
    let randomizeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        let randomizeImageConfiguration = UIImage.SymbolConfiguration(pointSize: 36)
        let randomizeImage = UIImage(systemName: "arrow.clockwise.circle", withConfiguration: randomizeImageConfiguration)?.withTintColor(.white, renderingMode: .alwaysOriginal)
        button.setImage(randomizeImage, for: .normal)
        button.addTarget(self, action: #selector(randomButtonPressed), for: .touchUpInside)
        return button
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(named: "Taupe")
        setUpUI()
        let werdd = werddArray.first
        updateWerddView(withWerdd: werdd)
    }
    
    func setUpUI() {
        setUpTitleLabel()
        setUpWerddContainerView()
        setUpWerddLabel()
        setUpPartOfSpeechLabel()
        setUpDefinitionLabel()
        setUpRandomizeButton()
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
    
    func setUpRandomizeButton() {
        view.addSubview(randomizeButton)
        NSLayoutConstraint.activate([
            randomizeButton.trailingAnchor.constraint(equalTo: werddContainerView.trailingAnchor, constant: -12),
            randomizeButton.bottomAnchor.constraint(equalTo: werddContainerView.bottomAnchor, constant: -12),
            randomizeButton.heightAnchor.constraint(equalToConstant: 36)
        ])
    }
    
    @objc func randomButtonPressed() {
        let randomWerdd = randomizedWerdd()
        updateWerddView(withWerdd: randomWerdd)
    }
    
    func randomizedWerdd() -> Werdd? {
        return werddArray.randomElement()
    }
    
    func updateWerddView(withWerdd werdd: Werdd?) {
        werddLabel.text = werdd?.werdd
        partOfSpeechLabel.text = werdd?.partOfSpeed
        definitionLabel.text = werdd?.definition
    }
    
}

