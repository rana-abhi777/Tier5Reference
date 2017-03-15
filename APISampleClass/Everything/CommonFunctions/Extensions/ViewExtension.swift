//
//  ViewExtension.swift
//  BusinessDirectory
//
//  Created by Aseem 13 on 28/12/16.
//  Copyright © 2016 Taran. All rights reserved.
//

import UIKit
import Foundation

protocol StringType { var get: String { get } }

extension String: StringType { var get: String { return self } }

extension Optional where Wrapped: StringType {
    func unwrap() -> String {
        return self?.get ?? ""
    }
}


