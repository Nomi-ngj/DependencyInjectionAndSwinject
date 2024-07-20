//
//  DefaultDataPresenter.swift
//  DependencyInjectionAndSwinject
//
//  Created by Nouman Gul Junejo on 20/07/2024.
//

import Foundation

class DefaultDataPresenter: DataPresenter {
    private weak var view: DataView?
    private let networkService: NetworkService
    private let jsonDecoderService:JSONDecoderService

    private let dataURL = URL(string: "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/appetizers")!

    init(view: DataView?, networkService: NetworkService, jsonDecoderService: JSONDecoderService) {
        self.view = view
        self.networkService = networkService
        self.jsonDecoderService = jsonDecoderService
    }

    func loadData() {
        networkService.fetchData(from: dataURL) { [weak self] result in
            guard let self else { return }
            switch result {
            case .success(let data):
                do {
                    let dataResponse: AppetizersDataResponse = try self.jsonDecoderService.decode(AppetizersDataResponse.self, from: data)
                    self.view?.displayData(dataResponse.request)
                } catch {
                    self.view?.displayError(error)
                }
            case .failure(let error):
                self.view?.displayError(error)
            }
        }
    }
}
