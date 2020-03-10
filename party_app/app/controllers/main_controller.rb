class MainController < ApplicationController
    def index
    end
=begin

<h2>Input budget <%=@budget %> </h2>
<h2>Input number of guests please <%= @guests %></h2>

=end

    def results
        # Budget
        @budget = 1000000
        # Number of Guests
        @guests = 250

        # Average Price per person
        @ppp = @budget.to_f / @guests.to_f


        # drinks: 20%
        # meals: 20%
        # snacks: 20%
        # entertainment: 30%
        # party supplies: 10%

        ## using rand to pick items
        # ! # Entertainment 1
        # ! # party supplies 3
        # ! # drinks 5
        # ! # meals 3
        # ! # snacks 3

        @my_snacks = [ Snack.find(rand(Snack.all.length)+1), Snack.find(rand(Snack.all.length)+1), Snack.find(rand(Snack.all.length)+1) ]

        @my_entertainment = [Entertainment.find(rand(Entertainment.all.length)+1)]

        @my_ps = []
        3.times do
            @my_ps.push(PartySupply.find(rand(PartySupply.all.length)+1))
        end

        @my_d = []
        5.times do
            @my_d.push(Drink.find(rand(Drink.all.length)+1))
        end

        @my_m = []
        3.times do
            @my_m.push(Meal.find(rand(Meal.all.length)+1))
        end



    end

end
