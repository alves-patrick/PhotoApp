//
//  NavigationBarView.swift
//  PhotoApp
//
//  Created by Patrick Alves on 2/8/24.
//

import SwiftUI

struct NavigationBarView: View {
    var body: some View {
        VStack {
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image(systemName: "camera")
                        .resizable()
                        .frame(width: 25, height: 20)
                }
                .foregroundColor(.black)
                Spacer()
                Text("PhotoApp")
                    .font(Font.custom("Billabong", size: 28))
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image(uiImage: UIImage(imageLiteralResourceName: "profile"))
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 36, height: 36)
                        .clipShape(Circle())
                        .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
                }
            }
            .padding(.leading)
            .padding(.trailing)
            .padding(.top)
        }
    }
}

#Preview {
    NavigationBarView()
}
