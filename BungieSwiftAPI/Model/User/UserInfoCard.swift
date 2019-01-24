//
//  UserInfoCard.swift
//  BungieSwiftAPI
//
//  Created by Kelii Martin on 12/28/18.
//  Copyright © 2018 WERUreo. All rights reserved.
//

import Foundation

public struct UserInfoCard
{
    let membershipID : Int64
    let membershipType : BungieMembershipType
    let displayName : String
    let supplementalDisplayName : String
    let iconPath : String?
}
