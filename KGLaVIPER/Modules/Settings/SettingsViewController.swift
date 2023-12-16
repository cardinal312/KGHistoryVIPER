//
//  SettingsViewController.swift
//  KGLaVIPER
//
//  Created by Macbook on 7/12/23.
//  
//

import UIKit

final class SettingsViewController: UIViewController {
	private let output: SettingsViewOutput
    
    

    init(output: SettingsViewOutput) {
        self.output = output
        let view = UIView()
        view.backgroundColor = .yellow
        
        super.init(nibName: nil, bundle: nil)
        self.view = view
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
	override func viewDidLoad() {
		super.viewDidLoad()
        
        
        
        navigationController?.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "car"), style: .plain, target: nil, action: nil)
        
        
	}
    
    
}

extension SettingsViewController: SettingsViewInput {
}

extension SettingsViewController {
    
}

extension SettingsViewController {
    
    
    
}
