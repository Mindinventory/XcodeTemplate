//
//  ___FILEHEADER___
//
import Foundation
import RxSwift
import RxCocoa

class ___VARIABLE_productName:identifier___ViewModel {

    // MARK: - Closures
    
    // Through these closures, our view model will execute code while some events will occure
    // They will be set up by the view controller
    var closure1: (()->())?
    var closure2: (()->())?
    
    //MARK:- Validation
    
    enum ValidationStatus {
        
        case initial
        case success
        case failure(errorMessage: String)
        
        static func == (lhs: ValidationStatus, rhs: ValidationStatus) -> Bool {
            
            switch (lhs, rhs) {
            case (.initial, .initial):
                return true
            case (.success, .success):
                return true
            case (let .failure(message1), let .failure(message2)):
                return message1 == message2
            default:
                return false
            }
        }
    }
    
    var emailValidationStatus: ValidationStatus = .initial
    var passwordValidationStatus: ValidationStatus = .initial
    
    private let disposeBag: DisposeBag = DisposeBag()
    
    // MARK:- Initialize
    
    init() {
        self.observeUserInput()
    }
    
    func observeUserInput()  {
        
    }
    // MARK: - Constructor
    
    // Add here a custom constructor
    
    // MARK: - Fetching functions
    
    func fetchData() {
        self.isLoading = true
        
        // Do something
        
        //When done:
        self.isLoading = false
    }
    
    //MARK:- Moya Sample
  /*  func loginApi(completion: @escaping (Bool) -> ()) {
        
        Constants.windowRoot?.view.activityStartAnimating(activityColor: .white, backgroundColor: UIColor.black.withAlphaComponent(0.5))
        
        APIServices.shared.authenticateUserAPI(
            .loginAPI(LoginModel(email: email.value,
                                 password: password.value)))
            .subscribe { (event) in
                Constants.windowRoot?.view.activityStopAnimating()
                switch event {
                case .next(let response):
                    print(event.element!)
                    
                    if response.meta?.code == 1 {
                        
                        Constants.windowRoot?.showToast(message: Constants.successLogin, complete: {
                            completion(true)
                        })
                    }
                    else {
                        Constants.windowRoot?.presentAlertViewWithOneButton(alertTitle: "Failed", alertMessage: response.meta?.message, btnOneTitle: "Ok", btnOneTapped: { (action) in
                            completion(false)
                        })
                    }
                case .error(let error):
                    print("error")
                    Constants.windowRoot?.presentAlertViewWithOneButton(alertTitle: "Failed", alertMessage: error.localizedDescription, btnOneTitle: "Ok", btnOneTapped: { (action) in
                        completion(false)
                    })
                case .completed:
                    print("completed")
                    completion(false)
                }
            }.disposed(by: disposeBag)
    }*/
}
