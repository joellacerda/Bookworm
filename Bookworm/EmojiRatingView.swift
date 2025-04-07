//
//  EmojiRatingView.swift
//  Bookworm
//
//  Created by Joel Lacerda on 07/04/25.
//

import SwiftUI

struct EmojiRatingView: View {
    let rating: Int
    
    var body: some View {
        switch rating {
        case 1:
            Text("🤢")
                .accessibilityLabel(Text("1 Star"))
        case 2:
            Text("🙁")
                .accessibilityLabel(Text("2 Star"))
        case 3:
            Text("🙂")
                .accessibilityLabel(Text("3 Star"))
        case 4:
            Text("😁")
                .accessibilityLabel(Text("1 Star"))
        default:
            Text("😍")
                .accessibilityLabel(Text("1 Star"))
        }
    }
}

#Preview {
    EmojiRatingView(rating: 3)
}
