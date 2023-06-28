import SwiftUI

struct WorkoutTrackingView: View {
    @State private var workouts: [String] = []
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                List {
                    ForEach(workouts, id: \.self) { workout in
                        Text(workout)
                    }
                }
                
                Button(action: {
                    // Add a new workout
                    let newWorkout = "Workout \(workouts.count + 1)"
                    workouts.append(newWorkout)
                }) {
                    Text("Add Workout")
                        .font(.title)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
            }
            .navigationTitle("Workout Tracking")
        }
    }
}

struct WorkoutTrackingView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutTrackingView()
    }
}
