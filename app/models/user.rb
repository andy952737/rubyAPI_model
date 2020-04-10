class User < ApplicationRecord
 
    has_many :user_items
 
    #密碼處理
    has_secure_password  
 
    #欄位驗證
    validates :name, presence: true  
 
end
