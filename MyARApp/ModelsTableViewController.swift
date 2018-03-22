//
//  ModelsTableViewController.swift
//  ARToolkitAppDemo
//
//  Created by Andrey Vasilev on 22.03.2018.
//  Copyright © 2018 Quentin Fasquel. All rights reserved.
//

import UIKit

class ModelsTableViewController: UITableViewController {

    let models = ["car.dae",
                  "car.scn",
                  "candle.scn",
                  "vase.scn",
                  "lamp.scn",
                  "cup.scn",
                  "chair.scn"]
    
    var selectedModel: String?


    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return models.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = models[indexPath.row]
        return cell
    }
    
    // MARK: - Navigation
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedModel = models[indexPath.row]
        self.performSegue(withIdentifier: "segue", sender: nil)
    }
    

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let controller = segue.destination as? KitsTableViewController, let model = selectedModel {
            controller.modelName = model
        }
    }
    
}
