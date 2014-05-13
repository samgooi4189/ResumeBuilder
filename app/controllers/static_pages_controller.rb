require "prawn"    

class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def generate
  	pdf = Prawn::Document.new
    pdf.text "Hello World", :size => 16, :style => :bold, :spacing => 4
  	send_data pdf.render, :filename => "resume.pdf", :type => "application/pdf"
  end
end
