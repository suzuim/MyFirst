//
//  ContentView.swift
//  MyFirst
//
//  Created by 今井涼葉 on 2021/11/25.
//

import SwiftUI

struct ContentView: View {
    @State var outputText = "Hello, Tsuda!"
    
    var body: some View {
        
        VStack{
            Text(outputText)
                .font(.largeTitle)
                .padding()
            
            Button(action: {
                
                outputText = "Hi, Swift!"
                
            }) {
                Text("切り替えボタン")
                    .foregroundColor(Color.white)
                    .padding(.all)
                    .background(Color.blue)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

import UIKit

class ChatListViewController: UIViewController {

   override func viewDidLoad() {
     super.viewDidLoad()

   }


}


②SceneDelegate.swift > scene(_:willConnectTo:options:)

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

   var window: UIWindow?


   func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

       let window = UIWindow(windowScene: scene as! UIWindowScene)
      self.window = window
      window.makeKeyAndVisible()

      let storyboard = UIStoryboard(name: “ChatList”, bundle: nil)
   let chatListViewController = storyboard.instantiateViewController(identifier: “ChatListViewController”)
   let nav = UINavigationCotroller(rootViewCotroller: chatListViewController)

   window.rootViewController = nav
      guard let _ = (scene as? UIWindowScene) else { return }
   }

   func sceneDidDisconnect(_ scene: UIScene) {
      // Called as the scene is being released by the system.
      // This occurs shortly after the scene enters the background, or when its session is discarded.
      // Release any resources associated with this scene that can be re-created the next time the scene connects.
      // The scene may re-connect later, as its session was not necessarily discarded (see ‘application:didDiscardSceneSessions’ instead).
}

   func sceneDidBecomeActive(_ scene: UIScene) {
      // Called when the scene has moved from an inactive state to an active state.
      // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
   }

func sceneWillResignActive(_ scene: UIScene) {
      // Called when the scene will move from an active state to an inactive state.
      // This may occur due to temporary interruptions (ex. an incoming phone call).

   }

   func sceneWillEnterForeground(_ scene: UIScene) {
      // Called as the scene transitions from the background to the foreground.
      //
