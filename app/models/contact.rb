class Contact < ApplicationRecord
  # Associations - describing relations ships 
# belongs to child models , who the partents is 
# - both ways
# # parents models
# has_one - related to a single record
# has_many - related to multiple records
# has_man_ :through adv
#     dependent - this will help when we delete the parent it will delete all of its children 
  
  # Validations

  # Model Methods

  has_many :notes, dependent: :destroy
  has_one :address, dependent: :destroy

  # - model validations, stop in the model to validate the data going into the db/

  # most commonx
  # validating the attr , feilds fo the table / model 

  # confirmation  
  # - two fields same content

  # inclusion
  #  - makes sure its one fo the items you give it

  # length
  # class Person < ActiveRecord::base
  #   validates: name, length { minimum , 2}
  # - chatecter count of the value

  # numericality
  # <clase Playser < ActiveRecord::base
  # validates : points< numericality: true
  #  - numeric value

  # # presence
  # class Person < AciveRecord::base
  #   validates :name, :login, :email, presence: true
  #  - makes sure that its not empty or nul
  # uniquneess
  #  - one object that gets save of the value 

  validates :first_name, :last_name, :email, presence: true
  validates :ages, numericality: true
  validates :email, email: uniquneess: true

  #allow nil 
  #allow blank
  #message
  # on - only run on a acttion 
  # Call back is to trigger code when an event is run
# before_validation 
#after_validation 
#before_sabe
#after_save
#before_create
#after_create
# around_save
# around_create

# all logic that has to do with the data will be in the model 
  #fat model  -  all logic should be in the model 
  #skinny controllers
  #controllers are hadling actions 
  # actions - functions CRUD actions, events you can do functionally in th application
end
