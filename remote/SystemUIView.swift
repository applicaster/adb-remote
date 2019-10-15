//
//  SystemUIView.swift
//  ADB Remote
//
//  Created by Anna Bauza on 03/09/2019.
//  Copyright © 2019 Anna Bauza. All rights reserved.
//

import SwiftUI

struct SystemUIView : View {
    
    var fullColorRenderMode = Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original);
    
    var body: some View {
        
        HStack{
            Button(action: { shell("shell","input","keyevent","4")}) {
                Image("back") .renderingMode(fullColorRenderMode).resizable().frame(width: 34, height: 34)
                }
                .buttonStyle(BorderlessButtonStyle())
                .frame(width: 34, height: 34)
            
            Button(action: { shell("shell","input","keyevent","82")}) {
                Image("menu") .renderingMode(fullColorRenderMode).resizable().frame(width: 34, height: 34)
                
                }
                .buttonStyle(BorderlessButtonStyle())
                .frame(width: 34, height: 34)
            
            Button(action: {
                shell("reverse","tcp:8081", "tcp:8081")}) {
                    Image("reverse") .renderingMode(fullColorRenderMode).resizable().frame(width: 34, height: 34)
                }
                .buttonStyle(BorderlessButtonStyle())
                .frame(width: 34, height: 34)
            
            }
            .padding(20)
    }
}

#if DEBUG
struct SystemUIView_Previews : PreviewProvider {
    static var previews: some View {
        SystemUIView()
    }
}
#endif
