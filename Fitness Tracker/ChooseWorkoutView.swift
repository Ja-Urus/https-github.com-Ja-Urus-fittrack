import SwiftUI

struct ChooseWorkoutView: View {
    var body: some View {
        VStack(spacing: 20) {
            Button(action: {
                // Action for Basic Workout button
                // Replace with your desired functionality
                print("Basic Workout button tapped!")
            }) {
                Text("Choose Workout")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            VStack(spacing: 20) {
                ForEach(MuscleGroup.allCases, id: \.self) { muscleGroup in
                    Button(action: {
                        // Action for muscle group button
                        // Replace with your desired functionality
                        print("\(muscleGroup.rawValue) button tapped!")
                    }) {
                        Text(muscleGroup.rawValue)
                            .font(.title)
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
            }
        }
        .padding()
        .navigationTitle("Choose Workout")
    }
}

enum MuscleGroup: String, CaseIterable {
    case legs = "Legs"
    case abs = "Abs"
    case chest = "Chest"
    case shoulders = "Shoulders"
    case cardio = "Cardio"
}

struct ChooseWorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseWorkoutView()
    }
}
