//
//  IntroView.swift
//  Onboarded
//
//  Created by Bayu Faqih on 26/05/23.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignIn: Bool = false
    
    var body: some View {
        ZStack {
            // BACKGROUND
            Color("blue")
                .ignoresSafeArea()
            
            if currentUserSignIn {
                ProfileView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
            } else {
                OnboardingView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
            }
            
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
