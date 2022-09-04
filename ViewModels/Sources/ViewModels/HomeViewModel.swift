import Foundation
import RxSwift

public class HomeViewModel {
    private let disposeBag = DisposeBag()

    public init() {}
    public let text: String = "Hello world!"
}
