//
//  BUttonShadows.swift
//  AapnaConnect
//
//  Created by Admin on 22/06/22.
//

import Foundation
import UIKit

//MARK: - Button shadow extension
extension UIButton {
func setRadiusWithShadow(_ radius: CGFloat? = nil) {
    // this method adds shadow to right and bottom side of button
    self.layer.cornerRadius = radius ?? self.frame.width / 2
    self.layer.shadowColor = UIColor.darkGray.cgColor
    self.layer.shadowOffset = CGSize(width: 1.5, height: 1.5)
    self.layer.shadowRadius = 1.0
    self.layer.shadowOpacity = 0.7
    self.layer.masksToBounds = false
   }
}
