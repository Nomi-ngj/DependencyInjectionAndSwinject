//
//  DefaultNetworkService.swift
//  DependencyInjectionAndSwinject
//
//  Created by Nouman Gul Junejo on 20/07/2024.
//

import Foundation

class DefaultNetworkService: NetworkService {
    private let networkClient: NetworkClient

    init(networkClient: NetworkClient) {
        self.networkClient = networkClient
    }

    func fetchData(from url: URL, completion: @escaping (Result<Data, Error>) -> Void) {
        let request = BasicHTTPRequest(url: url, method: "GET", headers: nil, body: nil)
        networkClient.sendRequest(request, completion: completion)
    }
}
