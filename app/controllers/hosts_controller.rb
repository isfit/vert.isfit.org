class HostsController < ApplicationController
  before_action :set_host, only: [:show, :edit, :update, :destroy]

  # GET /hosts
  # GET /hosts.json
  def index
    @hosts = Host.all
  end

  # GET /hosts/1
  # GET /hosts/1.json
  def show
    redirect_to root_path if @host.id != session[:id]
  end

  # GET /hosts/new
  def new
    @host = Host.new
  end

  # GET /hosts/1/edit
  def edit
  end

  # POST /hosts
  # POST /hosts.json
  def create
    @host = Host.new(host_params)

    respond_to do |format|
      if @host.save
        session[:id] = @host.id
        format.html { redirect_to @host, notice: 'Vi har registrert deg som vert med info:' }
        format.json { render :show, status: :created, location: @host }
        UserMailer.welcome_email(@host).deliver
      else
        format.html { render :new }
        format.json { render json: @host.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_host
      @host = Host.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def host_params
      params.require(:host).permit(:firstname, :lastname, :address, :zipcode, :city, :phone, :capacity, :comments, :email, :sex, :beenhost, :animales, :sleeping, :isstudent, :extraday)
    end
end
