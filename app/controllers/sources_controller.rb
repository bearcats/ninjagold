class SourcesController < ApplicationController
  ApplicationController
      def farm
        gold = rand(10..30)
        session[:gold] += gold
        session[:activities].push("You made: #{gold} and currently have #{session[:gold]}")
          redirect_to('/')
        end

      def casino
        gold = rand(-50..50)
        session[:gold] += gold
        session[:activities].push("You made: #{gold} and currently have #{session[:gold]}")
          redirect_to('/')
        end

      def cave
        gold = rand(10..500)
        session[:gold] += gold
        session[:activities].push("You made: #{gold} and currently have #{session[:gold]}")
          redirect_to('/')
        end

      def house
        gold = rand(-100..1000)
        session[:gold] += gold
        session[:activities].push("You made: #{gold} and currently have #{session[:gold]}")
          redirect_to('/')
        end

      def reset
        session.clear()
        redirect_to('/')
      end

      def index
        if not session[:gold]
          session[:gold] = 0
          session[:activities] = ["first activity", "second activity"]
        end

        render "sources/index"
      end
    end
  #   def farm
  #     gold = rand(10..20)
  #     session[:gold] += gold
  #     session[:activities].push("You made: #{gold} and currently have #{session[:gold]}")
  #     redirect_to('/')
  #   end
  #
  #   def casino
  #     gold = rand(-50..50)
  #     session[:gold] += gold
  #     session[:activities].push("You #{gold >= 0 ? 'made': 'lost'}: #{gold} and currently have #{session[:gold]}")
  #     redirect_to('/')
  #   end
  #
  #   def cave
  #     gold = rand(10..200)
  #     session[:gold] += gold
  #     session[:activities].push("You made: #{gold} and currently have #{session[:gold]}")
  #     redirect_to('/')
  #   end
  #
  #   def house
  #     gold = rand(1..2)
  #     session[:gold] += gold
  #     session[:activities].push("You made: #{gold} and currently have #{session[:gold]}")
  #     redirect_to('/')
  #   end
  #
  #   def reset
  #     session.clear()
  #     redirect_to('/')
  #   end
  #
  #   def index
  #     if not session[:gold]
  #       session[:gold] = 0
  #       session[:activities] = ["first activity", "second activity"]
  #     end
  #
  #     render "sources/index"
  #   end
  # end
