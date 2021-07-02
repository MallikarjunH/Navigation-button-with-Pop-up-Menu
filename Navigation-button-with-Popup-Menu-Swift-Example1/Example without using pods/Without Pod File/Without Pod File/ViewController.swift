//
//  ViewController.swift
//  Without Pod File
//
//  Created by Mallikarjun on 25/10/18.
//  Copyright © 2018 Mallikarjun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var menuOptionNameArray : [String] {
        return ["Share","Delete","Upload","Download","Share"]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
       
        let searchImage  = UIImage(named: "test")!
        
        let searchButton = UIBarButtonItem(image: searchImage,  style: .plain, target: self, action: #selector(handleAddBarButtonItem2(_:event:)) )
        
        navigationItem.rightBarButtonItems = [searchButton]
        
        
    }


    /*
   // If you want to customize pop over menu then goto //  FTConstants.swift file and do custom changes
     
 */
    
    // MARK: - handle UIBarButtonItem tapped
    @IBAction func handleAddBarButtonItem1(_ sender: UIBarButtonItem, event: UIEvent) {
        
        FTPopOverMenu.showForEvent(event: event,
                                   with: menuOptionNameArray,
                                   menuImageArray: ["Pokemon_Go_01","Pokemon_Go_02","Pokemon_Go_03","Pokemon_Go_04","Pokemon_Go_01"],
                                   done: {  (selectedIndex) -> () in
                                    
                                    if selectedIndex == 0{
                                        print("clicked on index 0")
                                    }
                                    if selectedIndex == 1{
                                        print("clicked on index 1")
                                    }else if selectedIndex == 2{
                                        print("clicked on index 2")
                                    }   //.....etc
        }) {
            
        }
        
    }
    
    @objc func handleAddBarButtonItem2(_ sender: UIBarButtonItem, event: UIEvent) {
        
        FTPopOverMenu.showForEvent(event: event,
                                   with: menuOptionNameArray,
                                   menuImageArray: ["test","test","test","test","test"],
                                   done: { (selectedIndex) -> () in
                                    
        }) {
            
        }
        
    }
    
}

