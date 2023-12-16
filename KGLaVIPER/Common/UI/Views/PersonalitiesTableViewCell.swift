//
//  SettingsTableViewCell.swift
//  KGHistoryVIPER
//
//  Created by Macbook on 11/12/23.
//

import UIKit

final class PersonalitiesTableViewCell: UITableViewCell {
    
    //MARK: - UI Components
    private let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray.withAlphaComponent(0.2)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 0.2
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowRadius = 3
        view.layer.shadowOpacity = 0.8
        view.layer.cornerRadius = 12
        return view
    }()
    
    private let personImageView: UIImageView = {
        let iv = UIImageView(frame: .zero)
        iv.tintColor = .black.withAlphaComponent(0.5)
        iv.translatesAutoresizingMaskIntoConstraints = false
        
        iv.layer.masksToBounds = false
        iv.backgroundColor = .white
        iv.image = UIImage(systemName: "person")
        return iv
    }()
    
    private let stuffLabel : UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Writer"
        return label
    }()
    
    private let nameLabel : UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = .red
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Togolok - Moldo"
        return label
    }()
    
    private var dateOfLifeLabel : UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = .red
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1894 - 1934"
        return label
    }()
    
    private lazy var vStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [stuffLabel, nameLabel, dateOfLifeLabel])
        stack.distribution = .fillEqually
        stack.alignment = .leading
        stack.axis = .vertical
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    //MARK: - LifeCycle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
        backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.personImageView.layer.cornerRadius = 44
        self.personImageView.clipsToBounds = true
    
    }
    
    // Should be implement
//    public func setupData(with _model: IndexPath) {
//        self.personImageView.image = model.image
//        self.stuffLabel.text = model.stuff
//        self.nameLabel.text = model.name
//        self.dateOfLifeLabel = model.date
//    }
    
    private func setupUI() {
        
        addSubview(containerView)
        self.containerView.addSubview(personImageView)
        self.containerView.addSubview(vStackView)
        
        NSLayoutConstraint.activate([
            
            self.containerView.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 5),
            self.containerView.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 5),
            self.containerView.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor, constant: -5),
            self.containerView.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor, constant: -5),
            
            self.personImageView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            self.personImageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 30),
            self.personImageView.widthAnchor.constraint(equalToConstant: 90),
            self.personImageView.heightAnchor.constraint(equalToConstant: 90),
            
            self.vStackView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 7),
            self.vStackView.leadingAnchor.constraint(equalTo: personImageView.trailingAnchor, constant: 30),
            self.vStackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -7),
            //self.vStackView.widthAnchor.constraint(equalToConstant: 200)

        ])
    }
}
