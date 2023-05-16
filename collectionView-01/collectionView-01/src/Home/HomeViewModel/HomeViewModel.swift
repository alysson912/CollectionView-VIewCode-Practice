//
//  HomeViewModel.swift
//  collectionView-01
//
//  Created by ALYSSON DODO on 16/05/23.
//

import UIKit

class HomeViewModel {

    public var numberOfRowsInSection: Int {
       return 3
    }
    
    public func heightForRowAt(indexpath: IndexPath) -> CGFloat {
        return 150
    }
}
