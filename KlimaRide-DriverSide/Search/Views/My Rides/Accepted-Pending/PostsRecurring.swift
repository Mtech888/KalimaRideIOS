//
//  PostsRecurring.swift
//  KlimaRide-DriverSide
//
//  Created by MAC on 07/09/2023.
//

import SwiftUI

struct PostsRecurring: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    @State private var selectedFilter: RideTabs = .details
    
    var body: some View {
        VStack(spacing: 0) {
            CustomNavbar(action: {presentationMode.wrappedValue.dismiss()}, title: "Post Details", icon: "back-icon", hiddenTitle: "Title")
                .padding(.top)
            
            FilterView(selectedTab: $selectedFilter)
            
            ScrollView(showsIndicators: false) {
                if selectedFilter == .details {
//                    Recurring()
                } else if selectedFilter == .bookings {
                    RecurringBooking()
                        .padding(.top, 50)
                }
            }
            .padding()
            
            if selectedFilter == .details {
                
            }
        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

struct PostsRecurring_Previews: PreviewProvider {
    static var previews: some View {
        PostsRecurring()
    }
}
