require 'spec_helper'

describe User do

    context 'it should check validations of phone_no' do

        before :all do
            @user=User.new
        end

        it 'should have a phone_no' do
            @user.phone_no=''
            @user.save.should == false
            @user.errors[:phone_no].should == /can't be blank/

        end

        it 'should contain only digits' do
            @user.phone_no="12s3456789$"
            @user.save.should == false
            @user.errors[:phone_no].should == /can't be blank/

        end

        it 'should be of ten digits and starting with 7, 8 or 9' do
            @user.phone_no="123456789"
            @user.save.should == false
        end

    end

end