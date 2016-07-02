# == Sortable concern
#
# Set default scope for ordering objects
#
module Sortable
  extend ActiveSupport::Concern

  included do
    scope :order_id_desc,      -> { reorder(id: :desc) }
    scope :order_id_asc,       -> { reorder(id: :asc) }
    scope :order_created_desc, -> { reorder(created_at: :desc) }
    scope :order_created_asc,  -> { reorder(created_at: :asc) }
    scope :order_updated_desc, -> { reorder(updated_at: :desc) }
    scope :order_updated_asc,  -> { reorder(updated_at: :asc) }
  end

  module ClassMethods
    def order_by(method)
      case method.to_s
      when 'updated_asc' then order_updated_asc
      when 'updated_desc' then order_updated_desc
      when 'created_asc' then order_created_asc
      when 'created_desc' then order_created_desc
      when 'id_desc' then order_id_desc
      when 'id_asc' then order_id_asc
      else
        all
      end
    end
  end
end
