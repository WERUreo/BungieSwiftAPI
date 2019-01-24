//
//  ApiUsage.swift
//  BungieSwiftAPI
//
//  Created by Kelii Martin on 1/17/19.
//  Copyright © 2019 WERUreo. All rights reserved.
//

import Foundation

public struct ApiUsage
{
    let range: DateRange
    let apiCalls: [Series]
    let throttledRequests: [Series]
}
