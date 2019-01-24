//
//  UserEndPoint.swift
//  BungieSwiftAPI
//
//  Created by Kelii Martin on 1/24/19.
//  Copyright © 2019 WERUreo. All rights reserved.
//

import Foundation

public enum UserApi
{
    case getBungieNetUserById(id: Int64)
    case searchUsers(query: String)
    case getAvailableThemes
    case getMembershipDataById(membershipID: Int64, membershipType: BungieMembershipType)
    case getMembershipDataForCurrentUser
    case getPartnerships(membershipID: Int64)
}

extension UserApi: EndPointType
{
    var baseURL: URL
    {
        guard let url = URL(string: "https://www.bungie.net/Platform/User") else
        {
            fatalError("baseURL could not be configured.")
        }
        
        return url
    }
    
    var path: String
    {
        switch self
        {
            case .getBungieNetUserById(let id):
                return "/GetBungieNetUserById/\(id)"
            case .searchUsers:
                return "/SearchUsers"
            case .getAvailableThemes:
                return "/GetAvailableThemes"
            case .getMembershipDataById(let membershipID, let membershipType):
                return "/GetMembershipsById/\(membershipID)/\(membershipType.rawValue)"
            case .getMembershipDataForCurrentUser:
                return "/GetMembershipsForCurrentUser"
            case .getPartnerships(let membershipID):
                return "/\(membershipID)/Partnerships"
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
            case .searchUsers(let query):
                return .requestParameters(bodyParameters: nil,
                                          urlParameters: ["q": query])
            default:
                return .request
        }
    }
    
    var headers: HTTPHeaders?
    {
        return ["X-API-Key" : NetworkManager.BungieAPIKey]
    }
    
    
}
