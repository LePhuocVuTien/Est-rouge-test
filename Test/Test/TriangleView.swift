import UIKit

class TriangleView: UIView {
  
  private var context = UIGraphicsGetCurrentContext()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
  override func draw(_ rect: CGRect) {
    guard let context = UIGraphicsGetCurrentContext() else { return }
    self.context = context
    
    self.context?.beginPath()
    self.context?.move(to: CGPoint(x: rect.minX, y: rect.maxY))
    self.context?.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
    self.context?.addLine(to: CGPoint(x: (rect.maxX / 2.0), y: rect.minY))
    self.context?.closePath()
    
    self.context?.setFillColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
    self.context?.fillPath()
  }
  
  open func setFillColor(fillColor: CGColor?) {
    guard let color = fillColor else {
      return
    }
    self.context?.setFillColor(color)
  }
}
