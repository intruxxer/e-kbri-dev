class BirthdayCertificate

  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip

  before_create :assign_doc_no
  belongs_to :user, :class_name => "User", :inverse_of => :birthday_certificates

  field :cert_no,                     type: String
  field :birth_hospital,              type: String
  field :birth_city,                  type: String
  field :birth_day,                   type: String
  field :birth_month,                 type: String
  field :birth_year,                  type: String
  field :birth_baby_name,             type: String
  field :birth_baby_sequence,         type: String
  field :birth_baby_sex,              type: String
  field :birth_baby_mother,           type: String
  field :birth_baby_father,           type: String
  field :birth_cert_issue_date,       type: Date,   default: Date.today

  field :authorized_signer_name,      type: String
  field :authorized_signer_post,      type: String

  private

  def assign_doc_no
    seq_no = generate_string(10)
    seq_no = seq_no[0, seq_no.length - 6]
    romanth_month = ["0", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X", "XI", "XII"]
    seq_month = romanth_month[Date.today.month.to_s.to_i]
    seq_year  = Date.today.year.to_s
    self.cert_no = seq_no + "/DLH/SEL/" + seq_month + "/" + seq_year
  end

  def generate_string(length=5)
      chars = '1234567890987654321012345678909876543210234567890987654321'
      random_characters = ''
      length.times { |i| random_characters << chars[rand(chars.length)] }
      random_characters = random_characters.upcase
  end

end

