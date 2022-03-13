//
//  File.swift
//  
//
//  Created by sunny on 2022-03-11.
//

import Foundation
import SwiftUI

struct Button_Next: View {
    var buttonTitle : String = ""
    var background : Color = .red
    var width : CGFloat = 66
    var height : CGFloat = 66
    
    var body: some View {
        ZStack{
            Rectangle().fill(background)
                .frame(width: width, height: height)
                .cornerRadius(height/2)
            Text(buttonTitle)
                .font(.largeTitle)
                .foregroundColor(.white)
        }
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        Button_Next(buttonTitle: "Next", background: .purple,width: .infinity,height: 120)
    }
}
