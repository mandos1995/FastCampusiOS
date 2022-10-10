# FastCampusiOS
패스트캠퍼스 iOS 앱 개발 프로젝트 실습 저장소입니다.

# 1. 심볼롤러
## 핵심기능
1. 요소들 중 랜덤 요소를 뽑아내어 UI로 보여줌

## 회고
* 기존에 알고있던 내용들도 많았으나 기초를 단단히 할 수 있었다고 느낌
* 배운점 
  * Button Style을 Filled로 하게되면 서브타이틀을 작성할 수 있고, Corner Style을 Capsule로 하게되면 둥근 모서리를 가질 수 있음
  * randomElement로 랜덤한 요소를 추출할 수 있음
* 아쉬운점
  * ~~randomElement를 사용해 랜덤한 요소를 추출할 수는 있지만, 연속으로 같은게 나오게 되면 안누른 것과 동일한 결과이기 때문에 다른 방식으로 구현하는게 사용자 입장에서 더 좋을거라고 생각함~~
    * 수정완료
  
## 사용기술
* Swift
* StoryBoard

## 앱 시연 영상
![symbolRoller](https://user-images.githubusercontent.com/77199797/173179918-9f744f67-4e29-42a4-9325-9524e00caf19.gif)

# 2. 심플웨더
## 핵심기능
1. 요소들 중 랜덤 요소를 뽑아내어 UI로 보여줌

## 회고
* SwiftUI에서 스택뷰를 주로 사용한다는 것을 알았고, 그래서 스택뷰를 잘 다루는 것이 중요하다고 느낌
* 배운점
  * UIImage의 랜더링 모드에 대해 알게되었음
    * automatic - default 값이며 기본 렌더링 모드를 사용하여 이미지를 그림
    * alwaysOriginal - 항상 원본 이미지를 템플릿으로 취급하지 않고 이미지를 그림
    * alwaysTemplate - 이미지의 색상 정보를 무시하고 항상 템플릿 이미지로 이미지를 그림
  * 스택뷰 사용법에 대해 알게되었음
* 아쉬운점
  * ~~심볼롤러 프로젝트와 마찬가지로 랜덤한 요소를 추출할 때, 연속으로 같은게 나오게 되면 안누른 것과 동일한 결과이기 때문에 다른 방식으로 구현하는게 사용자 입장에서 더 좋을거라고 생각함~~
    * 수정완료

## 사용기술
* Swift
* StoryBoard

## 앱 시연 영상
![simpleWeather](https://user-images.githubusercontent.com/77199797/173242827-a800a84d-3e6c-4bd4-9e11-06baec587f8e.gif)

# 3. 주식리스트
## 핵심기능
1. UICollectionView를 사용해 주식리스트를 UI로 보여줌

## 회고
* CollectionView 사용법에 대해 복습할 수 있었음
* 배운점
    * UICollectionView 에서 IndexPath.row로만 사용했었는데 IndexPath.item의 존재를 처음 알게됨
      * 기능적으로는 동일하지만 프로그래밍 스타일에 있어서 TableView에서는 row를 사용, CollectionView에서는 item을 사용하는것이 좋다.
    * UIColeectionView에서 리스트 및 그리드를 개발할 때 고려할 점 3가지
      1. Data - 어떤 데이터를 쓸건지
      2. Presentation - 셀을 어떻게 표현할건지
      3. Layout - 셀들 레이아웃을 어떻게 할건지
    * NumberFormatter를 다루는 법에 알게되었음
      * 컴마추가 방법
      * maximumFractionDigits 속성을 사용해 최대 소수점 자리수를 정할 수 있음 (default = 3)
* 아쉬운점
    * 하트모양을 이미지뷰로 사용했는데 버튼으로 사용해서 클릭시 빨간하트로 변하는 기능같은것도 구현하면 좋을것 같다고 느낌

## 사용기술
* Swift
* StoryBoard

## 앱 시연 영상
![StockList](https://user-images.githubusercontent.com/77199797/173294999-d9c78da3-afd9-4af3-b1e6-1a27c2fd35ff.gif)

# 4. 채팅리스트
## 핵심기능
1. UICollectionView를 사용해 채팅리스트를 UI로 보여줌

## 회고
* 주식리스트와 거의 비슷했지만 오토레이아웃이 약간 더 복잡했었다.
* DateFormatter에 복습할 수 있었다.
* 배운점
  * intrinsic Content Size
    * view 자체의 본질의 크기, 이 크기가 존재함으로 컴포넌트가 width와 height를 가질 수 있음
    * intrinsic Content Size Width를 갖고있는 컴포넌트 - UISlider, UILabel, UIButton, UISwitch, UITextField
    * intrinsic Content Size Height를 갖고있는 컴포넌트 - UISlider, UILabel, UIButton, UISwitch, UITextField
    * ImageView와 TextView는 Content에 따라 변화함
    * Content hugging
      * 최대 크기에 제한 - 주어진 크기보다 작아질 수 있음
    * Compression resistance
      * 최소 크기에 제한 - 주어진 크기보다 커질 수 있음
  * awakeFromNib()
    * 객체가 초기화 된 후 호출됨
    * UICollectionView에서 로드될때 호출됨
  * 2021-04-01, 2022-04-05 와 같은 Date처럼 보이는 String도 날짜에 따라 정렬이 가능함

## 사용기술
* Swift
* StoryBoard

## 앱 시연 영상
![chatList](https://user-images.githubusercontent.com/77199797/173359134-1a289d6c-2336-4925-b08a-6a842e11cd13.gif)

# 5. 애플 프레임워크 리스트
## 핵심기능
1. UICollectionView를 사용해 애플 프레임 워크 리스트를 UI로 보여줌

## 회고
* 기존의 두 리스트는 리스트 형식이였지만 이번 프로젝트는 그리드 형식이였다.
* 그리드 형식 셀 크기 조정방법에 대해 제대로 이해하였다.
* 배운점
  * Navigation Bar large title 설정 방법
    * 스토리보드에서 Prefers Large Titles 체크
    * 코드 작성시 navigationController?.navigationBar.prefersLargeTitles = true
  * 코드로 스토리보드 인스펙터 창에 있는 프로퍼티에 접근하는 방법에 대해 알게되었음
  * adjustsFontSizeToFitWidth에 대해 알게되었음
    * true로 하게 되면 label이 크다면 label의 bounds에 맞추기위해 글자 크기를 자동으로 줄여줌
* 아쉬운점
  * 버튼같은거를 추가해서 2열, 3열, 4열, 5열 등 열을 수정할 수 있는 기능이 있었으면 더 좋을 것 같다.

## 사용기술
* Swift
* StoryBoard

## 앱 시연 영상
![appleFramework](https://user-images.githubusercontent.com/77199797/173482213-72f0fcb5-389b-49c5-aa14-3aa6574cf8ba.gif)

# 6. 인스타 검색뷰
## 핵심기능
1. TabBar + CollectionView를 사용해 인스타 검색뷰를 보여줌

## 회고
* TabBar 사용법을 복습할 수 있었음
* 코드로는 TabBar를 작성해본 경험이 없었는데, 코드로도 작성을 한번 해봐야겠다고 생각이 듬
* 배운점
  * prepareForReuse
    * 재사용되는 셀이 재사용 될 수 있도록 준비를 할 수 있는 메서드
    * 잠재적인 이슈를 피하기 위해 사용함, 셀의 content와 관련없는 것들만 초기화 해주는 것이 좋다.(뷰 관련)
  * DarkMode 관련 labelColor로 지정해주는 방법
    * DarkMode일 때 Label의 색깔을 White color로 지정해줬다면, 다크모드가 아닐 시에도 White color가 되기 때문에, label color라는 UIColor로 지정해주면 다크모드가 아닐 시에 default color로 나타낼 수 있음
  * UISearchViewController의 존재를 알게되었고, Navigation Item 항목에 넣을 수도 있다는 것을 알게됨
* 아쉬운점
  * 검색을 해서 항목들을 필터링하는 기능이 있으면 좋을 것 같음

## 사용기술
* Swift
* StoryBoard

## 앱 시연 영상
![instaSearch](https://user-images.githubusercontent.com/77199797/173625821-5f1b9ba7-974c-4d91-8fad-35b25b7c1355.gif)

# 7. NRC 온보딩
## 핵심기능
1. CollectionView + PageControl을 사용해 온보딩 뷰를 보여줌
  
## 회고
* PageControl의 사용법에 대해 복습할 수 있었음
* 배운점
  * PageControl 사용법
  * UIScrollViewDelegate 관련 함수
    * scrollViewDidScroll
      * 스크롤을 할 때마다 호출됨 (contentOffset 값이 바뀔 때 마다 호출)
    * scrollViewWillBeginDragging()
      * 스크롤 뷰에서 드래그 하기 시작할 때 한번 호출
    * scrollViewWillEndDragging()
      * 손을 뗐을 때 한번 호출
      * targetContentOffset을 변경하여 스크롤 뷰가 중지되는 위치를 조정할 수 있음
    * scrollViewDidEndDragging()
      * 스크롤 뷰에서 드래그가 끝났을 때 한번만 호출
    * scrollViewShouldScrollToTop()
      * 상단 클릭시 최상단으로 올라가는것을 허용하는지 여부 (default: true)
    * scrollViewDidScrollToTop()
      * 뷰가 최상단으로 올라가는 이벤트가 발생할 때 호출되는 함수
    * scrollViewWillBeginDecelerating()
      * 손을 뗀 이후로 감속이 시작됐을 때 호출되는 함수
      * 위 코드에서는 pageControl을 사용할 때 위 함수를 사용했음
* 아쉬운점
  * 아쉬운점 까지는 아니고 pageControl을 사용하지 않고도 배너뷰 같은 경우 (1 / 3) (2 / 3) .. 등을 표현할 때 UIScrollViewDelegate 관련 함수를 사용해서 구현할 수 있겠다고 생각이 들었다.

## 사용 기술
* Swift
* StoryBoard

## 앱 시연 영상
![NRC onboarding](https://user-images.githubusercontent.com/77199797/174236292-0dfe1f75-79a5-4d6b-89d6-b94927053fb2.gif)

# 8. 애플 프레임워크 리스트 (개선)
## 핵심기능
1. UICollectionViewDataSource -> UICollectionViewDiffDataSource 리팩토링
2. UICollectionViewFloyLayout -> UICollectionViewCompositionalLayout 리팩토링 

## 회고
* UICollectionViewDiffDataSource에 대해 처음 알게되었음
* UICollectionViewCompositionalLayout에 대해 처음 알게되었음
* SnapShot에 대해 처음 알게되었음
* 배운점
  * UICollectionViewDiffDataSource에
    * 기존의 DataSource와 UI는 각각 시간에 따라 변경되는 자신만의 버전을 가지고 있는데, 이것이 맞지 않다면 에러를 발생시켰다. reloadData를 수행하면 해결이 가능하지만 애니메이션이 없이 화면을 갱신하기 때문에 UX적으로 안좋기 때문에 Diff DataSource가 등장함
    * Diff DataSource는 Generic Class이며, Generic에 해당하는 타입은 모두 Hashable을 준수하는 타입이여함
  * SnapShot
    * SnapShot은 UI의 버전을 저장하는 개념, 각 section의 item에 대한 유니크한 identifier를 저장하고 이를 기반으로 업데이트를 수행함
  * UICollectionViewCompositionalLayout
    * NSCollectionLayoutSize
      * 셀의 크기를 결정해주는 요소
      * absolute - 고정 크기
      * fractionalHeight - 포함된 그룹안의 세로비율만큼의 크기 (max 1)
      * fractionalWidth - 포함된 그룹안의 가로비율만큼의 크기 (max 1)
      * estimated - 최소크기
    * NSCollectionLayoutItem
      * 아이템을 나타냄, 위의 만든 사이즈를 적용시킨 Cell
    * NSCollectinoLayoutGroup
      * 수직, 수평을 기준으로 만들 수 있고, 사이즈 및 item, 그룹내의 셀 갯수를 정의함
    * NSCollectionLayoutSection
      * 만들어준 그룹을 section에 추가함
    * UICollectionviewCompostionalLayout
      * 만든 섹션을 넣어주고 레이아웃을 만듬, 마지막에 collectionView에 만든 레이아웃을 적용

## 사용기술
* Swift
* StoryBoard

## 앱 시연 영상
![appleFramework(refactoring)](https://user-images.githubusercontent.com/77199797/177065624-246aa008-41d2-4f0b-a73b-9df290b9ba78.gif)

# 9. 집중을 위한 명상 컨텐츠 리스트 
## 핵심기능
1. UICollectionViewDiffDataSource
2. UICollectionViewCompositionalLayout
3. SnapShot

## 회고
* UICollectionViewDiffDataSource 사용법에 조금 더 익숙해짐
* UICollectionViewCompositionalLayout 사용법에 조금 더 익숙해짐
* SnapShot 사용법에 조금 더 익숙해짐
* 배운점
  * UICollectionViewCompositionalLayout을 사용하면서 padding값 조절 및 interGroupSpacing을 더 잘 사용할 수 있었음
  *  NSCollectionLayoutSize에서 estimated를 사용하면 동적인 cell의 높이를 줄 수 있음

## 사용기술
* Swift
* StoryBoard

## 앱 시연 영상
![HeadSpaceFocus](https://user-images.githubusercontent.com/77199797/177075818-53498a5f-a750-4d44-9b5c-78c10e7272cc.gif)

# 10. 스포티파이 구매뷰
## 핵심 기능
1. UICollectionViewDiffDataSource
2. UICollectionViewCompositionalLayout
3. SnapShot
4. NSCollectionLayoutEnvironment
5. orthogonalScrollingBehavior

## 회고
* UICollectionViewDiffDataSource 사용법에 조금 더 익숙해짐
* UICollectionViewCompositionalLayout 사용법에 조금 더 익숙해짐
* SnapShot 사용법에 조금 더 익숙해짐
* NSCollectionLayoutEnvironment에 대해 알게되었음
* orthogonalScrollingBehavior에 대해 알게되었음
* 배운점
  * orthogonalScrollingBehavior (수평 스크롤)
    * none
      * 수평으로 스크롤하는것을 허용하지 않음
    * continuous
      * 수평으로 스크롤하는 설정
    * continuousGroupLeadingBoundary
      * 수평으로 스콜할 수 있으며 그룹의 경계에서 자연스럽게 멈출 수 있음
    * paging
      * 수평으로 페이징할 수 있음
    * groupPaging
      * 한 그룹씩 수평으로 페이징할 수 있음
    * groupPagingCentered
      * 한 그룹씩 수평으로 페이징하여 각 그룹을 중앙에 배치할 수 있음
  
## 사용기술
* Swift
* StoryBoard

## 앱 시연 영상
![SpotifyPaywall](https://user-images.githubusercontent.com/77199797/177284051-5df51524-2cd5-4c21-9fab-5d1f819c7fe2.gif)

# 11. 애플 프레임워크 리스트 (모달)
## 핵심기능
1. 상세뷰 modal 진입하기
2. Safari modal 진입하기

## 회고
* iOS에서 제공해주는 시스템 모달에 대해 알게되었음
  * alert
    * https://developer.apple.com/design/human-interface-guidelines/components/presentation/alerts/
  * activity views
    * https://developer.apple.com/design/human-interface-guidelines/components/menus-and-actions/activity-views/
  * share sheets
    * https://developer.apple.com/design/human-interface-guidelines/components/presentation/sheets
  * action sheet 
    * https://developer.apple.com/design/human-interface-guidelines/components/presentation/action-sheets/
* modal presentationStyle에 대해 복습할 수 있었음
  * automatic
    * default 값이며 대부분 page sheet 형태로 모달을 띄움
  * fullscreen
    * 화면을 꽉 채워서 모달을 띄움
  * popover
* SFSafariViewController에 대해 알게되었음
* 배운점
  * SFSafariViewController, WKWebView의 차이
    * WKWebView는 웹 콘텐츠를 수정하거나 조작해야하는 경우 가장 높은 유연성을 제공
    * SFSafariViewController는 Safari 앱을 여는 것과 같은 효과를 낼 수 있다. (공유 버튼, 앞으로가기, 뒤로가기 등)

## 사용기술
* Swift
* StoryBoard

## 앱 시연 영상
![AppleFrameworkList(modal)](https://user-images.githubusercontent.com/77199797/177510568-c2657639-176d-493d-9e38-39edbcf1f3ce.gif)

# 12. 집중을 위한 명상 콘텐츠 리스트 (네비게이션)
## 핵심기능
1. 네비게이션으로 화면전환
2. HeaderView 적용
3. Section이 2개 이상인 CollectionView 적용

## 회고
1. CaseIterable에 대해 알게되었음
2. 헤더뷰를 적용하는 방법에 대해 알게되었음
3. Section이 2개 이상일 때 UICollectionViewDiffDataSource, UICollectionViewCompositionalLayout, SnapShot을 사용하여 CollectionView를 구현하는 방법에 대해 알게되었음

## 사용기술
* Swift
* Storyboard

## 앱 시연 영상
![HeadSpaceFocus(Navigation)](https://user-images.githubusercontent.com/77199797/177693983-8beed926-f909-40ce-bbb8-a61c41819652.gif)

# 13. Combine

## 3가지 주요 컴포넌트
* Publisher
  * 생산자, 배출자, 크리에이터, 배설자 
* Subscriber
  * 소비자, 구독자, 받는사람
* Operator
  * 가공하는사람, 변경시키는 사람, 편집자

## Publisher
* 데이터를 배출함
  * 구체적인 output 및 실패 타입을 정의
  * Subscriber가 요청한 것 만큼의 데이터를 제공
* 빌트인 Publisher인 **Just**, **Future**
  * Just 는 값을 다룸
  * Future는 Function을 다룸
* iOS에서 자동으로 제공해주는 Publisher
  * Notification Center
  * Timer
  * URLSession.dataTask

### Subject
* **send(_:)** 메서드를 이용해 이벤트 값을 주입시킬 수 있는 퍼블리셔
* 기존의 비동기처리 방식에서 Combine으로 전환시 유용
* 2가지 빌트인 타입
  * **PaththoughSubject**
    * Subscriber가 값을 요청하면, 그때 부터 받은 값을 전달
    * 전달한 값을 들고 있지 않음
  * CurrentValueSubject
    * Subscriber가 값을 요청하면, 최근에 가지고 있던 값을 전달하고 그때 부터 받은 값을 전달
    * 전달한 값을 들고 있음
    * 최초 선언시 기본 값을 선언해주어야 함

### @Published
* **@Published** 로 선언된 프로퍼티를 퍼블리셔로 만들어줌
* 클래스에 한해서 사용됨 (구조체 불가)
* **$**를 이용해서 퍼블리셔에 접근할 수 있음

```swift
import Foundation
import Combine

// MARK: Published

final class SomeViewModel {
    @Published var name: String = "Jack"
    var age: Int = 20
}

final class Label {
    var text: String = ""
}

let label = Label()
let vm = SomeViewModel()
print("text: \(label.text)")
// text:

vm.$name.assign(to: \.text, on: label)
print("text: \(label.text)")
// text: Jack

vm.name = "Jason"
print("text: \(label.text)")
// text: Jason
```

## Subscriber
* Publisher 에게 데이터 요청을 하는 역할
* Input, Failure 타입 정의 필요
* Publisher를 구독 후, 갯수를 요청
* 파이프라인 취소 가능
* 빌트인 Subcriber인 **asign**, **sink**
  * assign은 Publisher가 제공한 데이터를 특정 객체의 KeyPath에 할당
  * sink는 Publisher가 제공한 데이터를 받을 수 있는 클로저를 제공

## Subscription
* Publihser와 Subscriber가 연결됨을 나타냄
  * 즉, Publisher가 발행한 구독 티켓과 같음
  * Subscription이 있으면, 데이터를 받을 수 있음
  * Subscription이 사라지면, 구독 관계도 사라짐
* **Cancellable** 프로토콜을 채택
  * 즉, Subscription을 통해 연결을 Cancel 할 수 있음

## Operator
* Publisher에게 받은 값을 가공해서 Subscriber 에게 제공
* Input, Output, Failure type을 받는 타입이 다를 수 있음
* ex) map, filter, reduce, compactMap, collect, combineLatest ...

## Scheduler
* Scheduler는 언제, 어떻게 클로져를 실행할지 결정
* Operator에서 Scheduler를 파라미터로 받는 경우가 있음
  * 즉, 작업에 따라서 백그라운드 혹은 메인스레드에서 작업이 실행될 수 있게 도와줌
* Scheduler가 스레드 자체는 X

### 2가지 Scheduler 메서드
* subscribe(on:)
  * Publisher가 어느 스레드에서 수행할 지 결정
  * 무거운 작업은 메인스레드가 아닌 다른스레드에서 작업할 수 있게 도와줌
    * ex) 백그라운드 계산이 많이 필요할 때
    * ex) 파일을 다운로드 하는 경우
* receive(on:)
  * Operator, Subscriber가 어느 스레드에서 수행할 지 결정해주는 것
  * UI 업데이트 필요한 데이터를 메인스레드에서 받을 수 있게 도와줌
    * ex) 서버에서 가져온 데이터를 UI 업데이트 할 때

# 14. 애플 프레임워크 리스트 (Combine)
## 핵심기능
1. 기존의 애플 프레임워크 리스트 (모달)을 Combine으로 리팩토링

## 회고
* Combine 없이 기존의 방법으로도 비동기 프로그래밍을 적용할 수 있지만 Combine을 쓰면 보다 깔끔하고 직관적이게 처리할 수 있음
* Combine을 직접 적용하는 방법에 대해 알게되었음
* [weak self], [unowned self]에 대해 알게되었음
* 배운점
  * ARC
    * Swift의 메모리 관리는 ARC에 의해 처리되는데, 더 이상 필요하지 않은 클래스의 인스턴스에 사용되는 메모리를 해제하기 위해 사용됨
    * property에 부모 뷰 컨트롤러에 대한 참조를 저장하는 자식 뷰 컨트롤러가 있는 경우 순환 참조를 방지하기 위해 속성을 weak 또는 unowned 키워드로 표시해야함
  * [unowned self]
    * unowned는 순환참조를 피할 수 있게 하는 과정에서 self를 옵셔널 강제 언래핑하고, 할당이 해제된 후에도 내용에 접근하려고 하기 때문에 안전하지 않은 방법
  * [weak self]
    *  weak는 순환참조를 피할 수 있게 하는 과정에서 self를 옵셔널로 만듬
    * unowned 보다 보다 안전한 방법
    * 옵셔널 체이닝 self?. 를 사용할 수도 있지만 guard let 구문인 guard self = self else { return } 구문을 많이 사용함

## 사용기술
* Swift
* Storyboard
* Combine

# 15. Network In iOS
## 핵심기능
1. Network에 대한 이해
2. URLSession에 대한 공부

## 회고
* 어느 스레드에서 작업을 해야할 지 이해를 하게 되었음.
    * Main-Thread: UI관련 및 사용자 인터렉션을 받는 작업 수행
        * 데이터 화면에 출력
        * 버튼 클릭 이벤트 감지
    * Backgroud: MainThread 외의 작업
        * 네트워크에더 데이터를 다운 받는 경우
    * Custom: 지정된 스레드를 통해서 작업하는 경우
        * 카메라를 통해서 들어온 영상데이터 가공시
        * 오디오 데이터 변조 등
* URLSeesion에 대해 이해하였음
    * URLSession
        * URLSessionConfiguration
            * .default
                * 기본 구성 체계
            * .ephemeral
                * 캐시, 쿠키, 인증서 등 정보들을 저장하지 않음
            * .background
                * http, https 업로드 또는 다운로드가 백그라운드에서 수행되도록 허용
        * URLSession
            * URLConfiguration을 보고 세션을 생성함

## 사용기술
* Swift
* URLSession
* Combine
