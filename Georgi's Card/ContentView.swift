import SwiftUI

struct ContentView: View {
    @Binding var document: Georgi_s_CardDocument

    var body: some View {
        ZStack {
            Color(UIColor(red: 0.15, green: 0.68, blue: 0.38, alpha: 1.00)).edgesIgnoringSafeArea(.all)
            VStack {
                Image("georgi")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 220, height: 220)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                
                Text("Georgi Sirakov")
                    .font(Font.custom("Silkscreen-Regular", size: 40))
                    .bold()
                .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(Font.custom("Silkscreen-Regular", size: 25))
                
                Divider()
                
                Phone(text: "+359 89 436 4331", imageName: "phone.fill")
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(Georgi_s_CardDocument()))
    }
}

struct Phone: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(width: 380, height: 60)
            .foregroundColor(Color(UIColor(red: 0.69, green: 0.84, blue: 0.71, alpha: 1.00)))
            .overlay(HStack {
                Image(systemName: imageName).foregroundColor(.green)
                Text(text).bold()
            })
            .foregroundColor(.brown)
    }
}
