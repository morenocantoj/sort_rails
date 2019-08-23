# frozen_string_literal: true

class BubbleSortController < ApplicationController
  include BubbleSortHelper

  def sort
    array = Array.new(10_000) { rand(1..999) }
    start = Time.now
    sorted_array = bubblesort(array)
    finish = Time.now
    json_response(sorted_array: sorted_array, sorting_time: "#{miliseconds(finish, start)}ms")
  end
end
