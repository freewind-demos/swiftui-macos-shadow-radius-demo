import Cocoa

@main
struct ShadowRadiusApp: App {
    var body: some Scene {
        Window("阴影与圆角", id: "main") {
            ContentView()
        }
        .defaultSize(width: 500, height: 500)
    }
}
