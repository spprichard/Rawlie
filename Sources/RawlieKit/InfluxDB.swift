//
//  InfluxDB.swift
//  Rawlie
//
//  Created by Steven Prichard on 10/31/18.
//

import Foundation

public class InfluxDBClient {
    func send<T: APIRequest>(_ request: T, completion: @escaping ResulCallback<DataContainer<T.Response>>)
    
}
