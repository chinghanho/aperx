# == Schema Information
#
# Table name: exifs
#
#  id                  :integer          not null, primary key
#  camera_model        :string
#  len_model           :string
#  f_number            :string
#  iso                 :string
#  shutter_speed_value :string
#  focal_length        :string
#  gps_version         :string
#  coordinate          :point
#  raw                 :text
#  photo_id            :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Exif < ActiveRecord::Base
  belongs_to :photo
end
