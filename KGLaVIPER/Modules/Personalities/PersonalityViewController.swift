//
//  PersonalityViewController.swift
//  KGLaVIPER
//
//  Created by Macbook on 7/12/23.
//  
//

import UIKit

final class PersonalityViewController: UIViewController {
	private let output: PersonalityViewOutput

    init(output: PersonalityViewOutput) {
        self.output = output
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
	override func viewDidLoad() {
		super.viewDidLoad()
        
	}
}

extension PersonalityViewController: PersonalityViewInput {
}
