//
//  Page.swift
//  
//
//  Created by Sam DuBois on 9/30/22.
//

import Foundation

public struct Page: Codable, Identifiable {
    
    public private(set) var id: UUID
    
    public var title: String
    
    public init(title: String) {
        self.id = UUID()
        self.title = title
    }
}
