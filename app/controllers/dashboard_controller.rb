class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    redirect_to lobitos_path if current_user.head_unit? && current_user.chefe_1_seccao?
    redirect_to juniores_path if current_user.head_unit? && current_user.chefe_2_seccao?
    redirect_to seniores_path if current_user.head_unit? && current_user.chefe_3_seccao?
    redirect_to caminheiros_path if current_user.head_unit? && current_user.chefe_4_seccao?

    @lobitos = Confirmation.all.where(status: true).map{|con| con if con.section.name == "1ª Secção"}.compact
    @juniores = Confirmation.all.where(status: true).map{|con| con if con.section.name == "2ª Secção"}.compact
    @seniores = Confirmation.all.where(status: true).map{|con| con if con.section.name == "3ª Secção"}.compact
    @caminheiros = Confirmation.all.where(status: true).map{|con| con if con.section.name == "4ª Secção"}.compact
  end

  def lobitos
    @confirmations = Confirmation.all.where(status: true).map{|con| con if con.section.name == "1ª Secção"}.compact
  end

  def juniores
    @confirmations = Confirmation.all.where(status: true).map{|con| con if con.section.name == "2ª Secção"}.compact
  end

  def seniores
    @confirmations = Confirmation.all.where(status: true).map{|con| con if con.section.name == "3ª Secção"}.compact
  end

  def caminheiros
    @confirmations = Confirmation.all.where(status: true).map{|con| con if con.section.name == "4ª Secção"}.compact
  end

  def dirigentes
    @confirmations = Confirmation.all.where(status: true).map{|con| con if con.section.name == "Dirigente"}.compact
  end

end
