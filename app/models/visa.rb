class Visa
  include Mongoid::Document
  include Mongoid::Timestamps
  
  #before_create :assign_ref_id, :assign_visa_type
  
  field :owner_id,               type: String
  field :ref_id,                 type: String
  field :application_type,       type: Integer 
  field :category_type,          type: String
  field :visa_type,              type: Integer #1 = individual, #2 = Family, 3 = Group
  
  field :first_name,					   type: String
  field :last_name,              type: String
  field :sex,						         type: String  
  field :email,						       type: String
  field :placeBirth,				     type: String 
  field :dateBirth, 				     type: Date
  field :marital_status,			   type: String 
  field :nationality,				     type: String 
  field :profession,				     type: String
   
  field :passport_no,				     type: String 
  field :passport_issued,			   type: String 
  field :passport_type,				   type: String 
  field :passport_date_issued,	 type: Date 
  field :passport_date_expired,	 type: Date
  
  field :sponsor_type_kr,			   type: String
  field :sponsor_name_kr,			   type: String  
  field :sponsor_address_kr,		 type: String
  field :sponsor_address_city_kr,type: String
  field :sponsor_address_prov_kr,type: String
  field :sponsor_phone_kr,			 type: String  	
  field :sponsor_type_id,			   type: String
  field :sponsor_name_id,			   type: String  
  field :sponsor_address_id,		 type: String
  field :sponsor_address_kab_id, type: String
  field :sponsor_address_prov_id,type: String
  field :sponsor_phone_id,			 type: String
    
  field :duration_stays,		     type: Integer
  field :duration_stays_unit,	   type: String 

  field :num_entry,					     type: String
  
  field :checkbox_1,				     type: Boolean, default: false
  field :checkbox_2,				     type: Boolean, default: false
  field :checkbox_3,				     type: Boolean, default: false
  field :checkbox_4,				     type: Boolean, default: false
  field :checkbox_5,				     type: Boolean, default: false
  field :checkbox_6,				     type: Boolean, default: false
  field :checkbox_7,				     type: Boolean, default: false
  
  field :tr_count_dest,          type: String 
  field :tr_flight_vessel,			 type: String 
  field :tr_air_sea_port,			   type: String 
  field :tr_date_entry, 			   type: Date 
  
  field :lim_s_purpose,				   type: String 
  field :lim_s_flight_vessel,		 type: String 
  field :lim_s_air_sea_port,		 type: String 
  field :lim_s_date_entry, 			 type: Date
  
  field :v_purpose,					     type: String 
  field :v_flight_vessel,			   type: String 
  field :v_air_sea_port,			   type: String 
  field :v_date_entry, 				   type: Date
  
  field :dip_purpose,				     type: String 
  field :dip_flight_vessel,			 type: String 
  field :dip_air_sea_port,			 type: String 
  field :dip_date_entry, 			   type: Date
  
  field :o_purpose,					     type: String 
  field :o_flight_vessel,			   type: String 
  field :o_air_sea_port,			   type: String 
  field :o_date_entry, 				   type: Date
  
  field :passportpath,           type: String
  field :idcardpath,             type: String 
  field :photopath,              type: String
  field :ticketpath,             type: String
  field :sup_docpath,            type: String
  
  field :status,                 type: String, default: 'Received'
  field :status_code,            type: Integer,default: 1
  field :payment_slip,           type: String
  field :payment_date,           type: Date
  field :vipa_no,                type: Integer
  
  belongs_to :user, :class_name => "User", :inverse_of => :visa

  field :is_sync,                type: Integer,     default: 0
  
  private
  def assign_ref_id
    self.ref_id = generate_string(3)+"-"+Random.new.rand(10**4..10**10).to_s
  end
  def generate_string(length=5)
      chars = 'abcdefghjkmnpqrstuvwxyzABCDEFGHJKLMNOPQRSTUVWXYZ123456789'
      random_characters = ''
      length.times { |i| random_characters << chars[rand(chars.length)] }
      random_characters = random_characters.upcase
  end
  def assign_visa_type
    self.ref_id = 'KBRI'+ self.visa_type.to_s + '-' + self.ref_id
  end
end