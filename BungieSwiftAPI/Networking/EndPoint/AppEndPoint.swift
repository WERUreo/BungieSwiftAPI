//
//  AppEndPoint.swift
//  BungieSwiftAPI
//
//  Created by Kelii Martin on 1/17/19.
//  Copyright © 2019 WERUreo. All rights reserved.
//

import Foundation

public enum AppApi
{
    case getBungieApplications
}

extension AppApi : EndPointType
{
    var baseURL: URL
    {
        guard let url = URL(string: "https://www.bungie.net/Platform/App") else
        {
            fatalError("baseURL could not be configured.")
        }
        
        return url
    }
    
    var path: String
    {
        switch self
        {
            case .getBungieApplications:
                return "/FirstParty"
        }
    }
    
    var httpMethod: HTTPMethod
    {
        return .get
    }
    
    var task: HTTPTask
    {
        return .request
    }
    
    var headers: HTTPHeaders?
    {
        return ["X-API-Key" : NetworkManager.BungieAPIKey]
    }
    
    
}
