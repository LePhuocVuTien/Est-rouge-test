import UIKit
import CoreImage

class ViewController: UIViewController {
  
  lazy var content = ContentView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
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
