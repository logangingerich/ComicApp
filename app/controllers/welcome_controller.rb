class WelcomeController < ApplicationController
  before_filter :init_scraper

  def index
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
