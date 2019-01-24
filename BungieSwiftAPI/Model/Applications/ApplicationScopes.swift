//
//  ApplicationScopes.swift
//  BungieSwiftAPI
//
//  Created by Kelii Martin on 1/17/19.
//  Copyright © 2019 WERUreo. All rights reserved.
//

import Foundation

public enum ApplicationScopes : Int64
{
    case readBasicUserProfile = 1
    case readGroups = 2
    case writeGroups = 4
    case adminGroups = 8
    case bnetWrite = 16
    case moveEquipDestinyItems = 32
    case readDestinyInventoryAndVault = 64
    case readUserData = 128
    case editUserData = 256
    case readDestinyVendorsAndAdvisors = 512
    case readAndApplyTokens = 1024
    case advancedWriteActions = 2048
}
