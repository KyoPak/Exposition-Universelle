//
//  UseIdentifier+Extensions.swift
//  Expo1900
//
//  Created by Kyo on 2022/11/03.
//

extension UseIdentifier {
    static var reuseIdentifier: String {
        return String.init(describing: self)
    }
}
