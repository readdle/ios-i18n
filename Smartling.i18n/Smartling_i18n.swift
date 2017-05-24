//
//  Smartling_i18n.swift
//  Smartling.i18n
//
//  Created by Mikhail Pashnyov on 5/22/17.
//  Copyright © 2017 Readdle. All rights reserved.
//

import Foundation


public extension NSObject {

    func SLPluralizedString(_ key:String?, table:String? = nil, bundle:Bundle? = nil, defaultValue:String = "",  _ n:Any, comment:String) -> String  {
        guard let floatVal = floatFromAny(n) else {
            assert(true)
            return ""
        }
        return (bundle ?? Bundle(for: type(of: self))).pluralizedString(withKey: key, defaultValue: defaultValue, table: table, pluralValue:floatVal)
    }

    func floatFromAny(_ n:Any) -> Float? {
        switch n {
        case let number as NSNumber: return number.floatValue;
        case let integer as Integer: return Float(integer.toIntMax())
        case let uinteger as UnsignedInteger: return Float(uinteger.toUIntMax())
        case let double as Double: return Float(double)
        case let float as Float: return float
        default: return nil }
    }
    
}
