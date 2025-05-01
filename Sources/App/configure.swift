import Vapor

// configures your application
@available(iOS 13.0.0, *)
public func configure(_ app: Application) async throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    // register routes
    app.http.server.configuration.hostname = "0.0.0.0"
//    app.http.server.configuration.hostname = "100.110.227.37"
//    app.http.server.configuration.hostname = "100.110.227.34"
  
    try routes(app)
}
