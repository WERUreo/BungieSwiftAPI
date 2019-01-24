//
//  NetworkRouter.swift
//  BungieSwiftAPI
//
//  Created by Kelii Martin on 12/28/18.
//  Copyright © 2018 WERUreo. All rights reserved.
//

import Foundation

public typealias NetworkRouterCompletion = (_ data: Data?, _ response: URLResponse?, _ error: Error?) -> ()

protocol NetworkRouter: class
{
    associatedtype EndPoint: EndPointType
    func request(_ route: EndPoint, completion: @escaping NetworkRouterCompletion)
    func cancel()
}
