require 'test_helper'
class DesignerTest < ActiveSupport::TestCase
    test "validate designer" do

      des = Designer.new
      #validatign with empty values
      assert !des.save

      #validation with name only
      des.name = "some values"
      assert !des.save

      #validation with name and email
      des.email = "santhoshonet@gmail.com"
      assert !des.save

      #validation with name, email, mobile
      des.mobile = "987654321"
      assert !des.save

      #validation with name, email, mobile,portpolios
      des.portpolios = "some portpolio url here"
      assert !des.save

      #validation with name, email, mobile,portpolios,inspirationurl1
      des.inspirationurl1 = "some inspiration url here"
      assert !des.save

      #validation with name, email, mobile, portpolios, inspirationurl1, inspirationurl2
      des.inspirationurl2 = "some inspiration url "
      assert !des.save

      #validation with name, email, mobile, portpolios, inspirationurl1, inspirationurl2, inspirationurl3
      des.inspirationurl3 = "some inspiration url"
      assert !des.save

      #validation with name, email, mobile, portpolios, inspirationurl1, inspirationurl2, inspirationurl3, inspirationcomment
      des.inspirationcomment = "some comment goes here"
      assert !des.save

      #validation with name, email, mobile, portpolios, inspirationurl1, inspirationurl2, inspirationurl3, inspirationcomment, javascript
      des.javascript = "some java script here"
      Designer.destroy_all
      assert des.save # here its proper

      #validating the invalid email format
      des.email = "sadfasdfsadf"
      assert !des.save

      des.email = "sagfdafg@sda"
      assert !des.save

      des2 = Designer.new(des.attributes)
      des2.id = nil
      #validating repeated email
      des2.email = "santhoshonet@gmail.com"
      assert !des2.save, "repeated email address is allowed "

      #validating with another email id
      des.email = "santhoshonet@yahoo.com"
      assert des.save
      
    end
end
