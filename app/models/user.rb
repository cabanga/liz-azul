class User < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged

    devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

    enum role: { 
        head_unit: 0,
        agent: 1,
        admin: 222
    }


    enum kind: {
        chefe_1_seccao: 1, 
        chefe_2_seccao: 2, 
        chefe_3_seccao: 3, 
        chefe_4_seccao: 4
    }

end
