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
  * randomElement를 사용해 랜덤한 요소를 추출할 수는 있지만, 연속으로 같은게 나오게 되면 안누른 것과 동일한 결과이기 때문에 다른 방식으로 구현하는게 사용자 입장에서 더 좋을거라고 생각함
  
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
  * 심볼롤러 프로젝트와 마찬가지로 랜덤한 요소를 추출할 때, 연속으로 같은게 나오게 되면 안누른 것과 동일한 결과이기 때문에 다른 방식으로 구현하는게 사용자 입장에서 더 좋을거라고 생각함

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
