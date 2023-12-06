//
//  SecondProtocols.swift
//  KGLaVIPER
//
//  Created by Macbook on 7/12/23.
//  
//

import Foundation

protocol SecondModuleInput {
	var moduleOutput: SecondModuleOutput? { get }
}

protocol SecondModuleOutput: class {
}

protocol SecondViewInput: class {
}

protocol SecondViewOutput: class {
}

protocol SecondInteractorInput: class {
}

protocol SecondInteractorOutput: class {
}

protocol SecondRouterInput: class {
}
