//
//  ViewController.swift
//  App
//
//  Created by even.gabrielsen@vipps.no on 13/10/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var IBcountryNameLbl: UILabel!
    @IBOutlet weak var IBcounrtyCapitalLbl: UILabel!
    @IBOutlet weak var IBnumOfAlternateSpellingsLbl: UILabel!
    @IBOutlet weak var IBinputCounrtyTextfld: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize Norway
        loadCountryData(fromCountry: "Norway")
    }
    
    // Load data for specified country & update labels
    func loadCountryData(fromCountry country: String) {
        let url = "https://restcountries.com/v2/name/\(country)"
        URLSession.shared.dataTask(with: URL(string: url)!) { data, res, err in
            
            // Continue only if we have data and no errors
            guard let data = data, err == nil else {
                print("Det oppstod et problem")
                print(err)
                return
            }
            
            var result: [CountryInfo]?
            
            do {
                // Decode data to CountryInfo
                result = try JSONDecoder().decode([CountryInfo].self, from: data)
            } catch {
                print("Error: ", err)
            }
            
            guard let json = result else { return }
            
            // Update labels on main thread
            DispatchQueue.main.async {
                self.IBcountryNameLbl.text = "Country name: \n \(json[0].name)"
                self.IBcounrtyCapitalLbl.text = "Country capital: \n \(json[0].capital)"
                self.IBnumOfAlternateSpellingsLbl.text = "Number of alternate spellings: \n \(String(json[0].altSpellings.count))"
            }
            
        }.resume() // Start urlsession-task
        
    }

    
    @IBAction func submitBtnPressed(_ sender: Any) {
        guard let searchTerm = IBinputCounrtyTextfld.text else { return }
        loadCountryData(fromCountry: searchTerm)
    }
}

struct CountryInfo: Codable {
    let name: String
    let capital: String
    let altSpellings: [String]
}
