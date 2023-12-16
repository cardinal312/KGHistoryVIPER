//
//  HistoryCollectionCollectionViewCell.swift
//  KGHistoryVIPER
//
//  Created by Macbook on 7/12/23.
//

import UIKit

final class HistoryCollectionCollectionViewCell: UICollectionViewCell {
    
    private let historyImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "person")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .blue
        imageView.tintColor = .red
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        label.text = "Title"
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.textColor = .label
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 14)
        label.text = "Description"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupConstaints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.masksToBounds = true
        layer.cornerRadius = 20
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowRadius = 5
        layer.shadowOpacity = 5
        backgroundColor = .gray.withAlphaComponent(0.1)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
//        historyImageView.image = nil
//        titleLabel.text = nil
//        descriptionLabel.text = nil
    }
    
    private func setupConstaints() {
        self.contentView.addSubview(historyImageView)
        self.contentView.addSubview(titleLabel)
        self.contentView.addSubview(descriptionLabel)
        
        NSLayoutConstraint.activate([
            self.historyImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            self.historyImageView.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor),
            self.historyImageView.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor),
            self.historyImageView.heightAnchor.constraint(equalToConstant: contentView.bounds.height / 2 + 70),
            
            self.titleLabel.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 15),
            self.titleLabel.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor),
            self.titleLabel.topAnchor.constraint(equalTo: historyImageView.bottomAnchor, constant: 5),
            
            self.descriptionLabel.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 15),
            self.descriptionLabel.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor),
            self.descriptionLabel.topAnchor.constraint(equalTo: titleLabel.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
