//
//  FirstContainer.swift
//  KGLaVIPER
//
//  Created by Macbook on 7/12/23.
//  
//

import UIKit

final class FirstContainer {
    let input: FirstModuleInput
	let viewController: UIViewController
	private(set) weak var router: FirstRouterInput!

	static func assemble(with context: FirstContext) -> FirstContainer {
        let router = FirstRouter()
        let interactor = FirstInteractor()
        let presenter = FirstPresenter(router: router, interactor: interactor)
		let viewController = FirstViewController(output: presenter)

		presenter.view = viewController
		presenter.moduleOutput = context.moduleOutput

		interactor.output = presenter
        
        router.navigationProvider = { [weak viewController] in
            (viewController?.navigationController)!
        }

        return FirstContainer(view: viewController, input: presenter, router: router)
	}

    private init(view: UIViewController, input: FirstModuleInput, router: FirstRouterInput) {
		self.viewController = view
        self.input = input
		self.router = router
	}
}

struct FirstContext {
	weak var moduleOutput: FirstModuleOutput?
}
