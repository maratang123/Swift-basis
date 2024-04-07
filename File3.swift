//
//  File3.swift
//  TestTests
//
//  Created by starlike_yejin on 3/29/24.
//

import Foundation //Optional<옵셔널>,옵셔널 바인딩
//Swift가 가진 가장 큰 특징 중 하나가 옵셔널(Optional)입니다. 직역하면 '선택적인'이라는 뜻입니다. 이는 값이 있을 수도 있고 없을 수도 있다는 것을 나타냅니다.
//"swift", ""는 값이 있는 것이며 ""는 빈 문자열 입니다. 값이 없는 문자열은 nil입니다.
//정수형의 경우 123, 0은 값이 있는 것입니다. 0도 숫자값이죠. 없는 값의 경우 nil이라고 표현합니다.
//마찬가지로 빈 배열과 빈 딕셔너리라고 해서 '값이 없는' 것이 아닌 '비어 있을' 뿐입니다. 배열과 딕셔너리의 경우에도 '없는 값'은 nil입니다.
//값이 없는 경우 nil을 사용합니다. 하지만 모든 변수에 nil을 넣을 수 있는 것은 아닙니다.

var name:String ="Mark"
name=nil // Compile error

//값이 있을 수도 있고 없을 수도 잇는 변수를 정의할 때는 타입 어노테이션에 ?를 붙여야 합니다. 이렇게 정의한 변수를 옵셔널(Optional)이라고 합니다. 옵셔널에 초깃값을 지정하지 않으면 기본값은 nil입니다.

var email:String?
print(email) // nil

email="pig59777@skuniv.ac.kr"
print(email) // Optional("pig5977@skuniv.ac.kr")

//옵셔널로 정의한 변수는 옵셔널이 아닌 변수와는 다릅니다. 예를 들어, 아래와 같은 코드는 사용할 수 없습니다.
let optionalEmail:String?="pig5977@skuniv.ac.kr"
let requiredEmail:String=optionalEmail//compile error
//requiredEmail 변수는 옵셔널이 아닌 String이기 때문에 항상 값을 가지고 있어야 합니다. 하지만 optionEmail은 옵셔널로 선언된 변수이기 때문에 실제 코드가 실행되기 전까지 값이 있는지 없는지 알 수 없습니다. 따라서 Swift 컴파일러는 안전을 위해 requiredEmail에는 옵셔널로 선언된 변수를 대입할 수 없게 만들었습니다.
//옵셔널은 개념적으로  어떤 값 또는 nil을 가지고 있습니다.


//<옵셔널 바인딩>
//옵셔널의 값을 가져오고 싶은 경우에는 옵셔널 바인딩(Optional Binding)을 사용합니다.
//옵셔널 바인딩은 옵셔널의 값이 존재하는지를 검사한 뒤, 존재한다면 그 값을 다른 변수에 대입시켜줍니다. if let 또는 if var를 사용하며 옵셔널을 벗겨서 값이 있으면(nil이 아니면) if문 안으로 들어가고, 값이 nil이라면 그냥 통과하게 됩니다.
//예를 들어 아래 코드에서 optionalEmail에 값이 존재한다면 email이라는 변수 안에 실제 값이 저장되고, if문 내에서 그 값을 사용할 수 있습니다. 만약 optionalEmail이 nil이라면 if문이 실행되지 않고 넘어갑니다.
if let email =optionalEmail{
    print(email) //optionalEmaoil 값이 존재한다면 해당값이 출력됩니다
    
}
//optionalEmail 의 값이 존재하지 않는다면 if문을 그냥 지나칩니다.

//하나의 if문에서 콤마(,)로 구분하여 여러 옵션을 바인딩할 수 있습니다. 이곳에 사용된 모든 옵셔널의 값이 존재해야 if문 안으로 진입합니다.

var optioanlName:String?="Mark"
var optionalEmail:String?="pig59777@skuniv.ac.kr"

