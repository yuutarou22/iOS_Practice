//
//  MapViewController.swift
//  iOS_Practice
//
//  Created by YutaroMatsunaga on 2020/10/27.
//  Copyright © 2020 YutaroMatsunaga. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TextFieldのDelegate通知先を設定
        inputText.delegate = self
    }

    @IBOutlet weak var inputText: UITextField!
    @IBOutlet weak var displayMap: MKMapView!
    @IBAction func changeMapButton(_ sender: Any) {
        // 標準　→航空写真　→航空写真＋標準　→3DFlyover　→3DFlyover＋標準
        if displayMap.mapType == .standard {
            displayMap.mapType = .satellite
        } else if displayMap.mapType == .satellite {
            displayMap.mapType = .hybrid
        } else if displayMap.mapType == .hybrid {
            displayMap.mapType = .satelliteFlyover
        } else if displayMap.mapType == .satelliteFlyover {
            displayMap.mapType = .hybridFlyover
        } else if displayMap.mapType == .hybridFlyover {
            displayMap.mapType = .mutedStandard
        } else {
            displayMap.mapType = .standard
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // (1) キーボードを閉じる
        textField.resignFirstResponder()
        
        // (2) 入力された文字列を取得
        if let searchKey = textField.text {
            print("searchKey: " + searchKey)
            
            // (4) CLGeocoderインスタンスを取得
            let geocoder = CLGeocoder()
            
            // (5) 入力文字列から位置情報を取得
            geocoder.geocodeAddressString(searchKey, completionHandler: {(placemarks, error) in
                // (6) 位置情報が存在する場合は、unwrapPlacemarksに取り出す
                if let unwrapPlacemarks = placemarks {
                    // (7) 1件目の情報を取り出す
                    if let firstPlacemark = unwrapPlacemarks.first {
                        // (8) 位置情報を取り出す
                        if let location = firstPlacemark.location {
                            // (9) 位置情報から緯度経度をtargetCoordinateに取り出す
                            let targetCoordinate = location.coordinate
                            // (10) 緯度経度をデバッグエリアに表示
                            print(targetCoordinate)
                            
                            // (11) MKPointAnnotationインスタンスを取得し、ピンを生成
                            let pin = MKPointAnnotation()
                            
                            // (12) ピンを置く場所に緯度経度を設定
                            pin.coordinate = targetCoordinate
                            
                            // (13) ピンのタイトル設定
                            pin.title = searchKey
                            
                            // (14) ピンを地図に置く
                            self.displayMap.addAnnotation(pin)
                            
                            // (15) 表示範囲を半径500mに設定する
                            self.displayMap.region = MKCoordinateRegion(center: targetCoordinate, latitudinalMeters: 500.0, longitudinalMeters: 500.0)
                        }
                    }
                }
            })
        }
        
        // (3) デフォルト動作を行うためtrueを返す
        return true
    }
}
