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

![default](https://user-images.githubusercontent.com/88543651/129077194-a32bf956-9b2c-4a37-b228-f3a187d579cc.gif)
```

## 2.Change UnSelected image
```
FDPageView(currentTab: $currentTab, 
           style: Style(pages: 3, width: 16, height: 16, selectedItemImage: "yourSelectedImageName", 
           unSelectedItemImage: "yourUnSelectedImageName", selectedItemColor: Color.red, unSelectedItemColor:Color.blue),
           viewHeight: 32)
![type1](https://user-images.githubusercontent.com/88543651/129077717-fc8b7e1b-69f1-476e-9cbc-05d9ef636727.gif)
```

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




