//
//  ARKitViewController.swift
//  MyARApp
//
//  Created by Andrey Vasilev on 20.03.2018.
//  Copyright © 2018 Quentin Fasquel. All rights reserved.
//

import UIKit
import ARKit

class ARKitViewController: BaseViewController {
    
    @IBOutlet weak var sceneView: ARSCNView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureLighting()
        addNode()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let configuration = ARWorldTrackingConfiguration()
        sceneView?.session.run(configuration, options: [.removeExistingAnchors, .resetTracking])
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        sceneView.session.pause()
    }
    
    func configureLighting() {
        sceneView.autoenablesDefaultLighting = true
        sceneView.automaticallyUpdatesLighting = true
    }
    
    func addNode(x: Float = 0, y: Float = 0, z: Float = -0.5) {
        guard let scene = SCNScene(named: self.modelName) else { return }
        let node = SCNNode()
        let sceneChildNodes = scene.rootNode.childNodes
        for childNode in sceneChildNodes {
            node.addChildNode(childNode)
        }
        node.position = SCNVector3(x, y, z)
        node.scale = SCNVector3(0.5, 0.5, 0.5)
        sceneView.scene.rootNode.addChildNode(node)
    }

}
