struct MyQuestionAnswerer {
    func responseTo(question: String) -> String {
        
        let lowerQuestion = question.lowercased()
        
        if lowerQuestion.hasPrefix("where") {
            return "To the North!"
        } else if lowerQuestion == "where are the cookies?" {
            return "In the cookie jar!"
        } else {
            return "That really depends"
        }
    }
}
