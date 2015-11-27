class User
  include Mongoid::Document
  include Mongoid::Timestamps
  include User::AuthDefinitions
  include User::Roles

  has_many :identities, :class_name => "Identity", :inverse_of => :user
  has_many :visas, :class_name => "Visa", :inverse_of => :user
  has_many :passports, :class_name => "Passport", :inverse_of => :user
  has_many :splps, :class_name => "Splp", :inverse_of => :user
  has_many :reports, :class_name => "Report", :inverse_of => :user
  has_many :journals, :class_name => "Journal", :inverse_of => :user
  has_many :cases, :class_name => "Case", :inverse_of => :user
  has_many :company_doc_certificates, :class_name => "CompanyDocCertificate", :inverse_of => :user
  has_many :marriage_affidavits, :class_name => "MarriageAffidavit", :inverse_of => :user
  has_many :birthday_certificates, :class_name => "BirthdayCertificate", :inverse_of => :user
  has_many :exit_permits, :class_name => "ExitPermit", :inverse_of => :user
  has_many :graduation_doc_certificates, :class_name => "GraduationDocCertificate", :inverse_of => :user
  has_many :authorization_doc_certificates, :class_name => "AuthorizationDocCertificate", :inverse_of => :user
  has_many :driving_license_certificates, :class_name => "DrivingLicenseCertificate", :inverse_of => :user
  has_many :kitas_return_certificates, :class_name => "KitasReturnCertificate", :inverse_of => :user
  has_many :farewell_goods_certificates, :class_name => "FarewellGoodsCertificate", :inverse_of => :user
  has_many :marriage_certificates, :class_name => "MarriageCertificate", :inverse_of => :user
  has_one :sync

  #has_one :passport
  #has_one :profile

  before_create :assign_ref_id, :default_role
  after_create :default_role

  field :ref_id,          type: String
  field :email,           type: String
  field :image,           type: String
  field :first_name,      type: String
  field :last_name,       type: String
  field :passport,        type: String
  field :id_card,         type: String
  field :citizenship,     type: Boolean
  field :origin,          type: String
  field :individual,      type: Boolean

  field :roles_mask,      type: Integer

  validates_presence_of :email, :first_name



  def full_name
    "#{first_name} #{last_name}"
  end

  private
  def default_role
    self.roles = ['user']
  end
  def assign_ref_id
    self.ref_id = generate_string(3)+"-"+Random.new.rand(10**4..10**10).to_s+generate_string(3)
  end
  def generate_string(length=5)
      chars = 'abcdefghjkmnpqrstuvwxyzABCDEFGHJKLMNOPQRSTUVWXYZ123456789'
      random_characters = ''
      length.times { |i| random_characters << chars[rand(chars.length)] }
      random_characters = random_characters.upcase
  end
end
