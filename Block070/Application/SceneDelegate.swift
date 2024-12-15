//
//  SceneDelegate.swift
//  Block070
//
//  Created by 박주완 on 12/14/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard
            let windowScene = scene as? UIWindowScene,
                session.configuration.name == "Default"
        else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        let vc = Block070ViewController(viewModel: Block070ViewModel())
        window?.rootViewController = UINavigationController(rootViewController: vc)
        window?.windowScene = windowScene
        window?.makeKeyAndVisible()
    }
}

