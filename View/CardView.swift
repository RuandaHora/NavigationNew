
import SwiftUI

struct CardView: View {
    var body: some View {
        VStack {
            VStack (alignment: .leading, spacing: 16.0){
                Text("Best Musics")
                    .font(.title.bold())
                Text("These are the best songs of my year 2022, in an app for me to learn to program iOS.")
                    .opacity(0.6)
                Text("From day 01 to the last.")
                    .opacity(0.6)
            }
                .padding(.all)
                .frame(width: 300, height: 200)
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
