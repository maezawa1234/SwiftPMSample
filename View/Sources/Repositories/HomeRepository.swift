//
//  File.swift
//  
//
//  Created by Kenichi Maezawa on 2022/09/05.
//

import Foundation
import RxSwift

public class HomeRepository {
    public init() {}
    private let disposeBag = DisposeBag()

    public func getHomeData() -> Single<String> {
        Single.create { observer in
            observer(.success("home data"))
            return Disposables.create()
        }
    }
}
