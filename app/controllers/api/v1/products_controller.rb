class Api::V1::ProductsController < ApplicationController

  def create
    if params["name"]["value"].length < 1 || params["description"]["value"].length < 1 || params["category"]["text"].length < 1 || params["priceDetails"]["value"].length < 1
      #  Product.create(name: , price: , start_date: , end_date: , category: , sub_category: , start_time: , end_time: , location: , user_id: current_user.id)
       render json: {msg: 'Please make sure you fill out all required fields in order to create a user!', result: 'Fail'}
    else
      render json: {msg: 'Product Successfully Created', result: 'Success'}
    end
  end
end