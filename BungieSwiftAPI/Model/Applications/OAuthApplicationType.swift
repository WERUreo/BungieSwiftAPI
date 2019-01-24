//
//  OAuthApplicationType.swift
//  BungieSwiftAPI
//
//  Created by Kelii Martin on 1/17/19.
//  Copyright © 2019 WERUreo. All rights reserved.
//

import Foundation

public enum OAuthApplicationType: Int32
{
    case none = 0
    case confidential = 1
    case publicType = 2 // renamed from "public" because of keyword conflict
}
