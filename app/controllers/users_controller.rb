class UsersController < ApplicationController
  def profile
  end
   def subregion_options
        render partial: 'subregion_select'
      end
end
