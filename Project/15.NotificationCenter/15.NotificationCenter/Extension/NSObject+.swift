//
//  NSObject+.swift
//  BilingualComic
//
//  Created by Duy Nguyen on 17/4/19.
//  Copyright © 2019 Duy Nguyen. All rights reserved.
//

import Foundation

protocol ClassNameProtocol {
    static var className: String { get }
    var className: String { get }
}

extension ClassNameProtocol {
    static var className: String {
        return String(describing: self)
    }
    
    var className: String {
        return type(of: self).className
    }
}

extension NSObject: ClassNameProtocol {}
