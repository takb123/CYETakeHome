//
//  Edition.swift
//
//
//  Created by Sam DuBois on 9/30/22.
//

import Foundation

/// A Book version, referred to as an Edition
///
/// As teachers create and write their books over time, we want to preserve the history of their content. To do this, we created the Edition object. This struct is a freeze state in time for a book a teacher is working on (or has developed). Much like real life, when a teacher wants to push out a second version of their book they often create a new edition. In AppBook, the process is much of the same.
public struct Edition {
    
    /// A unique identifier that distinguishes this object from any other
    public private(set) var id: UUID
    
    /// The title of the edition
    public var title: String
    
    /// A short description of the purpose of this book
    public var description: String
    
    /// Any comments differentiating this edition from others
    public var comments: String
    
    /// The pages contained in this edition
    public private(set) var pages: [Page]
    
    public init(title: String, description: String, comments: String, pages: [Page]) {
        self.id = UUID()
        self.title = title
        self.description = description
        self.comments = comments
        self.pages = pages
    }
}
