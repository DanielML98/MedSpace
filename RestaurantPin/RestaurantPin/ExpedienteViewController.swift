//
//  ExpedienteViewController.swift
//  RestaurantPin
//
//  Created by Luis Roberto Blancas Lemini on 24/01/20.
//  Copyright © 2020 Luis Roberto Blancas Lemini. All rights reserved.
//

import UIKit

class ExpedienteViewController: UIViewController {

    @IBOutlet weak var pacientView: UIImageView!

    var pacientImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let imageToLoad = pacientImage {
            pacientView.image = UIImage(named: imageToLoad)
        }

    }
}
