class ExitPermit

  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip

  before_create :assign_permit_no
  belongs_to :user, :class_name => "User", :inverse_of => :exit_permits

  field :permit_no_reg,               type: String
  field :grantee_name,                type: String
  field :grantee_birthplace,          type: String
  field :grantee_birthdate,           type: String
  field :grantee_passport,            type: String
  field :grantee_passport_issuer,     type: String
  field :grantee_passport_issued,     type: String
  field :grantee_passport_expired,    type: String
  field :grantee_job,                 type: String
  field :grantee_address_korea,       type: String

  field :authorized_signer_name,      type: String
  field :authorized_signer_post,      type: String

  private

  def assign_permit_no
    seq_no = generate_string(10)
    seq_no = seq_no[0, seq_no.length - 6]
    romanth_month = ["0", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X", "XI", "XII"]
    seq_month = romanth_month[Date.today.month.to_s.to_i]
    seq_year  = Date.today.year.to_s
    self.permit_no_reg = seq_no + "/KONS/" + seq_month + "-" + seq_year
  end

  def generate_string(length=5)
      chars = '1234567890987654321012345678909876543210234567890987654321'
      random_characters = ''
      length.times { |i| random_characters << chars[rand(chars.length)] }
      random_characters = random_characters.upcase
  end

end

