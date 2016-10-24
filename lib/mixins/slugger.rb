module Slugger
  extend ActiveSupport::Concern

  included do
    self.primary_key = :id
    self.before_create :sluggify

    cattr_reader :int_slug_only
    @@int_slug_only = false

    def self.int_slug_only
      @@int_slug_only = true
    end
  end

  def sluggify
    length = self.class.columns.detect{|c| c.name == 'id'}.limit || 12

    until self.id and self.class.find_by_id(self.id).nil?
      self.id = @@int_slug_only ? Random.rand(10**length).to_s : SecureRandom.hex(length/2)
    end
    self.id
  end

  # a unique slug string from model attributes used to compute slug
  # defaults to id (already unique), but should be overwritten
  def slug_base_string
    self.id || sluggify
  end

  # normalize/sanitize base string
  def normalize_slug_base_string
    base_string = slug_base_string
    base_string = self.class.to_s.underscore if base_string.blank?
    base_string.titleize.downcase.gsub(/[^0-9a-z ]/i, '').gsub("  ", " ").gsub(" ", "-")
  end

  # adds self.id since that will be unique
  def compute_slug
    "#{normalize_slug_base_string}-#{self.id || sluggify}"
  end

  def slug_changed?
    self.slug != compute_slug
  end
end
