import Foundation
import UIKit

extension UIImage {
  func gaussianBlur(radius: Int) -> UIImage {
    let filter = CIFilter(name: App.gaussianBlurName)
    let ciInput = CIImage(image: self)
    filter?.setValue(ciInput, forKey: kCIInputImageKey)
    filter?.setValue((radius), forKey: kCIInputRadiusKey)
    
    let ciOutput = filter?.outputImage
    let ciContext = CIContext()
    let cgImage = ciContext.createCGImage(ciOutput!, from: (ciOutput?.extent)!)
    return UIImage(cgImage: cgImage!)
  }
}
