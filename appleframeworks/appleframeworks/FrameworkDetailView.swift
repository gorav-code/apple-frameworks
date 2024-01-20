//
//  FrameworkDetailView.swift
//  appleframeworks
//
//  Created by Gaurav Kundalwal on 18/01/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button{
                   isShowingDetailView = false
                }label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
            }
            }
            .padding(EdgeInsets.init(top: 0, leading: 0, bottom: 0, trailing: 40))
            
            Spacer()
            FrameworkTitleView(framework: framework)
            FrameworkDetailsView(framework: framework)
            Spacer()
            AFButton(title: "Learn More")
        }
        
    }
}
 
#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, 
                        isShowingDetailView: .constant(false))
}

struct CloseButtonView: View {
    
    var body: some View {
        HStack{
            Spacer()
            Button{
               
            }label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
        }
        }
        .padding(EdgeInsets.init(top: 0, leading: 0, bottom: 0, trailing: 40))
    }
}

struct FrameworkDetailsView: View {
    var framework: Framework
    var body: some View {
        Text(framework.description)
            .lineSpacing(10)
            .font(.title3)
            .fontWeight(.none)
            .foregroundStyle(.secondary)
            .padding(40)
    }
}
