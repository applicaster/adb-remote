//
//  ContentView.swift
//  remote
//
//  Created by Anna Bauza on 20/08/2019.
//  Copyright © 2019 Anna Bauza. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var fullColorRenderMode = Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original);
    var body: some View {
        VStack{
            Image("AndroidTV").resizable().frame(width: 130, height: 23)
                .padding(20).offset(x: 0, y: 10)
            Spacer()
            SystemUIView()
            DPadUIView()
            PlayerControlsUIView()
            Spacer()
            Image("Applicaster").resizable().frame(width: 130, height: 22)
                .padding(20)
        }.background(Color.init(red: 0.15, green: 0.15, blue: 0.15))
    }
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#endif

