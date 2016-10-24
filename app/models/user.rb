class User < ActiveRecord::Base
  include Slugger
  include Scoper
  include RoleModel
  include Namer
  acts_as_paranoid
  has_paper_trail on: [:update, :destroy]

  # ROLES = %w[farmer purchaser].freeze TODO: FIGURE OUT WHICH ROLES YOU WANT
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # roles ROLES
end
