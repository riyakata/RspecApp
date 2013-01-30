class User < ActiveRecord::Base

        attr_accessible :phone_no

        validates_presence_of :phone_no
        validates_inclusion_of :phone_no, :in => 7000000000..9999999999
        validates_numericality_of :phone_no, :only_integer => true

end