//
//  ViewController.swift
//  Testarosa
//
//  Created by Joe Blau on 2/8/18.
//  Copyright © 2018 Joe Blau. All rights reserved.
//

import UIKit
//import Surge

class ViewController: UIViewController {

    private var randomButton: UIButton
    private var sumLabel: UILabel
    
    init() {
        randomButton = UIButton(type: .system)
        sumLabel = UILabel()

        super.init(nibName: nil, bundle: nil)

        randomButton.setTitleColor(.white, for: .normal)
        randomButton.translatesAutoresizingMaskIntoConstraints = false
        randomButton.setTitle("Random Sum", for: .normal)
        randomButton.backgroundColor = .blue
        randomButton.addTarget(self, action: #selector(generateRandomSum(_:)), for: .touchUpInside)
        
        sumLabel.translatesAutoresizingMaskIntoConstraints = false
        sumLabel.textAlignment = .center
        sumLabel.text = "?"
        sumLabel.backgroundColor = .lightGray
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        addSubviews()
        layoutViews()
    }
    
    func addSubviews() {
        view.addSubview(randomButton)
        view.addSubview(sumLabel)
    }
    
    func layoutViews() {
        randomButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
        randomButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10).isActive = true
        randomButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        randomButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        
        
        sumLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
        sumLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10).isActive = true
        sumLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        sumLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100).isActive = true
    }
    
    // MARK: - Target Actions
    
    @objc func generateRandomSum(_ sender: UIButton) {
        let randomSubBillion = Int(arc4random_uniform(1000))
        let randomSum = add(numbers: Array(0...randomSubBillion))
        sumLabel.text = "\(randomSum)"
    }
    
    // MARK: - Private

    func add(numbers: [Int]) -> Int {
        return numbers.reduce(0, +)
    }

}

