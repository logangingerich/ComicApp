class ComicsController < ApplicationController

  before_filter :init_scraper

  def flash
    pull
  end

  def aquaman
    pull
  end

  def batman
    pull
  end

  def greenlantern
    pull
  end

  def superman
    pull
  end

  def wonderwoman
    pull
  end

  private

  def init_scraper
    @scraper = ComixScraper::Scraper.new
  end

  def pull
    release_data = @scraper.get_new_releases
    @releases = release_data.comix
    @shipping_date = release_data.shipping_date

    upcoming_data = @scraper.get_upcoming_releases
    @upcoming_releases = upcoming_data.comix
    @upcoming_shipping_date = upcoming_data.shipping_date
  end
end
