import UIKit
import SnapKit

extension ViewController {
  
  class ContentView: UIView {
    
    lazy var icon: UIImageView = {
      let view = UIImageView()
      view.image = UIImage(named: "swift_logo")
      return view
    }()
    
    lazy var red: UIView = {
      let view = UIView(frame: .zero)
      return view
    }()
    
    lazy var blue: UIView = {
      let view = UIView(frame: .zero)
      return view
    }()
    
    override init(frame: CGRect) {
      super.init(frame: frame)
      setupViews()
      setConstraint()
      setProperties()
    }
    
    required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
    }
    
    private func setProperties() {
//      red.setFillColor(fillColor: UIColor(named: "red")?.cgColor)
//      blue.setFillColor(fillColor: UIColor(named: "blue")?.cgColor)
//
      guard let redColor = UIColor(named: "red")?.cgColor,
            let blueColor = UIColor(named: "blue")?.cgColor else {
        return
      }
      
//      makeTriangle(view: red, color: redColor)
//      makeTriangle(view: blue, color: blueColor)
    }
    
    private func setupViews() {
      addSubview(red)
      addSubview(blue)
      addSubview(icon)
    }
    
    private func setConstraint() {
      red.snp.makeConstraints {
        $0.top.equalTo(safeAreaLayoutGuide.snp.top).inset(90)
        $0.left.equalToSuperview().inset(50.0)
        $0.width.equalTo(120.0)
        $0.height.equalTo(108.0)
      }
      
      blue.snp.makeConstraints {
        $0.top.equalTo(safeAreaLayoutGuide.snp.top).inset(135.0)
        $0.right.equalToSuperview().inset(50.0)
        $0.width.equalTo(120.0)
        $0.height.equalTo(108.0)
      }
      
      icon.snp.makeConstraints {
        $0.top.equalTo(safeAreaLayoutGuide.snp.top).inset(40.0)
        $0.right.equalToSuperview().inset(90.0)
        $0.size.equalTo(140.0)
      }
    }
  }
}
