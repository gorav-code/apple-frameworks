//
//  FrameworkGridView.swift
//  appleframeworks
//
//  Created by Gaurav Kundalwal on 20/01/24.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks){framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
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
    FrameworkGridView()
}


