class HelloController < ApplicationController
  layout "hello"
  def index
      @header = "layout sample"
      @footer = "copyright"
      @title = 'new layout'
      @msg = 'this is sample page'
  end
end
 
