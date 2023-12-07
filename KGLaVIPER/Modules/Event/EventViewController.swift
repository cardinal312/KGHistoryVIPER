//
//  SecondViewController.swift
//  KGLaVIPER
//
//  Created by Macbook on 7/12/23.
//  
//

import UIKit

final class EventViewController: UIViewController {
	private let output: EventViewOutput

    init(output: EventViewOutput) {
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

extension EventViewController: EventViewInput {
    
}
