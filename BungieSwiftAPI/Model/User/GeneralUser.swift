//
//  GeneralUser.swift
//  BungieSwiftAPI
//
//  Created by Kelii Martin on 1/24/19.
//  Copyright © 2019 WERUreo. All rights reserved.
//

import Foundation

public struct GeneralUser
{
    let membershipID: Int64
    let uniqueName: String
    let normalizedName: String
    let displayName: String
    let profilePicture: Int32
    let profileTheme: Int32
    let userTitle: Int32
    let successMessageFlags: Int64
    let isDeleted: Bool
    let about: String
    let firstAccess: Date?
    let lastUpdate: Date?
    let legacyPortalUID: Int64?
    let context: UserToUserContext
    let psnDisplayName: String
    let xboxDisplayName: String
    let fbDisplayName: String
    let showActivity: Bool?
    let locale: String
    let localInheritDefault: Bool
    let lastBanReportId: Int64?
    let showGroupMessaging: Bool
    let profilePicturePath: String
    let profilePictureWidePath: String
    let profileThemeName: String
    let userTitleDisplay: String
    let statusText: String
    let statusDate: Date
    let profileBanExpire: Date?
    let blizzardDisplayName: String
}
