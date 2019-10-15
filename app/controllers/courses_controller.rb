class CoursesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_course, only: [:show, :edit, :update, :destroy, :publish, :disable]

  def index
    @courses = Course.all
  end

  def show
  end

  def new
    @course = Course.new
  end

  def edit
  end

  def create
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to courses_path, notice: 'O curso foi criado com sucesso.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to courses_path, notice: 'O curso foi atualizado com sucesso.' }
      else
        format.html { render :edit }
      end
    end
  end

  def publish
    respond_to do |format|
      @course.publish

      format.html { redirect_to courses_path, notice: 'O curso foi publicado com sucesso.' }
    end
  end

  def disable
    respond_to do |format|
      @course.disable

      format.html { redirect_to courses_path, notice: 'O curso foi desativado com sucesso.' }
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: 'Course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_course
      @course = Course.find(params[:id])
    end

    def course_params
      params.require(:course).permit(:image, :name, :duration, :when, :price, :about)
    end
end
