//
//  EventHeaderView.swift
//  KGHistoryVIPER
//
//  Created by Macbook on 11/12/23.
//

import UIKit

final class EventHeaderView: UIView {
    
    var eventHeaderViewClosure: (() -> Void)?
    
    //MARK: - UI Components
    
    private let penImageView: UIImageView = {
        let iv = UIImageView(frame: .zero)
        iv.tintColor = .black.withAlphaComponent(0.5)
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.backgroundColor = .clear
        iv.image = UIImage(systemName: "star")
        return iv
    }()
    
    private let eventDateLabel : UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "date"
        return label
    }()
    
    private let eventsLabel : UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        label.textAlignment = .right
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "events"
        return label
    }()
    
    private let shuffledButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.setImage(UIImage(systemName: "arrow.up.arrow.down"), for: .normal)
        button.tintColor = .blue.withAlphaComponent(0.5)
        button.backgroundColor = .clear
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.masksToBounds = false
        button.clipsToBounds = true
        button.addTarget(self, action: #selector(shuffledButtonTapped), for: .touchUpInside)
        return button
    }()
    
    @objc private func shuffledButtonTapped() {
        //print(#function)
        
        self.eventHeaderViewClosure?()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .yellow
        self.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: 50)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.shuffledButton.layer.cornerRadius = self.shuffledButton.frame.width / 2
    }
    
    private func setupUI() {
        
        addSubview(penImageView)
        addSubview(eventDateLabel)
        addSubview(eventsLabel)
        addSubview(shuffledButton)
        
        NSLayoutConstraint.activate([
            self.penImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            self.penImageView.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor, constant: 20),
            self.penImageView.widthAnchor.constraint(equalToConstant: 20),
            self.penImageView.heightAnchor.constraint(equalToConstant: 20),
            
            self.eventDateLabel.leadingAnchor.constraint(equalTo: self.penImageView.trailingAnchor, constant: 30),
            self.eventDateLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            self.eventsLabel.heightAnchor.constraint(equalToConstant: 20),
            
            self.shuffledButton.centerYAnchor.constraint(equalTo: centerYAnchor),
            self.shuffledButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            self.shuffledButton.widthAnchor.constraint(equalToConstant: 30),
            self.shuffledButton.heightAnchor.constraint(equalToConstant: 30),
        
            self.eventsLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            self.eventsLabel.trailingAnchor.constraint(equalTo: self.shuffledButton.leadingAnchor,constant: -40),
            self.eventsLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
}
