class MarriageCertificate

  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip

  before_create :assign_cert_no
  belongs_to :user, :class_name => "User", :inverse_of => :marriage_certificates

  field :cert_no,                   type: String
  field :cert_issuer,               type: String
  field :cert_issuer_address,       type: String
  field :cert_issued_date,          type: String
  field :cert_reference_date,       type: String
  field :marriage_location,         type: String
  field :marriage_day,              type: String
  field :marriage_month,            type: String
  field :marriage_year,             type: String

  field :marriage_groom_name,       type: String
  field :marriage_groom_birthday,   type: String
  field :marriage_groom_passport,   type: String
  field :marriage_groom_father,     type: String
  field :marriage_groom_mother,     type: String
  field :marriage_groom_sex,        type: String, default: "Laki-laki"
  field :marriage_groom_citizenship,type: String
  field :marriage_groom_prev_status,type: String, default: "Belum Menikah"

  field :marriage_bride_name,       type: String
  field :marriage_bride_birthday,   type: String
  field :marriage_bride_passport,   type: String
  field :marriage_bride_father,     type: String
  field :marriage_bride_mother,     type: String
  field :marriage_bride_sex,        type: String, default: "Perempuan"
  field :marriage_bride_citizenship,type: String
  field :marriage_bride_prev_status,type: String, default: "Belum Menikah"

  field :issued_day,                 type: String
  field :issued_month,               type: String
  field :issued_year,                type: String

  field :authorized_signer_name,     type: String
  field :authorized_signer_post,     type: String

  private

    def assign_cert_no
      seq_no = generate_string(10)
      seq_no = seq_no[0, seq_no.length - 6]
      romanth_month = ["0", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X", "XI", "XII"]
      seq_month = romanth_month[Date.today.month.to_s.to_i]
      seq_year  = Date.today.year.to_s
      self.cert_no = seq_no + "/KONS/" + seq_month + "/" + seq_year
    end

    def generate_string(length=5)
        chars = '1234567890987654321012345678909876543210234567890987654321'
        random_characters = ''
        length.times { |i| random_characters << chars[rand(chars.length)] }
        random_characters = random_characters.upcase
    end

end

