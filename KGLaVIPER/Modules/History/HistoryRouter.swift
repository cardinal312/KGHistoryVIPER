//
//  FirstRouter.swift
//  KGLaVIPER
//
//  Created by Macbook on 7/12/23.
//  
//

import UIKit

final class HistoryRouter: BaseRouter {
}

extension HistoryRouter: HistoryRouterInput {
    
    func showSecondVC() {
        
        let context = EventContext(moduleOutput: nil)
        let container = EventContainer.assemble(with: context)
        
        navigationController.pushViewController(container.viewController, animated: true)
        
        
    }
}
