//
//  FirstPresenter.swift
//  KGLaVIPER
//
//  Created by Macbook on 7/12/23.
//  
//

import Foundation

final class HistoryPresenter {
	weak var view: HistoryViewInput?
    weak var moduleOutput: HistoryModuleOutput?
    
	private let router: HistoryRouterInput
	private let interactor: HistoryInteractorInput
    
    init(router: HistoryRouterInput, interactor: HistoryInteractorInput) {
        self.router = router
        self.interactor = interactor
    }
}

extension HistoryPresenter: HistoryModuleInput {
}

extension HistoryPresenter: HistoryViewOutput {
    
    func showSecondVC() {
        router.showSecondVC()
    }
    
}

extension HistoryPresenter: HistoryInteractorOutput {
}
