//
//  ViewController.swift
//  MeasureMash
//
//  Created by Andrew Wang on 4/7/23.
//

import UIKit
import RealityKit

class ARViewController: UIViewController {
    
    @IBOutlet weak var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
    }
}