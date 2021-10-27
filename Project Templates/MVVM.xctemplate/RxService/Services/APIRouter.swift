//
//  ___FILEHEADER___
//
import Foundation
import Moya

enum APIRouter {
    case loginAPI
}
extension APIRouter: TargetType {
    var baseURL: URL {
        switch self {
        case .loginAPI:
            return URL(string: "Add base url here.....")!
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .loginAPI:
            return .post
        }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        switch self {
        case .loginAPI:
            return .requestParameters(parameters: ["email": "", "password": ""], encoding: JSONEncoding.default)
        }
    }
    
    var headers: [String : String]? {
        return ["Content-type": "application/json"]
    }
    
    var path: String {
        switch self {
        case .loginAPI:
            return "/login"
        }

    }
}
