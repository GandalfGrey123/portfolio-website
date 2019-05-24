class Project < ApplicationRecord
  has_many :links, dependent: :destroy
  has_many :pictures, dependent: :destroy
end