# Dhruvin-Parikh_ITS5414_MidTerm
Swift midterm Superclass Loan and subclass carloan

The submission confirmation number is eb25fa31-942d-4baf-8e14-94c3c163c0d0.

Do the following using Xcode project:
Create a superclass Loan(store in a seperate file - Loan.swift) which is having following
-Loan number, customer, yearly interest rate, loan amount and duration(time period) as stored properties
-Loan balance should be non-negative
-Interest rate should be positive and between 0.0 and 4.0%
-You need to define property observers - didSet for interest rate, loan amount and time duration. time duration cannot be more than 7 years
-Define a Print as computed property which display all instance data member's values of loan object
-Define three initializers, one which initializes all the properties to their default values and one which initializes to appropriate values and third one is convenience one which only initializes loan number and customer name
-Define one method - CalCulateMonthlyInstallment() -> Double which is used for calculating the monthly installment on the loan amount based on the rate and time. SInce Loan is super class, here you can make it return zero as monthly installment

Create a subclass CarLoan from superclass Loan(store it in seperate file - CarLoan.swift) and add the following in there:
-downPayment property and add a didSet property observer to it. Down payment should be minimum 2000.00 or more
-One conveninence initializer which initializes (provides values for) loan number, customer name, loan amount, yearly interest rate , time and downpayment
-Overriding CalculateMonthlyInstalment() -> Double property to return monthly installment
-mention deinit
