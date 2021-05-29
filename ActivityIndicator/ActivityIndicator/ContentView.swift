//
//  ContentView.swift
//  ActivityIndicator
//
//  Created by Nitin Bhatt on 5/16/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var hideOrShow = false
    @State var hideOrShowSpinnerText = "Show Spinner"
    
    var body: some View {
        
        LoadingView(isShowing: $hideOrShow)
        
        Button(hideOrShowSpinnerText){
            hideOrShow.toggle()
           
            if hideOrShowSpinnerText == "Show Spinner"{
                hideOrShowSpinnerText = "Hide Spinner"
            }else{
                hideOrShowSpinnerText = "Show Spinner"
            }
        }.padding(.top, 40)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
