//
//  Framework.swift
//  appleframeworks
//
//  Created by Gaurav Kundalwal on 17/01/24.
//

import Foundation

struct Framework: Hashable, Identifiable{
    let id = UUID() 
    let name: String
    let imageName: String
    let urlString: String
    let description: String
}
