ACCOUNTS = [
  {
    holder_name: "Jay",
    amount: 55,
    type: "business"
  },
  {
    holder_name: "Rick",
    amount: 1,
    type: "personal"
  },
  {
    holder_name: "Keith",
    amount: 500,
    type: "business"
  },
  {
    holder_name: "Valerie",
    amount: 100,
    type: "personal"
  },
  {
    holder_name: "Michael",
    amount: 5,
    type: "personal"
  },
  {
    holder_name: "Kate",
    amount: 2000,
    type: "business"
  },
  {
    holder_name: "Tony",
    amount: 150,
    type: "personal"
  },
  {
    holder_name: "Sandy",
    amount: 4500,
    type: "business"
  },
]

def number_of_bank_accounts()
  ACCOUNTS.length
end

def first_bank_account_holder()
  ACCOUNTS[0][:holder_name]
end

def print_owner_names()
  for account in ACCOUNTS
    puts "Owner: #{account[:holder_name]}"
  end
end

def total_cash_in_bank()
  total = 0
  for account in ACCOUNTS
    total += account[:amount]
  end
  total
end

def last_bank_account_holder()
  ACCOUNTS.last[:holder_name]
end

def average_bank_account_value()
  total_cash_in_bank() / ACCOUNTS.size
end

def get_accounts_by_type(type)
  ACCOUNTS.select { |account|  account[:type] == type } 
end

def total_business_account_value()
  total = 0
  for account in get_accounts_by_type('business')
    total += account[:amount]
  end
  total
end

def largest_of_accounts(accounts)
  largest_account = accounts[0]
  for account in accounts
    if account[:amount] > largest_account[:amount]
      largest_account = account
    end
  end
  largest_account
end

def largest_bank_account()
  largest_of_accounts(ACCOUNTS)
end

def largest_personal_bank_account()
  largest_of_accounts(get_accounts_by_type('personal'))
end

def get_holders_account(holder)
  for account in ACCOUNTS
    if account[:holder_name].downcase == holder.downcase
      return account
    end
  end
  return nil
end

def view_bank_account(holder)
  account = get_holders_account(holder)
  puts "ACCOUNT - #{account[:holder_name]}"
  puts "====================================="
  puts "Holder:\t\t#{account[:holder_name]}"
  puts "Balance:\t#{account[:amount]}"
  puts "Type:\t\t#{account[:type]}"
  puts "====================================="
end