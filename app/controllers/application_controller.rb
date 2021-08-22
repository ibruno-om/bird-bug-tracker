# frozen_string_literal: true

class ApplicationController < ActionController::Base

  before_action :set_locale

  def set_locale
    I18n.locale = locale_from_header || I18n.default_locale
  end

  def locale_from_header
    locale = request.env['HTTP_ACCEPT_LANGUAGE'].scan(/[a-z]{2}/).first
    locale && I18n.available_locales.include?(locale.to_sym) ? locale : I18n.default_locale
  end

end
