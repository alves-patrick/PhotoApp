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

struct FeedView: View {
    @ObservedObject var feedViewModel: FeedViewModel
    
    init(feedViewModel: FeedViewModel) {
        self.feedViewModel = feedViewModel
    }
    var body: some View {
        ZStack {
            VStack {
                NavigationBarView()
                VStack {
                    if !self.feedViewModel.posts.isEmpty {
                        ScrollView {
                            ForEach(self.feedViewModel.posts.indices, id: \.self) { index in
                                CardView(post: self.feedViewModel.posts[index])
                            }
                        }
                        .padding(.bottom)
                    }
                }
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.bottom)
        .onAppear {
        self.feedViewModel.loadPosts()
        }
    }
}
#Preview {
    FeedView(feedViewModel: FeedViewModel())
    
}






