class KitasReturnCertificate

  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip

  before_create :assign_reg_no
  belongs_to :user, :class_name => "User", :inverse_of => :driving_license_certificates

  field :kitas_reg_no,                type: String

  field :kitas_holder_name,           type: String
  field :kitas_holder_passport,       type: String
  field :kitas_holder_birthday,       type: String
  field :kitas_holder_citizenship,    type: String
  field :kitas_issued_no,             type: String
  field :kitas_issuing_office,        type: String
  field :kitas_monitoring_book,       type: String
  field :kitas_return_date,           type: Date,   default: Date.today

  field :authorized_signer_name,      type: String
  field :authorized_signer_post,      type: String

  private

    def assign_reg_no
      seq_no = generate_string(10)
      seq_no = seq_no[0, seq_no.length - 6]
      romanth_month = ["0", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X", "XI", "XII"]
      seq_month = romanth_month[Date.today.month.to_s.to_i]
      seq_year  = Date.today.year.to_s
      self.kitas_reg_no = seq_no + "/KONS/" + seq_month + "/" + seq_year
    end

    def generate_string(length=5)
        chars = '1234567890987654321012345678909876543210234567890987654321'
        random_characters = ''
        length.times { |i| random_characters << chars[rand(chars.length)] }
        random_characters = random_characters.upcase
    end

end

