//
//  BaseRouter.swift
//  KGLaVIPER
//
//  Created by Macbook on 7/12/23.
//

import UIKit

class BaseRouter {
    
    var navigationProvider: (() -> UINavigationController?)?
    
    var navigationController: UINavigationController? {
        self.navigationProvider?()
    }
}
