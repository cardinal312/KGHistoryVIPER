//
//  SecondContainer.swift
//  KGLaVIPER
//
//  Created by Macbook on 7/12/23.
//  
//

import UIKit

final class EventContainer {
    let input: EventModuleInput
	let viewController: UIViewController
	private(set) weak var router: SecondRouterInput!

	static func assemble(with context: EventContext) -> EventContainer {
        let router = EventRouter()
        let interactor = EventInteractor()
        let presenter = EventPresenter(router: router, interactor: interactor)
		let viewController = EventViewController(output: presenter)

		presenter.view = viewController
		presenter.moduleOutput = context.moduleOutput

		interactor.output = presenter

        return EventContainer(view: viewController, input: presenter, router: router)
	}

    private init(view: UIViewController, input: EventModuleInput, router: SecondRouterInput) {
		self.viewController = view
        self.input = input
		self.router = router
	}
}

struct EventContext {
	weak var moduleOutput: EventModuleOutput?
}
