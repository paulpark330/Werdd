//
//  WerddDetailViewController.swift
//  Werdd
//
//  Created by Paul Park on 11/6/22.
//

import UIKit

class WerddDetailViewController: UIViewController {
    
    // MARK: - Properties
    
    
    
    // MARK: - Initializers
    
    init(werdd: Werdd) {
        super.init(nibName: nil, bundle: nil)
        navigationItem.title = werdd.name
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "Taupe")
        navigationController?.navigationBar.prefersLargeTitles = true
        setUpUI()
    }
    
    // MARK: - UI Setup
    
    func setUpUI() {
        
    }
    

    

    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
