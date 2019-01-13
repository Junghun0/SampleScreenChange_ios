### SampleScreenChange_ios
---
1. 뷰 컨트롤러에서 다른 뷰 컨트롤러를 호출하 화면 전환하기(present)

2. 내비게이션 컨트롤러를 사용하여 화면 전환하기

3. 화면 전환용 객체 세그웨이(Segueway)를 사용하여 화면 전환하기

* 뷰 컨트롤러의 뷰 위에 다른 뷰를 가져와 바꿔치기 하기 ( 하나의 뷰 컨트롤러가 두 개 이상의 루트 뷰를 관리해야 하므로 좋은방법은 아님,
  iOS 에서는 하나의 뷰 컨트롤러 아래에 하나의 루트 뷰를 관리하는 MVC 패턴을 기본으로 함)
  
---
#### 소스코드

1_1. 화면이동
```swift
    @IBAction func presentSecondView(_ sender: Any) {
        guard let secondViewInstance = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") else{
            return
        }
        secondViewInstance.modalTransitionStyle = UIModalTransitionStyle.flipHorizontal
        self.present(secondViewInstance, animated: true, completion: nil)
    }
```
1_2. 뒤로이동
```swift
    @IBAction func presentBackPressed(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
```

2_1. 화면이동
```swift
    @IBAction func naviGoSecond(_ sender: Any) {
        guard let naviSecondview = self.storyboard?.instantiateViewController(withIdentifier: "NavigationSecondView") else{
            return
        }
        self.navigationController?.pushViewController(naviSecondview, animated: true)
    }
```
2_2. 뒤로이동
```swift
    @IBAction func popNavigationVIew(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
```
3_1. 화면이동
 * Storyboard 에서 다른 ViewController 와 연결 -> Action Segue
 * 출발점이 뷰 컨트롤러 자체인 경우 -> Manual Segue

3_2. 뒤로이동
* Storyboard 에서 상단의 Exit 아이콘과 연결(Action Segue)
```swift
    @IBAction func goBackSegue(_ sender: UIStoryboardSegue){
    }
```

    
