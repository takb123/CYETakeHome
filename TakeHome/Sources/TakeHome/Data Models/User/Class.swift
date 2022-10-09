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
    
    public func averageScoreByPage() -> String{
        //Create a map with UUID of page as keys and list of individual scores as values
        var pageIDToScores: [UUID: [Double]] = [:]
        for student in students {
            for answer in student.answers {
                if pageIDToScores[answer.pageID] != nil {
                    pageIDToScores[answer.pageID]!.append(answer.score)
                }
                else {
                    pageIDToScores[answer.pageID] = [answer.score]
                }
            }
        }
        
        //Create a list of tuple including title of page and its average score
        var pageTitleAndAverageScore: [(String, Int)] = []
        for (pageID, scores) in pageIDToScores {
            var pageTitle = String()
            for page in book.pages {
                if page.id == pageID {
                    pageTitle = page.title
                }
            }
            var totalScore = 0.0
            for score in scores {
                totalScore += score
            }
            totalScore *= 100.0 / Double(scores.count)
            totalScore.round()
            pageTitleAndAverageScore.append((pageTitle, Int(totalScore)))
        }

        //Sort the list by average score and return formatted result
        pageTitleAndAverageScore.sort { $0.1 == $1.1 ? $0.0 > $1.0 : $0.1 > $1.1 }
        var result = String()
        for (pageTitle, score) in pageTitleAndAverageScore {
            result += pageTitle + ": " + String(score) + "%\n"
        }
        return result
    }

    public func averageScoreByStudent() -> String{
        //Create a list of tuple including name of student and their average score
        var studentAndAverageScore: [(String, Int)] = []
        for student in students {
            var totalScore = 0.0
            for answer in student.answers {
                totalScore += answer.score
            }
            totalScore *= 100.0 / Double(student.answers.count)
            totalScore.round()
            studentAndAverageScore.append((student.name, Int(totalScore)))
        }

        //Sort the list by average score and return formatted result
        studentAndAverageScore.sort { $0.1 == $1.1 ? $0.0 > $1.0 : $0.1 > $1.1 }
        var result = String()
        for (studentName, score) in studentAndAverageScore {
            result += studentName + ": " + String(score) + "%\n"
        }
        return result
    }
}
