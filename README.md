class Dog {
    var name: String?
    var age: Int?

    func simpleDescription() -> String {
        if let name = self.name {
            return "\(name)"
        } else {
            return "No name"
        }
    }
}

struct Coffee {
    var name: String?
    var size: String?

    func simpleDescription() -> String {
        if let name = self.name {
            return "\(name)"
        } else {
            return "No name"
        }
    }
}

var myDog = Dog()
myDog.name = "초코"
myDog.age = 3
print(simpleDescription())  // 초코

var myCoffee = Coffee()
myCoffee.name = "카페라떼"
myCoffee.size = "Venti"
print(myCoffee.simpleDescription()) // 카페라떼



class Animal {
    let numberOfLegs = 4
}

class Dog: Animal {
    var name: String?
    var age: Int?
}

var myDog = Dog()
print(myDog.numberOfLegs)   // Animal 클래스로부터 상속받은 값 4
var dog1 = Dog()    // dog1은 새로 만들어진 Dog()를 참조합니다.
var dog2 = dog1     // dog2는 dog1이 참조하는 Dog()를 똑같이 참조합니다.
dog1.name = "초코"   // dog1의 이름을 바꾸면 Dog()의 이름이 바뀌기 때문에,
print(dog2.name)    // dog2의 이름을 가져와도 바뀐 이름("초코")이 출력됩니다.

var coffee1 = Coffee()  // coffee1은 새로 만들어진 Coffee() 그 자체입니다.
var coffee2 = coffee1   // coffee2는 coffee1을 복사한 값 자체입니다.
coffee1.name = "카페라떼" // coffee1의 이름을 바꿔도
coffee2.name            // coffee2는 완전히 별개이기 때문에 이름이 바뀌지 않습니다.(nil)

