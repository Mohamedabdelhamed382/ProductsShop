//
//  OnboardingViewController.swift
//  ProductsShop
//
//  Created by MohamedAbdelhamed on 02/08/2022.
//

import UIKit

class OnboardingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func LoginInActionButton(_ sender: UIButton) {
    let vc = SignInViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

}
