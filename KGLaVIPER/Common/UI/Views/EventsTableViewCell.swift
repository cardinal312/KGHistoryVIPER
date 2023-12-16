//
//  EventsTableViewCell.swift
//  KGHistoryVIPER
//
//  Created by Macbook on 11/12/23.
//

import UIKit

final class EventsTableViewCell: UITableViewCell {
    
    //MARK: - UI Components
    private let indexLabel : UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        label.textAlignment = .left
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = Int.random(in: 0...99).description
        return label
    }()
    
    private let datesLabel : UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = Date().description
        return label
    }()
    
    private let descTextView : UITextView = {
        let tv = UITextView(frame: .zero)
        tv.textColor = .black
        tv.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        tv.textAlignment = .left
       // tv.numberOfLines = 0
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.text = "datejrgfknrsfrngklrngnrekjnflkergjnrgnfelngjrnlkfgnrkngklrfjvrhfiurhfrhfkjsnfjkbnlvjkbdnvkjdbnjcsbkfndsjkfbsbddbcvkdsbckdbshjvfrfvbdshvbsbvfwffwfS"
        return tv
    }()
    
    override func prepareForReuse() {
        super.prepareForReuse()
//        self.indexLabel.text = nil
//        self.datesLabel.text = nil
//        self.descTextView.text = nil
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupConstaints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstaints() {
        self.contentView.addSubview(indexLabel)
        self.contentView.addSubview(datesLabel)
        self.contentView.addSubview(descTextView)
        
        NSLayoutConstraint.activate([
        
            self.indexLabel.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor),
            self.indexLabel.leadingAnchor.constraint(equalTo: self.contentView.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            self.indexLabel.heightAnchor.constraint(equalToConstant: 20),
            self.indexLabel.widthAnchor.constraint(equalToConstant: 30),
            
            self.datesLabel.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor),
            self.datesLabel.leadingAnchor.constraint(equalTo: self.indexLabel.trailingAnchor, constant: 30),
            self.datesLabel.heightAnchor.constraint(equalToConstant: 20),
            self.datesLabel.widthAnchor.constraint(equalToConstant: 80),
            
           // self.descTextView.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor),
            self.descTextView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 10),
            self.descTextView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
            self.descTextView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -20),
            self.descTextView.heightAnchor.constraint(equalToConstant: 150),
           self.descTextView.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    
}
