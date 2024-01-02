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
    
    //MARK: - UI Components
    private lazy var historyCollectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 15
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 15, left: 7, bottom: 0, right: 7)
        
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.register(HistoryCollectionCollectionViewCell.self, forCellWithReuseIdentifier: HistoryCollectionCollectionViewCell.reuseIdentifier)
        collection.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collection.showsVerticalScrollIndicator = false
        collection.bounces = false
        collection.delegate = self
        collection.dataSource = self
        return collection
    }()
    
    //MARK: - Lifecycle
    init(output: HistoryViewOutput) {
        self.output = output
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        view.addSubview(historyCollectionView)
       
        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "globe"), style: .plain, target: self, action: #selector(rightBarButtonTapped))
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.historyCollectionView.frame = view.bounds
    }
}

extension HistoryViewController: HistoryViewInput {
    
    @objc private func rightBarButtonTapped() {
            print(ObjectIdentifier(self))
    }
}

extension HistoryViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HistoryCollectionCollectionViewCell.reuseIdentifier, for: indexPath) as? HistoryCollectionCollectionViewCell else {
            return UICollectionViewCell()
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        print(indexPath)
    }
}

extension HistoryViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.bounds.size.width / 2.2, height: view.bounds.size.height / 3.9)
    }
}
