# The majority of The Supplejack Website code is Crown copyright (C) 2014,
# New Zealand Government, and is licensed under the GNU General Public License,
# version 3. Some components are third party components that are licensed under
# the MIT license or other terms.
# See https://github.com/DigitalNZ/supplejack_website for details.
#
# Supplejack was created by DigitalNZ at the National Library of NZ and
# the Department of Internal Affairs.
# http://digitalnz.org/supplejack

# Application controller
class ApplicationController < ActionController::Base
  protect_from_forgery

  after_filter :store_location

  def store_location
    # store last url
    # this is needed for post-login redirect to whatever the user last visited.
    return unless request.get? && (request.format == 'text/html' ||
                                   request.content_type != 'text/html')

    exception_paths = ['/users/sign_in', '/users/sign_up',
                       '/users/password/new', '/users/password/edit',
                       '/users/confirmation', '/users/sign_out']

    session[:previous_url] = request.fullpath if !exception_paths.include?(request.path) && !request.xhr?
  end

  def after_sign_in_path_for(*)
    projects_path
    # session[:previous_url] || root_path
  end
end
