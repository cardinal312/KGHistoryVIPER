//
//  SecondViewController.swift
//  KGLaVIPER
//
//  Created by Macbook on 7/12/23.
//  
//

import UIKit

final class SecondViewController: UIViewController {
	private let output: SecondViewOutput

    init(output: SecondViewOutput) {
        self.output = output
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
	override func viewDidLoad() {
		super.viewDidLoad()
        view.backgroundColor = .blue
        title = "Second VC"
	}
}

extension SecondViewController: SecondViewInput {
}
