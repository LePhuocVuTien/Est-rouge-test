import UIKit
import SnapKit

extension ViewController {
  
  class ContentView: UIView {
    
    lazy var icon: UIImageView = {
      let view = UIImageView()
      view.image = UIImage(named: "swift_logo")
      view.contentMode = .scaleAspectFit
      return view
    }()
    
    lazy var red: TriangleView = {
      let view = TriangleView(frame:.zero)
      view.fillColor = UIColor(named: "red")
      view.backgroundColor = .clear
      return view
    }()
    
    lazy var blue: TriangleView = {
      let view = TriangleView()
      view.fillColor = UIColor(named: "blue")
      view.backgroundColor = .clear
      return view
    }()
    
    override init(frame: CGRect) {
      super.init(frame: frame)
      backgroundColor = .white
      setupViews()
      setConstraint()
    }
    
    required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
      addSubview(red)
      addSubview(blue)
      addSubview(icon)
    }
    
    private func setConstraint() {
      red.snp.makeConstraints {
        $0.top.equalToSuperview().inset(100.0)
        $0.right.equalTo(snp.centerX).offset(0.0)
        $0.width.equalTo(120.0)
        $0.height.equalTo(120.0)
      }
      
      blue.snp.makeConstraints {
        $0.top.equalToSuperview().inset(145.0)
        $0.left.equalTo(snp.centerX).offset(0.0)
        $0.width.equalTo(120.0)
        $0.height.equalTo(120.0)
      }
      
      icon.snp.makeConstraints {
        $0.top.equalToSuperview().inset(40.0)
        $0.centerX.equalToSuperview().offset(0.0)
        $0.size.equalTo(140.0)
      }
    }
  }
}
