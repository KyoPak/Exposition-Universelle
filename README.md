# Exposition-universelle

## ðï¸ëª©ì°¨
1. [ìê°](#-ìê°)
2. [ê°ë°íê²½ ë° ë¼ì´ë¸ë¬ë¦¬](#-ê°ë°íê²½-ë°-ë¼ì´ë¸ë¬ë¦¬)
3. [íì](#-íì)
4. [íìë¼ì¸](#-íìë¼ì¸)
5. [ì¤ííë©´](#-ì¤í-íë©´)
6. [í¸ë¬ë¸ ìí ë° ê³ ë¯¼](#-í¸ë¬ë¸-ìí-ë°-ê³ ë¯¼)
7. [ì°¸ê³ ë§í¬](#-ì°¸ê³ -ë§í¬)


## ð ìê°
[Kyo](https://github.com/KyoPak)ì [í í¸ì´](https://github.com/tottalE)ê° êµ¬íí Exposition-universelle App ìëë¤.
ë§êµ­ ë°ëí ì±ì¼ë¡ expoë¥¼ ìê°íë ì±ìëë¤. 
`Decoding`, `ScrollView`, `TableView`, `Dynamic Type`ë¥¼ ì¤ì ì ì¼ë¡ íìµíë©° íë¡ì í¸ë¥¼ ì§íí´ëê°ìµëë¤.

íë¡ì í¸ ì¢ë£ í, ê°ì¸ì ì¼ë¡ Refactoring ì§íì¤ìëë¤!


## ð» ê°ë°íê²½ ë° ë¼ì´ë¸ë¬ë¦¬
[![swift](https://img.shields.io/badge/swift-5.6-orange)]()
[![xcode](https://img.shields.io/badge/Xcode-13.4.1-blue)]() [![xcode](https://img.shields.io/badge/Xcode-14.0.1-blue)]()


## ð§ íì 
<img src = "https://user-images.githubusercontent.com/59204352/193524215-4f9636e8-1cdb-49f1-9a17-1e4fe8d76655.PNG" width=200 height=170>|<img src = "https://avatars.githubusercontent.com/u/66786418?v=4" width=200 height=170>|
|:--:|:--:|
|[Kyo](https://github.com/KyoPak)| [tottalE](https://github.com/tottalE) |
 

## ð íìë¼ì¸

### Step - 1 : 2022.10.17 ~ 10.18

<details>
<summary> 
í¼ì³ë³´ê¸°
</summary>

- JSONì Decodable ëª¨ë¸ ìì±

</details>
 
### Step - 2 : 2022.10.18 ~ 10.26
 
<details>
<summary> 
í¼ì³ë³´ê¸°
</summary>
 
- ë©ì¸ íë©´ì `Scrollview` ìì±
- ë©ì¸ íë©´ì JSON ë°ì´í° `Decoding` ë° ë°°ì¹
- íêµ­ ë°ëí íë©´ì `TableView` ìì±
- íêµ­ ë°ëí íë©´ì `TableViewCell` ì¤ì  
- íêµ­ ë°ëí ìì´í ìì¸ íë©´ì `ScrollView` ì¤ì 
- íêµ­ ë°ëí ìì´í ìì¸ íë©´ì `ScrollView` ë´ `Decode`ë ë°ì´í° ë°°ì¹
- ë¦¬ë·°ì ë°ë¥¸ Code Refactor 

</details>
  
### Step - 3 : 2022.10.26 ~ 10.28
  
<details>
<summary> 
í¼ì³ë³´ê¸°
</summary>
  
- AutoLayoutì ì ì©íì¬ ë¤ìí ê¸°ê¸°ì ëì, ê°ë¡ íë©´ ì§ì
- Word Wrapping, Line Break ë°©ì ëì
- ë©ì¸ íë©´ Landscape Mode ì í
- Dynamic Typesë¥¼ íµí´ íì¤í¸ ì ê·¼ì± í¥ì
 
 </details>

### Personal Code Refactoring
- POP ì ì© (2022.11.03)
  - `Protocol` ì±íí í´ëì¤ë©´ `Identifier` ë¶ì¬ë  ì ìê²ë ìì  (11.03)
- ScrollView ì¤í ë ì´ìì ìì  (2022.11.10)
  - ScrollView ì¤í ë ì´ìì ê´ë ¨ ContentLayoutGuide, FrameLayoutGuide ëªìì ì¼ë¡ íê¸° 
- TableView StoryBoard ì­ì  (2022.11.14)
  - ë¶íìí TableView StoryBoard ì­ì  í íì´ë¸ë·° ê´ë ¨ ì½ë ì¶ê°
- `DetailViewController`ì `DetailView` ë¶ë¦¬ (2022.11.18)
  - Delegate Patternì ì¬ì©íì¬ ViewControllerì Viewë¥¼ ë¶ë¦¬
- DetailViewDelegateì AnyObject ì±í
  - í´ë¹ íë¡í ì½ ì±í ë°ë íë¡í¼í°ì weakí¤ìë ì¶ê°

## ð² íì¼ í¸ë¦¬

```
âââ Expo1900
âÂ Â  âââ Expo1900
âÂ Â  âÂ Â  âââ AppDelegate.swift
âÂ Â  âÂ Â  âââ SceneDelegate.swift
âÂ Â  âÂ Â  âââ Common
âÂ Â  âÂ Â  âÂ Â  âââ AssetName.swift
âÂ Â  âÂ Â  âÂ Â  âââ DataError.swift
âÂ Â  âÂ Â  âÂ Â  âââ Extensions
âÂ Â  âÂ Â  âÂ Â      âââ Formatter+Extensions.swift
âÂ Â  âÂ Â  âÂ Â      âââ Int+Extensions.swift
âÂ Â  âÂ Â  âââ Models
âÂ Â  âÂ Â  âÂ Â  âââ DecodeManger.swift
âÂ Â  âÂ Â  âÂ Â  âââ ExpositionIntroduction.swift
âÂ Â  âÂ Â  âÂ Â  âââ KoreaItem.swift
âÂ Â  âÂ Â  âââ Views
âÂ Â  âÂ Â      âââ Base.lproj
âÂ Â  âÂ Â      âÂ Â  âââ Main.storyboard
âÂ Â  âÂ Â      âââ KoreaItemTableViewCell.swift
âÂ Â  âÂ Â  âââ Controllers
âÂ Â  âÂ Â  âÂ Â  âââ DetailViewController.swift
âÂ Â  âÂ Â  âÂ Â  âââ ExpoViewController.swift
âÂ Â  âÂ Â  âÂ Â  âââ KoreaItemsViewController.swift
âÂ Â  âÂ Â  âââ Base.lproj
âÂ Â  âÂ Â  âÂ Â  âââ LaunchScreen.storyboard
âÂ Â  âÂ Â  âââ Assets.xcassets
âÂ Â  âÂ Â  âââ Info.plist
âââ README.md
```

## ð» ì¤í íë©´ 
|Main íë©´|Expo íë©´|Dynamic Type ì ì©|
|:---:|:---:|:---:|
|<img src = "https://i.imgur.com/pCDrwOe.gif" > |<img src = "https://user-images.githubusercontent.com/66786418/197134476-0ee7c273-d265-4cc6-862c-cc584f4429ca.gif" >|<img src = "https://user-images.githubusercontent.com/66786418/198507030-2f5ae8c3-a8d5-46a1-a50a-cef22da789a6.gif" width=68% height=68%>|

| ì²«ë²ì§¸ íë©´ portrait ê³ ì  ë° ìì¸íë©´ ê°ë¡ ì§ì|
|:---:|
|<img src = "https://i.imgur.com/O9fM7ua.gif" width=68% height=68%>|

## ð¯ í¸ë¬ë¸ ìí ë° ê³ ë¯¼

## Step-1, 2

### âï¸ 1. ScrollViewì Constraintì ëí ê³ ë¯¼ 

<details>
<summary> 
í¼ì³ë³´ê¸°
</summary>

- ì¤í¬ë¡¤ ë·°ì Constraintë¥¼ ì£¼ë ë°©ë²ì ë¤ìí©ëë¤. 
- ì¤í¬ë¡¤ ë·°ì super viewì ì£¼ë ê²½ì°ìë `frameLayoutGuide`ì ì£¼ë ê²ê³¼ ê°ì ê²°ê³¼ë¡ ëìíê³ , subviewì constraintë¥¼ ì£¼ë ê²½ì°ìë `contentLayoutGuide`ì constraintë¥¼ ì£¼ë ê²ê³¼ ê°ê² ëìíê² ëë ê²ì ìê² ëììµëë¤. 
- ì´ ë ê°ì§ê° ìì¬ìê±°ë, LayoutGuideìì´ Constraintë¥¼ ì§ë ê²½ì°ì í¼ëì´ ìì ì ìë¤ë ê²ì ìê² ëììµëë¤.

</details>

### âï¸ 2. ê¸°ë³¸ Cellì ì íí ì´ì 

<details>
<summary> 
í¼ì³ë³´ê¸°
</summary>

- ê¸°ë³¸ìì ìì  ì¬ì©ë²ì´ depreciatedëê³ , ìë¡­ê² `defaultContentConfiguration`ì íµí´ ê¸°ë³¸ìì ì¬ì©í´ì¤ ì ìë ë°©ë²ì ì¬ì©í´ ë³´ê³  ì¶ììµëë¤.
- cellë´ì contentë¥¼ `defaultContentConfiguration`ë¥¼ íµí´ ë°ìì¨ í, ì¬ë¬ íë¡í¼í°ë¥¼ ì¤ì í´ ì¤ íì, cellì `contentConfiguration`ì contentì `configuration`ì í ë¹íì¬ cellì ì»¤ì¤íì¼ë¡ ë§ë¤ì´ì£¼ì§ ìê³ ë ìì ì´ë¯¸ì§ì íì¤í¸ ë±ë±ì ì¡°ì í´ ì¤ ì ìììµëë¤.

</details>

---
## Step-3


### âï¸ 1. Expoë©ì¸ íë©´ì íë¨ ë²í¼ì Dynamic Typeì ì ì©íì¬ í°í¸ì í¬í¤ê° ì»¤ì¡ì ë ìì textìì­ì ì¹¨ë²íë ì´ì

<details>
<summary> 
í¼ì³ë³´ê¸°
</summary>

ì¤í ë ì´ììì ìëª» ì¤ì í´ ì£¼ì´ì ì¼ì´ë ì´ìë¼, ì¤í ë ì´ììì ìë¡­ê² ì ì©í´ ì£¼ììµëë¤. íì¤í¸ ë·°(íì¬ë Label)ì ì´ë¯¸ì§ ë·°ì ratioë¥¼ ì£¼ì´ì ê¸°ë¥íëë¡ ë§ë¤ì´ ì£¼ììµëë¤.

</details>

### âï¸ 2. TextViewìì word wrappingì´ íê¸ì´ ëì§ ìë ë¬¸ì 

<details>
<summary> 
í¼ì³ë³´ê¸°
</summary>

TextViewëì  Labelì ì¬ì©íì¬ ì¼ë¨ ë¬¸ì ë¥¼ í´ê²°í´ ì£¼ìì§ë§, ìì§ ìë²½í í´ê²°ëì§ ìì ì¶í ë¦¬í©í ë§ì ì§íí  ìì ìëë¤.

</details>

### âï¸ 3. `visibleViewController`ì `topViewController`,`presentedViewController` ì ì°¨ì´

<details>
<summary> 
í¼ì³ë³´ê¸°
</summary>

- `topViewController` 
    - UINavigationControllerì pushViewController(_:animated:) ë©ìëë¥¼ ì¬ì©íì¬ UINavigationControllerì pushë ë§ì§ë§ ViewControllerìëë¤. 
- `presentedViewController`  
    - ë¤ë¥¸ ViewController ìì íìëë ViewController(NavigationControllerë¥¼ ì¬ì©íì§ ììì ë, VCë ê¸°ë³¸ì ì¼ë¡ ë¤ë¥¸ ë·°ì»¨í¸ë¡¤ë¬ë¥¼ pushíë ëì  ë®ì´ì¤ëë¤).
    - UINavigationControllerì pushViewController(_:animated:) ëì  UIViewControllerì present(_:animated:completion:) ë©ìëë¥¼ ì¬ì©í©ëë¤. 
    - ì°¸ê³ : ì ìë ë·° ì»¨í¸ë¡¤ë¬ë¥¼ ëª¨ë¬ ë·° ì»¨í¸ë¡¤ë¬ë¼ê³ ë íë©°, ë´ë¹ê²ì´ì ì»¨í¸ë¡¤ë¬ ìì´ ì¬ì©í  ì ììµëë¤.
- `visibleViewController` 
    - topViewController ëë presentViewControllerì ê°ì ì ììµëë¤. 
    - UINavigation Controllerì ë§ì§ë§ì¼ë¡ pushí  ê²½ì° topViewControllerì ëì¼í©ëë¤.
    - ë§ì§ë§ì¼ë¡ UIViewControllerì ëí´ ì¤ëªíë ê²½ì° íìë ViewControllerì ëì¼í©ëë¤.

</details>


---
## Personal Code Refactoring

### âï¸ 1. DecodeManager Generic êµ¬í 

- í´ë¹ Decodeê´ë ¨ ì½ëë¤ì Genericí íììµëë¤. 
- ì¬ë¬ íìì´ ì¶íì ìê¸¸ ì ë ìë¤ë ê°ì íì ì¬ë¬ Typeì ì§ìíê¸° ìí¨ìëë¤. 
- `fetchData(name:)` ë©ìëì `fetchDataList(name:)` í¨ì íëë¡ í©ì¹ë ¤ê³  ìëë¥¼ íììµëë¤. íì§ë§ Dataì íì´ ë¨ì¼ ë°ì´í° ííì, ë¦¬ì¤í¸ ííì ë°ì´í°ìê¸° ëë¬¸ì êµ¬ë¶íëê² ë ë§ë¤ê³  íë¨ì´ ë¤ì´êµ¬ë¶íììµëë¤.

### âï¸ 2. POPë¥¼ ì¬ì©í Identifier ìì±
- ì¬ì¤ POPë¥¼ ì¬ì©íì§ ìê³  Identifierê° íìí classì `String.init(..)`ì ì¬ì©í´ë ê´ì°®ìì§ë§ POP íìµ í ì ì©í  ì ìë ë¶ë¶ì ì ì©ì í´ë³´ê³  ì¶ììµëë¤..
- í´ë¹ íë¡í ì½ì  `Default Implemention`ì íì¬ íë¡í ì½ì ì±íí classì ìëì¼ë¡ Identifierì í¸ì¶íì¬ ì¬ì©í  ì ìê²ë íììµëë¤.
- ì¬ì©íë©´ì POPë¡ ì ì§ë³´ìì±, íì¥ì±ì´ ëìì§ë¤ê³  ìê°ì´ ë¤ììµëë¤. íì§ë§ ì´ë¬í ìì ê¸°ë¥ ë¨ìì íë¡í ì½ì´ ë§ìì§ ê²½ì°ìë ì¤íë ¤ ê´ë¦¬ê° ì´ë ¤ì¸ ìë ìë¤ë ìê°ë ë¤ììµëë¤.
- ëë¬¸ì POPë¥¼ ì¬ì©í  ë, ì´ëì ëë¡ ê¸°ë¥ì ë¶ë¦¬í  ê²ì¸ì§ë¥¼ ë©´ë°íê² ìê°í  íìê° ìë¤ê³  ëê¼ìµëë¤.

### âï¸ 3. `DetailViewController`ì `DetailView` ë¶ë¦¬
- Delegate Patternì ì¬ì©íì¬ ViewControllerì Viewë¥¼ ë¶ë¦¬íììµëë¤.
- Delegate Patternì ì¬ì©í ì´ì ë ëªííê² ë·°ì»¨í¸ë¡¤ë¬ì ë·°ì ê¸°ë¥ì ë¶ë¦¬ í  ì ììê³ , ìì¡´ì±ì ë®ì¶ ì ìë¤ê³  ìê°íìµëë¤.
- Dataë¥¼ ViewControllerìì ìííê²ë êµ¬ííê³  Viewë Delegateì ë©ìëë¥¼ í¸ì¶í  ë¿ìëë¤.

#### ì½ë íë¦
<details>
<summary> 
í¼ì³ë³´ê¸°
</summary>

- DelegateProtocol ì ì

```swift
protocol DetailViewDelegate {
    func setupDataImageView(imageView: UIImageView, label: UILabel)
}
```
- DetailViewController

```swift
final class DetailViewController: UIViewController {
    let detailView = DetailView()
    
    override func loadView() {
        self.view = detailView
    }
    
    override func viewDidLoad() {
        ...
        detailView.detailViewDelegate = self
    }
    
    ...
}

extension DetailViewController: DetailViewDelegate {
    func setupDataImageView(imageView: UIImageView, label: UILabel) {
        guard let item = koreaItem else { return }
        imageView.image = UIImage(named: item.imageName)
        label.text = item.description
    }
}
```

- DetailView

```swift
override func updateConstraints() {
    super.updateConstraints()
    delegate.setupDataImageView(imageView: itemImageView, label: descriptionLabel)
}
```
```swift
var delegate: DetailViewDelegate? {
    didSet {
         setupDataImageView(imageView: itemImageView, label: descriptionLabel)
    }
}
```
</details>

- ìì ê°ì´ íë¦ëë¡ êµ¬ííììµëë¤.
- Viewìì í¸ì¶íë setupDataImageView()ë©ìëìë ë°ì´í°ë DetailViewë¥¼ íë¼ë©í°ë¡ ë°ì§ ìê³ , DetailViewê° ë°ì´í°ì ëí ì ì ì´ ìëë¡ imageViewì labelì ë°ëë¡ íììµëë¤.

#### í¸ë¬ë¸ ìí

- ì´ë ¤ì ë ì ì Delegateê° ë©ìëë¥¼ í¸ì¶íë ìì  íìì´ììµëë¤.
- Viewì ë¼ì´íì¬ì´í´ì ê³ ë ¤íì§ ììê¸° ëë¬¸ì ê³ì Viewì Dataê° ì ì©ëì§ ìë íìì´ ë°ìíììµëë¤.
- Viewê° ìì±ëê³  ViewControllerì `viewDidLoad()`ê° í¸ì¶ ë í ë©ìëë¥¼ í¸ì¶í  ì ììê¸° ëë¬¸ì `didset` ê°ììë¥¼ ì¶ê°íì¬ ì¤ííë ë°©ë²ê³¼ `updateConstraint()` ë¥¼ ì¬ì ìíì¬ í´ê²°í  ì ìììµëë¤.



## ð ì°¸ê³  ë§í¬
[NumberFormatter](https://developer.apple.com/documentation/foundation/numberformatter)<br>[ì¤í ë ì´ìì ì ë³µíê¸° - ì¼ê³°ë·ë·](https://yagom.net/courses/autolayout/)
[Easier Scrolling With Layout Guides](https://useyourloaf.com/blog/easier-scrolling-with-layout-guides/)<br>[Filling a Table with Data](https://developer.apple.com/documentation/uikit/views_and_controls/table_views/filling_a_table_with_data)<br>[Configuring the Cells for Your Table](https://developer.apple.com/documentation/uikit/views_and_controls/table_views/configuring_the_cells_for_your_table)<br>[JSON](https://ko.wikipedia.org/wiki/JSON)<br>[JSONDecoder](https://developer.apple.com/documentation/foundation/jsondecoder)<br>[DynamicType](https://developer.apple.com/documentation/uikit/uifont/scaling_fonts_automatically)
