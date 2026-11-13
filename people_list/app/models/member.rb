class Member < ApplicationRecord
  validates :name, presence: true, length: { minimum: 1, maximum: 20 }, uniqueness: true

  validate :height_check
  validate :weight_check

  private

  def height_check
    if height.blank? || height < 1
      errors.add(:must_be_1, "height can't be blank")
    end
  end

  def weight_check
    if weight.blank? || weight < 1
      errors.add(:must_be_1, "weight can't be blank")
    end
  end
end