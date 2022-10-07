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
    
    /// The teacher of the class
    public var teacher: Teacher

    /// The students in the class
    public var students: [Student]

    /// The book used in the class
    public var book: Book
    
    public init(teacher: Teacher, students: [Student], book: Book) {
        self.id = UUID()
        self.teacher = teacher
        self.students = students
        self.book = book
    }
    
}
