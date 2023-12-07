//
//  FirstViewController.swift
//  KGLaVIPER
//
//  Created by Macbook on 7/12/23.
//  
//

import UIKit

final class HistoryViewController: UIViewController {
    private let output: HistoryViewOutput
    
    private let pushButton: UIButton = {
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 150, height: 50))
        btn.setTitle("Next VC", for: .normal)
        btn.tintColor = .white
        btn.backgroundColor = .systemBlue
        btn.layer.cornerRadius = 12
        btn.addTarget(self, action: #selector(pushButtonTapped), for: .touchUpInside)
        return btn
    }()
    
    init(output: HistoryViewOutput) {
        self.output = output
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        view.addSubview(pushButton)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        title = "Second VC"
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.pushButton.center = view.center
    }

}

extension HistoryViewController: HistoryViewInput {
    
    @objc private func pushButtonTapped() {
        output.showSecondVC()
    }
}
