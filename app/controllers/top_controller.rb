# -*- encoding: utf-8 -*-

class TopController < ApplicationController

  def index
    count = rand(10)
    count.times do |i|
      Rails.logger.info '---------- pid #{$$}: sleep'
      sleep(3)
      Rails.logger.info '---------- pid #{$$}: wake up!'
    end
  end

end
