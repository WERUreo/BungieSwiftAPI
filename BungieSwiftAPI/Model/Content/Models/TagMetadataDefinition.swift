//
//  TagMetadataDefinition.swift
//  BungieSwiftAPI
//
//  Created by Kelii Martin on 1/18/19.
//  Copyright © 2019 WERUreo. All rights reserved.
//

import Foundation

public struct TagMetadataDefinition
{
    let description: String
    let order: Int32
    let items: [TagMetadataItem]
    let datatype: String
    let name: String
    let isRequired: Bool
}
