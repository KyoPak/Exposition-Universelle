# Exposition-universelle

## 🗒︎목차
1. [소개](#-소개)
2. [개발환경 및 라이브러리](#-개발환경-및-라이브러리)
3. [팀원](#-팀원)
4. [타임라인](#-타임라인)
5. [실행화면](#-실행-화면)
6. [트러블 슈팅 및 고민](#-트러블-슈팅-및-고민)
7. [참고링크](#-참고-링크)


## 👋 소개
[Kyo](https://github.com/KyoPak)와 [토털이](https://github.com/tottalE)가 구현한 Exposition-universelle App 입니다.
만국 박람회 앱으로 expo를 소개하는 앱입니다. 
`Decoding`, `ScrollView`, `TableView`, `Dynamic Type`를 중점적으로 학습하며 프로젝트를 진행해나갔습니다.

프로젝트 종료 후, 개인적으로 Refactoring 진행중입니다!


## 💻 개발환경 및 라이브러리
[![swift](https://img.shields.io/badge/swift-5.6-orange)]()
[![xcode](https://img.shields.io/badge/Xcode-13.4.1-blue)]() [![xcode](https://img.shields.io/badge/Xcode-14.0.1-blue)]()


## 🧑 팀원 
<img src = "https://user-images.githubusercontent.com/59204352/193524215-4f9636e8-1cdb-49f1-9a17-1e4fe8d76655.PNG" width=200 height=170>|<img src = "https://avatars.githubusercontent.com/u/66786418?v=4" width=200 height=170>|
|:--:|:--:|
|[Kyo](https://github.com/KyoPak)| [tottalE](https://github.com/tottalE) |
 

## 🕖 타임라인

### Step - 1 : 2022.10.17 ~ 10.18

<details>
<summary> 
펼쳐보기
</summary>

- JSON의 Decodable 모델 생성

</details>
 
### Step - 2 : 2022.10.18 ~ 10.26
 
<details>
<summary> 
펼쳐보기
</summary>
 
- 메인 화면의 `Scrollview` 생성
- 메인 화면의 JSON 데이터 `Decoding` 및 배치
- 한국 박람회 화면의 `TableView` 생성
- 한국 박람회 화면의 `TableViewCell` 설정 
- 한국 박람회 아이템 상세 화면의 `ScrollView` 설정
- 한국 박람회 아이템 상세 화면의 `ScrollView` 내 `Decode`된 데이터 배치
- 리뷰에 따른 Code Refactor 

</details>
  
### Step - 3 : 2022.10.26 ~ 10.28
  
<details>
<summary> 
펼쳐보기
</summary>
  
- AutoLayout을 적용하여 다양한 기기에 대응, 가로 화면 지원
- Word Wrapping, Line Break 방식 도입
- 메인 화면 Landscape Mode 제한
- Dynamic Types를 통해 텍스트 접근성 향상
 
 </details>

### Personal Code Refactoring
- POP 적용 (2022.11.03)
  - `Protocol` 채택한 클래스면 `Identifier` 부여될 수 있게끔 수정 (11.03)
- ScrollView 오토레이아웃 수정 (2022.11.10)
  - ScrollView 오토레이아웃 관련 ContentLayoutGuide, FrameLayoutGuide 명시적으로 표기 
- TableView StoryBoard 삭제 (2022.11.14)
  - 불필요한 TableView StoryBoard 삭제 후 테이블뷰 관련 코드 추가
- `DetailViewController`와 `DetailView` 분리 (2022.11.18)
  - Delegate Pattern을 사용하여 ViewController와 View를 분리
   

## 🌲 파일 트리

```
├── Expo1900
│   ├── Expo1900
│   │   ├── AppDelegate.swift
│   │   ├── SceneDelegate.swift
│   │   ├── Common
│   │   │   ├── AssetName.swift
│   │   │   ├── DataError.swift
│   │   │   └── Extensions
│   │   │       ├── Formatter+Extensions.swift
│   │   │       └── Int+Extensions.swift
│   │   ├── Models
│   │   │   ├── DecodeManger.swift
│   │   │   ├── ExpositionIntroduction.swift
│   │   │   └── KoreaItem.swift
│   │   └── Views
│   │       ├── Base.lproj
│   │       │   └── Main.storyboard
│   │       └── KoreaItemTableViewCell.swift
│   │   ├── Controllers
│   │   │   ├── DetailViewController.swift
│   │   │   ├── ExpoViewController.swift
│   │   │   └── KoreaItemsViewController.swift
│   │   ├── Base.lproj
│   │   │   └── LaunchScreen.storyboard
│   │   ├── Assets.xcassets
│   │   ├── Info.plist
└── README.md
```

## 💻 실행 화면 
|Main 화면|Expo 화면|Dynamic Type 적용|
|:---:|:---:|:---:|
|<img src = "https://i.imgur.com/pCDrwOe.gif" > |<img src = "https://user-images.githubusercontent.com/66786418/197134476-0ee7c273-d265-4cc6-862c-cc584f4429ca.gif" >|<img src = "https://user-images.githubusercontent.com/66786418/198507030-2f5ae8c3-a8d5-46a1-a50a-cef22da789a6.gif" width=68% height=68%>|

| 첫번째 화면 portrait 고정 및 상세화면 가로 지원|
|:---:|
|<img src = "https://i.imgur.com/O9fM7ua.gif" width=68% height=68%>|

## 🎯 트러블 슈팅 및 고민

## Step-1, 2

### ⚙️ 1. ScrollView의 Constraint에 대한 고민 

<details>
<summary> 
펼쳐보기
</summary>

- 스크롤 뷰의 Constraint를 주는 방법은 다양합니다. 
- 스크롤 뷰의 super view에 주는 경우에는 `frameLayoutGuide`에 주는 것과 같은 결과로 동작하고, subview에 constraint를 주는 경우에는 `contentLayoutGuide`에 constraint를 주는 것과 같게 동작하게 되는 것을 알게 되었습니다. 
- 이 두 가지가 섞여있거나, LayoutGuide없이 Constraint를 짜는 경우에 혼란이 있을 수 있다는 것을 알게 되었습니다.

</details>

### ⚙️ 2. 기본 Cell을 선택한 이유

<details>
<summary> 
펼쳐보기
</summary>

- 기본셀의 예전 사용법이 depreciated되고, 새롭게 `defaultContentConfiguration`을 통해 기본셀을 사용해줄 수 있는 방법을 사용해 보고 싶었습니다.
- cell내의 content를 `defaultContentConfiguration`를 통해 받아온 후, 여러 프로퍼티를 설정해 준 후에, cell의 `contentConfiguration`에 content의 `configuration`에 할당하여 cell을 커스텀으로 만들어주지 않고도 셀의 이미지와 텍스트 등등을 조정해 줄 수 있었습니다.

</details>

---
## Step-3


### ⚙️ 1. Expo메인 화면의 하단 버튼에 Dynamic Type을 적용하여 폰트의 크키가 커졌을 때 위의 text영역을 침범하는 이슈

<details>
<summary> 
펼쳐보기
</summary>

오토레이아웃을 잘못 설정해 주어서 일어난 이슈라, 오토레이아웃을 새롭게 적용해 주었습니다. 텍스트 뷰(현재는 Label)와 이미지 뷰에 ratio를 주어서 기능하도록 만들어 주었습니다.

</details>

### ⚙️ 2. TextView에서 word wrapping이 한글이 되지 않는 문제

<details>
<summary> 
펼쳐보기
</summary>

TextView대신 Label을 사용하여 일단 문제를 해결해 주었지만, 아직 완벽히 해결되지 않아 추후 리팩토링을 진행할 예정입니다.

</details>

### ⚙️ 3. `visibleViewController`와 `topViewController`,`presentedViewController` 의 차이

<details>
<summary> 
펼쳐보기
</summary>

- `topViewController` 
    - UINavigationController의 pushViewController(_:animated:) 메서드를 사용하여 UINavigationController에 push된 마지막 ViewController입니다. 
- `presentedViewController`  
    - 다른 ViewController 위에 표시되는 ViewController(NavigationController를 사용하지 않았을 때, VC는 기본적으로 다른 뷰컨트롤러를 push하는 대신 덮어줍니다).
    - UINavigationController의 pushViewController(_:animated:) 대신 UIViewController의 present(_:animated:completion:) 메서드를 사용합니다. 
    - 참고: 제시된 뷰 컨트롤러를 모달 뷰 컨트롤러라고도 하며, 내비게이션 컨트롤러 없이 사용할 수 있습니다.
- `visibleViewController` 
    - topViewController 또는 presentViewController와 같을 수 있습니다. 
    - UINavigation Controller에 마지막으로 push할 경우 topViewController와 동일합니다.
    - 마지막으로 UIViewController에 대해 설명하는 경우 표시된 ViewController와 동일합니다.

</details>


---
## Personal Code Refactoring

### ⚙️ 1. DecodeManager Generic 구현 

- 해당 Decode관련 코드들을 Generic화 하였습니다. 
- 여러 타입이 추후에 생길 수 도 있다는 가정하에 여러 Type을 지원하기 위함입니다. 
- `fetchData(name:)` 메서드와 `fetchDataList(name:)` 함수 하나로 합치려고 시도를 했었습니다. 하지만 Data의 틀이 단일 데이터 형태와, 리스트 형태의 데이터였기 때문에 구분하는게 더 맞다고 판단이 들어구분하였습니다.

### ⚙️ 2. POP를 사용한 Identifier 생성
- 사실 POP를 사용하지 않고 Identifier가 필요한 class에 `String.init(..)`을 사용해도 괜찮았지만 POP 학습 후 적용할 수 있는 부분에 적용을 해보고 싶었습니다..
- 해당 프로토콜의  `Default Implemention`을 하여 프로토콜을 채택한 class에 자동으로 Identifier을 호출하여 사용할 수 있게끔 하였습니다.
- 사용하면서 POP로 유지보수성, 확장성이 높아진다고 생각이 들었습니다. 하지만 이러한 작은 기능 단위의 프로토콜이 많아질 경우에는 오히려 관리가 어려울 수도 있다는 생각도 들었습니다.
- 때문에 POP를 사용할 때, 어느정도로 기능을 분리할 것인지를 면밀하게 생각할 필요가 있다고 느꼈습니다.

### ⚙️ 3. `DetailViewController`와 `DetailView` 분리
- Delegate Pattern을 사용하여 ViewController와 View를 분리하였습니다.
- Delegate Pattern을 사용한 이유는 명확하게 뷰컨트롤러와 뷰의 기능을 분리 할 수 있었고, 의존성을 낮출 수 있다고 생각했습니다.
- Data를 ViewController에서 셋팅하게끔 구현하고 View는 Delegate의 메서드를 호출할 뿐입니다.

#### 코드 흐름
<details>
<summary> 
펼쳐보기
</summary>

- DelegateProtocol 정의

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

- 위와 같이 흐름대로 구현하였습니다.
- View에서 호출하는 setupDataImageView()메서드에는 데이터나 DetailView를 파라메터로 받지 않고, DetailView가 데이터에 대한 접점이 없도록 imageView와 label을 받도록 하였습니다.

#### 트러블 슈팅

- 어려웠던 점은 Delegate가 메서드를 호출하는 시점 파악이었습니다.
- View의 라이프사이클을 고려하지 않았기 때문에 계속 View에 Data가 적용되지 않는 현상이 발생하였습니다.
- View가 생성되고 ViewController의 `viewDidLoad()`가 호출 된 후 메서드를 호출할 수 있었기 때문에 `didset` 감시자를 추가하여 실행하는 방법과 `updateConstraint()` 를 재정의하여 해결할 수 있었습니다.



## 📚 참고 링크
[NumberFormatter](https://developer.apple.com/documentation/foundation/numberformatter)<br>[오토레이아웃 정복하기 - 야곰닷넷](https://yagom.net/courses/autolayout/)
[Easier Scrolling With Layout Guides](https://useyourloaf.com/blog/easier-scrolling-with-layout-guides/)<br>[Filling a Table with Data](https://developer.apple.com/documentation/uikit/views_and_controls/table_views/filling_a_table_with_data)<br>[Configuring the Cells for Your Table](https://developer.apple.com/documentation/uikit/views_and_controls/table_views/configuring_the_cells_for_your_table)<br>[JSON](https://ko.wikipedia.org/wiki/JSON)<br>[JSONDecoder](https://developer.apple.com/documentation/foundation/jsondecoder)<br>[DynamicType](https://developer.apple.com/documentation/uikit/uifont/scaling_fonts_automatically)
