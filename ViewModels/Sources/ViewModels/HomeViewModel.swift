import Foundation
import RxSwift
import APIKit

struct TestRequest: APIKit.Request {
    var baseURL: URL = URL(string: "")!
    var method: HTTPMethod = .get
    var path: String = ""

    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> String {
        "test"
    }

    typealias Response = String
}

public class HomeViewModel {
    private let disposeBag = DisposeBag()

    public init() {
    }
    public let text: String = "Hello world!"

}
