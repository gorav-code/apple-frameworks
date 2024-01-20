//
//  FrameworkRowView.swift
//  appleframeworks
//
//  Created by Gaurav Kundalwal on 20/01/24.
//

import SwiftUI

struct FrameworkRowView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    var body: some View {
        NavigationView{ 
            //showing frameworks in Row View
            List{
                ForEach(MockData.frameworks) {framework in
                    NavigationLink(destination: FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)){
                        FrameworkRowTitleView(framework: framework)
                    }
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView, content: {
                if let vm = viewModel.selectedFramework{
                    FrameworkDetailView(framework: vm,
                                        isShowingDetailView: $viewModel.isShowingDetailView)
                }
            })
        }
    }
}

#Preview {
    FrameworkRowView()
}


