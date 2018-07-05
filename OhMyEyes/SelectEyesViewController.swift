//
//  SelectEyesViewController.swift
//  OhMyEyes
//
//  Created by Presto on 2018. 7. 4..
//  Copyright © 2018년 presto. All rights reserved.
//

import UIKit

class SelectEyesViewController: UIViewController {

    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.leftButton.addTarget(self, action: #selector(touchUpButton(_:)), for: .touchUpInside)
        self.rightButton.addTarget(self, action: #selector(touchUpButton(_:)), for: .touchUpInside)
    }
    
    @objc func touchUpButton(_ sender: UIButton) {
        guard let next = storyboard?.instantiateViewController(withIdentifier: "InputHeightViewController") else { return }
        UserInformation.shared.eyePosition = sender.tag == 0 ? .left : .right
        self.present(next, animated: false, completion: nil)
    }
}
