//
//  SignInViewController.swift
//  ProductsShop
//
//  Created by MohamedAbdelhamed on 02/08/2022.
//

import UIKit

class SignInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func signInActionButton(_ sender: Any) {
        let vc = AddProductViewController()
            navigationController?.pushViewController(vc, animated: true)
    }

}
