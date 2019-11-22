//
//  Round Button.swift
//  BreakOut
//
//  Created by A.M. Student on 11/7/19.
//  Copyright © 2019 Bryce Caldwell. All rights reserved.
//

import Foundation
    import UIKit

    @IBDesignable
    class RoundButton: UIButton {

        @IBInspectable var cornerRadius: CGFloat = 0{
            didSet{
            self.layer.cornerRadius = cornerRadius
            }
        }

        @IBInspectable var borderWidth: CGFloat = 0{
            didSet{
                self.layer.borderWidth = borderWidth
            }
        }

        @IBInspectable var borderColor: UIColor = UIColor.clear{
            didSet{
                self.layer.borderColor = borderColor.cgColor
            }
        }
    }