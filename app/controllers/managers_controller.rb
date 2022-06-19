class ManagersController < ApplicationController
  before_action :set_manager, only: [:edit, :update]

  def index
    @q = Manager.ransack(params[:q])
    @managers = @q.result(distinct: true)
    @manager = Manager.new
  end

  def edit
  end

  def create 
    manager = Manager.new(manager_params)
    if manager.save
      redirect_to managers_path, notice: 'Proyecto creado de manera exitosa'
    else
      redirect_to managers_path, alert: 'Error al crear el proyecto'
    end
  end

  def update
    if @manager.update(manager_params)
      redirect_to managers_path, notice: 'Proyecto actualizado correctamente'
    else
      redirect_to managers_path, alert: 'Error al actualizar el proyecto'
    end
   end

  
   



  private

  def set_manager
    @manager = Manager.find(params[:id])
  end


  def manager_params
    params.require(:manager).permit(:project, :description, :state, :start_date, :end_date)
  end

 

end
