# frozen_string_literal: true

module Api
  module V1
    class RolesController < ApplicationController
      before_action :authenticate_request!, only: [:create]
      before_action :set_role, only: [:show]
      # GET roles
      def index
        paginate json: Role.ransack(params[:q]).result
      end

      # GET roles/:id
      def show
        render json: @role
      end

      # POST roles
      def create
        role = Role.new(role_params)
        if role.save
          role.create_permissions
          render json: { status: "Role created succesfully" }, status: :created
        else
          render json: { errors: role.errors.full_messages }, status: :bad_request
        end
      end

      private

      def set_role
        @role = Role.find(params[:id])
      end

      def role_params
        params.require(:role).permit(:name)
      end
    end
  end
end
