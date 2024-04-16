
//  GameScene.swift
//  game2
//
//  Created by Haneen Rida Shagroon on 11/09/1445 AH.


import SpriteKit
import GameplayKit

class GameScene: SKScene , SKPhysicsContactDelegate {
    let cameraNode = SKCameraNode()
    
    override func didMove(to view: SKView) {
        super.didMove(to: view)
        
        // Call method to generate maze
        generateMaze()
    }
    
    
    
    func generateMaze() {
        // Define maze dimensions
        let mazeWidth = 10
        let mazeHeight = 10
        
        // Create an instance of the Maze class
        let maze = Maze(width: mazeWidth, height: mazeHeight)
        
        // Output the maze to console (optional)
        maze.outputMaze()
        
        // Visualize the maze in the scene (you need to implement this)
        visualizeMaze(maze)
    }
    
    func visualizeMaze(_ maze: Maze) {
        // Implement visualization logic here
        // You'll need to traverse the maze data and create corresponding SpriteKit nodes to render the maze
        
        
        // Define the size of each maze tile
        let tileSize = CGSize(width: 10, height: 10)
        
        // Loop through each tile in the maze
        for (y, row) in maze.data.enumerated() {
            for (x, tile) in row.enumerated() {
                // Calculate the position of the tile node
                let position = CGPoint(x: x * Int(tileSize.width), y: y * Int(tileSize.height))
                
                // Create a SpriteKit node to represent the tile
                let tileNode = SKSpriteNode(color: .white, size: tileSize)
                
                // Set the position of the tile node
                tileNode.position = position
                
                // Set the color or texture of the tile node based on the cell type
                switch tile.cellType {
                case .Space:
                    // Set color for space
                    tileNode.color = .white
                case .Wall:
                    // Set color for wall
                    tileNode.color = .black
                }
                
                // Add the tile node to the scene
                addChild(tileNode)
            }
        }
        
    }
    
}
