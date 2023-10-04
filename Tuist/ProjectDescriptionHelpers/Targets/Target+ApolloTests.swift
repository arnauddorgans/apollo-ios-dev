import ProjectDescription

extension Target {
    
    public static func apolloTests() -> Target {
        let target: ApolloTarget = .apolloTests
        
        return Target(
            name: target.name,
            platform: .macOS,
            product: .unitTests,
            bundleId: "com.apollographql.\(target.name.lowercased())",
            deploymentTarget: target.deploymentTarget,
            infoPlist: .file(path: "Tests/\(target.name)/Info.plist"),
            sources: [
                "Tests/\(target.name)/**",
            ],
            dependencies: [
                .target(name: ApolloTarget.apolloInternalTestHelpers.name),
                .target(name: ApolloTarget.starWarsAPI.name),
                .target(name: ApolloTarget.uploadAPI.name),
                .package(product: "Apollo"),
                .package(product: "ApolloTestSupport"),
                .package(product: "Nimble")
            ],
            settings: .forTarget(target)
        )
    }
    
}

extension Scheme {
    
    public static func apolloTests() -> Scheme {
        let target: ApolloTarget = .apolloTests
        
        return Scheme(
            name: target.name,
            buildAction: .buildAction(targets: [
                TargetReference(projectPath: nil, target: target.name)
            ]),
            testAction: .testPlans([
                ApolloTestPlan.unitTest.path,
                ApolloTestPlan.ciTest.path
            ])
        )
    }
    
}