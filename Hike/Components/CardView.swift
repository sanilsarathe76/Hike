//
//  CardView.swift
//  Hike
//
//  Created by macmini41 on 27/02/24.
//

import SwiftUI

struct CardView: View {
    
    var array = ["image-1", "image-2", "image-3", "image-4", "image-5"]
    @State var randomImage: String
    
    var body: some View {
        ZStack {
            CustomBackgroundView()
            VStack {
                //MARK: - Header
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(colors:
                                                [.customGrayLight,
                                                 .customGrayMedium],
                                                 startPoint: .top,
                                           endPoint: .bottom))
                        
                        Spacer()
                        
                        Button(action: {
                            print("The button was pressed!")
                        }, label: {
                            CustomButtonView()
                        })
                    }
                    
                    Text("Fun and enjyable outdoor activity for friends and family.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }//End of header.
                
                .padding(.horizontal, 30)
                
                //MARK: - Main Content
                VStack {
                    ZStack {
                        Circle()
                            .fill(
                                LinearGradient(
                                    colors: [
                                        Color.customIndigoMedium,
                                        Color.customSalmonLight
                                    ],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing
                                )
                            )
                            .frame(width: 256, height: 256)
                        Image(randomImage)
                            .resizable()
                            .scaledToFit()
                    }
                    
                        //MARK: - Button text
                        Button {
                            randomImage = generateRandomImage()
                        } label: {
                            Text("Explore More")
                                .font(.title2)
                                .fontWeight(.heavy)
                                .foregroundStyle(
                                    LinearGradient(
                                        colors: [
                                            .customGreenLight
                                        ],
                                        startPoint: .top,
                                        endPoint: .bottom
                                )
                            )
                            .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                        }
                        .buttonStyle(GradientButton())
//                        .buttonStyle(.borderedProminent)
                }
            }
        }
        .frame(width: 350, height: 670)
    }
    
    func generateRandomImage() -> String {
        if let randomImage = array.randomElement() {
            return randomImage
        }
        return ""
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(array: ["image-1", "image-2", "image-3", "image-4", "image-5"], randomImage: "image-1")
    }
}
