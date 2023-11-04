# Pokemon App
> 스타팅 포켓몬 3마리를 보여주고 선택하는 앱 입니다.
> 처음 오박사의 집에 입장을 합니다.
> 스타팅 포켓몬 3마리 중 1마리를 선택합니다.
> 선택된 포켓몬의 이름과 상세 타입을 볼 수 있습니다.

## 📚 목차
- [팀원소개](#-팀원-소개)
- [타임라인](#-타임라인)
- [UML](#-UML)
- [시각화 구조](#-시각화-구조)
- [실행화면](#-실행화면)
- [화면 상세 설명](#-화면-상세-설명)

## 🧑‍💻 팀원 소개
| <img src="https://github.com/devKobe24/BranchTest/blob/main/IMG_5424.JPG?raw=true" width="200" height="200"/> |
| :-: |
| [<img src="https://hackmd.io/_uploads/SJEQuLsEh.png" width="20"/> **Kobe**](https://github.com/devKobe24) |

## ⏰ 타임라인
프로젝트 진행 기간 | 23.05.26.(금)

## 🗺️ UML
| UML | 
| -------- | 
| <img src = "https://github.com/devKobe24/images/blob/main/PokemonUML.drawio.png?raw=true"> | 

## 👀 시각화 구조
```
.
└── Delegate_Pokemon
    ├── Delegate_Pokemon
    │   ├── Model
    │   │   ├── StartingPokemon.swift
    │   │   └── StoryboardID.swift
    │   ├── View
    │   │   └── Base.lproj
    │   │       ├── LaunchScreen.storyboard
    │   │       └── Main.storyboard
    │   ├── Controller
    │   │   ├── MainViewController.swift
    │   │   ├── ResultViewController.swift
    │   │   └── SelectionViewController.swift
    │   ├── Resources
    │   │   ├── AppDelegate.swift
    │   │   ├── SceneDelegate.swift
    │   │   └── Assets.xcassets
    │   │       ├── AccentColor.colorset
    │   │       ├── AppIcon.appiconset
    │   │       ├── drOh.imageset
    │   │       │   └── drOh.png
    │   │       ├── drOhHouse.imageset
    │   │       │   └── drOhHouse.jpeg
    │   │       ├── 꼬부기.imageset
    │   │       │   └── 꼬부기.png
    │   │       ├── 파이리.imageset
    │   │       │   └── 파이리.png
    │   │       └── 이상해씨.imageset
    │   │           └── 이상해씨.png
    └── Delegate_Pokemon.xcodeproj
```

## 📺 실행화면
- 포켓몬 앱 실행 화면 <br/>
<img src= "https://github.com/devKobe24/images/blob/main/%E1%84%91%E1%85%A9%E1%84%8F%E1%85%A6%E1%86%BA%E1%84%86%E1%85%A9%E1%86%AB%E1%84%8B%E1%85%A2%E1%86%B8GIF.gif?raw=true">

## 📸 화면 상세 설명

| 1. 메인 화면 | 2.포켓몬 선택 화면 | 3.포켓몬 선택 상세화면 |
| -------- | -------- | -------- |
| <img src = "https://github.com/devKobe24/images/blob/main/%E1%84%91%E1%85%A9%E1%84%8F%E1%85%A2%E1%86%BA%E1%84%86%E1%85%A9%E1%86%AB%E1%84%8B%E1%85%A2%E1%86%B81.jpeg?raw=true">    | <img src = "https://github.com/devKobe24/images/blob/main/%E1%84%91%E1%85%A9%E1%84%8F%E1%85%A2%E1%86%BA%E1%84%86%E1%85%A9%E1%86%AB%E1%84%8B%E1%85%A2%E1%86%B82.jpeg?raw=true">    | <img src = "https://github.com/devKobe24/images/blob/main/%E1%84%91%E1%85%A9%E1%84%8F%E1%85%A2%E1%86%BA%E1%84%86%E1%85%A9%E1%86%AB%E1%84%8B%E1%85%A2%E1%86%B83.jpeg?raw=true">    |

## 🔨 트러블 슈팅 

1️⃣ **뷰 간 데이터 전달.** <br/>
첫 화면이 필요하다고 생각해 첫 화면을 만들어주는 과정과 델리게이트 패턴을 활용하여 객체간의 데이터 이동을 원활하게 만들었습니다.

<img src = "https://github.com/devKobe24/images/blob/main/%E1%84%91%E1%85%A9%E1%84%8F%E1%85%A6%E1%86%BA%E1%84%86%E1%85%A9%E1%86%AB%E1%84%8B%E1%85%A2%E1%86%B8%E1%84%85%E1%85%B5%E1%84%91%E1%85%A2%E1%86%A8%E1%84%90%E1%85%A9%E1%84%85%E1%85%B5%E1%86%BCGIF.gif?raw=true">

---
## 🏗️ MVC
1️⃣ **Model.**<br/>
<img src = "https://github.com/devKobe24/images/blob/main/%E1%84%91%E1%85%A9%E1%84%8F%E1%85%A6%E1%86%BA%E1%84%86%E1%85%A9%E1%86%AB%E1%84%8B%E1%85%A2%E1%86%B8%E1%84%86%E1%85%A9%E1%84%83%E1%85%A6%E1%86%AF.png?raw=true">

- 열거형을 활용하여 각 포켓몬을 케이스별로 나누었습니다.
- 각 케이스 별로 이름, 타입, 이미지를 프로퍼티 내부에서 `switch self`로 분기 처리하였습니다.

<img src = "https://github.com/devKobe24/images/blob/main/%E1%84%91%E1%85%A9%E1%84%8F%E1%85%A6%E1%86%BA%E1%84%86%E1%85%A9%E1%86%AB%E1%84%8B%E1%85%A2%E1%86%B8%E1%84%89%E1%85%B3%E1%84%90%E1%85%A9%E1%84%85%E1%85%B5%E1%84%87%E1%85%A9%E1%84%83%E1%85%B3%E1%84%8B%E1%85%A1%E1%84%8B%E1%85%B5%E1%84%83%E1%85%B5.png?raw=true">

- 열거형을 활용하여 각 뷰 컨트롤러를 케이스 별로 분기 하였습니다.
- 각 뷰 컨트롤러 별 identifier를 하나의 프로퍼티에서 `switch self`를 활용하여 분기 하였습니다.

2️⃣ **ViewController**<br/>
<img src = "https://github.com/devKobe24/images/blob/main/%E1%84%91%E1%85%A9%E1%84%8F%E1%85%A2%E1%86%BA%E1%84%86%E1%85%A9%E1%86%AB%E1%84%8B%E1%85%A2%E1%86%B8%E1%84%86%E1%85%A6%E1%84%8B%E1%85%B5%E1%86%AB%E1%84%87%E1%85%B2%E1%84%8F%E1%85%A5%E1%86%AB%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA.png?raw=true">

<img src = "https://github.com/devKobe24/images/blob/main/%E1%84%91%E1%85%A9%E1%84%8F%E1%85%A6%E1%86%BA%E1%84%86%E1%85%A9%E1%86%AB%E1%84%8B%E1%85%A2%E1%86%B8%E1%84%86%E1%85%A6%E1%84%8B%E1%85%B5%E1%86%AB%E1%84%87%E1%85%B2%E1%84%8F%E1%85%A5%E1%86%AB%E1%84%8F%E1%85%A9%E1%84%83%E1%85%B3.png?raw=true">

- `UIButton`을 활용하여 다음 화면으로 사용자의 다음 동작을 유도하였습니다.
- 버튼을 탭 할 경우 `ResultViewController`로 이동하게 됩니다.
- 화면 전환 방식은 `Present` 방식을 활용했습니다.
- 화면 전환 스타일은 `Full Screen`을 활용했습니다.

3️⃣ **ResultViewController**<br/>
<img src = "https://github.com/devKobe24/images/blob/main/%E1%84%91%E1%85%A9%E1%84%8F%E1%85%A6%E1%86%BA%E1%84%86%E1%85%A9%E1%86%AB%E1%84%8B%E1%85%A2%E1%86%B8%E1%84%85%E1%85%B5%E1%84%8C%E1%85%A5%E1%86%AF%E1%84%90%E1%85%B3%E1%84%87%E1%85%B2%E1%84%8F%E1%85%A5%E1%86%AB%E1%84%89%E1%85%B3%E1%84%90%E1%85%A9%E1%84%85%E1%85%B5%E1%84%87%E1%85%A9%E1%84%83%E1%85%B3.png?raw=true">

<img src = "https://github.com/devKobe24/images/blob/main/%E1%84%91%E1%85%A9%E1%84%8F%E1%85%A2%E1%86%BA%E1%84%86%E1%85%A9%E1%86%AB%E1%84%8B%E1%85%A2%E1%86%B8%E1%84%85%E1%85%B5%E1%84%8C%E1%85%A5%E1%86%AF%E1%84%90%E1%85%B3%E1%84%87%E1%85%B2%E1%84%8F%E1%85%A5%E1%86%AB%E1%84%8F%E1%85%A9%E1%84%83%E1%85%B3.png?raw=true">

- `viewDidDisapper`에서 `StackView`를 `Hidden` 시켰던 것을 `false` 값을 할당함으로써 `StackView`가 보이게 만들었습니다.
- 여러가지 화면 전환 방식을 경험해보자 이번에는 `segue`를 활용했습니다.
- 데이터 전달 방식으로 `Delegate pattern`을 활용했습니다.

4️⃣ **SelectionViewController**

<img src = "https://github.com/devKobe24/images/blob/main/%E1%84%91%E1%85%A9%E1%84%8F%E1%85%A6%E1%86%BA%E1%84%86%E1%85%A9%E1%86%AB%E1%84%8B%E1%85%A2%E1%86%B8%E1%84%89%E1%85%A2%E1%86%AF%E1%84%85%E1%85%A6%E1%86%A8%E1%84%89%E1%85%A7%E1%86%AB%E1%84%87%E1%85%B2%E1%84%8F%E1%85%A5%E1%86%AB%E1%84%89%E1%85%B3%E1%84%90%E1%85%A9%E1%84%85%E1%85%B5%E1%84%87%E1%85%A9%E1%84%83%E1%85%B3.png?raw=true">

<img src = "https://github.com/devKobe24/images/blob/main/%E1%84%91%E1%85%A9%E1%84%8F%E1%85%A2%E1%86%BA%E1%84%86%E1%85%A9%E1%86%AB%E1%84%8B%E1%85%A2%E1%86%B8%E1%84%89%E1%85%A2%E1%86%AF%E1%84%85%E1%85%A6%E1%86%A8%E1%84%89%E1%85%A7%E1%86%AB%E1%84%87%E1%85%B2%E1%84%8F%E1%85%A5%E1%86%AB%E1%84%8F%E1%85%A9%E1%84%83%E1%85%B3.png?raw=true">

<img src = "https://github.com/devKobe24/images/blob/main/%E1%84%91%E1%85%A9%E1%84%8F%E1%85%A2%E1%86%BA%E1%84%86%E1%85%A9%E1%86%AB%E1%84%8B%E1%85%A2%E1%86%B8%E1%84%89%E1%85%A2%E1%86%AF%E1%84%85%E1%85%A6%E1%86%A8%E1%84%89%E1%85%A7%E1%86%AB%E1%84%87%E1%85%B2%E1%84%8F%E1%85%A5%E1%86%AB%E1%84%8F%E1%85%A9%E1%84%83%E1%85%B32.png?raw=true">

- `typealias`를 활용하여 튜플 타입명을 `PokemonInfomation`으로 바꿔 가독성을 높였습니다.
- `SelectionViewControllerDelegate` 프로토콜을 만들어 `SelectionViewControllerDelegate` 프로토콜을 채택할 경우 프로토콜 내부에서 요구 사항을 준수하도록 구현했습니다.
- 각 버튼의 `tag`를 구분하여 각각 `tag` 별 전달해야할 데이터를 다르게 처리하였습니다.

---
