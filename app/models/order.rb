belongs_to :user

class Order < ApplicationRecord
  
  #...
  def total_in_cents
  total * 100
  end
  
  def create_payment(pm_code, token)
  payments << Payment.create(
  payment_method_id: PaymentMethod.find_by(code: pm_code).id,
  state: "processing",
  total: total,
  token: token
  )
  end
  
  def complete!
  update_attributes({state: "completed"})
  end
end

