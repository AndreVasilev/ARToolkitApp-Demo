//
//  KitsTableViewController.swift
//  ARToolkitAppDemo
//
//  Created by Andrey Vasilev on 22.03.2018.
//  Copyright © 2018 Quentin Fasquel. All rights reserved.
//

import UIKit

class KitsTableViewController: UITableViewController {

    var modelName: String?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let controller = segue.destination as? BaseViewController, let model = modelName {
            controller.modelName = model
        }
    }

}
