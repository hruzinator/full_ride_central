require 'spec_helper'

describe User do
	before do
		@user = User.new(first_name:"John", middle_name:"Alexander", last_name:"Smith", email:"mailguy43@yahoo.com", act_score: 32, sat_score: 1700, hs_gpa: 3.5, min_tuition_considering: 10000)
	end
	subject { @user }

it {should respond_to(:first_name)}
it {should respond_to(:last_name)}
it {should respond_to(:email)}

describe "When first_name is not present" do
    before { @user.first_name = " " }
    it { should_not be_valid }
  end

  	describe "When last_name is not present" do
    before { @user.last_name = " " }
    it { should_not be_valid }
  end

  	describe "When email is not present" do
    before { @user.email = " " }
    it { should_not be_valid }
  end

   describe "when first_name is too long" do
    before { @user.first_name = "a" * 51 }
    it { should_not be_valid }
  end

  describe "when last_name is too long" do
  before { @user.last_name = "a" * 51}
  it { should_not be_valid }
  end

  describe "when email is too long" do
  	before { @user.email = "a" * 51 }
    it { should_not be_valid }
  end

  #TODO check for email validation of user@gmail..com
  describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo.
                     foo@bar_baz.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        @user.email = invalid_address
        expect(@user).not_to be_valid
      end
    end
  end

  describe "when email format is valid" do
    it "should be valid" do
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @user.email = valid_address
        expect(@user).to be_valid
      end
    end
  end

  describe "when email address is already taken" do
    before do
      user_with_same_email = @user.dup
      user_with_same_email.save
    end

    it { should_not be_valid }
  end

end
