//
//  ViewController.swift
//  RxSwift_Pracitice
//
//  Created by daiki umehara on 2021/06/02.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    @IBOutlet var label: UILabel!
    let disposeBag = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.rx.text
            .map { text -> String in
                guard let text = text else { return "" }
                return text
            }
            .bind(to: label.rx.text)
            .disposed(by: disposeBag)
    }


}

