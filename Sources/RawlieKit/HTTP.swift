//
//  HTTP.swift
//  Rawlie
//
//  Created by Steven Prichard on 10/31/18.
//

import Foundation

public protocol APIClient {
    func send<T: APIRequest>(_ request: T, completion: @escaping ResultCallback<T.Response>)
}

public protocol APIRequest: Encodable {
    associatedtype Response: Decodable
    
    var resourceName: String { get }
}

public enum Result<Value> {
    case success(Value)
    case failure(Error)
}

public enum ClientError {
    case encoding
    case decoding
    case server(message: String)
}

public typealias ResultCallback<Value> = (Result<Value>) -> Void



