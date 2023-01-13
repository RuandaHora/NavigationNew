
import SwiftUI

struct CardView: View {
    var body: some View {
        VStack {
            VStack (alignment: .leading, spacing: 16.0){
                
                VStack {
                    Image("BackGround")
                        .resizable()
                        .frame(width: 45, height: 45, alignment: .trailing)
                    .cornerRadius(12)
                }
                Text("Best Musics")
                    .font(.title.bold())
                Text("These are the best songs of my year 2022, in an app for me to learn to program iOS.")
                    .opacity(0.7)
                Text("From day 01 to the last.")
                    .blendMode(.overlay)
            }
                .padding(.all)
                .frame(width: 300, height: 300)
                .foregroundColor(.white)
                .background(Image("BackGround"))
                .cornerRadius(30)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
