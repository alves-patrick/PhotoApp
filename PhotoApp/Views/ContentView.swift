//
//  ContentView.swift
//  PhotoApp
//
//  Created by Patrick Alves on 2/5/24.
//

import SwiftUI

func screenSize() -> CGSize {
    return UIScreen.main.bounds.size
}



struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                NavigationBarView()
                VStack {
                    HStack {
                        Image(uiImage: UIImage(imageLiteralResourceName: "profile"))
                            .resizable()
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                            .frame(width: 36, height: 36)
                        VStack(alignment: .leading) {
                            Text("Mille_F")
                                .font(.footnote)
                                .fontWeight(.bold)
                            HStack {
                                Text("London, England")
                                    .font(.footnote)
                                    .foregroundColor(.secondary)
                                Spacer()
                                Text("2 minutes ago")
                                    .font(.footnote)
                                    .foregroundColor(.secondary)
                            }
                            
                            
                        }
                        
                    }
            
                    RoundedImageView()
                    
                    HStack(spacing: 30) {
                        Button(action: {}) {
                            HStack {
                                Image(systemName: "heart").font(Font.headline.weight(.semibold))
                                Text("22").font(.caption)
                            }
                        }.foregroundColor(.black)
                        
                        Button(action: {}) {
                            HStack {
                                Image(systemName: "bubble.right").font(Font.headline.weight(.semibold))
                                Text("4").font(.caption)
                            }
                        }.foregroundColor(.black)
                        Spacer()
                    }
                    .padding(.top)
                }
                .padding(.leading)
                .padding(.trailing)
                Spacer()
            }
        }
    }
}
#Preview {
    ContentView()
}

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
            .padding()
        }
    }
}

struct RoundedImageView: View {
    var body: some View {
        Image(uiImage: UIImage(imageLiteralResourceName: "lake"))
            .resizable()
            .frame(height: 300)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .shadow(color: Color.defaultShadowColor(), radius: 15, x: 5, y: 10)
    }
}
