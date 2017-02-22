class Card < ApplicationRecord
  belongs_to :room

  # after_create_commit { CardBroadcastJob.perform_later self } # commit hook
end
