//
//  Book.swift
//  
//
//  Created by Sam DuBois on 9/30/22.
//

import Foundation

/// `Book` Data Model
///
/// This is the precipice of the data model. The `Book` model contains important meta data related to the book as well as its edition(s) and content
/// - Note: The **content** of the book is not actually stored in the book object, but in the books `editions`. This is detailed more in the editions model.
public struct Book {
    
    /// A unique identifier that distinguishes this book from any other
    public private(set) var id: UUID
    
    /// The title of the book
    public var title: String
    
    /// A short description of the purpose of this book
    public var description: String
    
    /// The different versions (editions) of the book ordered from newest to oldest
    public private(set) var editions: [Edition]
    
    /// Generic initializer
    public init(id: UUID = UUID(), title: String, description: String, editions: [Edition]) {
        self.title = title
        self.description = description
        self.editions = editions
    }
}

public extension Book {
    
    // Add an edition to the book
    
    
    //
}
