//
//  BeforeAddFeedbackBottomView.swift
//  Req
//
//  Created by 이재웅 on 2022/06/12.
//

import SwiftUI

struct BeforeAddFeedbackBottomView: View {
    @Binding var changeFeedbackBottomView: FeedbackType
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 32.0)
            BeforeAddFeedbackText()
            Spacer()
                .frame(height: 51.0)
            AddFeedbackButton(changeFeedbackBottomView: $changeFeedbackBottomView)
            Spacer()
                .frame(height: 53.0)
        }
    }
}
