# frozen_string_literal: true

class Task < ApplicationRecord
  MAX_TITLE_LENGTH = 125
  VALID_TITLE_REGEX = /\A.*[a-zA-Z0-9].*\z/i

  validates :title,
    presence: true,
    length: { maximum: MAX_TITLE_LENGTH },
    format: { with: VALID_TITLE_REGEX }

  validate :net_vote_cannot_be_negative
  validates_inclusion_of :is_blog_worthy, in: [true, false]

  private

    def net_vote_cannot_be_negative
      if upvotes.nil? || downvotes.nil?
        errors.add(:base, "Upvotes and downvotes cannot be nil")
      elsif upvotes - downvotes < 0
        errors.add(:base, "Net vote cannot be negative")
      end
    end
end
