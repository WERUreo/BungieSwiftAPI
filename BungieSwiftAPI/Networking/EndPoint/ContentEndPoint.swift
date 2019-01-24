//
//  ContentEndPoint.swift
//  BungieSwiftAPI
//
//  Created by Kelii Martin on 1/24/19.
//  Copyright © 2019 WERUreo. All rights reserved.
//

import Foundation

public enum ContentApi
{
    case getContentType(type: String)
    case getContentById(id: Int64, locale: String, head: Bool)
    case getContentByTagAndType(tag: String, type: String, locale: String, head: Bool)
}


extension ContentApi : EndPointType
{
    var baseURL: URL
    {
        guard let url = URL(string: "https://www.bungie.net/Platform/Content") else
        {
            fatalError("baseURL could not be configured.")
        }
        
        return url
    }
    
    var path: String
    {
        switch self
        {
            case .getContentType(let type):
                return "/GetContentType/\(type)"
            case .getContentById(let id, let locale, _):
                return "/GetContentById/\(id)/\(locale)"
            case .getContentByTagAndType(let tag, let type, let locale, _):
                return "/GetContentByTagAndType/\(tag)/\(type)/\(locale)"
        }
    }
    
    var httpMethod: HTTPMethod
    {
        return .get
    }
    
    var task: HTTPTask
    {
        switch self
        {
            case .getContentById(_, _, let head):
                return .requestParameters(bodyParameters: nil,
                                          urlParameters: ["head" : head])
            case .getContentByTagAndType(_, _, _, let head):
                return .requestParameters(bodyParameters: nil,
                                          urlParameters: ["head" : head])
            default:
                return .request
        }
    }
    
    var headers: HTTPHeaders?
    {
        return ["X-API-Key" : NetworkManager.BungieAPIKey]
    }
    
    
}
