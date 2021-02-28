require 'pry'

class CashRegister

    attr_accessor :total

    # @@all=[]

    def initialize(discount = 0, total=0)
        @total = total 
        @discount = discount
        @all=[]
    end

    def discount=(discount)
        @discount = discount 
    end

    def discount
        @discount
    end
 
    def add_item(title, price, quantity = 1)
        @all = []
        @amount = price * quantity
        @total = @total + @amount
        @all<<title
    end

    def apply_discount
        if discount != 0
        self.total = @total - (self.total * @discount / 100)
         "After the discount, the total comes to $#{self.total}."
        else 
            "There is no discount to apply."
        end
    end
    
    def items
       @all
    end

    def void_last_transaction
        self.total = @total - @amount 
    end





        
    end

    # ex1 = CashRegister.new 
    # ex2 = CashRegister.new

    # binding.pry 