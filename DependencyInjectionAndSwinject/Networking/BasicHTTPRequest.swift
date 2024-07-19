//
//  BasicHTTPRequest.swift
//  DependencyInjectionAndSwinject
//
//  Created by Nouman Gul Junejo on 20/07/2024.
//

import Foundation

struct BasicHTTPRequest: HTTPRequest {
    let url: URL
    let method: String
    let headers: [String: String]?
    let body: Data?
}
