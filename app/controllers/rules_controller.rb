class RulesController < ApplicationController
     def show
          @user = User.all
     end
end
