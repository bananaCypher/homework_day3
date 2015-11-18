require_relative('./bank_accounts_functions')

##number of bank accounts
bank_accounts_count = number_of_bank_accounts()
puts "number of accounts #{bank_accounts_count}"
puts "\n"

###first account owner
first_bank_owner = first_bank_account_holder()
puts "first bank account owner is #{first_bank_owner}"
puts "\n"

###print to screen name of all bank account owners
puts "name of bank acccount owners"
print_owner_names()
puts "\n"

###total cash in bank
total_cash = total_cash_in_bank()
puts "total in bank #{total_cash}"
puts "\n"

###last account owner
last_bank_owner = last_bank_account_holder()
puts "last bank account owner is #{last_bank_owner}"
puts "\n"

###average bank account value
average_account_value = average_bank_account_value()
puts "the average account value is #{average_account_value}"
puts "\n"

###total cash in business accounts
total_in_business = total_business_account_value()
puts "the total cash in business accounts is #{total_in_business}"
puts "\n"

###holder of largest bank account
largest_account = largest_bank_account()
puts "the account holder with the most money is #{largest_account[:holder_name]}"
puts "\n"

###holder of largest personal account
largest_personal_account = largest_personal_bank_account()
puts "the personal account holder with the most money is #{largest_personal_account[:holder_name]}"
puts "\n"

###any other functionality you want to add.


