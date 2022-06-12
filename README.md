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