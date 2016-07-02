# == Schema Information
#
# Table name: photos
#
#  id             :integer          not null, primary key
#  path           :string
#  photoable_id   :integer
#  photoable_type :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Photo < ActiveRecord::Base

  include Sortable

  mount_uploader :path, PhotosUploader


  #
  # Relations
  #
  belongs_to :photoable, polymorphic: true



end
