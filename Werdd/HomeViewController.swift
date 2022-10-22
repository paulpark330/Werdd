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
        view.backgroundColor = UIColor(named: "WerddBlue ")
        view.layer.cornerRadius = 30
                                
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(named: "Taupe")
        
        view.addSubview(titleLabel)
        view.addSubview(werddContainerView)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 18),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            werddContainerView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 23),
            werddContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            werddContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            werddContainerView.heightAnchor.constraint(equalToConstant: 304)
        ])
    }


}

