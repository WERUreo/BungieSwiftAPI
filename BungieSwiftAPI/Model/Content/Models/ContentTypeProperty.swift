//
//  ContentTypeProperty.swift
//  BungieSwiftAPI
//
//  Created by Kelii Martin on 1/18/19.
//  Copyright © 2019 WERUreo. All rights reserved.
//

import Foundation

public struct ContentTypeProperty
{
    let name: String
    let readableName: String
    let value: String
    let propertyDescription: String
    let localizable: Bool
    let fallback: Bool
    let enabled: Bool
    let order: Int32
    let visible: Bool
    let isTitle: Bool
    let required: Bool
    let maxLength: Int32
    let maxByteLength: Int32
    let maxFileSize: Int32
    let regexp: String
    let validateAs: String
    let resAttribute: String
    let visibleDependency: String
    let visibleOn: String
    let datatype: ContentPropertyDataTypeEnum
    let attributes: [String : String]
    let childProperties: [ContentTypeProperty]
    let contentTypeAllowed: String
    let bindToProperty: String
    let boundRegex: String
    let representationSelection: [String : String]
    let defaultValues: [ContentTypeDefaultValue]
    let isExternalAllowed: Bool
    let propertySection: String
    let weight: Int32
    let entityType: String
    let isCombo: Bool
    let suppressProperty: Bool
    let legalContentTypes: [String]
    let representationValidationString: String
    let minWidth: Int32
    let maxWidth: Int32
    let minHeight: Int32
    let maxHeight: Int32
    let isVideo: Bool
    let isImage: Bool
}
