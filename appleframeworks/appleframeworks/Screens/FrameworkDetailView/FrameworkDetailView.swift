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
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{
            XDismissButton(isShowingDetailView: $isShowingDetailView)
            
            Spacer()
            FrameworkTitleView(framework: framework)
            FrameworkDetailsView(framework: framework)
            Spacer()
            
            Button{
                print("showing safari view")
                isShowingSafariView = true
            }label: {
                AFButton(title: "Learn More")
            }
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            if let url = URL(string: framework.urlString){
                SafariView(url: url)
            }
        })
        
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
