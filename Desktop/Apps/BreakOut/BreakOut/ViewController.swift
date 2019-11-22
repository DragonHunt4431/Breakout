//
//  ViewController.swift
//  BreakOut
//
//  Created by A.M. Student on 11/7/19.
//  Copyright © 2019 Bryce Caldwell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateLabel()
        showAlertWithThreeButton()
    }

  @IBAction func showAlertWithDistructiveButton() {
    let alert = UIAlertController(title: "App Would Like to Send You Notifications!", message: "Notifications may include alerts and icon badges. These can be configured in settings", preferredStyle: UIAlertController.Style.alert)

    alert.addAction(UIAlertAction(title: "Don't Allow", style: UIAlertAction.Style.default, handler: { _ in
          //Cancel Action
      }))
      alert.addAction(UIAlertAction(title: "Allow",
                                    style: UIAlertAction.Style.destructive,
                                    handler: {(_: UIAlertAction!) in
                                      //Sign out action
      }))
      self.present(alert, animated: true, completion: nil)
  }
   @IBAction func showAlertWithThreeButton() {
        let alert = UIAlertController(title: "Allow Tulsa Tech to acess your location?", message: "This app logs you location", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Allow While Using App", style: .default, handler: { (_) in
            print("You've allowed access")
        }))

        alert.addAction(UIAlertAction(title: "Allow Once", style: .default, handler: { (_) in
            print("You've allowed access once")
        }))

        alert.addAction(UIAlertAction(title: "Don't Allow", style: .destructive, handler: { (_) in
            print("You denied access")
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
// func showAlert() {
//        let alert = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
//        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
//        alert.addAction(action)
//        present(alert, animated: true, completion: nil)
//    }

    var counter = 0
    
    @IBAction func moveButton(button: UIButton) {
        // Find the button's width and height
        let buttonWidth = button.frame.width
        let buttonHeight = button.frame.height

        // Find the width and height of the enclosing view
        let viewWidth = button.superview!.bounds.width
        let viewHeight = button.superview!.bounds.height

        // Compute width and height of the area to contain the button's center
        let xwidth = viewWidth - buttonWidth
        let yheight = viewHeight - buttonHeight

        // Generate a random x and y offset
        let xoffset = CGFloat(arc4random_uniform(UInt32(xwidth)))
        let yoffset = CGFloat(arc4random_uniform(UInt32(yheight)))

        // Offset the button's center by the random offsets.
        button.center.x = xoffset + buttonWidth / 2
        button.center.y = yoffset + buttonHeight / 2
        counter += 1
        updateLabel()
    }
    @IBOutlet weak var poppedLabel: UILabel!
    
    func updateLabel () {
        poppedLabel.text = String(counter)
    }
    
}

