//
//  GIFPlayerView.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/25/24.
//

import SwiftUI
import UIKit

struct GIFPlayerView: UIViewRepresentable {
    var gifName: String

    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: .zero)

        let gifImage = UIImage.gif(name: "loading") // 'UIImage+GIF.swift' 파일 필요
        let imageView = UIImageView(image: gifWideImage)
        imageView.contentMode = .scaleAspectFit
        imageView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        view.addSubview(imageView)

        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.widthAnchor.constraint(equalTo: view.widthAnchor),
            imageView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        // GIF 업데이트 로직 (필요한 경우)
    }
}

struct ContentView: View {
    var body: some View {
        GIFPlayerWive(gifName: "loading")
    }
}
