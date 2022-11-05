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
    
    var werdds: [Werdd]
    
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = UIColor(named: "Stone")
        tableView.layer.cornerRadius = 30
        tableView.register(WerddTableViewCell.self, forCellReuseIdentifier: WerddTableViewCell.cellID)
        tableView.separatorStyle = .none
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 68
        
        return tableView
    } ()
    
    // MARK: - Initializers
    
    init(werdds: Werdds = Werdds()) {
        
        self.werdds = werdds.data
        self.werdds.sort {
            $0.name < $1.name
        }
        
        super.init(nibName: nil, bundle: nil)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(named: "Taupe")
        tableView.dataSource = self
        tableView.delegate = self
        setUpUI()
        
    }
    
    // MARK: - UI Setup
    
    func setUpUI() {
        setUpTitleLabel()
        setUpRandomWerddView()
        setUpTableView()
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
            randomWerddView.heightAnchor.constraint(equalToConstant: 160),
        ])
    }
    
    func setUpTableView() {
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: randomWerddView.bottomAnchor, constant: 24),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
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

// MARK: - UITableViewDataSource Methods

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return werdds.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: WerddTableViewCell.cellID, for: indexPath) as? WerddTableViewCell else {
            return UITableViewCell()
        }
            
        cell.configure(werdd: werdds[indexPath.row].name, partOfSpeech: werdds[indexPath.row].partOfSpeech, definition: werdds[indexPath.row].definition)
        cell.selectionStyle = .none
        return cell
    }
}

// MARK: - UITableViewDelegate Methods

extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let alert = UIAlertController(title: werdds[indexPath.row].name, message: werdds[indexPath.row].definition, preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: nil))
//        self.present(alert, animated: true, completion: nil)
    }
}
