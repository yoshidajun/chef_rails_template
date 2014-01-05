# -*- encoding: utf-8 -*-

class TopController < ApplicationController

  def index
    Rails.logger.info '---------- sleep'
    sleep(10)
    Rails.logger.info '---------- wake up!'
  end

end
