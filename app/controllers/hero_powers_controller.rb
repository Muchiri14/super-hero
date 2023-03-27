class HeroPowersController < ApplicationController
    def create
      hero = Hero.find_by(id: hero_power_params[:hero_id])
      power = Power.find_by(id: hero_power_params[:power_id])
  
      if hero && power
        hero_power = hero.hero_powers.build(power: power, strength: hero_power_params[:strength])
  
        if hero_power.save
          render json: hero.as_json(include: { powers: { only: [:id, :name, :description] } })
        else
          render json: { errors: hero_power.errors.full_messages }, status: :unprocessable_entity
        end
      else
        render json: { errors: ['Hero or Power not found'] }, status: :unprocessable_entity
      end
    end
  
    private
  
    def hero_power_params
      params.require(:hero_power).permit(:hero_id, :power_id, :strength)
    end
  end
  