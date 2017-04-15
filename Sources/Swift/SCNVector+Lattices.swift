//
//  SceneKitExtension.swift
//  CIFCommand
//
//  Created by Jun Narumi on 2016/05/20.
//  Copyright © 2016年 zenithgear. All rights reserved.
//

import SceneKit

extension SCNFloat{
    public init(_ value: SCNFloat){
        self = value
    }
}

#if false
extension SCNFloat {
    var toRadian: SCNFloat {
        return self * SCNFloat(M_PI) / 180.0
    }
    var toDegree: SCNFloat {
        return self * 180.0 / SCNFloat(M_PI)
    }
}
#endif

extension SCNVector3 : CustomStringConvertible {
    init( _ scalar: SCNFloat ) {
        self.init(scalar,scalar,scalar)
    }
    var xzy: SCNVector3 {
        return SCNVector3(x,z,y)
    }
    public var description: String {
        return "x: \(x), y: \(y), z: \(z)"
    }
}

extension SCNVector4 : CustomStringConvertible {
    init(_ xyz: SCNVector3, _ w: SCNFloat ) {
        self.init( vector4( Vector3(xyz), FloatType(w) ) )
    }
    var xyz: SCNVector3 {
        return SCNVector3(x,y,z)
    }
    
    public var description: String {
        return "(\(x), \(y), \(z), \(w))"
    }
}

extension SCNVector3: SIMDEquivalent {
    public typealias ArithmeticType = float3
    public static func Arithmetic( _ v: SCNVector3 ) -> ArithmeticType {
        return float3( v )
    }
}

extension SCNVector4: SIMDEquivalent {
    public typealias ArithmeticType = float4
    public static func Arithmetic( _ v: SCNVector4 ) -> ArithmeticType {
        return float4( v )
    }
}

