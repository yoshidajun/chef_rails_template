# -*- encoding: utf-8 -*-

class TopController < ApplicationController

  def index
    Rails.logger.info '----- index'
    act_sleep
  end

  def index2
    Rails.logger.info '----- index2'
    act_sleep
  end

  private

  def act_sleep
    count = rand(10)
    puts "---------- sleep #{count} times"
    count.times do |i|
      Rails.logger.info "---------- pid #{$$}: sleep"
      sleep(3)
      Rails.logger.info "---------- pid #{$$}: wake up!"
    end
  end

end
