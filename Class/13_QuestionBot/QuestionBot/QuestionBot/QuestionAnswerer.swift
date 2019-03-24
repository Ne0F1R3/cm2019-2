struct MyQuestionAnswerer {
    func responseTo(question: String) -> String {
        let loweredQuestion = question.lowercased()
        
        if loweredQuestion == "Where are the cookies?"{
            return "In the cookie jar!"
        }else if loweredQuestion.hasPrefix("hello"){
            return "Why, hello there!"
        }else if loweredQuestion.hasPrefix("where"){
            return "To the North"
        }else if loweredQuestion.hasPrefix("can"){
            return "My sources say no"
        }else{
            return "I'm sorry, I don't understand the question."
        }
    }
}
