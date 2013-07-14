class Broker < ActiveRecord::Base
  has_many :shipments
  belongs_to :account
  attr_accessible :name, :phone, :address, :address2, :city, :state, :zip, :fax, :email, :website, :motor_carrier_number, :carreir_packet_pdf, :brokers

  before_validation { |broker| broker.phone = phone.to_s.gsub(/[^0-9]/, "").to_s }
  before_validation { |broker| broker.zip = zip.to_s.gsub(/[^0-9]/, "").to_s }

  validates_uniqueness_of :name, :scope => :account_id
  mount_uploader :carreir_packet_pdf, FileUploader
end

