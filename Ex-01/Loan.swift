//
//  Loan.swift
//  Ex-01
//
//  Created by Parikh Dhruvin S. on 3/21/18.
//  Copyright © 2018 Parikh Dhruvin S. All rights reserved.
//
//Create a super class Loan
public class Loan{

//Loan number, customer name, yearly interest rate, loan amount and duration(time period) as stored properties
public var loan_number:Int=0
public var customer_name: String=""
//public var interest_rate: Double=0.0
//public var loan_balance: Double=0.0
//public var duration: Int=0

//initializer for appropriate value
public init(loan_number: Int,customer_name: String,interest_rate: Double,loan_balance: Double,duration: Int) {
    self.loan_number=loan_number
    self.customer_name=customer_name
    //Interest rate should be positive and between 0.0 and 4.0%
    if (interest_rate >= 0 && interest_rate <= 4.0) {
    self.interest_rate=interest_rate
    }
   //loan balance should not be negative
    if(loan_balance >= 0){
    self.loan_balance=loan_balance
    }
    if(duration >= 0 && duration <= 7){
    self.duration=duration
    }
}
    //initializer for default values
    public init() {
        self.loan_number=0
        self.customer_name=""
        self.interest_rate=1
        self.loan_balance=0.0
        self.duration=1
    }
    //convenience initialier for loan number and customer name
    public convenience init(loan_number: Int, customer_name:String){
        self.init(loan_number: loan_number, customer_name: customer_name, interest_rate: 1.0, loan_balance: 0.0, duration: 1)
    }
    
//property observers for interest_rate, loan_balance amd duration
    public var interest_rate: Double = 0.0 {
        willSet{
            print("Setting interest rate to \(newValue)")
        }
        didSet{
            if(interest_rate < 0.0 || interest_rate > 4.0){
                self.interest_rate=oldValue
                print("invalid interest rate : it should be between 0.0 and 4.0, resetting to \(oldValue)")
            }
        }
    }
    
    public var loan_balance: Double = 0.0 {
        willSet{
            print("Setting loan amount to \(newValue)")
        }
        didSet{
            if(!(loan_balance >= 0)){
                self.loan_balance=oldValue
                print("balance should be non negative, resetting to \(oldValue)")
            }
        }
    }
    
    public var duration: Int = 0{
        willSet{
            print("Setting duration to \(newValue) years")
        }
        didSet{
            if(!(duration >= 0 && duration <= 7)){
                self.duration=oldValue
            print("Duration has to be less than 7 years and non negative , resetting to \(oldValue)")
            }
        }
    }
    
    //Define a Print as computed property which display all the instance data menber's value of loan object
    
    public var Print: String{
        return "Loan number : " + String(self.loan_number) + ", customer name : " + String(self.customer_name) +
            ", interest rate : " + String(self.interest_rate) + ", loan amount : " + String(self.loan_balance) + ", duration : " + String(self.duration) + " year/s"
    }
    
    public func CalculateMonthlyInstallment() -> Double {
        return 0.0
    }
}

