import SwiftUI

struct TrackCaloriesView: View {
    @State private var calories: Int = 0
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Calories: \(calories)")
                .font(.title)
            
            Button(action: {
                calories += 100
            }) {
                Text("Add Calories")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
        .navigationTitle("Track Calories")
    }
}

struct TrackCaloriesView_Previews: PreviewProvider {
    static var previews: some View {
        TrackCaloriesView()
    }
}
