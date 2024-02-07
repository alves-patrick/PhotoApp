//
//  RoundedImageView.swift
//  PhotoApp
//
//  Created by Patrick Alves on 2/6/24.
//

import SwiftUI

struct RoundedImageView: View {
    var imageName: String = "lake"
    var cornerRadius: CGFloat = 20
    var body: some View {
        Image(imageName)
            .resizable()
            .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}
#Preview {
    RoundedImageView()
}
