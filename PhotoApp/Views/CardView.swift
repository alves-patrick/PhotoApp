//
//  CardView.swift
//  PhotoApp
//
//  Created by Patrick Alves on 2/8/24.
//

import SwiftUI

struct CardView: View {
    var post: Post
    var body: some View {
        VStack {
            HStack {
                RoundedImageView(imageName: "profile", cornerRadius: 5)
                    .frame(width: 45, height: 36)
                    .aspectRatio(contentMode: .fit)
                VStack(alignment: .leading) {
                    Text(post.username)
                        .font(.footnote)
                        .fontWeight(.bold)
                    HStack {
                        Text(post.location)
                            .font(.footnote)
                            .foregroundColor(.secondary)
                        Spacer()
                        Text(post.timePostedSinceNow)
                            .font(.footnote)
                            .foregroundColor(.secondary)
                    }
                }
            }
            RoundedImageView(imageName: post.postImageUrl)
                .frame(height: 300)
                .shadow(color: Color.defaultShadowColor(), radius: 15, x: 5, y: 10)
            
            HStack(spacing: 30) {
                Button(action: {}) {
                    HStack {
                        Image(systemName: "heart").font(Font.headline.weight(.semibold))
                        Text("\(post.likeCount)").font(.caption)
                    }
                }.foregroundColor(.black)
                
                Button(action: {}) {
                    HStack {
                        Image(systemName: "bubble.right").font(Font.headline.weight(.semibold))
                        Text("\(post.commentCount)").font(.caption)
                    }
                }.foregroundColor(.black)
                Spacer()
            }
            .padding(.top)
            .padding(.bottom)
        }
        .padding(.leading)
        .padding(.trailing)
    }
}
#Preview {
    CardView(post: Post(userImage: Image(uiImage: UIImage(imageLiteralResourceName: "profile")), username: "mile_f", location: "london, England", timePostedSinceNow: "2 minutes ago", postImageUrl: "lake", commentCount: 3, likeCount: 5))
}
