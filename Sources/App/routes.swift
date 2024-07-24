import Vapor

//func routes(_ app: Application) throws {
//    app.get { req async in
//        "It works!"
//    }
//
//    app.get("hello") { req async -> String in
//        "Hello, world!"
//    }
//}

struct Prerequisite: Content {
    let courseName: String
    let courseLink: String
    let price: Double
    let instructor: String
    let avatarUrl: String
    let courseBio: String
    let orderId: Int
}


func routes(_ app: Application) throws {
    /**
    run then enter below url:
     http://127.0.0.1:8080/getPrerequisites
     */

    app.get("getPrerequisites") { req async -> [Prerequisite] in
        var prerequisites = [Prerequisite]()
        
        let gitCourse = Prerequisite(
            courseName: "Git beginner course",
            courseLink: "https://learngitbranching.js.org/",
            price: 0.00, 
            instructor: "Will Smythe",
            avatarUrl: "https://www.javiertordable.com/images/learn-git3.png",
            courseBio: "Interested in learning Git? Well you've come to the right place! 'Learn Git Branching' is the most visual and interactive way to learn Git on the web; you'll be challenged with exciting levels, given step-by-step demonstrations of powerful features, and maybe even have a bit of fun along the way.",
            orderId: 4)
        
        let swiftPlaygrounds1 = Prerequisite(
            courseName: "Swift Playgrounds Game 1",
            courseLink: "https://app.alludolearning.com/m/activities/147676-swift-playgrounds-getting-started-with-learn-to-code-1-commands",
            price: 0.00,
            instructor: "Self guided",
            avatarUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXFGMHPXBCykZN35aX3Oetve4cHKtZ0sZxaQ&s",
            courseBio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
            orderId: 1)
        
        let swiftPlaygrounds2 = Prerequisite(
            courseName: "Swift Playgrounds Game 2",
            courseLink: "https://app.alludolearning.com/m/activities/147676-swift-playgrounds-getting-started-with-learn-to-code-1-commands",
            price: 0.00,
            instructor: "Self guided",
            avatarUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbGf3_LSit8Rqdoe09lzaOXe-5ivF_WY1jzA&s",
            courseBio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
            orderId: 2)
        
        let seanAllenBeginnerCourse = Prerequisite(
            courseName: "Swift beginner course",
            courseLink: "https://www.youtube.com/watch?v=CwA1VWP0Ldw&t=9859s&ab_channel=SeanAllen",
            price: 0.00, 
            instructor: "Sean Allen",
            avatarUrl: "https://avatars.githubusercontent.com/u/10645516?v=4",
            courseBio: "",
            orderId: 3)
        
        let seanAllenTakeHomeProject = Prerequisite(
            courseName: "Dev Interview Prep - Take Home Project",
            courseLink: "https://www.youtube.com/watch?v=JzngncpZLuw&ab_channel=SeanAllen",
            price: 0.00, 
            instructor: "Sean Allen",
            avatarUrl: "https://avatars.githubusercontent.com/u/10645516?v=4",
            courseBio: "",
            orderId: 5)
        
        // mark w book & dollar sign icon
        let hackingWithIosBook = Prerequisite(
            courseName: "Hacking with iOS book",
            courseLink: "https://www.hackingwithswift.com/career-guide",
            price: 45.00, 
            instructor: "Paul Hudson",
            avatarUrl: "https://avatars.githubusercontent.com/u/190200?v=4",
            courseBio: "",
            orderId: 0)
        
        let stanfordXcodeTips = Prerequisite(
            courseName: "Stanford CS193P iOS course - Debugging and Xcode tips & tricks",
            courseLink: "https://www.youtube.com/watch?v=CRxHhx_pubY&list=PL3d_SFOiG7_8ofjyKzX6Nl1wZehbdiZC_&index=3&ab_channel=CS193P",
            price: 0.00, 
            instructor: "Jason Riggs",
            avatarUrl: "",
            courseBio: "", 
            orderId: 0)
        
        let stewartLynchMasteringXcode = Prerequisite(
            courseName: "Mastering Xcode",
            courseLink: "https://www.youtube.com/watch?v=ia-X9-w    sne8&list=PLBn01m5Vbs4CUCcA3fqvsRtx153akAJU1&index=2",
            price: 0.00, 
            instructor: "Stewart Lynch",
            avatarUrl: "https://avatars.githubusercontent.com/u/2940924?v=4",
            courseBio: "",
            orderId: 0)
        
        // add getting started with github (search on YT), learn to code 1, learn to code 2, & blu's adventure (swift playgrounds)
        
        let mutatedArray = prerequisites.multiAppend(toArray: &prerequisites, courses: gitCourse, seanAllenBeginnerCourse, hackingWithIosBook, stanfordXcodeTips, stewartLynchMasteringXcode, seanAllenTakeHomeProject)
        
        return mutatedArray
    }
}


extension Array {
    
    func multiAppend<T: Content>(toArray array: inout [T], courses: T...) -> [T] {
        var array = array
        for course in courses {
            array.append(course)
        }
        return array
    }
}

