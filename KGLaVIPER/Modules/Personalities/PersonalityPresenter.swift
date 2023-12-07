//
//  PersonalityPresenter.swift
//  KGLaVIPER
//
//  Created by Macbook on 7/12/23.
//  
//

import Foundation

final class PersonalityPresenter {
	weak var view: PersonalityViewInput?
    weak var moduleOutput: PersonalityModuleOutput?
    
	private let router: PersonalityRouterInput
	private let interactor: PersonalityInteractorInput
    
    init(router: PersonalityRouterInput, interactor: PersonalityInteractorInput) {
        self.router = router
        self.interactor = interactor
    }
}

extension PersonalityPresenter: PersonalityModuleInput {
}

extension PersonalityPresenter: PersonalityViewOutput {
}

extension PersonalityPresenter: PersonalityInteractorOutput {
}
