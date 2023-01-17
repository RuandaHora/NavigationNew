
import SwiftUI

struct GeneralView: View {
    var body: some View {
        NavigationView {
            TabView {
                
                HomeView()
                    .tabItem{
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                Messages()
                    .tabItem{
                        Image(systemName: "message.fill")
                        Text("Message")
                }
                Details3View()
                    .tabItem{
                        Image(systemName: "photo.fill")
                        Text("Photos")
                }
                AccontView()
                    .tabItem{
                        Image(systemName: "person.fill")
                        Text("Accont")
                }
            }
        }
    }
}

struct GeneralView_Previews: PreviewProvider {
    static var previews: some View {
        GeneralView()
    }
}
