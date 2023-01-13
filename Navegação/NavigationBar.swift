
import SwiftUI

struct NavigationBar: View {
    var body: some View {
        HStack {
            Bar()
        }
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}


struct Bar: View {
    @State var show = false
    @State var search = ""
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Text("")
                        .navigationTitle("Featured")
                        .foregroundColor(Color("featured"))
                    VStack {
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
                                            .background(.ultraThinMaterial)
                                            .cornerRadius(20)
                                    }
                                }
                            }.onTapGesture {
                                show.toggle()
                            }
                            VStack {
                                NavigationLink (destination: AccontView()) {
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
                Spacer()
            }
        }
    }
}
