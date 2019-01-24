//
//  RequestManager.swift
//  BungieSwiftAPI
//
//  Created by Kelii Martin on 12/28/18.
//  Copyright © 2018 WERUreo. All rights reserved.
//

import Foundation

private let sharedInstance = RequestManager()

private let BASE_URL = "https://www.bungie.net/Platform"

public class RequestManager
{
    public class func shared() -> RequestManager
    {
        return sharedInstance
    }
}
