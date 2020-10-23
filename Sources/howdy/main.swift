import ArgumentParser
import Foundation

struct HowdyOptions: ParsableArguments {
  @Flag(name: .shortAndLong, help: "Short greeting")
  var short = false

  @Option(name: .shortAndLong, help: "person to greet")
  var name = "Bubba"
}

let options = HowdyOptions.parseOrExit()

print("\(options.short ? "Hi" : "Howdy"), \(options.name)!")
