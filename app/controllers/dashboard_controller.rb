class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index

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
