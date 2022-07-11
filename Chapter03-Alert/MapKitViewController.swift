//
//  MapKitViewController.swift
//  Chapter03-Alert
//
//  Created by 1 on 2022/07/10.
//

import UIKit
import MapKit
class MapKitViewController: UIViewController {

    override func viewDidLoad() {
        // 뷰 컨트롤러에 맵킷 뷰를 추가한다.
        let mapkitView = MKMapView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.view = mapkitView
        self.preferredContentSize.height = 200
        
        // 표시할 위치
        let pos = CLLocationCoordinate2D(latitude: 37.514322, longitude: 126.894623)
        // 지도가 보여줄 넒이, 일종의 축척, 숫자가 작을수록 좁은 범위를 확대시켜서 보여준다.
        let span = MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
        //지도 영역을 정의
        let region = MKCoordinateRegion(center: pos, span: span)
        // 영역을 지도 뷰에 표시
        mapkitView.region = region
        mapkitView.regionThatFits(region)
        
        // 위치를 핀으로 표시
        let point = MKPointAnnotation()
        point.coordinate = pos
        mapkitView.addAnnotation(point)
    }
    func mapAlert( _ sender: UIButton) {
        // 경고창 객체를 생성하고, OK 및 Cancel 버튼을 추가한다.
        let alert = UIAlertController(title: nil, message: "여기가 맞습니까?", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(cancelAction)
        alert.addAction(okAction)
        
        // 콘텐츠 뷰 영역에 들어갈 뷰 컨트롤러 생성하고, 알림창에 등록한다.
        let contentVC = UIViewController()
        
        //뷰 컨트롤러를 알림창의 콘텐츠 뷰 컨트롤러 속성에 등록한다.
        alert.setValue(contentVC, forKeyPath: "contentViewController")
        self.present(alert, animated: false)
    }
}
