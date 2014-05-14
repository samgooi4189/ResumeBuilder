require "prawn"    

class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def generate
  	pdf = Prawn::Document.new
	current_user.information.name
	current_user.companies.select do |company| 
		pdf.text "Company = #{company.try(:name)}", :size => 16, :style => :bold, :spacing => 4
	end
  	send_data pdf.render, :filename => "resume.pdf", :type => "application/pdf"
  end
end
