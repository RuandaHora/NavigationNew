
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
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 0, height: 0)
                    .background(Image("GeneralBackground"))
            
            VStack{
                Divider()
                HStack{
                    Text("Featured ")
                        .font(.title.bold())
                        .padding(.horizontal, 20)
                        .foregroundColor(Color("featured"))
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
