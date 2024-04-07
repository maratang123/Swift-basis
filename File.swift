//
//  File.swift
//  TestTests
//
//  Created by starlike_yejin on 3/29/24.
//

import Foundation//변수와 상수,정적 타이핑,타입추론

var name="Yejin Choi" //변수 var
let birthyear=2001    //상수 let

name="Min"
birthyear=1996

var name: String = "Mark"
let birthyear: Int = 1994
var height: Float = 180.3

//swift는 정적 타입핑 언어.즉 변수나 상수를 정의할 때 그 자료형 타입이 어떤 것인지를 명시해주어야함 :Stirng :Int :Float 등 타입을 다른 자료형끼리 기본적인 연산조차 되지 않는다. ex)birthyear+hight//compile error

Float(birthyear)+height //2174.3

//해결 방법은 강제로 위와 같이 형을 변환하여 사용하는 것입니다.

String(birthyear) + "년에 태어난 " + name + "아 안녕!"   //Swift에서 문자열에 변수를 넣는 방법은 위와 같다.1994년에 태어난 Mark야 안녕!

"\(birthyear)에 태어난 \(name)아 안녕!"
//더 간결한 작성법은 이것과 같다.

//맨 처음에 사용한 예제에서 자료형을 명시하지 않았는데도 name이 문자열이라는 것을 알았으며 birthyear가 정수형이라는 것을 알았습니다.
var name = "Hwang Hyun"
let birthyear = 1994
//이게 어떻게 가능할까요?
//Swift는 큰 따옴표("")로 감싸진 텍스트는 String 타입인 것을 알고, 숫자는 Int 타입인 것을 추론합니다. 이 처럼 타입을 직접 명시하지 않아도 정적 타입핑을 할 수 있게 해주는 것을 타입 추론(Type Inference)라고 합니다.









