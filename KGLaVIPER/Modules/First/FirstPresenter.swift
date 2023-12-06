//
//  FirstPresenter.swift
//  KGLaVIPER
//
//  Created by Macbook on 7/12/23.
//  
//

import Foundation

final class FirstPresenter {
	weak var view: FirstViewInput?
    weak var moduleOutput: FirstModuleOutput?
    
	private let router: FirstRouterInput
	private let interactor: FirstInteractorInput
    
    init(router: FirstRouterInput, interactor: FirstInteractorInput) {
        self.router = router
        self.interactor = interactor
    }
}

extension FirstPresenter: FirstModuleInput {
}

extension FirstPresenter: FirstViewOutput {
    
    func showSecondVC() {
        router.showSecondVC()
    }
    
}

extension FirstPresenter: FirstInteractorOutput {
}
