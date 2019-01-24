//
//  Destiny2EndPoint.swift
//  BungieSwiftAPI
//
//  Created by Kelii Martin on 12/30/18.
//  Copyright © 2018 WERUreo. All rights reserved.
//

import Foundation

public enum Destiny2Api
{
    case getDestinyManifest
    case getLinkedProfiles(membershipType: BungieMembershipType, membershipID: Int64)
    case searchDestinyPlayer(membershipID: Int, displayName: String)
    case getProfile(destinyMembershipID: Int, membershipType: BungieMembershipType)
    case getCharacter(membershipType: BungieMembershipType, destinyMembershipID: Int64, characterID: Int64)
}

extension Destiny2Api : EndPointType
{
    var baseURL: URL
    {
        guard let url = URL(string: "https://www.bungie.net/Platform/Destiny2") else
        {
            fatalError("baseURL could not be configured.")
        }
        
        return url
    }

    var path: String
    {
        switch self
        {
            case .getDestinyManifest:
                return "/Manifest"
            case .getLinkedProfiles(let membershipType, let membershipID):
                return "/\(membershipType.rawValue)/Profile/\(membershipID)/LinkedProfiles"
            case .searchDestinyPlayer(let membershipID, let displayName):
                return "/SearchDestinyPlayer/\(membershipID)/\(displayName)"
            case .getProfile(let destinyMembershipID, let membershipType):
                return "/\(membershipType.rawValue)/Profile/\(destinyMembershipID)"
            case .getCharacter(let membershipType, let destinyMembershipID, let characterID):
                return "/\(membershipType.rawValue)/Profile/\(destinyMembershipID)/Character/\(characterID)"
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
            case .getCharacter(_, _, _):
                return .requestParameters(bodyParameters: nil,
                                          urlParameters: ["components": DestinyComponentType.characters])
            default:
                return .request
        }
    }
    
    var headers: HTTPHeaders?
    {
        return ["X-API-Key" : NetworkManager.BungieAPIKey]
    }
}
