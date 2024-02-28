//
//  JokesViewModel.swift
//  FunnyFeed
//
//  Created by yekta on 28.02.2024.
//

import Foundation
import Alamofire
class JokesViewModel:ObservableObject{
    @Published var jokes = [Value]()
    init(){
        getJokes()
    }
    func getJokes(){
        AF.request("https://raw.githubusercontent.com/atilsamancioglu/JokesAppJsonData/main/chuck.json", method: .get).responseDecodable(of:Welcome.self) { response in
            switch response.result{
            case .success(let data):
                let value = data.value
                self.jokes += value
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func getNewJoke() {
        AF.request("https://api.chucknorris.io/jokes/random", method: .get).responseDecodable(of: Jokes.self) { response in
            switch response.result {
            case .success(let jokeData):
                DispatchQueue.main.async {
                    let newValue = Value(id:(self.jokes.last?.id ?? 0)+1, joke: jokeData.value, categories: [])
                    self.jokes.append(newValue)
                }
            case .failure(let error):
                print(error)
            }
        }
    }

    
}
