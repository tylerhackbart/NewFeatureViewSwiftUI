//
//  NewFeatureView.swift
//  word_capture
//
//  Created by Tyler Hackbart on 2021-10-19.
//

import SwiftUI

struct NewFeatureView: View {
    var versionNumber: String
    var updateItems: [UpdateItem]
    var bannerBeforeButtonText: String
    var body: some View {
        NavigationView {
            VStack {
                Text("New Features")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Text("Version \(versionNumber)")
                    .padding()
                    .font(.title3)
                    .foregroundColor(.gray)
                Spacer()
                ForEach(updateItems, id: \.id) { result in
                    HStack {
                        HStack{
                            Spacer()
                            Image(systemName: result.icon)
                                .font(.custom("large-icon", size: 40))
                            .foregroundColor(Color.blue)
                                .frame(width: 75, height: 75, alignment: .center)
                            Spacer()
                        }.frame(width: 100, height: 100, alignment: .center)
                        Text(result.content)
                            .padding(.trailing)
                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.leading)
                    .padding(.trailing)
                }
                Spacer()
                Text(bannerBeforeButtonText)
                Spacer()
                HStack{
                    Spacer()
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Text("Continue")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    })
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct NewFeatureView_Previews: PreviewProvider {
    static var previews: some View {
        NewFeatureView(versionNumber: "1.2", updateItems: [
            UpdateItem(id: 1, icon: "x.circle", content: "Sample and this is the section of the same time that displays the view. This is only here and not other spot"),
            UpdateItem(id: 2, icon: "gearshape.fill", content: "Sample and this is the section of the same time that displays the view  displays the view"),
            UpdateItem(id: 3, icon: "camera", content: "Sample and this is the section of the same time that displays the view")
        ], bannerBeforeButtonText: "Happy coding")
    }
}
