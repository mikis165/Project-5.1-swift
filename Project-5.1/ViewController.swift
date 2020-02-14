//
//  ViewController.swift
//  Project-5.1
//
//  Created by michele saladino on 13/02/2020.
//  Copyright © 2020 michele saladino. All rights reserved.
//

import UIKit
import Photos

class ViewController: UIViewController {
    
    
   

    @IBOutlet weak var imagePicked: UIImageView!
    
    
    @IBOutlet weak var camera: UIImageView!
    
    
    
    func displayImagePickingOptions(){
        print("Displaying Image Picking Options")
        let alertController = UIAlertController(title: "Choose image", message:
            nil, preferredStyle: .actionSheet)
        
        
        let cameraAction = UIAlertAction(title: "Take photo", style: .default) { (action) in
            self.displayCamera()
        }
        
        // add camera action to alert controller
        alertController.addAction(cameraAction)
        
        // create library action
        let libraryAction = UIAlertAction(title: "Library pick", style: .default) { (action) in
            self.displayLibrary()
        }
        
        // add library action to alert controller
        alertController.addAction(libraryAction)
        
        // create random action
        let randomAction = UIAlertAction(title: "Random", style: .default) { (action) in
            self.pickRandom()
        }
        
        // add random action to alert controller
        alertController.addAction(randomAction)
        
        // create cancel action
        let canceclAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            print("Cancellation image picking - doing nothing in fact:")
        }
        
        // add cancel action to alert controller
        alertController.addAction(canceclAction)
        
        present(alertController, animated: true) {
            // code to execute after the controller finished presenting
        }
        
    }
        func displayCamera() {
            print("Launching device camera")
        }
        
        func displayLibrary() {
            print("Launching device library")
        }
        
        func pickRandom() {
            print("Picking from local images")
        }
        
    
    
    

        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        }


}

