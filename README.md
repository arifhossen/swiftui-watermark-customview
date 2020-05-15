# SwiftUI ImageView with Watermark Example

Watermark View Modifer you can use any view

## Step 1: Watermark View Modifier


```python
struct WatermarkViewModiifier: ViewModifier {
    var text: String

    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(7)
                .background(Color.gray)
                .rotationEffect(Angle(degrees: 25), anchor: .trailing)
            
               
        }
    }
}
```

## Step 2: Watermark View Extension

```python
extension View {
    
    func watermarked(with text: String) -> some View {
        self.modifier(WatermarkViewModiifier(text: text))
    }
}
```

## Step 3: Use Watermark view modifier in ContentView any view like image, text ...etc

```python
struct ContentView: View {
    var body: some View {
        Image("arifhossen_saintmartin")
        .resizable()
        .scaledToFit()
        .frame(width: 300, height: 200)
        .watermarked(with: "Bangladesh St. Martin's Island Chera Dip!!!!")
    }
}
```

## Step 4: Content Preview

```python
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

```

## Step 5: Output

![image text](http://arifhossen.net/github_images/test_image.png)

