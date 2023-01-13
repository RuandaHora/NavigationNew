//
//  DetailsView.swift
//  Navigation
//
//  Created by Marcelo Hora on 13/01/23.
//

import SwiftUI

struct DetailsView: View {
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 0, height: 0)
                .background(Image("GeneralBackground"))
            ScrollView {
                VStack (alignment: .leading, spacing: 16.0){
                    
                    HStack {
                        Spacer()
                        Image("BackGround")
                            .resizable()
                            .frame(width: 45, height: 45, alignment: .trailing)
                            .cornerRadius(12)
                    }
                    Text("Best Musics")
                        .font(.title.bold())
                    Text("These are the best songs of my year 2022.")
                        .opacity(0.7)
                    Text("Since day 01.")
                        .blendMode(.overlay)
                }
                .padding(.all)
                .foregroundColor(.white)
                .background(Image("BackGround"))
            .cornerRadius(20)
                
                VStack (alignment: .leading, spacing: 16){
                    Text("Gospel is the key word of what you heard most during the year 2022")
                        .font(.headline)
                    Text("Gospel")
                        .font(.title.bold())
                    Text("This type of music had its origins in the Christian music of black Americans, the “Negro Spirituals”, in the early 20th century. It was harmonious music diversified into several voices (choir), a soloist, piano, organ, guitar, drums, bass, forming a small musical ensemble. They intended, in this way, to maintain a perfect union between the faithful and God, a union that was considered worn out due to the praises being chanted through the traditional hymns. With its popularity, Gospel Music surpassed the limits of the Afro-American church and took off, moving a market of millions of dollars.")
                        .blendMode(.overlay)
                }
                .padding()
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
            }
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
