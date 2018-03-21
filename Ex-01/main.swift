//
//  main.swift
//  Ex-01
//
//  Created by Parikh Dhruvin S. on 3/21/18.
//  Copyright © 2018 Parikh Dhruvin S. All rights reserved.
//

import Foundation

print("---Testing in ideal conditions---")
let carLoan1 = CarLoan(loan_number: 123, customer_name: "Dhruvin", interest_rate: 5.0, loan_balance: 25000, duration: 5, downPayment: 500)
print(carLoan1.Print)
print("Monthly installment : $",carLoan1.CalculateMonthlyInstallment())

print()
print("---Testing in invalid vlues---")
let carLoan2 = CarLoan(loan_number: 456, customer_name: "Parikh")
carLoan2.interest_rate=6
carLoan2.loan_balance=20000
carLoan2.downPayment = 1200
carLoan2.duration=8
print(carLoan2.Print)



