//
//  FrameworkRowView.swift
//  appleframeworks
//
//  Created by Gaurav Kundalwal on 20/01/24.
//

import SwiftUI

struct FrameworkRowTitleView: View {
    let framework: Framework
    
    var body: some View{
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding() 
        }
    }
}

#Preview {
    FrameworkRowTitleView(framework: MockData.sampleFramework)
}
