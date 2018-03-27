require 'selenium-webdriver'

class SeleniumDemoReg

  # page_url
  PAGE_URL = 'http://demoqa.com/registration/'
  # Page field
  FIRST_NAME_FIELD =  'name_3_firstname'
  LAST_NAME_FIELD =  'name_3_lastname'
  MARITAL_STATUS =
  HOBBY_STATUS =  ['dance', 'reading', 'cricket']
  COUNTRY_DROP_DOWN_LIST =  'dropdown_7'
  DOB_MONTH_DROPDOWN_LIST =  'mm_date_8'
  DOB_DAY_DROPDOWN_LIST =  'dd_date_8'
  DOB_YEAR_DROPDOWN_LIST =  'yy_date_8'
  PHONE_NUMBER_FIELDS =  'phone_9'
  USERNAME_FIELD =  'username'
  EMAIL_FIELD =  'email_1'
  PROFILE_PICTURE_BUTTON =  'profile_pic_10'
  DESCRIPTION_FIELD =  'description'
  PASSWORD_FIELD = 'password_2'
  CONFIRM_PASSWORD_FIELD =  'confirm_password_password_2'
  SUBMIT_BUTTON = 'pie_submit'
  REGISTRATION_CONFIRMATION = #class

  def initialize
    # set up driver
    @chrome_driver = Selenium::WebDriver.for :chrome
  end

  def access_registration_form
    @chrome_driver.get(PAGE_URL)
  end

  def current_url
    @chrome_driver.current_url
  end

  # first name field management - Difficulty Easy

  def set_first_name_field(first_name)
    @chrome_driver.find_element(:id, FIRST_NAME_FIELD).send_key(first_name)
  end

  def get_first_name_field_value
    @chrome_driver.find_element(:id, FIRST_NAME_FIELD)['value']
  end

  def first_name_field_displayed
    @chrome_driver.find_element(:id, FIRST_NAME_FIELD).displayed?
  end

  # last name field management - Difficulty Easy

  def set_last_name_field(last_name)
    @chrome_driver.find_element(:id, LAST_NAME_FIELD).send_key(last_name)
  end

  def get_last_name_field_value
    @chrome_driver.find_element(:id, LAST_NAME_FIELD)['value']
  end

  def last_name_field_displayed
    @chrome_driver.find_element(:id, LAST_NAME_FIELD).displayed?
  end

  # Marital option management - Difficulty Medium

  def select_marital_option(marital_status)
    # Consider something like a case statement and check the selenium selected? method
    case marital_status
      when 'Single'
        @chrome_driver.find_element(:xpath, "//li[2]/div/div/input[1]").click
      when 'Married'
        @chrome_driver.find_element(:xpath, "//li[2]/div/div/input[2]").click
      when 'Divorced'
        @chrome_driver.find_element(:xpath, "//li[2]/div/div/input[3]").click
    end
  end

  def get_marital_option(marital_status)
    case marital_status
      when 'Single'
        @chrome_driver.find_element(:xpath, "//li[2]/div/div/input[1]")['value']
      when 'Married'
        @chrome_driver.find_element(:xpath, "//li[2]/div/div/input[2]")['value']
      when 'Divorced'
        @chrome_driver.find_element(:xpath, "//li[2]/div/div/input[3]")['value']
    end
  end

  # hobby option management - Difficulty Medium

  def select_hobby_option(hobby)
    case hobby
      when 'Dance'
        @chrome_driver.find_element(:xpath, "//li[3]/div/div/input[1]").click
      when 'Reading'
        @chrome_driver.find_element(:xpath, "//li[3]/div/div/input[2]").click
      when 'Cricket'
        @chrome_driver.find_element(:xpath, "//li[3]/div/div/input[3]").click
    end
  end

  def get_hobby_option(hobby)
    case hobby
      when 'Dance'
        @chrome_driver.find_element(:xpath, "//li[3]/div/div/input[1]")['value']
      when 'Reading'
        @chrome_driver.find_element(:xpath, "//li[3]/div/div/input[2]")['value']
      when 'Cricket'
        @chrome_driver.find_element(:xpath, "//li[3]/div/div/input[3]")['value']
    end
  end

  # Select Country - Difficulty HARD

  # Look online how to handle option lists with Selenium in Ruby - you need to get used to solving problems
  # If you are spending too long see if anyone else has been successful
  # If no solution then a run through will happen once finished

  def get_selected_country
    select_list = @chrome_driver.find_element(:id, COUNTRY_DROP_DOWN_LIST)
    options = select_list.find_elements(:tag_name, 'option')

    option

  end


  def country_dropdown_list_select(country)
    select_list = @chrome_driver.find_element(:id, COUNTRY_DROP_DOWN_LIST)
    options = select_list.find_elements(:tag_name, 'option')

    options.each { |option| option.click if option.text == country }
  end

  # DOB management - Difficulty HARD

  # Look online how to handle option lists with Selenium in Ruby - you need to get used to solving problems
  # If you are spending too long see if anyone else has been successful
  # If no solution then a run through will happen once finished

  def dob_month_list_select(month_value)
    select_list = @chrome_driver.find_element(:id, DOB_MONTH_DROPDOWN_LIST)
    options = select_list.find_elements(tag_name: 'option')

    options.each { |option| option.click if option.text == month_value }
  end

  def dob_day_list_select(day_value)
    select_list = @chrome_driver.find_element(:id, DOB_DAY_DROPDOWN_LIST)
    options = select_list.find_elements(tag_name: 'option')

    options.each { |option| option.click if option.text == day_value }
  end

  def dob_year_list_select(year_value)
    select_list = @chrome_driver.find_element(:id, DOB_YEAR_DROPDOWN_LIST)
    options = select_list.find_elements(tag_name: 'option')

    options.each { |option| option.click if option.text == year_value }
  end

  # Phone number field management - Difficulty Easy

  def set_phone_number_field(phone_number)
    @chrome_driver.find_element(:id, PHONE_NUMBER_FIELDS).send_key(phone_number)
  end

  def get_phone_number_field_value
    @chrome_driver.find_element(:id, PHONE_NUMBER_FIELDS)['value']
  end

  #  username field management - Difficulty Easy

  def set_user_name_field(user_name)
    @chrome_driver.find_element(:id, USERNAME_FIELD).send_key(user_name)
  end

  def get_user_name_field_value
    @chrome_driver.find_element(:id, USERNAME_FIELD)['value']
  end

  # Email field management - Difficulty Easy

  def set_email_field(email)
    @chrome_driver.find_element(:id, EMAIL_FIELD).send_key(email)
  end

  def get_email_field_value
    @chrome_driver.find_element(:id, EMAIL_FIELD)['value']
  end

  # about yourself / description field - Difficulty Easy

  def set_about_yourself_field(details)
    @chrome_driver.find_element(:id, DESCRIPTION_FIELD).send_key(details)
  end

  def get_about_yourself_value
      @chrome_driver.find_element(:id, DESCRIPTION_FIELD)['value']
  end

  # Password management - Difficulty Easy

  def set_password_field(password)
    @chrome_driver.find_element(:id, PASSWORD_FIELD).send_key(password)
  end

  def get_password_value
    @chrome_driver.find_element(:id, PASSWORD_FIELD)['value']
  end

  def set_confirmation_password_field(password)
    @chrome_driver.find_element(:id, CONFIRM_PASSWORD_FIELD).send_key(password)
  end

  def get_confirmation_password_value
    @chrome_driver.find_element(:id, CONFIRM_PASSWORD_FIELD)['value']
  end

  # registration confirmation - Difficulty Easy

  def click_submit
    @chrome_driver.find_element(:id, SUBMIT_BUTTON).click
  end

  # def check_registration_successful
  #   # @chrome_driver.find_element(:id, SUBMIT_BUTTON)
  # end
end
