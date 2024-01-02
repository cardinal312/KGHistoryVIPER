//
//  SecondViewController.swift
//  KGLaVIPER
//
//  Created by Macbook on 7/12/23.
//  
//

import UIKit

  class EventViewController: UIViewController {
	private let output: EventViewOutput
    
    //MARK: - UI Components
    private lazy var eventsTableView: UITableView = {
        let headerView = EventHeaderView()
        let table = UITableView(frame: .zero, style: .plain)
        table.backgroundColor = .red.withAlphaComponent(0.7)
        table.register(EventsTableViewCell.self, forCellReuseIdentifier: EventsTableViewCell.reuseIdentifier)
        table.register(UITableViewCell.self)
        table.bounces = false
        table.tableHeaderView = headerView
        table.separatorColor = .blue.withAlphaComponent(8)
        table.separatorInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        table.estimatedRowHeight = 200
        table.rowHeight = UITableView.automaticDimension
        table.delegate = self
        table.dataSource = self
        return table
    }()

    init(output: EventViewOutput) {
        self.output = output
        
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
	override func viewDidLoad() {
		super.viewDidLoad()
        
        view.addSubview(eventsTableView)

	}
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        eventsTableView.tableHeaderView = EventHeaderView()
        self.eventsTableView.frame = view.bounds
    }
}

extension EventViewController: EventViewInput { }

extension EventViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: EventsTableViewCell.reuseIdentifier) else { return UITableViewCell() }
        return cell
    }
}

extension EventViewController: UITableViewDelegate {
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 250
//    }
}

private extension EventViewController {
    
}
