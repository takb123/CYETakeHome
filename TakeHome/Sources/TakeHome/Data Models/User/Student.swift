//
//  Student.swift
//  
//
//  Created by Sam DuBois on 9/30/22.
//

import Foundation

public struct Student: Codable, Identifiable {
    
    public private(set) var id: UUID
    
    public private(set) var name: String
    
    public var answers: [Answer]
    
}

public struct Answer: Codable, Identifiable {
    
    public private(set) var id: UUID
    
    public var pageID: UUID
    public var score: Double
}
