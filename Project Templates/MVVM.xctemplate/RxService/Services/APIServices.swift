//
//  ___FILEHEADER___
//
import Foundation
import RxSwift
import RxCocoa
import Moya


protocol APIServiceProtocol {
    func authenticateUserLogin(_ asyncAPIRouter: APIRouter) -> Observable<APIResponse>
}

fileprivate let asyncServiceprovider = MoyaProvider<APIRouter>()

final class APIServices: APIServiceProtocol {
    
    private let disposebag = DisposeBag()
    private init() {}
    static let shared = APIServices()
    
    //MARK:- Sample API Call
    func authenticateUserAPI(_ asyncAPIRouter: APIRouter) -> Observable<LoginResponse> {
        
        return Observable.create { (observer) -> Disposable in
        
            let _ = asyncServiceprovider.rx.request(asyncAPIRouter).asObservable().subscribe { (response) in
                switch response {
                
                case .next(let response):
                    do {
                        let responseModel = try JSONDecoder().decode(APIResponse.self, from: response.data)
                        observer.onNext(responseModel)
                        observer.onCompleted()
                        
                    } catch let exceptionMsg {
                        observer.onError(exceptionMsg)
                    }
                    
                case .error(let errorMsg):
                    observer.onError(errorMsg)
                    
                case .completed:
                    observer.onCompleted()
                }
                
            }.disposed(by: self.disposebag)
            
            return Disposables.create()
        }
    }
    
   
}

struct APIResponse : Codable {
    
}
