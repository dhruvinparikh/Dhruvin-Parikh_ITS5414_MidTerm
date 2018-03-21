//
//  CarLoan.swift
//  Ex-01
//
//  Created by Parikh Dhruvin S. on 3/21/18.
//  Copyright © 2018 Parikh Dhruvin S. All rights reserved.
//
//Create a subclass CarLoan of super class Loan
import Foundation
private var count: Int = 0
public class CarLoan: Loan{
    
    //downPayment property with a didSet property observer and downpayment should be minimum 2000.00 or more
    public var downPayment: Double = 2000.00 {
        willSet{
            print("Setting downpayment to \(newValue)")
        }
        didSet{
            if(!(downPayment >= 2000)){
                self.downPayment=oldValue
                print("Down payment should be 2000.00 or more, resetting it to \(oldValue)")
            }
        }
    }
    //convenience initializer to initialize loan number, customer name, loan amount, interest rate, time and downpayment
    public convenience init(loan_number: Int, customer_name: String, interest_rate: Double, loan_balance: Double, duration: Int,downPayment: Double){
        self.init(loan_number: loan_number, customer_name: customer_name, interest_rate: interest_rate, loan_balance: loan_balance, duration: duration)
        if(downPayment >= 2000.00){
        self.downPayment = downPayment
        }
        count += 1
    }
    
    //Override CalculateMonthlyInstallMent() -> Double to calculate monthly installment. bfore clculating monthly installment, downpayment shoulld be taken into consideration
    
    public override func CalculateMonthlyInstallment() -> Double{
        
        return ((((self.loan_balance-self.downPayment) * self.interest_rate * Double(self.duration))/100) + (self.loan_balance-self.downPayment))/(Double(self.duration) * 12)
    }
    
    //add a deinit
    deinit{
        count -= 1
        print("Loan deinit : \(customer_name), Count : \(count)")
    }
}
