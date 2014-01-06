# -*- encoding: utf-8 -*-

class TopController < ApplicationController

  def index
    log 'index'
    act_sleep
    LogBox::flush
  end

  def index2
    log 'index2'
    act_sleep
    LogBox::flush
  end

  private

  def log(message)
    msg = "----- #{message}: pid #{$$} - #{request.path}"
    Rails.logger.info msg
    LogBox::log msg
  end

  def act_sleep
    count = rand(10) + 1
    log "sleep #{count} times"
    count.times do |i|
      log "sleep"
      sleep(3)
      log "wake up!"
    end
  end

end
