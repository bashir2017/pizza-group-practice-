class PizzaPiesController < ApplicationController

    def index 
        @pizzas = PizzaPie.all 
    end

    def show 
        @pizza = PizzaPie.find(params[:id])
    end 

    def new
        @pizza = PizzaPie.new 
    end

    def update
        @pizza = PizzaPie.find(params[:id])
        @pizza = PizzaPie.update(pizza_params(:types,:toppings,:size))
        redirect_to pizza_py_path(@pizza)
    end

    def create
        @pizza = PizzaPie.create(pizza_params(:types,:toppings,:size))
        redirect_to pizza_py_path(@pizza)
    end

    def edit
        @pizza = PizzaPie.find(params[:id])
    end

    def destroy 
        @pizza = PizzaPie.find(params[:id])
        @pizza.destroy
        redirect_to pizza_pies_path
    end

    private 
    def pizza_params(*args)
        # byebug
        params.require(:pizza_pie).permit(*args)
    end

end
