//
//  AddProductHeaderViewView.swift
//  ProductsShop
//
//  Created by MohamedAbdelhamed on 04/08/2022.
//

import UIKit
class AddProductHeaderViewView: UIView {
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var collectionView: UICollectionView!

    override init(frame: CGRect) {
        super.init(frame: frame)
        nibSetup()
    }
        
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        nibSetup()
    }
        
    private func nibSetup() {
        Bundle.main.loadNibNamed("\(AddProductHeaderViewView.self)", owner: self, options: nil)
        guard let contentView = contentView else { return }
        contentView.frame = self.bounds
        addSubview(contentView)
        setupUI()
    }
    
}

extension AddProductHeaderViewView {
    
    private func setupUI() {
        registerCollectionViewCell()
    }
    
    private func registerCollectionViewCell() {
        
        let AddImageHeaderViewCellNib = UINib(nibName: "\(AddImageHeaderViewCell.self)", bundle: nil)
        collectionView.register(AddImageHeaderViewCellNib, forCellWithReuseIdentifier: "\(AddImageHeaderViewCell.self)")
        
        let AddImageCollectionViewCellNib = UINib(nibName: "\(AddImageCollectionViewCell.self)", bundle: nil)
        collectionView.register(AddImageCollectionViewCellNib, forCellWithReuseIdentifier: "\(AddImageCollectionViewCell.self)")
    }
    
}

extension AddProductHeaderViewView: UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return section == 0 ? 2 : 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(AddImageCollectionViewCell.self)", for: indexPath) as? AddImageCollectionViewCell ?? AddImageCollectionViewCell()
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(AddImageHeaderViewCell.self)", for: indexPath) as? AddImageHeaderViewCell ?? AddImageHeaderViewCell()
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 92, height: 92)
    }
    
}
