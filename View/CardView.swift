
import SwiftUI

struct CardView: View {
    @State var show = false
    var body: some View {
        HStack {
            CardsViewOpen()
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}

struct CardsView: View {
    @State var show = false
    var body: some View {
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
            .frame(width: 176, height: 230)
            .foregroundColor(.white)
            .background(Image("BackGround"))
        .cornerRadius(30)
        .padding(11.5)
    }
}

struct CardsViewOpen: View {
    @State var show = false
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack {
                CardsView()
                    .sheet(isPresented: $show, content:{ DetailsView()
                    })
                    .onTapGesture {
                        show.toggle()
                    }
            }
        }
    }
}
