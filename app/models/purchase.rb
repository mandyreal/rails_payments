class Purchase < ApplicationRecord
	def to_param
		uuid
	end

	def email_purchaser
		PurchaseMailer.purchase_receipt(self) .deliver
	end
end
