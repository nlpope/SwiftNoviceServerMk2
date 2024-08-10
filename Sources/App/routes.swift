import Vapor

struct Prerequisite: Content {
    let courseName: String
    let courseLink: String
    let price: Double
    let instructor: String
    let avatarUrl: String
    let courseBio: String
    let orderId: Int
}


struct Project: Content {
    let projectName: String
    let projectLink: String
    let avatarUrl: String
    let projectBio: String
    let orderId: Int
}

//func routes(_ app: Application) throws {
//    app.get { req async in
//
//    }
//
//    app.get("hello") { req async -> String in
//        "Hello, world!"
//    }
//}



func routes(_ app: Application) throws {
    /**
     run then enter below url:
     http://127.0.0.1:8080/getPrerequisites
     */
    
    // MARK: PREREQUISITES
    
    app.get("getPrerequisites") { req async -> [Prerequisite] in
        var prerequisites = [Prerequisite]()
        
        let gitCourse = Prerequisite(
            courseName: "Git beginner course",
            courseLink: "https://learngitbranching.js.org/",
            price: 0.00,
            instructor: "Will Smythe",
            avatarUrl: "https://www.javiertordable.com/images/learn-git3.png",
            courseBio: "Interested in learning Git? Well you've come to the right place! 'Learn Git Branching' is the most visual and interactive way to learn Git on the web; you'll be challenged with exciting levels, given step-by-step demonstrations of powerful features, and maybe even have a bit of fun along the way.",
            orderId: 5)
        
        let swiftPlaygrounds1 = Prerequisite(
            courseName: "Swift Playgrounds Game 1",
            courseLink: "https://app.alludolearning.com/m/activities/147676-swift-playgrounds-getting-started-with-learn-to-code-1-commands",
            price: 0.00,
            instructor: "Self guided",
            avatarUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXFGMHPXBCykZN35aX3Oetve4cHKtZ0sZxaQ&s",
            courseBio: "Learn to code with Swift Playgrounds. Swift Playgrounds is a revolutionary app for iPad and Mac that helps you learn to code and build apps using Swift, the same powerful language used to create world-class apps for the App Store.",
            orderId: 1)
        
        let swiftPlaygrounds2 = Prerequisite(
            courseName: "Swift Playgrounds Game 2",
            courseLink: "https://app.alludolearning.com/m/activities/147676-swift-playgrounds-getting-started-with-learn-to-code-1-commands",
            price: 0.00,
            instructor: "Self guided",
            avatarUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbGf3_LSit8Rqdoe09lzaOXe-5ivF_WY1jzA&s",
            courseBio: "Learn to code with Swift Playgrounds. Swift Playgrounds is a revolutionary app for iPad and Mac that helps you learn to code and build apps using Swift, the same powerful language used to create world-class apps for the App Store.",
            orderId: 2)
        
        let seanAllenBeginnerCourse = Prerequisite(
            courseName: "Swift beginner course",
            courseLink: "https://www.youtube.com/watch?v=CwA1VWP0Ldw&t=9859s&ab_channel=SeanAllen",
            price: 0.00,
            instructor: "Sean Allen",
            avatarUrl: "https://avatars.githubusercontent.com/u/10645516?v=4",
            courseBio: "A course in Swift basics for absolute beginners.",
            orderId: 6)
        
        let seanAllenTakeHomeProject = Prerequisite(
            courseName: "Dev Interview Prep - Take Home Project",
            courseLink: "https://www.youtube.com/watch?v=JzngncpZLuw&ab_channel=SeanAllen",
            price: 0.00,
            instructor: "Sean Allen",
            avatarUrl: "https://avatars.githubusercontent.com/u/10645516?v=4",
            courseBio: "In this course I walk you through a mock take home project that is very common in the iOS dev job interview process. We start from the project brief, design, and we build the entire thing together so you can practice for the real thing. This project fetches a list of followers from a GitHub username via a network call and allows the user to set and persist a favorite GitHub user.",
            orderId: 7)
        
        // mark w book & dollar sign icon
        let hackingWithIosBook = Prerequisite(
            courseName: "Hacking with iOS book",
            courseLink: "https://www.hackingwithswift.com/career-guide",
            price: 45.00,
            instructor: "Paul Hudson",
            avatarUrl: "https://avatars.githubusercontent.com/u/190200?v=4",
            courseBio: "The Hacking with Swift tutorial series is designed to make it easy for beginners to get started coding for iPad and iPhone using the Swift programming language. Hacking with Swift’s teaching style is extremely hands-on, which means nearly everything you learn from me will have a direct, practical application to something we're working on. That way, your brain can see exactly why a certain technique is helpful and you can start using it straight away.",
            orderId: 8)
        
        let stanfordXcodeTips = Prerequisite(
            courseName: "Stanford CS193P iOS course - Debugging and Xcode tips & tricks",
            courseLink: "https://www.youtube.com/watch?v=CRxHhx_pubY&list=PL3d_SFOiG7_8ofjyKzX6Nl1wZehbdiZC_&index=3&ab_channel=CS193P",
            price: 0.00,
            instructor: "Jason Riggs",
            avatarUrl: "https://miro.medium.com/v2/resize:fit:1110/1*SM3MvxLn6D3yigl-RrJP7w@2x.jpeg",
            courseBio: "Jason Riggs talks about debugging and shares Xcode tips and tricks.",
            orderId: 3)
        
        let stewartLynchMasteringXcode = Prerequisite(
            courseName: "Mastering Xcode",
            courseLink: "https://www.youtube.com/watch?v=R2ptqaBMan4&list=PLBn01m5Vbs4CUCcA3fqvsRtx153akAJU1&index=1&ab_channel=StewartLynch",
            price: 0.00,
            instructor: "Stewart Lynch",
            avatarUrl: "https://avatars.githubusercontent.com/u/2940924?v=4",
            courseBio: "This is the first of a 3 part series on Taming the beast known as Xcode. The series will be broken into 3 distinct sections.  In this first video, I will go over what has confused me a lot;  window and document tabs along with editors and how these all fit together.  I'll provide you with some tips for keeping your hands on the keyboard and still be able to navigate your way around.",
            orderId: 4)
        
        
        prerequisites += [gitCourse, seanAllenBeginnerCourse, hackingWithIosBook, stanfordXcodeTips, stewartLynchMasteringXcode, seanAllenTakeHomeProject, swiftPlaygrounds1, swiftPlaygrounds2]
        
        return prerequisites
    }
    
    
    // MARK: PROJECTS
    
    app.get("getProjects") { req async -> [Project] in
        var projects = [Project]()
        
        let mortgageCalculator = Project(
            projectName: "Mortgage Calculator",
            projectLink: "https://www.codementor.io/projects/mobile/mortgage-calculator-mobile-app-d16e4dbmfl",
            avatarUrl: "https://ucarecdn.com/f74f856a-5808-47a6-9852-48261b07f662/",
            projectBio: "Taking out loans and calculating monthly EMI can be confusing and stressful. However, with the help of a mortgage calculator, anyone can easily plan their mortgages out. You will build a mortgage calculator in this project!",
            orderId: 1)
        
        let jokeTellingBot = Project(
            projectName: "Joke Telling Bot",
            projectLink: "https://www.codementor.io/projects/mobile/joke-telling-bot-mobile-app-ck4xnjrxxo",
            avatarUrl: "https://ucarecdn.com/33cdc79b-a58d-448f-865c-4725eb284e90/",
            projectBio: "Whether it's smartphones, cars, or speakers, voice assistants are becoming more and more integral to our everyday lives. Not only so, voice assistants are gaining traction in companies to help streamline operations like Customer Service. In this project, you'll build a full-fledged Joke Telling Robot Mobile App using Text to Speech APIs, which can be applied to both web apps and mobile apps.",
            orderId: 2)
        
        let randomColorGenerator = Project(
            projectName: "Random Color Palette Generator",
            projectLink: "https://www.codementor.io/projects/mobile/random-color-palette-generator-mobile-ap",
            avatarUrl: "https://ucarecdn.com/a74a0fbe-7838-473a-9a5c-3521ed6184e0/",
            projectBio: "In today's world, design is everything. Choosing the right color palette for your mobile app will help evoke different emotions you'd like your audience to experience. You'll build a full-fledged random color palette generator mobile app using Colormind API, which can be used for both web apps and mobile apps.",
            orderId: 3)
        
        let sleepTracker = Project(
            projectName: "Daily Sleep Tracker",
            projectLink: "https://www.codementor.io/projects/mobile/daily-sleep-tracker-mobile-app-c3bf3be75h",
            avatarUrl: "https://ucarecdn.com/b4870709-0c1f-4afd-974a-650035182dde/",
            projectBio: "Irregular sleeping patterns are a common problem. This mobile app will fulfill the user's needs in tracking their sleeping patterns, including duration and timings. This app will track three parameters: sleep time, wake up time, and sleep duration. Users can add, edit, or remove any sleep entries.",
            orderId: 4)
        
        let restaurantSocial = Project(
            projectName: "Restaurant's Social Mobile App",
            projectLink: "https://www.codementor.io/projects/mobile/restaurants-social-mobile-app-atx32rvbqo",
            avatarUrl: "https://pixelify.nyc3.cdn.digitaloceanspaces.com/wp-content/uploads/2022/06/03140125/social-media-app-interface-on-mock-up-device-psd_6079b673c9e98-600x416.jpeg",
            projectBio: "You'll build a mobile app to consume the News API and display a list of news articles. Clicking one of the news articles will open the news article within the app. Depending on your experience, this project might take between 15 to 20 hours.",
            orderId: 5)
        
        let eventsMobileApp = Project(
            projectName: "Events Mobile App",
            projectLink: "https://www.codementor.io/projects/mobile/events-mobile-app-atx32qsp4f",
            avatarUrl: "https://freebiesui.com/wp-content/uploads/2021/01/Event-Management-App-Design.jpg",
            projectBio: "You'll build a mobile app to consume the Eventbrite API that lets users discover & sign up for events! Depending on your experience, this project might take between 30 to 40 hours.",
            orderId: 6)
        
        let walkingRoutes = Project(
            projectName: "WalkingRouteGenerator",
            projectLink: "https://www.codementor.io/projects/mobile/mobile-app-to-generate-local-walking-routes-atx32oqrzg",
            avatarUrl: "https://ucarecdn.com/a1a40c8d-2358-4632-b9bf-4f76113e624c/",
            projectBio: "This app will take your current location and generate a random walking route of the specified length - measured in either distance or time. It provides a quick and easy way to explore a new area, or get to know a familiar area even better.",
            orderId: 7)
        
        
        projects += [mortgageCalculator, jokeTellingBot, randomColorGenerator, sleepTracker, restaurantSocial, eventsMobileApp, walkingRoutes]
        
        return projects
    }
}
