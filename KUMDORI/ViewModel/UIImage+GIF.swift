//
//  loadingImage.swift
//  KUMDORI
//
//  Created by donghyeon choi on 5/25/24.
//

import UIKit
import ImageIO

extension UIImage {
    public static func gif(name: String) -> UIImage? {
        guard let bundleURL = Bundle.main.url(forResource: name, withExtension: "gif"),
              let imageData = try? Data(contentsOf: bundleURL),
              let source = CGImageSourceCreateWithData(imageData as CFData, nil) else { return nil }

        var images = [UIImage]()
        let imageCount = CGImageSourceGetCount(source)
        for i in 0..<imageCount {
            if let image = CGImageSourceCreateImageAtIndex(source, i, nil) {
                images.append(UIImage(cgImage: image))
            }
        }
        return UIImage.animatedImage(with: images, duration: 1.0)
    }
}
