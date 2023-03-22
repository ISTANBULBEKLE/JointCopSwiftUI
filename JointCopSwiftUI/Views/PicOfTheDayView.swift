//
//  PicOfTheDayView.swift
//  JointCopSwiftUI
//
//  Created by ekip.kalir on 21/03/2023.
//

import SwiftUI

struct PicOfTheDayView: View {
  @State var notifyMeAbout = ""
    var body: some View {
      ZStack {
        Color.BackgroundThemeColor.edgesIgnoringSafeArea(.all)
        VStack {
          Text("Pic of the Day")
            .font(.custom("Inter-Bold", fixedSize: 24))
//          NavigationView {
//              Form {
//                  Section(header: Text("Notifications")) {
//                      Picker("Notify Me About", selection: $notifyMeAbout) {
//                          Text("Direct Messages").tag(NotifyMeAboutType.directMessages)
//                          Text("Mentions").tag(NotifyMeAboutType.mentions)
//                          Text("Anything").tag(NotifyMeAboutType.anything)
//                      }
//                      Toggle("Play notification sounds", isOn: $playNotificationSounds)
//                      Toggle("Send read receipts", isOn: $sendReadReceipts)
//                  }
//                  Section(header: Text("User Profiles")) {
//                      Picker("Profile Image Size", selection: $profileImageSize) {
//                          Text("Large").tag(ProfileImageSize.large)
//                          Text("Medium").tag(ProfileImageSize.medium)
//                          Text("Small").tag(ProfileImageSize.small)
//                      }
//                      Button("Clear Image Cache") {}
//                  }
//              }
//          }
          Spacer()
          HStack(alignment: .center, spacing: 10) {
            Image(systemName: "sun.dust.circle")
              .resizable()
              .frame(width: 30, height: 30)
              .foregroundColor(.white)
            Text(Constants().FooterText)
              .font(.custom("Inter-SemiBold", fixedSize: 14))
          }
          .frame(maxWidth: .infinity)
          .frame(maxHeight: 60)
          .background(Color.FooterThemeColor)
        }
      }
    }
}

struct PicOfTheDayView_Previews: PreviewProvider {
    static var previews: some View {
        PicOfTheDayView()
    }
}
