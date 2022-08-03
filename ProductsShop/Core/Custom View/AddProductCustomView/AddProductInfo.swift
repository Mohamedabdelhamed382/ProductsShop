//
//  AddProductInfo.swift
//  ProductsShop
//
//  Created by MohamedAbdelhamed on 03/08/2022.
//

import UIKit

class AddProductInfo: UIView {
    
    @IBOutlet weak var contentView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        nibSetup()
        
    }
        
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        nibSetup()
    }
        
    private func nibSetup() {
        Bundle.main.loadNibNamed("\(AddProductInfo.self)",
                                 owner: self, options: nil)
        guard let contentView = contentView else { return }
        contentView.frame = self.bounds
        addSubview(contentView)
        
       
    }
}
