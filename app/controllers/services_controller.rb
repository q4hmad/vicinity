class ServicesController < ApplicationController
load_and_authorize_resource
 def index
   @services = Service.all

 end

 def show
   @service = Service.find(params[:id])
 end

 def new
   @service = Service.new
 end

 def edit
   @service = Service.find(params[:id])
 end

 def create
   @service = Service.new(service_params)
   @service.user = current_user
   if @service.save
     redirect_to @service, notice: 'Service was successfully created.'
   else
     render :new
   end
 end

 def update
   @service = Service.find(params[:id])
   if @service.update(service_params)
     redirect_to @service, notice: 'Service was successfully updated.'
   else
     render :edit
   end
 end

 def destroy
   @service.destroy
   redirect_to services_url, notice: 'Service was successfully destroyed.'
 end

 private
 def set_service
   @service = Service.find(params[:id])
 end

 def service_params
   params.require(:service).permit(:name, :detail, :price)
 end
end
