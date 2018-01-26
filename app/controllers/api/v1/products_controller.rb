class Api::V1::ProductsController < ApplicationController

  def create
    if params["name"]["value"].length < 1 || params["description"]["value"].length < 1 || params["category"]["text"].length < 1 || params["priceDetails"]["value"].length < 1
      render json: {msg: 'Please make sure you fill out all required fields in order to create a user!', result: 'Fail'}
    else
      Product.create(name: params["name"]["value"], price: params["priceDetails"]["value"], start_date: params["startDate"]["value"], end_date: params["endDate"]["value"], category: params["category"]["value"], sub_category: params["subCategory"]["value"], start_time: params["startTime"]["value"], end_time: params["endTime"]["value"], location: params["location"]["value"], user_id: current_user.id)
      byebug
      render json: {msg: 'Product Successfully Created', result: 'Success'}
    end
  end
end