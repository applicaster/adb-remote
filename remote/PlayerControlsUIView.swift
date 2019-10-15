//
//  PlayerControlsUIView.swift
//  ADB Remote
//
//  Created by Anna Bauza on 03/09/2019.
//  Copyright © 2019 Anna Bauza. All rights reserved.
//

import SwiftUI

struct PlayerControlsUIView : View {
    
    var fullColorRenderMode = Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original);
    
    var body: some View {
        HStack{
            Button(action: { shell("shell","input","keyevent","88")}){  Image("prev") .renderingMode(fullColorRenderMode).resizable().frame(width: 34, height: 34)
                }
                .buttonStyle(BorderlessButtonStyle())
                .frame(width: 34, height: 34)
            
            Button(action: { shell("shell","input","keyevent","89")}){
                Image("rw") .renderingMode(fullColorRenderMode).resizable().frame(width: 34, height: 34)}
                .buttonStyle(BorderlessButtonStyle())
                .frame(width: 34, height: 34)
            
            Button(action: { shell("shell","input","keyevent","85")}){
                Image("play_pause") .renderingMode(fullColorRenderMode).resizable().frame(width: 34, height: 34)
                }
                .buttonStyle(BorderlessButtonStyle())
                .frame(width: 34, height: 34)
            
            Button(action: { shell("shell","input","keyevent","90")}){  Image("ff") .renderingMode(fullColorRenderMode).resizable().frame(width: 34, height: 34)}
                .buttonStyle(BorderlessButtonStyle())
                .frame(width: 34, height: 34)
            Button(action: { shell("shell","input","keyevent","87")}){  Image("next") .renderingMode(fullColorRenderMode).resizable().frame(width: 34, height: 34)}
                .buttonStyle(BorderlessButtonStyle())
                .frame(width: 34, height: 34)
            }
            .padding(20)
    }
}

#if DEBUG
struct PlayerControlsUIView_Previews : PreviewProvider {
    static var previews: some View {
        PlayerControlsUIView()
    }
}
#endif
