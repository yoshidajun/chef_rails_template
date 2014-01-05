# -*- encoding: utf-8 -*-

class TopController < ApplicationController

  def index
    log 'index'
    act_sleep
  end

  def index2
    log 'index2'
    act_sleep
  end

  private

  def log(message)
    Rails.logger.info "----- #{message}: pid #{$$} - #{request.path}"
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
