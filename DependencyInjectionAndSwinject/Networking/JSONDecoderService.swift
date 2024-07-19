//
//  JSONDecoderService.swift
//  DependencyInjectionAndSwinject
//
//  Created by Nouman Gul Junejo on 20/07/2024.
//

import Foundation

class JSONDecoderService {
    func decode<T: Decodable>(_ type: T.Type, from data: Data) throws -> T {
        do {
            
            let decodedObject = try JSONDecoder.default.decode(T.self, from: data)
            return decodedObject
        } catch {
            // Customize or rethrow the error as needed
            throw error
        }
    }
}

extension JSONDecoder {
    /// Default JSONDecoder with key decoding strategy set to convert from snake case.
    static var `default`: JSONDecoder {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return decoder
    }
}
