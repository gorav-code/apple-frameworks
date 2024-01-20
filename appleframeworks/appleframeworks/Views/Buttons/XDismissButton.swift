//
//  XDismissButton.swift
//  appleframeworks
//
//  Created by Gaurav Kundalwal on 20/01/24.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
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
    }
}

#Preview {
    XDismissButton(isShowingDetailView: .constant(false))
}
