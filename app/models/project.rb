class Project < ApplicationRecord
  has_many :links, dependent: :destroy
  has_many :pictures, dependent: :destroy
  has_many :tags, dependent: :destroy
  has_many :contributors, dependent: :destroy
end