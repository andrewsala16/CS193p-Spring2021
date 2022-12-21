
## Lecture 1
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

There are different types of stacks; a ZStack stacks view on top of each other from the user's view.


## Lecture 2
An HStack is a view combiner that stacks views horizontally

Variables cannot be created without a value. However variables can be created with a value not set yet meaning it has to be assigned as a parameter in when the function is being called.

```swift
var faceUpp: Bool = false
```

A constant variable is considered a let


```swift
let shape = RoundedRectangle(cornerRadius:20.0)
```

