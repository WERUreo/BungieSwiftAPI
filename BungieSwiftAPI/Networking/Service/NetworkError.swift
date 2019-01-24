//
//  NetworkError.swift
//  BungieSwiftAPI
//
//  Created by Kelii Martin on 12/28/18.
//  Copyright © 2018 WERUreo. All rights reserved.
//

import Foundation

public enum NetworkError : String, Error
{
    case parametersNil = "Parameters were nil."
    case encodingFailed = "Parameter encoding failed."
    case missingURL = "URL is nil."
}
