
import SwiftUI

struct NavigationBar: View {
    var body: some View {
        ScrollView{
            VStack{
                Divider()
                HStack{
                    Text("Home ")
                        .font(.title.bold())
                        .foregroundColor(.primary)
                        .padding(.horizontal, 20)
                    VStack (alignment: .trailing) {
                        HStack{
                            Spacer()
                            Button(action: {}) {
                                Image("Lupa")
                                    .resizable()
                                    .frame(width: 26, height: 26)
                                    .cornerRadius(10)
                                    .padding(8)
                                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 18, style: .continuous))
                                
                            }
                            Button(action: {}) {
                                Image("Image 2")
                                    .resizable()
                                    .frame(width: 26, height: 26)
                                    .cornerRadius(10)
                                    .padding(8)
                                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 18, style: .continuous))
                                
                            }
                            
                        }
                    }
                }
                Spacer()
            }
        }
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}