if let name=optionalName, email=optionalEmail{
    //name 과 email 값이 존재
}
//아래의 방법은 위 예시와 같습니다.
if let name=optionalName,
   let email=optionalEmail{
    //name과 email값이 존재
}
//두번째 let 부터는 생략이 가능합니다.
//또한 ,를 사용하여 옵셔널 바인딩이 일어난 후 조건을 검사하게 됩니다.
var optionalAge: Int?=22

if let age=optionalAge,age>=20{
    //age의 값이 존재하고,20 이상입니다.
}

//위 와 동일합니다
if let age=optionalAge{
    age>=20{
        //age 의 값이 존재하고,20 이상입니다.
    }
}


//<옵셔널 체이닝>
//Swift의 옵셔널 체이닝을 사용하면 값이 빈 값을 가지고 있는지 쉽게 확인이 가능합니다. 예시를 살펴봅니다.
//아래 코드는 옵셔널 체이닝을 사용하지 않는 경우입니다.
let array:[String]?=[]
var isEmptyArray=false

if let array=array,array.isEmpty{
    isEmptyArray=true
}else{
    isEmptyArray=false
}
isEmptyArray

//옵셔널 체이닝을 사용하면 이 코드를 더 간결하게 사용가능합니다.
let isEmptyArray=array?.isEmpty==true


//옵셔널 체이닝은 옵셔널의 속성에 접근할 때, 옵셔널 바인딩 과정을 ? 키워드로 줄여주는 역할을 합니다.

//array가 nil인 경우

array?.isEmpty  // array?까지 실행되고 nil을 반환

//array가 빈 배열인 경우

array?.isEmpty  // array?.isEmpty까지 실행되고 `true`를 반환

//array에 요소가 있는 경우

array?.isEmpty  // array?.isEmpty까지 실행되고 `false`를 반환

//위의 결과에서 볼 수 있듯이 결과로 나올 수 있는 값은 nil, true, false가 있습니다.
//isEmpty의 반환값은 Bool인데, 옵셔널 체이닝으로 인해 Bool?을 반환하도록 바뀐 것이죠. 따라서 값이 실제로 true인지 확인하려면, == true를 해주어야 합니다.

//<옵셔널 벗기기>
//옵셔널을 사용할 때마다 옵셔널 바인딩을 하는 것이 가장 바람직합니다.
//하지만 분명히 값이 존재하는 변수임에도 불구하고 옵셔널로 사용해야 하는 경우가 있으며 이때 옵셔널 벗기기를 해야합니다. 옵셔널에 값이 있다고 가정하고 값에 바로 접근할 수 있도록 도와주는 키워드인 !를 붙여서 사용하면 됩니다.
print(optionalEmail)    // optional("hh940630@gmail.com")
print(optionalEmail!)   // hh940630@gmail.com


//!를 사용할 때는 반드시 주의해야합니다. 만약 옵셔널 값이 nil인 경우 런타임 에러가 발생하며 iOS 앱은 강제로 종료(크레시)됩니다.
var optionalEmail: String?
print(optionalEmail!)   // Runtime Error: optionalEmail is nil

//<암묵적으로 벗겨진 옵셔널(Implicitly Unwrapped Optional)>
//만약 옵셔널을 정의할 때 ? 대신 !를 붙이면 ImplicitlyUnwrappedOptional이라는 옵셔널로 정의됩니다. 이를 '암묵적으로 벗겨진 옵셔널'이라고 합니다.
var email: String! = "hh940630@gmail.com"
print(email)    // hh940630@gmail.com

//이렇게 정의된 옵셔널은 nil을 포함할 수 있는 옵셔널이지만, 접근할 때 옵셔널 바인딩이나 옵셔널을 벗기능 과정을 거치지 않고도 값에 바로 접근할 수 있다는 점에서 일반적인 옵셔널과 조금 다릅니다.
//옵셔널 벗기기와 마찬가지로, 값이 없는데 접근을 시도하면 런타임 애러가 발생합니다.
var email: String!
print(email)    // Runtime Error!



