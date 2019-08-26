# frozen_string_literal: true

class BubbleSortController < ApplicationController
  include BubbleSortHelper

  def sort
    array_size = params[:size].nil? ? 10_000 : params[:size].to_i
    array = Array.new(array_size) { rand(1..999) }
    start = Time.now
    sorted_array = bubblesort(array)
    finish = Time.now
    json_response(sorting_time: "#{miliseconds(finish, start)}ms", sorted_array: sorted_array)
  end
end
