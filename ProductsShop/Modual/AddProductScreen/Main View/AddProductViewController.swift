//
//  AddProductViewController.swift
//  ProductsShop
//
//  Created by MohamedAbdelhamed on 02/08/2022.
//

import UIKit

class AddProductViewController: UIViewController {

    @IBOutlet weak var headerView: AddProductHeaderViewView!
    
    
    init() {
        super.init(nibName: "\(AddProductViewController.self)", bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}


