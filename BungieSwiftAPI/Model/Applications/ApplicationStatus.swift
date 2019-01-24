//
//  ApplicationStatus.swift
//  BungieSwiftAPI
//
//  Created by Kelii Martin on 1/17/19.
//  Copyright © 2019 WERUreo. All rights reserved.
//

import Foundation

public enum ApplicationStatus : Int32
{
    case none = 0
    case privateStatus = 1  // renamed from "private" because of keyword conflict
    case publicStatus = 2 // renamed from "public" because of keyword conflict
    case disabled = 3
    case blocked = 4
}
