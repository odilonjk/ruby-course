class Account
    attr_reader :name
    attr_reader :balance
    def initialize(name,balance=100)
        @name = name
        @balance = balance
    end
    def display_balance(pin_number)
        puts pin_number == pin ? "Balance: u$#{@balance}" : pin_error
    end
    def withdraw(pin_number,amount)
        if pin_number != pin
            return pin_error
        else
            case
            when @balance >= amount
                @balance -= amount
                puts "Withdrew u$#{amount}. New balance: u$#{@balance}."
            else
                puts "You don't have this amount."
            end
        end
    end
    private
    def pin
        @pin = 1234
    end
    def pin_error
        puts "Access denied: incorrect PIN."
    end
end

checking_account = Account.new("Lonez",500)
checking_account.display_balance(1234)
checking_account.withdraw(1234,200)
checking_account.display_balance(1234)
