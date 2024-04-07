//
//  File2.swift
//  TestTests
//
//  Created by starlike_yejin on 3/29/24.
//

import Foundation//배열과 딕셔너리,조건문과 반복문

//배열과 딕셔너리 정의
var languages =["Swift","Object-C","Python"]
var capitals=[
    "한국":"서울",
    "일본":"도쿄",
    "중국":"베이징",
]

//배열과 딕셔너리 값에 접근

languages[0] //Swift 결과값 출력
languages[1]="Ruby"

capitals["한국"] //서울 출력
capitals["프랑스"]="파리"

//배열과 딕셔너리 
//배열과 딕셔너리 역시 let으로 정의하면 값을 수정(수정/추가/제거)할 수 없습니다.
//만약 빈 배열이나 딕셔너리를 정의하는 방법은 아래와 같습니다.
var languages: [String] = []
var capitals: [String: String] = [:]

//빈 배열로 선언하는 것을 조금 더 간결하게 하고싶다면, 아래와 같습니다.
var languages = [String]()
var capitals = [String: String]()

//조건문과 반복문
//조건을 검사할때는 if와 swift를 사용합니다
var age=19
var student=""

if age>=8 &&age <14{
    student="초등학생"
} else if age<17{
    student="중학생"
}else if age<20{
    student="고등학생"
}else{
    student="기타"
}

//if 문의 조건절에는 값이 정확하게 참 혹은 거짓으로 나오는 Bool 타입을 사용해야 합니다. Swift는 타입 검사를 매우 엄격하게 하기 때문에, 다른 언어에서 사용 가능한 아래 코드를 사용할 수 없습니다.
var number = 0
if !number {    // Compile Error!
    // ...
}
//대신, 아래와 같이 사용이 가능합니다.
if number == 0 {
    // ...
}


//빈 문자열이나 배열 등을 검사할 때에도 명확하게 길이가 0인지를 검사해야 합니다. .isEmpty 메소드 사용
if name.isEmpty { ... }
if languages.isEmpty { ... }

//swift의 switch문에는 조금 특별한 점이 있습니다. 패턴 매칭을 통해 범위에 포함시킬 수 있습니다.
switch age {
case 8..<14:
    student = "초등학생"
case 14..<17:
    student = "중학생"
case 17..<20:
    student = "고등학생"
default:
    student = "기타"
}
//8..<14와 같이 범위(Range) 안에 age가 포함되어 있는지 검사할 수 있습니다.
//반복되는 연산을 할 때에는 for, while을 사용합니다. for 구문을 사용해서 배열과 딕셔너리를 차례로 순환할 때에는 아래와 같이 사용합니다.

// Array를 for문에서 사용하기
for language in languages {
    print("저는 \(language) 언어를 다룰 수 있습니다.")
}

// Dictionary를 for문에서 사용하기
for (country, capital) in capitals {
    print("\(country)의 수도는 \(capital)입니다.")
}

//간단한 반복문을 만들고 싶다면 범위를 만들어서 반복시킬 수도 있다.
for i in 0..<100 {
    i
}

//만약 i를 사용하지 않는 단순 반복문은 i 대신 _를 사용할 수 있습니다.
for _ in 0..<10 {
    print("Hello!")
}
//_(underscore) 키워드는 어디서나 변수 이름 대신에 사용할 수 있습니다.
//while은 조건문의 값이 true일 때 계속 반복됩니다.
var i = 0
while i < 100 {
    i += 1
}











