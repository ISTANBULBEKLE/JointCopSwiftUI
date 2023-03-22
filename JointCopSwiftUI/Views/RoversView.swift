//
//  RoversView.swift
//  JointCopSwiftUI
//
//  Created by ekip.kalir on 21/03/2023.
//

import SwiftUI

struct RoversView: View {
  @State var isTapped =  false
  var body: some View {
    ZStack {
      Color.BackgroundThemeColor.edgesIgnoringSafeArea(.all)
      VStack(alignment: .center, spacing: 100) {
        Text("Mars Rovers Catalog")
          .font(.custom("Inter-Bold", fixedSize: 24))
        ZStack {
          Image("im-mars-rover-green")
            .resizable()
            .frame(width:380, height:180)
          .cornerRadius(30)
          Image("im-mars-rover")
            .resizable()
            .frame(width:380, height:180)
            .cornerRadius(30)
            .onTapGesture {
              withAnimation(.spring()){
                isTapped.toggle()
              }
            }
            .offset(x: isTapped ? -100 : 0)
            .offset(y: isTapped ? -50 : 0)
            .scaleEffect(isTapped ? 1.3 : 1 )
        }
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

struct RoversView_Previews: PreviewProvider {
  static var previews: some View {
    RoversView()
  }
}
