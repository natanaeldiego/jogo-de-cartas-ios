//
//  Array+Only.swift
//  Memoria
//
//  Created by Natanael Diego on 07/04/21.
//

import Foundation

extension Array {
    
    var only: Element? {
        count == 1 ? first : nil
    }
    
}
