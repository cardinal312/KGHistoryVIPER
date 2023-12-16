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
        
        navigationController?.pushViewController(UIViewController(), animated: true)
        
        
    }
}
