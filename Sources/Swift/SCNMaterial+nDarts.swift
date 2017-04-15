//
//  SCNMaterial+nDarts.swift
//  nDarts
//
//  Created by Jun Narumi on 2016/09/21.
//  Copyright © 2016年 zenithgear Inc. All rights reserved.
//

import SceneKit

extension SCNMaterial {
    convenience init(color: UIColor) {
        self.init()
        diffuse.contents = color
    }
    static var white: SCNMaterial {
        return SCNMaterial(color: .white)
    }
    static var lightGray: SCNMaterial {
        return SCNMaterial(color: .lightGray)
    }
    static var gray: SCNMaterial {
        return SCNMaterial(color: .gray)
    }
    static var darkGray: SCNMaterial {
        return SCNMaterial(color: .darkGray)
    }
    static var black: SCNMaterial {
        return SCNMaterial(color: .black)
    }
    static var red: SCNMaterial {
        return SCNMaterial(color: .red)
    }
    static var yellow: SCNMaterial {
        return SCNMaterial(color: .yellow)
    }
    static var blue: SCNMaterial {
        return SCNMaterial(color: .blue)
    }
}
