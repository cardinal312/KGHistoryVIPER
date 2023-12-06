//
//  SecondContainer.swift
//  KGLaVIPER
//
//  Created by Macbook on 7/12/23.
//  
//

import UIKit

final class SecondContainer {
    let input: SecondModuleInput
	let viewController: UIViewController
	private(set) weak var router: SecondRouterInput!

	static func assemble(with context: SecondContext) -> SecondContainer {
        let router = SecondRouter()
        let interactor = SecondInteractor()
        let presenter = SecondPresenter(router: router, interactor: interactor)
		let viewController = SecondViewController(output: presenter)

		presenter.view = viewController
		presenter.moduleOutput = context.moduleOutput

		interactor.output = presenter

        return SecondContainer(view: viewController, input: presenter, router: router)
	}

    private init(view: UIViewController, input: SecondModuleInput, router: SecondRouterInput) {
		self.viewController = view
        self.input = input
		self.router = router
	}
}

struct SecondContext {
	weak var moduleOutput: SecondModuleOutput?
}
