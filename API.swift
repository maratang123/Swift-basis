import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        callAPI()
    }
    func callAPI() {
            // Define the base URL and endpoint
            let baseUrl = "https://api.odcloud.kr/api"
            let endpoint = "/15096638/v1/uddi:718fc83f-ef5d-41b0-9290-afbe366ad802"
            
            // Define the encoded service key
            let encodedServiceKey = "UpfqWJ2ndjX8pNgvbaFqVAiEwDS2Wp6aePnzNfHT5uXlMiLSaBWI1kDzQhX1Zo3%2F3N%2FMSHd4XraJHESgALCkWA%3D%3D"
            
            // Create URL
            guard var urlComponents = URLComponents(string: baseUrl + endpoint) else {
                print("Invalid URL")
                return
            }
            
            // Define query parameters
            let parameters: [String: String] = [
                "serviceKey": encodedServiceKey,
                "page": "1",
                "perPage": "10"
            ]
            
            urlComponents.queryItems = parameters.map { URLQueryItem(name: $0.key, value: $0.value) }
            
            guard let url = urlComponents.url else {
                print("Invalid URL")
                return
            }
            
            // Create URL request
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            
            // Execute API request
            let task = URLSession.shared.dataTask(with: request) { [weak self] data, response, error in
                guard let self = self else { return }
                
                // Handle errors
                if let error = error {
                    print("Error: \(error)")
                    DispatchQueue.main.async {
                        self.resultLabel.text = "API 호출 오류: \(error.localizedDescription)"
                    }
                    return
                }
                
                // Validate HTTP response
                let httpResponse = response as? HTTPURLResponse
                print(httpResponse?.statusCode)
                
               
                
                // Process the response data
                if let data = data {
                    print(httpResponse?.)
                    do {
                        let decoder = JSONDecoder()
                        let apiResponse = try decoder.decode(ApiResponse.self, from: data)
                        print("Response: \(apiResponse)")
                        
                        // Update the UI on the main thread
                        DispatchQueue.main.async {
                            self.resultLabel.text = "API 호출 결과: 성공"
                        }
                    } catch {
                        print("Decoding error: \(error)")
                        DispatchQueue.main.async {
                            self.resultLabel.text = "API 응답 디코딩 오류"
                        }
                    }
                }
            }
            
            // Start the task
            task.resume()
        }
        
        // Define the response structure
        struct ApiResponse: Codable {
            let page: Int
            let perPage: Int
            let totalCount: Int
            let currentCount: Int
            let matchCount: Int
            let data: [PetFriendlyTouristSpot]
        }
        
        struct PetFriendlyTouristSpot: Codable {
            let 업체구분: String
            let 업체명: String
            let 지번주소: String
            let 도로명주소: String
            let 위도: String
            let 경도: String
            let 연락처: String
        }
    }
    

