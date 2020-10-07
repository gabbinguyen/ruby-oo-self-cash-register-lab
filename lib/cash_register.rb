require 'pry'

class CashRegister 
    attr_accessor :items, :total, :discount, :quantity, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        end

    def add_item(title, price, quantity = 1)
        @quantity = quantity
        self.total = @total + price * quantity
        quantity.times do  
            items << title
        end
        self.last_transaction = price * quantity
    end

    def apply_discount
        if discount == 0 
            p "There is no discount to apply."
        else
            self.total = (@total - (@total * (@discount.to_f / 100)))
         p "After the discount, the total comes to $#{self.total.to_i}." 
        end
    end

    def void_last_transaction 
        self.total = self.total - self.last_transaction
    end

end
