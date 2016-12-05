# == Schema Information
#
# Table name: product_lists
#
#  id            :integer          not null, primary key
#  order_id      :integer
#  product_name  :string
#  product_price :integer
#  quantity      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class ProductList < ApplicationRecord
  belongs_to :order
  # 新建model后  要写明与其他model之间的关系  否者无法调用彼此的参数
end
