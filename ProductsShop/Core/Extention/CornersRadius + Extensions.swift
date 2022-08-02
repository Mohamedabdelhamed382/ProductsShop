//
//  corners and radius.swift
//  ProductShop
//
//  Created by MOHAMED ABD ELHAMED AHMED on 20/07/2022.
//

import UIKit
extension UIView {
func round(corners: UIRectCorner, cornerRadius: Double) {
    
    let size = CGSize(width: cornerRadius, height: cornerRadius)
    let bezierPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: size)
    let shapeLayer = CAShapeLayer()
    shapeLayer.frame = self.bounds
    shapeLayer.path = bezierPath.cgPath
    self.layer.mask = shapeLayer
    }
}
