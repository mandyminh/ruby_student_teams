
class Account

	def initialize(acct_num, name, balance)
		@acct_num = acct_num + 1
		@name = name
		@balance = balance
	end

	def account_num
		@acct_num
	end

	def name
		@name
	end

	def balance
		@balance
	end

	def deposit(amount)
		@balance = @balance + amount
	end

	def withdrawal(amount)
		@balance = @balance - amount
	end

end

def main
	puts "Welcome to Goliath National Bank."

	account_num = 0

	saved_accounts = []

	main_menu(account_num,saved_accounts)
end

def main_menu(account_num,saved_accounts)
	puts "Please select an option from the following:"
	puts "------------------------"
	puts "1. Create New Account"
	puts "2. View Existing Account"
	puts "3. End Session"

	choice = gets.chomp.to_i

	if choice == 1
		puts `clear`
		new_account(account_num,saved_accounts)
	elsif choice == 2
		puts `clear`
		view_account(account_num,saved_accounts)
	elsif choice == 3
		puts `clear`
		end_session
	else
		puts "Not a valid choice."
		puts `clear`
		main_menu(account_num,saved_accounts)
	end
end

def new_account(account_num,saved_accounts)
	puts "Thank you for opening an account with us."
	puts "What's your name?"
	name = gets.chomp
	puts "How much would you like to initially deposit?"
	initial_dep = gets.chomp.to_f

	new_account = Account.new(account_num,name,initial_dep)
	saved_accounts.push(new_account)
	account_num += 1

	puts "New Account Info:"
	puts "-----------------"
	puts "Account #: #{new_account.account_num}"
	puts "Name on Account: #{new_account.name}"
	puts "Account Balance: $" + '%.2f'%new_account.balance
	puts ""

	return_to_main_menu(account_num, saved_accounts)
end

def view_account(account_num,saved_accounts)
	print "Please give me your account number: "
	user_account = gets.chomp.to_i

	saved_accounts.each do |account|
		if account.account_num == user_account
			puts "Name on account: #{account.name}"
			puts "Account balance: $" + '%.2f'%account.balance
		end
	end

	view_account_menu(account_num,saved_accounts,user_account)	
end

def view_account_menu(account_num,saved_accounts,user_account)
	puts "What would you like to do with your account?"
	puts "-------------------------"
	puts "1. Make a Withdrawal"
	puts "2. Make a Deposit"
	puts "3. Return to Main Menu"

	choice = gets.chomp.to_i

	if choice == 1
		make_withdrawal(account_num,saved_accounts,user_account)
	elsif choice == 2
		make_deposit(account_num,saved_accounts,user_account)
	elsif choice == 3
		main_menu(account_num,saved_accounts)
	else
		puts "Not a valid option."
		view_account_menu(account_num,saved_accounts,user_account)
	end
end

def return_to_main_menu(account_num,saved_accounts)
	print "Return to Main Menu? [y/n] "
	choice = gets.chomp.downcase

	if choice == "y"
		puts `clear`
		main_menu(account_num,saved_accounts)
	elsif choice == "n"
		puts `clear`
		end_session
	else
		puts "Not a valid choice."
		puts `clear`
		return_to_main_menu(account_num,saved_accounts)
	end
end

def make_withdrawal(account_num,saved_accounts,user_account)
	puts "How much would you like to withdrawal?"
	print "$"
	amount = gets.chomp.to_f

	saved_accounts.each do |account|
		if account.account_num == user_account
			if amount > account.balance
				puts "Sorry, you ain't got that much dough."
				puts "Try again."
				make_withdrawal(account_num,saved_accounts,user_account)
			else
				account.withdrawal(amount)
				puts "New account balance: $" + '%.2f'%account.balance
			end
		end
	end

	account_menu_return(account_num,saved_accounts,user_account)
end

def make_deposit(account_num,saved_accounts,user_account)
	puts "How much would you like deposit?"
	print "$"
	amount = gets.chomp.to_f

	saved_accounts.each do |account|
		if account.account_num == user_account
			account.deposit(amount)
			puts "New account balance: $" + '%.2f'%account.balance
		end
	end

	account_menu_return(account_num,saved_accounts,user_account)
end

def account_menu_return(account_num,saved_accounts,user_account)
	print "Return to Account Menu? [y/n] "
	choice = gets.chomp.downcase

	if choice == "y"
		puts `clear`
		view_account_menu(account_num,saved_accounts,user_account)
	elsif choice == "n"
		puts `clear`
		end_session
	else
		puts "Not a valid choice."
		puts `clear`
		account_menu_return(account_num,saved_accounts,user_account)
	end
end

def end_session
	puts "Thanks for banking with us!"
	puts "Goodbye."
end

main