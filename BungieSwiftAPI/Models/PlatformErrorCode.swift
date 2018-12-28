//
//  PlatformErrorCode.swift
//  BungieSwiftAPI
//
//  Created by Kelii Martin on 12/28/18.
//  Copyright © 2018 WERUreo. All rights reserved.
//

import Foundation

public enum PlatformErrorCode : Int
{
    case none                                       = 0
    case success                                    = 1
    case transportException                         = 2
    case unhandledException                         = 3
    case notImplemented                             = 4
    case systemDisabled                             = 5
    case failedToLoadAvailableLocalesConfiguration  = 6
    case parameterParseFailure                      = 7
    case parameterInvalidRange                      = 8
    case badRequest                                 = 9
    case authenticationInvalid                      = 10
    case dataNotFound                               = 11
    case insufficientPrivileges                     = 12
    case duplicate                                  = 13
    case unknownSqlResult                           = 14
    case validationError                            = 15
    case validationMissingFieldError                = 16
    case validationInvalidInputError                = 17
    case invalidParameters                          = 18
    case parameterNotFound                          = 19
    case unhandledHttpException                     = 20
    case notFound                                   = 21
    case webAuthModuleAsyncFailed                   = 22
    case invalidReturnValue                         = 23
    case userBanned                                 = 24
    case invalidPostBody                            = 25
    case missingPostBody                            = 26
    case externalServiceTimeout                     = 27
    case validationLengthError                      = 28
    case validationRangeError                       = 29
    case jsonDeserializationError                   = 30
    case throttleLimitExceeded                      = 31
    case validationTagError                         = 32
    case validationProfanityError                   = 33
    case validationUrlFormatError                   = 34
    case throttleLimitExceededMinutes               = 35
    case throttleLimitExceededMomentarily           = 36
    case throttleLimitExceededSeconds               = 37
    case externalServiceUnknown                     = 38
    case validationWordLengthError                  = 39
    case validationInvisibleUnicode                 = 40
    case validationBadNames                         = 41
    case externalServiceFailed                      = 42
    case serviceRetired                             = 43
    case unknownSqlException                        = 44
    case unsupportedLocale                          = 45
    case invalidPageNumber                          = 46
    case maximumPageSizeExceeded                    = 47
}
