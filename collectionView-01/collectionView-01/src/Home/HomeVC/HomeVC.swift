//
//  ViewController.swift
//  collectionView-01
//
//  Created by ALYSSON DODO on 13/05/23.
//

import UIKit

class HomeVC: UIViewController {

    private var screen: HomeScreen?
    
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

