//
//  Camera.swift
//  Navigation
//
//  Created by Marcelo Hora on 19/01/23.
//

import SwiftUI
import UIKit

struct Camera: View {
    @State private var isShown: Bool = false
    @State private var image: Image =
    Image(systemName: "")
    
    @State private var sourceType:
    UIImagePickerController.SourceType = .camera
    
    var body: some View {
        HStack {
            CameraView()
        }
    }
}

struct Camera_Previews: PreviewProvider {
    static var previews: some View {
        Camera()
    }
}

struct CameraView: View {
    @State private var isShown: Bool = false
    @State private var image: Image =
    Image(systemName: "")
    
    @State private var sourceType:
    UIImagePickerController.SourceType = .camera
    
    var body: some View {
        VStack{
            image.resizable().frame(width: 300, height: 450)
            Button (action: {
                self.isShown.toggle()
                self.sourceType = .camera
            }) {
                Text("Camera")
            }
        }
    }
}
