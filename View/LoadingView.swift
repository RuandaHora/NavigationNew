import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack {
            VStack{
                Image("Logo")
                    .resizable()
                    .frame(width: 100,height: 100)
                    .cornerRadius(35)
                Text("Navigation")
                    .font(.title2.bold())
            }
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
