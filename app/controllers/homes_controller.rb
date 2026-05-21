class HomesController < ApplicationController
  # この一行を追加して、top、aboutページを認証制限の対象外にした
  allow_unauthenticated_access

  def top
  end

  def about
    
  end
end
