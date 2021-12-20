//
//  ViewController.swift
//  Test
//
//  Created by iMacbook on 12/20/21.
//

import UIKit

class ViewController: UIViewController {
  
  lazy var content = ContentView(frame: .zero)
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    drawTriangle()
  }
  
  override func loadView() {
    super.loadView()
    setupView()
    setContraint()
  }
  
  func setupView() {
    view.addSubview(content)
  }
  
  func setContraint() {
    content.snp.makeConstraints {
      $0.edges.equalToSuperview()
    }
  }
  
}

extension ViewController {
  private func drawTriangle() {
    guard let redColor = UIColor(named: "red")?.cgColor,
          let blueColor = UIColor(named: "blue")?.cgColor else {
      return
    }
    
    DispatchQueue.main.async { [weak self] in
      guard let self = self else {return}
      self.makeTriangle(view: self.content.red, color: redColor)
      self.makeTriangle(view: self.content.blue, color: blueColor)
    }
  }
  
  func makeTriangle(view: UIView, color: CGColor) {

    let height = view.frame.size.height
    let width = view.frame.size.width
    let path = CGMutablePath()
    
    path.move(to: CGPoint(x: 0, y: height))
    path.addLine(to: CGPoint(x: width/2, y: 0))
    path.addLine(to: CGPoint(x: width, y: height))
    path.addLine(to: CGPoint(x:0, y: height))
    
    let shape = CAShapeLayer()
    shape.path = path
    shape.fillColor = color
    
    view.layer.insertSublayer(shape, at: 0)
  }
}
