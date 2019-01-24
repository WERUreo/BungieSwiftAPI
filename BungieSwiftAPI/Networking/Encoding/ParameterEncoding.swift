//
//  ParameterEncoding.swift
//  BungieSwiftAPI
//
//  Created by Kelii Martin on 12/28/18.
//  Copyright © 2018 WERUreo. All rights reserved.
//

import Foundation

public typealias Parameters = [String : Any]

public protocol ParameterEncoder
{
    static func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws
}
