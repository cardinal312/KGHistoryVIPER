//
//  FirstProtocols.swift
//  KGLaVIPER
//
//  Created by Macbook on 7/12/23.
//  
//

import Foundation

protocol HistoryModuleInput {
	var moduleOutput: HistoryModuleOutput? { get }
}

protocol HistoryModuleOutput: AnyObject {
}

protocol HistoryViewInput: AnyObject {
}

protocol HistoryViewOutput: AnyObject {
    func showSecondVC()
}

protocol HistoryInteractorInput: AnyObject {
}

protocol HistoryInteractorOutput: AnyObject {
}

protocol HistoryRouterInput: AnyObject {
    func showSecondVC()
}
