//
//  LoginViewModel.swift
//  DragonBallBase
//
//  Created by Eduardo Martinez Palomino on 19/1/23.
//

//import Foundation
//
//enum NetworkErrorNew: Error {
//  case malformedURL
//  case noData
//  case statusCode(code: Int?)
//  case decodingFailed
//  case unknown
//}
//
//final class ApiClientNew {
//
//    private var token: String?
//
//    convenience init(token: String) {
//        self.init()
//        self.token = token
//    }
//    
    
//    func login(user: String, password: String, completion: @escaping (String?, Error?) -> Void) {
//        guard let url = URL(string: "\(Constants.api_base_url)/auth/login") else {
//            completion(nil, NetworkErrorNew.malformedURL)
//            return
//        }
//
//        let loginString = String(format: "%@:%@", user, password)
//        let loginData = loginString.data(using: String.Encoding.utf8)!
//        let base64LoginString = loginData.base64EncodedString()
//
//        var urlRequest = URLRequest(url: url)
//        urlRequest.httpMethod = "POST"
//        urlRequest.setValue("Basic \(base64LoginString)", forHTTPHeaderField: "Authorization")
//
//        let task = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
//            guard error == nil else {
//                completion(nil, NetworkErrorNew.unknown)
//                return
//            }
//
//            guard let data = data else {
//                completion(nil, NetworkErrorNew.noData)
//                return
//            }
//
//            guard (response as? HTTPURLResponse)?.statusCode == 200 else {
//                completion(nil, NetworkErrorNew.statusCode(code: (response as? HTTPURLResponse)?.statusCode))
//                return
//            }
//
//            guard let response = String(data: data, encoding: .utf8) else {
//                completion(nil, NetworkErrorNew.decodingFailed)
//                return
//            }
//
//            self.token = response
//            completion(response, nil)
//        }
//
//        task.resume()
//    }

//}
