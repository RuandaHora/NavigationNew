
import SwiftUI

struct Perfil: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
            .fill(Color("DarkMode"))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
            
            VStack{
                Image("Image 2")
                    .resizable()
            }
            .background(Color.purple)
            .frame(width: 500, height: 500)
            .cornerRadius(100)
            
        }
    }
}

struct Perfil_Previews: PreviewProvider {
    static var previews: some View {
        Perfil()
    }
}
