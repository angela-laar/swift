// RUN: %target-typecheck-verify-swift -target %target-cpu-apple-macosx10.15 -swift-version 5 -enable-experimental-feature ResultBuilderASTTransform
// RUN: %target-typecheck-verify-swift -target %target-cpu-apple-macosx10.15 -swift-version 5 
// REQUIRES: OS=macosx
import SwiftUI

@objc(Task)
public class Task: NSManagedObject {
  var notes: String = ""
}

struct Notes: View {
    @Binding var selectedProject : Task

    var body: some View {
        TextEditor(text: selectedProject?.notes)
    }
}

struct Screen: View {
    @Binding var selected : String

    var body: some View {
      TextEditor(text: selected?)
    }
}
