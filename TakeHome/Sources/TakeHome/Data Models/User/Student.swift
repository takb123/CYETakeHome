//
//  Student.swift
//  
//
//  Created by Sam DuBois on 9/30/22.
//

import Foundation

public class Student: Codable, Identifiable {
    
    public private(set) var id: UUID
    
    public private(set) var name: String
    
    public var answers: [Answer]
    
    public init(name: String) {
        self.id = UUID()
        self.name = name
        self.answers = []
    }
}

public extension Student {
    
    func enterAnswers(with answers: [Answer]) {
        self.answers = answers
    }
}

public struct Answer: Codable, Identifiable {
    
    public private(set) var id: UUID
    
    public var pageID: UUID
    public var score: Double
    
    public init(pageID: UUID) {
        self.id = UUID()
        self.pageID = pageID
        
        // Assign a random value for example purposes
        self.score = Double.random(in: 0...1)
    }
}
