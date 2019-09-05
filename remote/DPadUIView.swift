//
//  DPadUIView.swift
//  ADB Remote
//
//  Created by Anna Bauza on 22/08/2019.
//  Copyright © 2019 Anna Bauza. All rights reserved.
//

import SwiftUI

struct DPadUIView : View {
    
    var fullColorRenderMode = Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original);
    
    var body: some View {
        VStack(alignment: HorizontalAlignment.center, spacing: 0, content:{
            
            HStack(alignment: .center, spacing: 0, content: {
                Button(action: { shell("shell","input","keyevent","268")}) {
                    Image("arrows_left_up") .renderingMode(fullColorRenderMode)
                    }
                    .borderlessButtonStyle()
                    .frame(width: 79/2, height: 78/2)
                Button(action: { shell("shell","input","keyevent","19")}) {
                    Image("arrows_up") .renderingMode(fullColorRenderMode)
                    }
                    .borderlessButtonStyle()
                    .frame(width: 63/2, height: 78/2)
                
                Button(action: { shell("shell","input","keyevent","270")}) {
                    Image("arrows_right_up") .renderingMode(fullColorRenderMode)
                    }
                    .borderlessButtonStyle()
                    .frame(width: 79/2, height: 78/2)
            })
            
            HStack(alignment: .center, spacing: 0, content: {
                
                Button(action: { shell("shell","input","keyevent","21")}) {
                    Image("arrows_left") .renderingMode(fullColorRenderMode)
                    }
                    .borderlessButtonStyle()
                    .frame(width: 79/2, height: 63/2)
                
                Button(action: { shell("shell","input","keyevent","23")}) {
                    Image("arrows_center") .renderingMode(fullColorRenderMode)
                    }
                    .borderlessButtonStyle()
                    .frame(width: 63/2, height: 64/2)
                
                Button(action: { shell("shell","input","keyevent","22")}) {
                    Image("arrows_right") .renderingMode(fullColorRenderMode)
                    }
                    .borderlessButtonStyle()
                    .frame(width: 79/2, height: 63/2)
                
            })
            
            HStack(alignment: .center, spacing: 0, content: {
                Button(action: { shell("shell","input","keyevent","269")}) {
                    Image("arrows_left_down") .renderingMode(fullColorRenderMode)
                    }
                    .borderlessButtonStyle()
                    .frame(width: 79/2, height: 78/2)
                Button(action: { shell("shell","input","keyevent","20")}) {
                    Image("arrows_down") .renderingMode(fullColorRenderMode)
                    }
                    .borderlessButtonStyle()
                    .frame(width: 63/2, height: 78/2)
                
                Button(action: { shell("shell","input","keyevent","271")}) {
                    Image("arrows_right_down") .renderingMode(fullColorRenderMode)
                    }
                    .borderlessButtonStyle()
                    .frame(width: 79/2, height: 78/2)
            })
        })
    }
}

#if DEBUG
struct DPadUIView_Previews : PreviewProvider {
    static var previews: some View {
        DPadUIView()
    }
}
#endif
