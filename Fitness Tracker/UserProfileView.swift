import SwiftUI

struct UserProfileView: View {
    // User profile properties
    @State private var name: String = ""
    @State private var profilePicture: Image?
    @State private var preferredWorkoutTypes: String = ""
    @State private var fitnessLevel: String = ""
    @State private var city: String = ""
    
    var body: some View {
        Form {
            Section(header: Text("Personal Information")) {
                TextField("Name", text: $name)
                TextField("Preferred Workout Types", text: $preferredWorkoutTypes)
                TextField("Fitness Level", text: $fitnessLevel)
                TextField("City", text: $city)
            }
            
            Section(header: Text("Profile Picture")) {
                Button(action: {
                }) {
                    if let profilePicture = profilePicture {
                        profilePicture
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 120, height: 120)
                            .clipShape(Circle())
                    } else {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 120, height: 120)
                            .foregroundColor(.gray)
                            .clipShape(Circle())
                    }
                }
            }
        }
        .navigationBarTitle("User Profile")
    }
}

