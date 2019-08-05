require 'pry'

def consolidate_cart(cart)
  new_cart = []
  i = 0
  binding.pry
  cart.length.times do |index|
    binding.pry
    if new_cart == []
      
      binding.pry
      new_cart[index] = cart[index]
      key = cart[index].keys[0]
      new_cart[index][key][:count] = 1
      i += 1
      binding.pry
      
    else
      binding.pry
      if new_cart[index-i].keys[0] == cart[index].keys[0]
        binding.pry
        key = cart[index].keys[0]
        new_cart[index-i][key][:count] += 1
        i += 1
        binding.pry
      else
        binding.pry
        key = cart[index].keys[0]
        new_cart[index-i][key][:count] = 1
        binding.pry
      end
      binding.pry
    end
  end 
  binding.pry
  return new_cart
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end

cart = [{"AVOCADO" => {:price => 3.00, :clearance => true}}, {"AVOCADO" => {:price => 3.00, :clearance => true}}, {"KALE" => {:price => 3.00, :clearance => false}}]
consolidate_cart(cart)