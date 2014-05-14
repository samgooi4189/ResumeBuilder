require "prawn"    

class StaticPagesController < ApplicationController
  def home
  end

  def generate
  	pdf = Prawn::Document.new
	pdf.text "#{current_user.information.try(:name)}", :align => :center
        pdf.text "#{current_user.information.try(:address_1)} #{current_user.information.try(:address_2)}", :align => :center
	pdf.text "#{current_user.information.try(:city_state_zip)}", :align => :center
	pdf.text "Phone(s): #{current_user.information.try(:h_phone)} #{current_user.information.try(:b_phone)}", :align => :center
	pdf.text "Email: #{current_user.information.try(:email)}", :align => :center
	pdf.text "\nEducation", :style => :bold
	current_user.schools.select do |school|
		pdf.text "\n#{school.try(:name)}"
		pdf.text "#{school.try(:degree)} of #{school.try(:major)}"
		pdf.text "Graduation date: #{school.try(:grad_date)}"
		pdf.text "Other things to note: #{school.try(:other)}"
	end

	pdf.text "\nWork Experience", :style => :bold

	current_user.companies.select do |company| 
		pdf.text "\n#{company.try(:name)}   #{company.try(:start_date)} - #{company.try(:end_date)}", :style => :italic
		company.positions.select do |position|
			pdf.text "\nPosition: #{position.try(:name)}"
			pdf.text "\t#{position.try(:tasks)}"
		end
	end

	pdf.text "\nReferences\n", :style => :bold

	current_user.people.select do |person|
		pdf.text "#{person.try(:name)}: #{person.try(:relationship)}, #{person.try(:phone)}, #{person.try(:email)}"
	end

	pdf.text "\nSkills\n", :style => :bold
	current_user.skills.select do |skill|
		pdf.text "#{skill.try(:name)}: #{skill.try(:description)}"
	end	


  	send_data pdf.render, :filename => "resume.pdf", :type => "application/pdf"
  end
end
