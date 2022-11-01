//
//  ViewController.swift
//  Werdd
//
//  Created by Paul Park on 10/22/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    // MARK: - Properties
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Werdd."
        label.font = UIFont(name: "Rubik-SemiBold", size: 36)
        return label
    }()
    
    lazy var randomWerddView: RoundedViewWithColor = {
        let view = RoundedViewWithColor { [weak self] in
            self?.refreshRandomWordLabels()
        }
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let werdds: [Werdd] = [
        Werdd(name: "Programming", partOfSpeech: "noun", definition: "creating a sequence of instructions to enable the computer to do something"),
        Werdd(name: "Abbot", partOfSpeech: "noun", definition: "the superior of a monastery for men"),
        Werdd(name: "Mauve", partOfSpeech: "noun", definition: "a moderate purple, violet, or lilac color"),
        Werdd(name: "Stochastic", partOfSpeech: "adjective", definition: "involving a random variable"),
        Werdd(name: "Stilt", partOfSpeech: "noun", definition: "one of two poles each with a rest or strap for the foot used to elevate the wearer above the ground in walking"),
        Werdd(name: "Abbreviation", partOfSpeech: "noun", definition: "a shortened form of a written word or phrase used in place of the whole word or phrase"),
        Werdd(name: "Avuncular", partOfSpeech: "adjective", definition: "suggestive of an uncle especially in kindliness or geniality"),
        Werdd(name: "Spiel", partOfSpeech: "verb", definition: "to play music"),
        Werdd(name: "Writhe", partOfSpeech: "verb", definition: "to twist into coils or folds"),
        Werdd(name: "Transmogrify", partOfSpeech: "verb", definition: "to change or alter greatly and often with grotesque or humorous effect"),
        Werdd(name: "Frenetic", partOfSpeech: "adjective", definition: "marked by fast and energetic, disordered, or anxiety-driven activity"),
    ]
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(named: "Taupe")
        setUpUI()
        
    }
    
    // MARK: - UI Setup
    
    func setUpUI() {
        setUpTitleLabel()
        setUpRandomWerddView()
    }
    
    func setUpTitleLabel() {
        view.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 18),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
        ])
    }
    
    func setUpRandomWerddView() {
        view.addSubview(randomWerddView)
        NSLayoutConstraint.activate([
            randomWerddView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 23),
            randomWerddView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            randomWerddView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            randomWerddView.heightAnchor.constraint(equalToConstant: 304),
        ])
    }
    
    // MARK: - Actions
    
    func refreshRandomWordLabels() {
        let randomWerdd = werdds.randomElement()
        randomWerddView.werddLabel.text = randomWerdd?.name
        randomWerddView.partOfSpeechLabel.text = randomWerdd?.partOfSpeech
        randomWerddView.definitionLabel.text = randomWerdd?.definition
    }
    
}

