//
//  UserToUserContext.swift
//  BungieSwiftAPI
//
//  Created by Kelii Martin on 1/24/19.
//  Copyright © 2019 WERUreo. All rights reserved.
//

import Foundation

public struct UserToUserContext
{
    let isFollowing: Bool
    let ignoreStatus: IgnoreResponse
    let globalIgnoreEndDate: Date?
}
