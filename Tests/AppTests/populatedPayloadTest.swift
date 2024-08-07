import XCTVapor
@testable import App

final class populatedPayloadTest: XCTestCase {
    var app: Application!
    var prerequisites = [Prerequisite]()
    
    override func setUp() async throws {
        self.app = try await Application.make(.testing)
        try await configure(app)
    }
    
    override func tearDown() async throws { 
        try await self.app.asyncShutdown()
        self.app = nil
    }
    
    
//    func testHelloWorld() async throws {
//        try await self.app.test(.GET, "hello", afterResponse: { res async in
//            XCTAssertEqual(res.status, .ok)
//            XCTAssertEqual(res.body.string, "Hello, world!")
//        })
//    }
}
