//
//  SecondProtocols.swift
//  KGLaVIPER
//
//  Created by Macbook on 7/12/23.
//  
//

import Foundation

protocol EventModuleInput {
	var moduleOutput: EventModuleOutput? { get }
}

protocol EventModuleOutput: AnyObject {
}

protocol EventViewInput: AnyObject {
}

protocol EventViewOutput: AnyObject {
}

protocol EventInteractorInput: AnyObject {
}

protocol EventInteractorOutput: AnyObject {
}

protocol EventRouterInput: AnyObject {
}
