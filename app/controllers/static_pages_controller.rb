require "prawn"    

class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def generate
  	pdf = Prawn::Document.new
	pdf.text "#{current_user.information.name}", :align => :center
        pdf.text "#{current_user.information.address_1} #{current_user.information.try(:address_2)}"
	pdf.text "#{current_user.information.city_state_zip}"
	pdf.text "Phone(s): #{current_user.information.h_phone} #{current_user.information.try(:b_phone)}"
	pdf.text "Email: #{current_user.information.email}"
	pdf.text "Education"
	current_user.schools.select do |school|
		pdf.text "\n#{school.try(:name)}"
		pdf.text "#{school.try(:degree)} of #{school.try(:major)}"
		pdf.text "Graduation date: #{school.try(:grad_date)}"
		pdf.text "Other things to note: #{school.try(:other)}"
	end

	pdf.text "Work Experience"

	current_user.companies.select do |company| 
		pdf.text "\nCompany = #{company.try(:name)}   #{company.try(:start_date)} - #{company.try(:end_date)}",
			:size => 16, :style => :bold, :spacing => 4
		company.positions.select do |position|
			pdf.text "#{position.try(:name)}"
			pdf.text "\t#{position.try(:tasks)}"
		end
	end
  	send_data pdf.render, :filename => "resume.pdf", :type => "application/pdf"
  end
end
