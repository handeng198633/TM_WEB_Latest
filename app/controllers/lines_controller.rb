class LinesController < ApplicationController
	def new
		@line = Line.new
	end

	def create
		@line = Line.new(line_params)
		respond_to do |format|
      		if @line.save
        		format.html { redirect_to lines_path, notice: '信息新增成功。' }
        		format.js
      		else
        		format.html { render :new }
        		format.js
      		end
  		end
	end
end