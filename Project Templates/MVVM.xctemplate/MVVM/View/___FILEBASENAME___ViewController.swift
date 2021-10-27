//
//  ___FILEHEADER___
//
import UIKit
import RxCocoa
import RxSwift

class ___VARIABLE_productName:identifier___ViewController: UIViewController {
    
    var disposeBag = DisposeBag()
    
    // Add here outlets
    
    // Add here your view model
    lazy var viewModel: ___VARIABLE_productName:identifier___ViewModel = {
        return ___VARIABLE_productName:identifier___ViewModel()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        initViewModel()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    func setupUI() {
        // Add here the setup for the UI
    }
    
    func initViewModel() {
        // Add here the setup for the ViewModel
        
        // Setup for closure1
        viewModel.closure1 = { [weak self] () in
            DispatchQueue.main.async {
                // Do something
            }
        }
        
        // Setup for closure2
        viewModel.closure2 = { [weak self] () in
            DispatchQueue.main.async {
                // Do something
            }
        }
        
        // Populate ViewModel:
        // For example:
        // viewModel.fetchData()
    }
    
    // MARK: - Navigation
    
    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
