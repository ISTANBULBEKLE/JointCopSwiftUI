//
//  JointCopSwiftUIApp.swift
//  JointCopSwiftUI
//
//  Created by ekip.kalir on 21/03/2023.
//

import SwiftUI

@main
struct JointCopSwiftUIApp: App {

  init(){
    getFontNames()
  }

  func getFontNames(){
    let fontFamilies =  UIFont.familyNames
    for fontFamily in fontFamilies {
      print("The font family name is ===> [\(fontFamily)]")
      let fontNames = UIFont.fontNames(forFamilyName: fontFamily)
      for fontName in fontNames {
        print("This is the font name; [\(fontName)]")
      }
    }

  }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
