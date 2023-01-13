
import SwiftUI

struct CardView: View {
    var body: some View {
        ScrollView(.horizontal){
            HStack {
                ForEach(0 ..< 5) { item in
                    CardsView()
                }
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}

struct CardsView: View {
    var body: some View {
        NavigationLink(destination: DetailsView()) {
            VStack (alignment: .leading, spacing: 16.0){
                
                HStack {
                    Spacer()
                    Image("nord")
                        .resizable()
                        .frame(width: 45, height: 45, alignment: .trailing)
                        .cornerRadius(100)
                }
                Text("Best Music")
                    .font(.title.bold())
                Text("These are the best songs of my year 2022.")
                    .opacity(0.7)
                Text("Since day 01.")
                    .blendMode(.overlay)
            }
            .padding(.all)
            .frame(width: 180, height: 230)
            .foregroundColor(.white)
            .background(Image("BackGround"))
        .cornerRadius(30)
        }.padding()
    }
}
