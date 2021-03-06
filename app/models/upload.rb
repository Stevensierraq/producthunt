# == Schema Information
#
# Table name: uploads
#
#  id                 :integer          not null, primary key
#  product_id         :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Upload < ApplicationRecord
  belongs_to :product

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
