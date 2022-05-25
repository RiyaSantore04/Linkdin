class GuestsCleanupJob < ApplicationJob
  queue_as :default

  def perform(post)
  CrudNotificationMailer.create_notification(post).deliver_now
  end
end
