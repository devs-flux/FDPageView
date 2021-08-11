# FDPageView

A custom pageview which support in all swift ui version

## We have 2 types of pageview
### 1.Default
### 2.Change UnSelected image

# How to use

## 1.Default
```
FDPageView(currentTab: $currentTab, 
           style: Style(pages: 3, width: 16, height: 16, selectedItemImage: "yourImageName", 
           unSelectedItemImage: "yourImageName", selectedItemColor: Color.red, unSelectedItemColor:Color.blue),
           viewHeight: 32)
```
![ezgif com-gif-maker](https://user-images.githubusercontent.com/88543651/129080242-e2a1ceb7-4713-4e45-b38b-3951c2988c8b.gif)


## 2.Change UnSelected image
```
FDPageView(currentTab: $currentTab, 
           style: Style(pages: 3, width: 16, height: 16, selectedItemImage: "yourSelectedImageName", 
           unSelectedItemImage: "yourUnSelectedImageName", selectedItemColor: Color.red, unSelectedItemColor:Color.blue),
           viewHeight: 32)
```

![ezgif com-gif-maker (1)](https://user-images.githubusercontent.com/88543651/129080513-be364b7d-1751-4a98-8b32-5e031b06f82f.gif)

# Example

```
import SwiftUI
import FDPageView

struct ContentView: View {
    @State var currentTab = 0
    var body: some View {
        VStack(content: {
            TabView(selection: $currentTab,
                    content:  {
                        PageView(title: "Title\(currentTab + 1)", subtitle: "Subtile\(currentTab + 1)")
                            .tag(0)
                        PageView(title: "Title\(currentTab + 1)", subtitle: "Subtile\(currentTab + 1)")
                            .tag(1)
                        PageView(title: "Title\(currentTab + 1)", subtitle: "Subtile\(currentTab + 1)")
                            .tag(2)   
                    })
                .tabViewStyle(PageTabViewStyle())
            FDPageView(currentTab: $currentTab, style: Style(pages: 3, width: 16, height: 16, 
                       selectedItemImage: "Circle", unSelectedItemImage: "Circle", selectedItemColor: Color.red, unSelectedItemColor: Color.blue),
                       viewHeight: 32)  
        })
    }
}
```




