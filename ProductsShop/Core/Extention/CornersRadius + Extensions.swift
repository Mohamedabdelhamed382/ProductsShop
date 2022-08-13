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

import UIKit

extension UIImage {
    static func from(color: UIColor) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context!.setFillColor(color.cgColor)
        context!.fill(rect)
        let img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return img!
    }
}
