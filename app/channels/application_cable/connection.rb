# module ApplicationCable
#   class Connection < ActionCable::Connection::Base
#   end
# end
module ApplicationCable
	class Connection < ActionCable::Connection::Base
		# identified_by :current_user

		def connect
			# self.current_user = find_verified_user
		end

		private
			# def find_verified_user
			# 	token = request.headers[:token] || request.params[:token]
			# 	if token
			# 		verified_user = ::AccountBlock::Account.find_by(id: ::BuilderJsonWebToken.decode(token).id)
			# 		#===============stock===================
			# 		# if request.params["stock_ids"].present?
			# 		# 	request.params["stock_ids"].join("").split(",").each do |stock_id|
			# 		# 		BxBlockStockSubscription::StockSubscription.where(account_id: verified_user.id).destroy_all
			# 		# 		stock_subscription = BxBlockStockSubscription::StockSubscription.new(stock_company_id: stock_id,account_id: verified_user.id)
			# 		# 		stock_subscription.save
			# 		# 	end
			# 		# end
			# 		verified_user
			# 	else
			# 		# verified_user = ::AccountBlock::Account.first
			# 		reject_unauthorized_connection
			# 	end
			# end
	end
end
