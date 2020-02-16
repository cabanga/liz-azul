class UsuariosController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :destroy, :associate_user]

    def index
        @users = User.where.not(role: 0)
    end


    def show
    end

    def new
        @user = User.new
    end

    def edit
    end

    def associate_user
    end

    def create
        @user = User.new

        @user.nome = params[:nome]
        @user.telefone = params[:telefone]
        @user.email = params[:email]
        @user.password = params[:password]
        @user.password_confirmation = params[:password_confirmation]

        respond_to do |format|
            if @user.save
                associate = UserAdmin.create(user_id: @user.id, agrupamento_id: params[:agrupamento_id])
                puts "=="*20
                p associate

                format.html { redirect_to admin_manager_path, notice: 'user was successfully created.' }
                format.json { render :show, status: :created, location: @user }
            else
                format.html { render :new }
                format.json { render json: @user.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
        respond_to do |format|
            if @user.update(user_params)
                format.html { redirect_to @user, notice: 'user was successfully updated.' }
                format.json { render :show, status: :ok, location: @user }
            else
                format.html { render :edit }
                format.json { render json: @user.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @user.destroy
        respond_to do |format|
            format.html { redirect_to usuarios_url, notice: 'User was successfully destroyed.' }
            format.json { head :no_content }
        end
    end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:nome, :telefone, :email, :agrupamento_id, :password, :password_confirmation)
    end



end