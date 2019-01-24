//
//  DestinyManifest.swift
//  BungieSwiftAPI
//
//  Created by Kelii Martin on 1/16/19.
//  Copyright © 2019 WERUreo. All rights reserved.
//

import Foundation

public struct DestinyManifest
{
    let response: Response
    let errorCode: PlatformErrorCode
    let throttleSeconds: Int32
    let errorStatus: String
    let message: String
    let messageData: [String : String]
    let detailedErrorTrace: String

    struct Response
    {
        let version: String
        let mobileAssetContentPath: String
        let mobileGearAssetDataBases: [GearAssetDataBaseDefinition]
        let mobileWorldContentPaths: [String : String]
        let jsonWorldContentPaths: [String : String]
        let mobileClanBannerDatabasePath: String
        let mobileGearCDN: [String : String]
    }
}
