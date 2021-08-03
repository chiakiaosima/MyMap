//
//  ContentView.swift
//  MyMap
//
//  Created by 青島智明 on 2021/08/01.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    // 入力中の文字列を保持する状態変数
    @State var inputText:String = ""
    // 検索ワードを保持する状態変数
    @State var dispSearchKey:String = ""
    // マップ機能の最初は標準から
    @State var dispMapType:MKMapType = .standard
    
    var body: some View {
        // 垂直にレイアウト（縦方向にレイアウト）
        VStack {
            //　テキストフィールド（文字入力）
            TextField("キーワードを入力してください",
                      text: $inputText , onCommit: {
                        // 入力が完了したので検索キーワードに設定する
                        dispSearchKey = inputText
                        // 検索ワードをデバックエリアに出力する
                        print("入力したキーワード：" + dispSearchKey)
                      })
                        // 余白を追加
                .padding()
            
            // 奥から手前方向にレイアウト（右下基準で配置する）
            ZStack(alignment: .bottomTrailing) {
            
            //　マップを表示
                MapView(searchKey: dispSearchKey, mapType: dispMapType)
            } //ZStackここまで
        } //VStackここまで
    } //bodyここまで
}// CoutentViewここまで

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
