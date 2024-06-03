//
//  ViewController.swift
//  Alert
//
//  Created by starlike_yejin on 5/30/24.
//

import UIKit

class ViewController: UIViewController {
    
    let imgOn = UIImage(named: "lamp_on 복사본.png")//켜진 전구 이미지를 가지고 있는 uiimage타입의 상수
    let imgOff = UIImage(named: "lamp_off 복사본.png")//꺼진 전구 이미지를 가지고 있는 uiimage타입의 상수
    let imgRemove = UIImage(named: "lamp_on 복사본.png") //제거된 전구 이미지를 가지고 있는...
    //위 3개의 변수는 앱이 종료될 때까지 변하지 않기 때문에 상수로 처리하였습니다.
    
    var isLampOn = true//전구가 켜져있는지의 여부를 나타내는 변수.켜진 상태는 true,꺼진 상태는 false
    
    

    @IBOutlet var lampImg: UIImageView!
    //컨트롤러의 클래스 선언문 아래에 아웃렛 변수 추가해야함
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lampImg.image = imgOn
    }
    
    @IBAction func btnLampOn(_ sender: UIButton) {
        if(isLampOn==true){
            let lampOnAlert = UIAlertController(title: "경고", message:"현재On상태입니다", preferredStyle: UIAlertController.Style.alert)//UIAlertController를 생성합니다.
            
            let onAction = UIAlertAction(title: "네, 알겠습니디", style: UIAlertAction.Style.default, handler: nil)//UIAlertAction을 생선합니다.(특별한 동작을 하지 않는 경우에는 handler을 nil로 합니다.)
            
            lampOnAlert.addAction(onAction)//생성된 onACTION을 얼럿에 추가합니다
            
            present(lampOnAlert, animated:true ,completion:nil)//present 메서드를 실행합니다.
            
        }else{
            lampImg.image = imgOn
            isLampOn=true
            
        }
    }
    
    @IBAction func btnLampOff(_ sender: UIButton) {
        if isLampOn{
            let lampOffAlert = UIAlertController(title: "램프끄기", message: "램프를 끄시겠습니까?", preferredStyle: UIAlertController.Style.alert)
            //uialertcontrollerfmf 를 생성합니다
            
            let offAction = UIAlertAction(title: "네", style: UIAlertAction.Style.default, handler: {ACTION in self.lampImg.image = self.imgOff
                self.isLampOn=false}
            )
            //UIAlertAction 을 생성합니다.전구를 꺼야 하므로 핸들러에 중괄호 {,}를 넣어 추가적으로 작업을 합니다.
            //반드시 self를 넣어야 에러가 발생하지 않습니다
            let cancelAction = UIAlertAction(title: "아니오", style: UIAlertAction.Style.default, handler: nil)
            //uialertactiond을 추가로 생성합니다.특별한 동작을 하지 않을 경우에는 핸들러를 nil로 합니다.
            
            lampOffAlert.addAction(offAction)
            lampOffAlert.addAction(cancelAction)
            //생선된 offaction,cancelaction을 얼럿에 추가합니다.
            
            present(lampOffAlert,  animated: true, completion: nil)//present메서드를 실행합니다.
        }
            
            
            
        
    }
    
    @IBAction func btnLampRemove(_ sender: UIButton) {
        let lampRemoveAlert = UIAlertController(title: "램프제거", message: "램프를제거하시겠습니까?", preferredStyle: UIAlertController.Style.alert)
        //uialertComtroller를 생성합니다.
        
        let offAction = UIAlertAction(title: "아니오, 끕니다(off)", style: UIAlertAction.Style.default, handler: {ACTION in self.lampImg.image = self.imgOff
            self.isLampOn=false
        })
        //uialertaction 을 생성합니다.전구를 꺼야하므로 handler에 {,}를 넣어 추가적으로 작업을 합니다
        
        let onAction = UIAlertAction(title: "아니오, 켭니다(on)", style: UIAlertAction.Style.default){ACTION in self.lampImg.image = self.imgOn
            self.isLampOn=true
        }
        //uialertAction을 추가로 생성합니다.전구를 켜는 동작을 추기합니다.핸들러에 {,}을 넣어 추가 작업을 할 수 있는데,이번에는 핸들러 매개변수를 삭제하고 뒤 쪽에 {,}를 넣는 방법을 이용합니다.두가지 방법 모두 에러없이 동작을 구현합니다.
        
        let removeAction = UIAlertAction(title: "네,제거합니다.", style: UIAlertAction.Style.destructive, handler:{ACTION in self.lampImg.image = self.imgOff
            self.isLampOn=false
        })
        //uialertaction을 추가로 생성한 후 전구를 제거하는 동작을 추가합니다
        
        lampRemoveAlert.addAction(offAction)
        lampRemoveAlert.addAction(onAction)
        lampRemoveAlert.addAction(removeAction)
        
        //생성된 offAction,onAction,removeAction을 얼럿에 추가합니다
        
        present(lampRemoveAlert, animated: true, completion: nil)
        //present 메서드를 실행합니다
        
    }
    
    
}


