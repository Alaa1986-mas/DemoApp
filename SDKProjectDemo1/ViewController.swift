//
//  ViewController.swift
//  SDKProjectDemo1
//
//  Created by עלאא דאהר on 15/02/2020.
//  Copyright © 2020 עלאא דאהר. All rights reserved.
//

import UIKit
import SDK

class ViewController: UIViewController {

    var tracksArr : [Track] = []
    let querService = QueryService.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        querService.getSearchResults(searchItem: "Muse") { [weak self] (tracks, error) in
            if let tracks = tracks {
                self?.tracksArr = tracks
                print(self?.tracksArr[0].trackName)
            }
           
        }
        
    }


}

