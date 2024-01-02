//
//  FirstContainer.swift
//  KGLaVIPER
//
//  Created by Macbook on 7/12/23.
//  
//

import UIKit

final class HistoryContainer {
    let input: HistoryModuleInput
	let viewController: UIViewController
	private(set) weak var router: HistoryRouterInput!

	static func assemble(with context: HistoryContext) -> HistoryContainer {
        
        let router = HistoryRouter()
        let interactor = HistoryInteractor()
        let presenter = HistoryPresenter(router: router, interactor: interactor)
		let viewController = HistoryViewController(output: presenter)

		presenter.view = viewController
		presenter.moduleOutput = context.moduleOutput

		interactor.output = presenter
        
        router.navigationProvider = { [weak viewController] in
            viewController?.navigationController
        }

        return HistoryContainer(view: viewController, input: presenter, router: router)
	}

    private init(view: UIViewController, input: HistoryModuleInput, router: HistoryRouterInput) {
		self.viewController = view
        self.input = input
		self.router = router
	}
}

struct HistoryContext {
	weak var moduleOutput: HistoryModuleOutput?
}
