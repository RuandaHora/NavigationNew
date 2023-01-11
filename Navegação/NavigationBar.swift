
import SwiftUI

struct NavigationBar: View {
    @State var show = false
    @State var search = ""
    
    var body: some View {
        
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
                            HStack{
                                if !show {
                                        Image("Lupa")
                                            .resizable()
                                            .frame(width: 26, height: 26)
                                            .cornerRadius(10)
                                            .padding(8)
                                            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 18, style: .continuous))
                                    
                                } else{
                                    VStack{
                                        TextField("search", text: self.$search)
                                            .frame(width: 120, height: 35)
                                            .background(Color.gray)
                                            .cornerRadius(20) 
                                    }
                                }
                            }.onTapGesture {
                                show.toggle()
                            }
                            VStack {
                                NavigationLink (destination: MatchedView()) {
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
                    }
                }
                Spacer()
        }
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}

