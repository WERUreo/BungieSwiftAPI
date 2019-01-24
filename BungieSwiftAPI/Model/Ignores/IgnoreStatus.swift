//
//  IgnoreStatus.swift
//  BungieSwiftAPI
//
//  Created by Kelii Martin on 1/24/19.
//  Copyright © 2019 WERUreo. All rights reserved.
//

import Foundation

public enum IgnoreStatus: Int32
{
    case notIgnored = 0
    case ignoredUser = 1
    case ignoredGroup = 2
    case ignoredByGroup = 4
    case ignoredPost = 8
    case ignoredTag = 16
    case ignoredGlobal = 32
}
