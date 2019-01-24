//
//  Application.swift
//  BungieSwiftAPI
//
//  Created by Kelii Martin on 1/17/19.
//  Copyright © 2019 WERUreo. All rights reserved.
//

import Foundation

public struct Application
{
    let applicationType: OAuthApplicationType
    let applicationId: Int32
    let name: String
    let redirectUrl: String
    let link: String
    let scope: Int64
    let origin: String
    let status: ApplicationStatus
    let creationDate: Date
    let statusChanged: Date
    let firstPublished: Date
    let team: [ApplicationDeveloper]
}
