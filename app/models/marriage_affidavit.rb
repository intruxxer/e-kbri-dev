class MarriageAffidavit

  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip

  before_create :assign_doc_no
  belongs_to :user, :class_name => "User", :inverse_of => :marriage_affidavits

  field :registration_no,             type: String
  field :registration_date,           type: Date,   default: Date.today
  field :bridegroom,                  type: String, default: "Bride"
  field :designated_institution,      type: String

  field :groom_name,                   type: String
  field :groom_father,                 type: String
  field :groom_mother,                 type: String
  field :groom_address_permanent,      type: String
  field :groom_address_recent,         type: String
  field :groom_birthday,               type: String
  field :groom_job,                    type: String
  field :groom_citizenship,            type: String
  field :groom_id_passport,            type: String
  field :groom_divorce_death,          type: String
  field :groom_divorce_legal,          type: String
  field :groom_divorce_court,          type: String
  field :groom_divorce_caseno,         type: String
  field :groom_divorce_decreestart,    type: String
  field :groom_divorce_decreefinal,    type: String
  field :groom_divorce_witness,        type: String, default: "-"

  field :bride_name,                   type: String
  field :bride_father,                 type: String
  field :bride_mother,                 type: String
  field :bride_address_permanent,      type: String
  field :bride_address_recent,         type: String
  field :bride_birthday,               type: String
  field :bride_job,                    type: String
  field :bride_citizenship,            type: String
  field :bride_id_passport,            type: String
  field :bride_divorce_death,          type: String
  field :bride_divorce_legal,          type: String
  field :bride_divorce_court,          type: String
  field :bride_divorce_caseno,         type: String
  field :bride_divorce_decreestart,    type: String
  field :bride_divorce_decreefinal,    type: String
  field :bride_divorce_witness,        type: String, default: "-"

  field :authorized_signer_name,      type: String
  field :authorized_signer_post,      type: String

  private

  def assign_doc_no
    seq_no = generate_string(10)
    seq_no = seq_no[0, seq_no.length - 6]
    romanth_month = ["0", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X", "XI", "XII"]
    seq_month = romanth_month[Date.today.month.to_s.to_i]
    seq_year  = Date.today.year.to_s
    self.registration_no = seq_no + "-LD-" + seq_month + "-" + seq_year
  end

  def generate_string(length=5)
      chars = '1234567890987654321012345678909876543210234567890987654321'
      random_characters = ''
      length.times { |i| random_characters << chars[rand(chars.length)] }
      random_characters = random_characters.upcase
  end

end

