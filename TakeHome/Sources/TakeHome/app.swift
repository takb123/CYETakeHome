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
    
    
    /// This is where you will run your code to ensure that it works as desired. Upon pressing the play button in Xcode (or running the script in terminal), the code in this function will be executed.
    public static func main() {
        
        let th = TakeHome()
        
        // Add the list of students to the teacher
        th.example_teacher.students = th.example_students
        
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
        
        //
        //  Your code goes here
        //
        
        print("Book: \(example_book.title)")
        
    }
    
    /// In your second challenge, we want to open things up a bit more in a scenario:
    ///
    /// The team has been demoing the beta version of the app to teachers for the last month. In that time, they have begun to notice that teachers often swap classes a lot. Due to unforeseen circumstances, teachers often have to sub in for other teachers, and this creates a problem in our app as students belong to specific teachers in code. Your manager has tasked you with creating a new `Class` object that untangles the teacher and student objects. Additionally, this class object should store the book that the class is using, so that it can be referenced later.
    ///
    /// Your task is to create this model, create an `example_class` object, populate it with a teacher, book, and students. Additionally, you should remove any old code from the Teacher and Student models that is antiquated / outdated. To verify that you have successfully created this class object, print out the name of your `example_class`.
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
