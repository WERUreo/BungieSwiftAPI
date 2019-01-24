//
//  ContentTypeDescription.swift
//  BungieSwiftAPI
//
//  Created by Kelii Martin on 1/18/19.
//  Copyright © 2019 WERUreo. All rights reserved.
//

import Foundation

public struct ContentTypeDescription
{
    let cType: String
    let name: String
    let contentDescription: String
    let previewImage: String
    let priority: Int32
    let reminder: String
    let properties: [ContentTypeProperty]
    let tagMetadata: [TagMetadataDefinition]
    let tagMetadataItems: [String : TagMetadataItem]
    let usageExamples: [String]
    let showInContentEditor: Bool
    let typeOf: String
    let bindIdentifierToProperty: String
    let boundRegex: String
    let forceIdentifierBinding: Bool
    let allowComments: Bool
    let autoEnglishPropertyFallback: Bool
    let bulkUploadable: Bool
    let previews: [ContentPreview]
    let suppressCmsPath: Bool
    let propertySections: [ContentTypePropertySection]
}
