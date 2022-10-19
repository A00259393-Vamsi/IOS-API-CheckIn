//
//  SWAPI_Helper.swift
//  swapi
//
//  Created by Cambrian on 2022-09-20.
//

import Foundation

class SWAPI_Helper{
    static private let urlStringContests = "https://kontests.net/api/v1/all";
    static private let urlStringCurrency = "https://cdn.jsdelivr.net/gh/fawazahmed0/currency-api@1/latest/currencies.json";
	static private let urlStringJobs = "https://www.arbeitnow.com/api/job-board-api";
	
    static private let session: URLSession = {
        let config = URLSessionConfiguration.default
        return URLSession(configuration: config)
    }()
    
    static public func fetchDir(){
        print(#function)
        guard
            let url = URL(string: urlStringContests)
        else{
            preconditionFailure("was not able to convert string to url: \(urlStringContests)")
        }
        
        let request = URLRequest(url: url)
        let task = session.dataTask(with: request) {
            data, response, error in
            
            if let data = data {
                do{
                    let jsonData = try JSONSerialization.jsonObject(with: data)
                    
                    print(jsonData)
                }catch let err{
                    print("\(err)")
                }
            } else if let error = error {
                print("error with data task, fetchDir: \(error)")
            } else {
                print("something went wrong when fetching the directory: \(String(describing: response))")
            }
        }
        task.resume()
    }
	
	static public func fetchCurrency(){
        print(#function)
        guard
            let url = URL(string: urlStringCurrency)
        else{
            preconditionFailure("was not able to convert string to url: \(urlStringCurrency)")
        }
        
        let request = URLRequest(url: url)
        let task = session.dataTask(with: request) {
            data, response, error in
            
            if let data = data {
                do{
                    let jsonData = try JSONSerialization.jsonObject(with: data)
                    
                    print(jsonData)
                }catch let err{
                    print("\(err)")
                }
            } else if let error = error {
                print("error with data task, fetchDir: \(error)")
            } else {
                print("something went wrong when fetching the directory: \(String(describing: response))")
            }
        }
        task.resume()
    }
	
	static public func fetchJobs(){
        print(#function)
        guard
            let url = URL(string: urlStringJobs)
        else{
            preconditionFailure("was not able to convert string to url: \(urlStringJobs)")
        }
        
        let request = URLRequest(url: url)
        let task = session.dataTask(with: request) {
            data, response, error in
            
            if let data = data {
                do{
                    let jsonData = try JSONSerialization.jsonObject(with: data)
                    
                    print(jsonData)
                }catch let err{
                    print("\(err)")
                }
            } else if let error = error {
                print("error with data task, fetchDir: \(error)")
            } else {
                print("something went wrong when fetching the directory: \(String(describing: response))")
            }
        }
        task.resume()
    }
}
