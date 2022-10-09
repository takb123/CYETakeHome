@main
public struct TakeHome {
    
    /// Our Book Object
    ///
    /// This is the main book of the application (for demonstration purposes). It contains two editions each with 10 pages.
    public var example_book = Book(
        title: "Intro to Spanish Book 1",
        description: "This is an example book with fake pages",
        pages: [
            Page(title: "Page 1"),
            Page(title: "Page 2"),
            Page(title: "Page 3"),
            Page(title: "Page 4"),
            Page(title: "Page 5"),
            Page(title: "Page 6"),
            Page(title: "Page 7"),
            Page(title: "Page 8"),
            Page(title: "Page 9"),
            Page(title: "Page 10"),
        ]
    )
    
    /// An example teacher to use for the assessment
    public var example_teacher: Teacher = Teacher(name: "Sēnor Ben Cheng")
    
    /// An example list of students
    public var example_students: [Student] = [
        Student(name: "Abed Nadir"),
        Student(name: "Britta Perry"),
        Student(name: "Troy Barnes"),
        Student(name: "Pierce Hawthorne"),
        Student(name: "Jeff Winger"),
        Student(name: "Annie Edison"),
        Student(name: "Shirley Bennett"),
    ]
    
    public var example_class: Class = Class(name: "Spanish Class")
    
    /// This is where you will run your code to ensure that it works as desired. Upon pressing the play button in Xcode (or running the script in terminal), the code in this function will be executed.
    public static func main() {
        
        let th = TakeHome()
        
        // Add the teacher to the class
        th.example_class.teacher = th.example_teacher

        // Add the list of students to the class
        th.example_class.students = th.example_students

        // Add the book to the class
        th.example_class.book = th.example_book
        
        // Populate Student Data
        th.generateFakeStudentData(.randomized)
//      th.generateFakeStudentData(.standardized) // Uncomment for non-random data
        
        th.challengeOne()
        th.challengeTwo()
        th.challengeThree()
    }
}

/// YOUR ANSWERS GO HERE !!
///
/// This is where you will write most of your code for the three challenges. Keep in mind that some of the challenges require you to make new files or change existing ones. If you have anything print to the terminal make sure it goes in here!!!
/// - Note: Feel free to delete any code in the functions below!
public extension TakeHome {

    func challengeOne() {

        let studentOne = example_students[0]
        for ans in studentOne.answers {
            var pageTitle = String()
            for page in example_book.pages {
                if ans.pageID == page.id {
                    pageTitle = page.title
                }
            }

            let percent = Int(ans.score * 100.0)
            print("\(pageTitle): \(percent)%")
        }
        
    }
    
    func challengeTwo() {
        
        //
        //  Your code goes here
        //
        
        print("Teacher: \(example_teacher.name)")
        
    }
    
    func challengeThree() {
        
        //
        //  Your code goes here
        //
        
        print("Student Count: \(example_students.count)")
        
    }
    
}

/// Helper Functions
///
/// This is where we have written some helper functions to set up your enviornment for you
public extension TakeHome {
    
    /// Generates some example data to use when writing your code
    ///
    /// This function goes through each student and generates some random answers to each page of the the two books
    func generateFakeStudentData(_ type: Answer.ScoreType) {
        for student in self.example_students {
            for page in self.example_book.pages {
                student.enterAnswer(for: page, type: type)
            }
        }
    }
}
