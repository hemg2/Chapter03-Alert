//
//  ViewController.swift
//  Chapter03-Alert
//
//  Created by 1 on 2022/07/10.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 기본 알림창 버튼 생성
        let defaultAlertBtn = UIButton(type: .system)
        defaultAlertBtn.frame = CGRect(x: 0, y: 100, width: 100, height: 30)
        defaultAlertBtn.center.x = self.view.frame.width / 2
        defaultAlertBtn.setTitle("기본 알림창", for: .normal)
        defaultAlertBtn.addTarget(self,
                                  action: #selector(defaultAlert(_:)),
                                  for: .touchUpInside)
        self.view.addSubview(defaultAlertBtn)
    }
    @objc func defaultAlert(_ sender: Any) {
        // 1) 알림창을 정의
        let alert = UIAlertController(title: nil,
                                      message: nil,
                                      preferredStyle: .actionSheet)
        
        // 2) 버튼을 정의한다.
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        // 3) 버튼을 알림창에 추가한다.
        alert.addAction(cancelAction)
        alert.addAction(okAction)
        
        let v = UIViewController()
        v.view.backgroundColor = .red   //백그라운드컬러추가
        //알림창에 뷰 컨트롤러를 등록한다.
        alert.setValue(v, forKey: "contentViewController")
        
        // 4) 알림창을 화면에 표시한다.
        self.present(alert, animated: false)
    
        
        
            // 3 알림창에 들어갈 뷰 컨트롤러
//            let v = UIViewController()
//            v.view.backgroundColor = .red   //백그라운드컬러추가
//            //알림창에 뷰 컨트롤러를 등록한다.
//            alert.setValue(v, forKey: "contentViewController")
////            alert.contentViewController = v
            
//            // 4 알림창을 화면에 표시한다.
//            self.present(alert, animated: false)
   //     func defaultAlert(_ sender: Any) {
//            let alert = UIAlertController(title: nil,   //  <- 이 부분의 값을 nil로 설정합니다.
//                                          message: nil,
//                                          preferredStyle: .actionSheet)
//
//            //알림창에 뷰 컨트롤러를 등록한다.
//            alert.setValue(v, forKey: "contentViewController")
//
//            // 알림창을 화면에 표시한다.
//            self.present(alert, animated: false)
    //    }
}
}

