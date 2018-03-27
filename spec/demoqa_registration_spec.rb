require 'spec_helper'

describe 'testing the demoqa registration page' do

  before(:all) do
    @driver = SeleniumDemoReg.new
    @driver.access_registration_form
  end

  context 'positive paths for the registration form and register' do

    it 'should land on the registration for page' do
      expect(@driver.current_url).to eq('http://demoqa.com/registration/')
    end

    it 'should accept a first name' do
      @driver.set_first_name_field('Nathaniel')
      expect(@driver.get_first_name_field_value).to eq('Nathaniel')
      expect(@driver.get_first_name_field_value).to be_instance_of(String)
    end

    it 'should accept a last name' do
      @driver.set_last_name_field('Burns')
      expect(@driver.get_last_name_field_value).to eq('Burns')
      expect(@driver.get_last_name_field_value).to be_instance_of(String)
    end

    it 'should accept a marital status selection of Single, Married, or Divorced' do
      @driver.select_marital_option('Divorced')
      expect(@driver.get_marital_option('Divorced')).to eq('divorced')
    end

    it 'should accept a hobby status selection of Dance, Reading, or Cricket' do
      @driver.select_hobby_option('Reading')
      expect(@driver.get_hobby_option('Reading')).to eq('reading')
    end

    it 'accept a new DOB' do
      @driver.dob_month_list_select('10')
      @driver.dob_day_list_select('28')
      @driver.dob_year_list_select('1990')
    end

    it 'should have a country default of Afghanistan' do
      expect(@driver.get_selected_country).to eq('Afghanistan')
    end

    it 'should accept a new country value' do
      @driver.country_dropdown_list_select('Kenya')
    end

    it 'should accept a valid phone number' do
      @driver.set_phone_number_field('07799766115')
      expect(@driver.get_phone_number_field_value).to eq('07799766115')
      expect(@driver.get_phone_number_field_value).to be_instance_of(String)
    end

    it 'should accept a username' do
      @driver.set_user_name_field('NBurns90')
      expect(@driver.get_user_name_field_value).to eq('NBurns90')
      expect(@driver.get_user_name_field_value).to be_instance_of(String)
    end

    it 'should accept an email' do
      @driver.set_email_field('NBurns90@email.com')
      expect(@driver.get_email_field_value).to eq('NBurns90@email.com')
      expect(@driver.get_email_field_value).to be_instance_of(String)
    end

    it 'should accept a about yourself text' do
      @driver.set_about_yourself_field('I am just doing this to test you')
      expect(@driver.get_about_yourself_value).to eq('I am just doing this to test you')
      expect(@driver.get_about_yourself_value).to be_instance_of(String)
    end

    it 'should accept a password' do
      @driver.set_password_field('TestPassword123')
      expect(@driver.get_password_value).to eq('TestPassword123')
      expect(@driver.get_password_value).to be_instance_of(String)
    end

    it 'should accept a password confirmation' do
      @driver.set_confirmation_password_field('TestPassword123')
      expect(@driver.get_confirmation_password_value).to eq('TestPassword123')
      expect(@driver.get_confirmation_password_value).to be_instance_of(String)
      sleep 5
    end

    # it 'confirmation button should accept a click and redirect you' do
    #   # @driver.click_submit
    #   # expect(@driver.check_registration_successful)
    # end

  end

end
