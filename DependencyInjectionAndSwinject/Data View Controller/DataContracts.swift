//
//  DataPresenter.swift
//  DependencyInjectionAndSwinject
//
//  Created by Nouman Gul Junejo on 20/07/2024.
//

import Foundation

protocol DataPresenter {
    func loadData()
}

protocol DataView: AnyObject {
    func displayData(_ data: [MenuItem])
    func displayError(_ error: Error)
}
