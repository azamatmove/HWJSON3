//
//  ViewController.swift
//  HWJSON3
//
//  Created by Azamat Sarinzhiev on 20/1/22.
//


import UIKit

class CafeModel: Codable {
    var cafe: [Cafe] = []
}
class Cafe: Codable {
    var title: String? = nil
    var id: Int? = nil
    var image: String? = nil
    var bord: [BordSub] = []
}
class BordSub: Codable {
    var id: Int? = nil
    var title: String? = nil
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let json = """
        
        {
          "cafe" : [
            {
              "title": "test1",
              "id": 1,
              "image": "URL",
              "bord": [
                {
                  "id": 1,
                  "title": "test"
                },
                {
                  "id": 2,
                  "title": "test"
                }
              ]
            },
            {
              "title": "test1",
              "id": 1,
              "image": "URL",
              "bord": [
                {
                  "id": 1,
                  "title": "test"
                },
                {
                  "id": 2,
                  "title": "test"
                }
                ]
            },
            {
              "title": "test1",
              "id": 1,
              "image": "URL",
              "bord": [
                {
                  "id": 1,
                  "title": "test"
                },
                {
                  "id": 2,
                  "title": "test"
                }
              ]
            },
            {
              "title": "test1",
              "id": 1,
              "image": "URL",
              "bord": [
                {
                  "id": 1,
                  "title": "test"
                },
                {
                  "id": 2,
                  "title": "test"
                }
                ]
            },
            {
              "title": "test1",
              "id": 1,
              "image": "URL",
              "bord": [
                {
                  "id": 1,
                  "title": "test"
                },
                {
                  "id": 2,
                  "title": "test"
                }
              ]
            }
          ]
        }


        """
        let model = try! JSONDecoder().decode(CafeModel.self, from: Data(json.utf8))
        dump(model)
    }


}




