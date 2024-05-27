//
//  ViewController.swift
//  PickerView
//
//  Created by starlike_yejin on 5/21/24.
//

import UIKit

class ViewController: UIViewController,UIWebViewDelegate,UIPickerViewDataSource {
    let MAX_ARRAY_NUM = 10
    let PICKER_VIEW_COLUMN = 1
    var imageFileName = ["1.jpg"]

    @IBOutlet var pickerImage: UIPickerView!
    @IBOutlet var lblImagefileName: UILabel!
    
    @IBOutlet var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }//피커뷰에게 컴포넌트의 수를 정수 값르로 넘겨주는 델리게이트 메서드 입니다.피커뷰의 컴포넌트는 피커뷰에 표시돠는 열의 개수를 의미합니다.여기서는PICKER_VIEW_COLUMN   의 값이 1을 넘겨줍니다
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
    //numberOfRowsInComponent 인수를 가지는 델리게이트 메서드 입니다.피커뷰에게 컴포넌트 열의 개수를 정수 값으로 넘겨줍니다.이 ㅏㄱㅅ은 피커뷰의 해당 열에서 선택할 수 있는 행의 개수
        
    func pickerView(_pickerView: UIPickerView,titleForRow row: Int, forComponent component:Int)-> String?{
            return imageFileName[row]
        }
    }
//
//  ViewController.swift
//  PickerView
//
//  Created by starlike_yejin on 5/21/24.
//

import UIKit

class ViewController: UIViewController,UIWebViewDelegate,UIPickerViewDataSource {
    let MAX_ARRAY_NUM = 10
    let PICKER_VIEW_COLUMN = 1
    var imageFileName = ["1.jpg"]

    @IBOutlet var pickerImage: UIPickerView!
    @IBOutlet var lblImagefileName: UILabel!
    
    @IBOutlet var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }//피커뷰에게 컴포넌트의 수를 정수 값르로 넘겨주는 델리게이트 메서드 입니다.피커뷰의 컴포넌트는 피커뷰에 표시돠는 열의 개수를 의미합니다.여기서는PICKER_VIEW_COLUMN   의 값이 1을 넘겨줍니다
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
    //numberOfRowsInComponent 인수를 가지는 델리게이트 메서드 입니다.피커뷰에게 컴포넌트 열의 개수를 정수 값으로 넘겨줍니다.이 ㅏㄱㅅ은 피커뷰의 해당 열에서 선택할 수 있는 행의 개수
        
    func pickerView(_pickerView: UIPickerView,titleForRow row: Int, forComponent component:Int)-> String?{
            return imageFileName[row]
        }
    }






