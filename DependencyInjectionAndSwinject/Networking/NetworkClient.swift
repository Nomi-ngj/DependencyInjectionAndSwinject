//
//  NetworkClient.swift
//  DependencyInjectionAndSwinject
//
//  Created by Nouman Gul Junejo on 20/07/2024.
//

import Foundation

protocol NetworkClient {
    func sendRequest(_ request: HTTPRequest, completion: @escaping (Result<Data, Error>) -> Void)
}

protocol NetworkService {
    func fetchData(from url: URL, completion: @escaping (Result<Data, Error>) -> Void)
}

