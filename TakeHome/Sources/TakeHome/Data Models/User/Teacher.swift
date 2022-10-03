//
//  Teacher.swift
//  
//
//  Created by Sam DuBois on 9/30/22.
//

import Foundation

public class Teacher: Codable, Identifiable {
    
    public private(set) var id: UUID
    
    public private(set) var name: String
    
    public private(set) var students: [Student]
    
    public init(name: String, students: [Student]) {
        self.id = UUID()
        self.name = name
        self.students = students
    }
    
}
