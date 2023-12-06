//
//  FirstRouter.swift
//  KGLaVIPER
//
//  Created by Macbook on 7/12/23.
//  
//

import UIKit

final class FirstRouter: BaseRouter {
}

extension FirstRouter: FirstRouterInput {
    
    func showSecondVC() {
        
        let context = SecondContext(moduleOutput: nil)
        let container = SecondContainer.assemble(with: context)
        
        navigationController.pushViewController(container.viewController, animated: true)
        
        
    }
}
