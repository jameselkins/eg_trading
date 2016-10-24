class AdminUser < ActiveRecord::Base
  include Slugger
  include Scoper
  include RoleModel
  include Namer
  acts_as_paranoid
  has_paper_trail on: [:update, :destroy]

  ROLES = %w[super admin].freeze
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  roles ROLES
end
