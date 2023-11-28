class UserStatsJob < ActiveJob::Base
  queue_as :default
  def perform(id)
    Article.find(id).update(title: Time.now.to_s)
    Article.create(title: Time.now.to_s)
  end
end

# yese job set hoti hai

# UserStatsJob.set(wait: 10.seconds).perform_later(1)
