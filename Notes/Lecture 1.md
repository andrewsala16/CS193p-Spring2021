A **View** is a method of receiving input from the user and displaying the output in a rectangular area on the screen.
```swift
struct ContentView: View {
    var body: some View {
        Text("Hello, World")
    }
}
```
    
    
A **ZStack** is a view combiner.
It receives an argument known as a view combiner. The argument is a function meaning the views can have things like conditional statements.

```swift
struct ContentView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20.0)
                .stroke(lineWidth:3)
                .padding(.horizontal)
                .foregroundColor(.pink)
            
            Text("Hello, World")
        }

    }
}
```





