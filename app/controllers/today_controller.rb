class TodayController < ApplicationController
  before_filter :tangina_this
  def new
  end

  private
  def tangina_this
    #render 'layouts/_header.html.erb'
  end

end

