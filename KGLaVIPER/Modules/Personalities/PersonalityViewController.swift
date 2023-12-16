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
    
    //MARK: - UI Components
    private lazy var personalitiesTableView: UITableView = {
        let table = UITableView(frame: .zero, style: .plain)
        table.bounces = false
        table.backgroundColor = .yellow
        table.separatorStyle = .none
        table.showsVerticalScrollIndicator = false
        table.register(PersonalitiesTableViewCell.self, forCellReuseIdentifier: PersonalitiesTableViewCell.reuseIdentifier)
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        table.delegate = self
        table.dataSource = self
        return table
    }()

    init(output: PersonalityViewOutput) {
        self.output = output
        
//        let view = UIView()
//        view.backgroundColor = .red
        
        
        super.init(nibName: nil, bundle: nil)
//        view.addSubview(personalitiesTableView)
//        self.view = view
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
	override func viewDidLoad() {
		super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(personalitiesTableView)
        
        navigationController?.hidesBarsOnTap = true
        navigationController?.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "airplane"), style: .plain, target: nil, action: nil)
        
	}
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        self.personalitiesTableView.frame = view.bounds
    }
    
    
}

extension PersonalityViewController: PersonalityViewInput {
}

extension PersonalityViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PersonalitiesTableViewCell.reuseIdentifier) else {
            return UITableViewCell()
        }
    
        //TODO: - Should be implement
       // cell.setupData(with _model: IndexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}

extension PersonalityViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print(indexPath)
    }
}

