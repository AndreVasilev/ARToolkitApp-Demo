//
//  SceneKitViewController.swift
//  ARToolkitAppDemo
//
//  Created by Andrey Vasilev on 22.03.2018.
//  Copyright © 2018 Quentin Fasquel. All rights reserved.
//

import UIKit

class SceneKitViewController: BaseViewController {

    @IBOutlet weak var sceneView: SCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sceneView.autoenablesDefaultLighting = true
        addNode()
    }
    
    func addNode(x: Float = 0, y: Float = 0, z: Float = -0.5) {
        guard let scene = SCNScene(named: self.modelName) else { return }
        sceneView.scene = scene
    }

}
