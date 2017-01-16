//
//  CGFloat.swift
//  BASimulationFoundation
//
//  Created by Tom Donaldson on 12/24/16.
//  Copyright © 2016 Tom Donaldson. All rights reserved.
//



// CGFloat is declared in Foundation on MacOS, but in UIKit on iOS,
// even though iOS has a Foundation framework.
//
#if os(OSX)
    import Foundation
#elseif os(iOS)
    import UIKit
#endif


// rounded6
//
// Calculations in Trig, Triangle, Circle, etc., produce results with
// rounding "errors" way out beyond six decimal places. Round to six places
// for comparisons where functional equivalence is important (versus literal
// equality).
//
extension CGFloat {
    public var rounded6: CGFloat {
        let inflatedVal = self * 1000000.0
        let roundedVal = inflatedVal.rounded() / 1000000.0
        return roundedVal
    }
}

