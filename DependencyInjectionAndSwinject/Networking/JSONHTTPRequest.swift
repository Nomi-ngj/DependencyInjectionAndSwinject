//
//  JSONHTTPRequest.swift
//  DependencyInjectionAndSwinject
//
//  Created by Nouman Gul Junejo on 20/07/2024.
//

import Foundation

struct JSONHTTPRequest: HTTPRequest {
    let url: URL
    let method: String
    let headers: [String: String]?
    let body: Data?

    init(url: URL, method: String, headers: [String: String]? = nil, jsonBody: [String: Any]? = nil) {
        self.url = url
        self.method = method
        self.headers = headers ?? ["Content-Type": "application/json"]
        if let jsonBody = jsonBody {
            self.body = try? JSONSerialization.data(withJSONObject: jsonBody, options: [])
        } else {
            self.body = nil
        }
    }
}
