//
//  SecondPresenter.swift
//  KGLaVIPER
//
//  Created by Macbook on 7/12/23.
//  
//

import Foundation

final class SecondPresenter {
	weak var view: SecondViewInput?
    weak var moduleOutput: SecondModuleOutput?
    
	private let router: SecondRouterInput
	private let interactor: SecondInteractorInput
    
    init(router: SecondRouterInput, interactor: SecondInteractorInput) {
        self.router = router
        self.interactor = interactor
    }
}

extension SecondPresenter: SecondModuleInput {
}

extension SecondPresenter: SecondViewOutput {
}

extension SecondPresenter: SecondInteractorOutput {
}
