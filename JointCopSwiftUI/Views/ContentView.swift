//
//  ContentView.swift
//  JointCopSwiftUI
//
//  Created by ekip.kalir on 21/03/2023.
//

import SwiftUI

struct ContentView: View {
  @State var isTapped =  false

  var body: some View {

    NavigationView {

      ZStack {
        Color.BackgroundThemeColor.edgesIgnoringSafeArea(.all)
        VStack(alignment: .center, spacing: 50) {
          Text(Constants().HeaderText)
            .font(.custom("Inter-Medium", fixedSize: 24))
          Text(Constants().IntroductionText)
            .font(.custom("Inter-Regular", fixedSize: 20))
            .multilineTextAlignment(.center)
          ZStack(alignment: .center){
            Image("im-mars-rover-green")
              .resizable()
              .frame(width:370, height: 170)
              .clipShape(RoundedRectangle(cornerRadius: 50))
              .onTapGesture {
                withAnimation(){
                  isTapped.toggle()
                }
              }
              .offset(x: isTapped ? 10 : 0)
              .scaleEffect(isTapped ? 1.3 : 1)
            Image("im-mars-rover")
              .resizable()
              .frame(width:370, height: 170)
              .clipShape(RoundedRectangle(cornerRadius: 50))
              .onTapGesture {
                withAnimation(){
                  isTapped.toggle()
                }
              }
              .offset(x: isTapped ? -310 : 0)
              .scaleEffect(isTapped ? 1.3 : 1)
          }
          HStack(alignment: .center, spacing: 30) {
            NavigationLink(destination: RoversView()) {
              Text("Rovers")
                .frame(width:170, height:37)
                .background(Color.ButtonThemeColor)
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .font(.custom("Inter-SemiBold", fixedSize: 20))
                .foregroundColor(.black)
            }
            NavigationLink(destination: PicOfTheDayView()) {
              Text("Pic Of The Day")
                .frame(width:170, height:37)
                .background(Color.ButtonThemeColor)
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .font(.custom("Inter-SemiBold", fixedSize: 20))
                .foregroundColor(.black)
            }
          }
          .navigationTitle("Home")
          Spacer()
            HStack(alignment:.center, spacing: 10){
              Image("Sun")
                .resizable()
                .frame(width:30, height: 30)
                .foregroundColor(.white)
              Text(Constants().FooterText)
                .font(.custom("Inter-SemiBold", fixedSize: 14))
            }
            .frame(maxWidth:.infinity)
            .frame(maxHeight: 60)
            .background(Color.FooterThemeColor)
        }
      }

    }

  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
