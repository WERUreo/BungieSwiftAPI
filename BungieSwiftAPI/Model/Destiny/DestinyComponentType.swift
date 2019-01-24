//
//  DestinyComponentType.swift
//  BungieSwiftAPI
//
//  Created by Kelii Martin on 1/17/19.
//  Copyright © 2019 WERUreo. All rights reserved.
//

import Foundation

public enum DestinyComponentType: Int
{
    case none = 0
    
    case profiles = 100
    case vendorReceipts = 101
    case profileInventories = 102
    case profileCurrencies = 103
    case profileProgression = 104
    
    case characters = 200
    case characterInventories = 201
    case characterProgressions = 202
    case characterRenderData = 203
    case characterActivities = 204
    case characterEquipment = 205
    
    case itemInstances = 300
    case itemObjectives = 301
    case itemPerks = 302
    case itemRenderData = 303
    case itemStats = 304
    case itemSockets = 305
    case itemTalentGrids = 306
    case itemCommonData = 307
    case itemPlugStates = 308
    
    case vendors = 400
    case vendorCategories = 401
    case vendorSales = 402
    
    case kiosks = 500
    
    case currencyLookups = 600
    
    case presentationNodes = 700
    
    case collectibles = 800
    
    case records = 900
}
