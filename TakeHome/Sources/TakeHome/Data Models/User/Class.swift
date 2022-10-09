//
//  Class.swift
//  
//
//  Created by Takuto Ban on 10/6/22.
//

import Foundation

/// Class object
///
/// This object manages the teacher, its students, and the book used
public class Class {
    
    public private(set) var id: UUID

    /// The name of the class
    public private(set) var name: String
    
    /// The teacher of the class
    public var teacher: Teacher

    /// The students in the class
    public var students: [Student]

    /// The book used in the class
    public var book: Book
    
    public init(name: String) {
        self.id = UUID()
        self.name = name
        self.teacher = Teacher(name: "Default Name")
        self.students = []
        self.book = Book(
            title: "Default Title",
            description: "Default Description",
            pages: []
        )
    }
    
}
