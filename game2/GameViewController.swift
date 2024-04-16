//
//  GameViewController.swift
//  game2
//
//  Created by Haneen Rida Shagroon on 11/09/1445 AH.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Cast the view to an SKView instance
        guard let skView = self.view as? SKView else {
            return
        }

        // Create the game scene and set its size to match the view's bounds
        let scene = GameScene(size: view.bounds.size)
        
        // Optionally, set the scale mode to maintain the aspect ratio
        scene.scaleMode = .aspectFill

        // Present the scene in the SKView
        skView.presentScene(scene)
        
        // Optionally, enable debug options
        skView.showsFPS = true
        skView.showsNodeCount = true
        
        // Remove or comment out the following line, as `SKView` does not have an `allowsCameraControl` property
        // skView.allowsCameraControl = true
    }

    // Define autorotation behavior
    override var shouldAutorotate: Bool {
        return true
    }

    // Hide the status bar
    override var prefersStatusBarHidden: Bool {
        return true
    }

    // Define supported interface orientations
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }
}

