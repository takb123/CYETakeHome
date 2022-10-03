@main
public struct TakeHome {
    
    /// Our Book Object
    ///
    /// This is the main book of the application (for demonstration purposes). It contains two editions each with 10 pages.
    public var TestAppBook = Book(
        title: "Test AppBook",
        description: "This is an example AppBook made by a developer.",
        editions: [
            Edition(
                title: "Test AppBook Edition 2",
                description: "This is the second edition of Test AppBook",
                comments: "Moved page 3 to page 5 and some small edits to the langauge used on page 4",
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
            ),
            Edition(
                title: "Test AppBook Edition 1",
                description: "This is the first edition of Test AppBook",
                comments: "",
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
            ),
        ]
    )
    
    public 
    
    

    public static func main() {
        print(TakeHome().text)
    }
}
