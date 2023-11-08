//
//  FrameworkDescriptionView.swift
//  Apple-Frameworks
//
//  Created by Brandon Alexander on 11/6/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        VStack {

            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                
            
            Spacer()
            AFButton(text: "Learn More", framework: framework)
        }
        .padding()
        
    }
}

#Preview {
    FrameworkDetailView(framework: Framework.MockData.sampleFramework, isShowingDetailView: .constant(false))
}
