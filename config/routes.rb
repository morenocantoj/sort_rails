Rails.application.routes.draw do
  get "/bubblesort/sort", to: "bubble_sort#sort"
end
