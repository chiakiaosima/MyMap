//
//  MapView.swift
//  MyMap
//
//  Created by 青島智明 on 2021/08/01.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    //　表示するviewを作成するときに実行
    func makeUIView(context: Context) -> MKMapView {
        // MKMapViewのインスタンス生成
        MKMapView()
    } // makeUIView　ここまで
    
    // 表示した View が更新されるたびに実行
    func updateUIView(_ uiView: MKMapView, context: Context) {
    } //updateUIViewここまで
    
} //MapViewここまで

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
