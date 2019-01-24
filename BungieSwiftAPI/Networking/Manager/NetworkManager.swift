//
//  NetworkManager.swift
//  BungieSwiftAPI
//
//  Created by Kelii Martin on 1/3/19.
//  Copyright © 2019 WERUreo. All rights reserved.
//

import Foundation

enum NetworkResponse: String
{
    case success
    case authenticationError = "You need to be authenticated first."
    case badRequest = "Bad request"
    case outdated = "The url you requested is outdated."
    case failed = "Network request failed."
    case noData = "Response returned with no data to decode."
    case unableToDecode = "We could not decode the response."
}

enum Result<String>
{
    case success
    case failure(String)
}

struct NetworkManager
{
    static let BungieAPIKey = "1e4d3d836767433ab15a8e1c37dfcf97"
    
    fileprivate func handleNetworkResponse(_ response: HTTPURLResponse) -> Result<String>
    {
        switch response.statusCode
        {
            case 200...299: return .success
            case 401...500: return .failure(NetworkResponse.authenticationError.rawValue)
            case 501...599: return .failure(NetworkResponse.badRequest.rawValue)
            case 600: return .failure(NetworkResponse.outdated.rawValue)
            default: return .failure(NetworkResponse.failed.rawValue)
        }
    }
}
