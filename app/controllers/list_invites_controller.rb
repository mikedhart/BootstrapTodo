class ListInvitesController < ApplicationController
  before_action :set_list_invite, only: [:show, :edit, :update, :destroy]

  # GET /list_invites
  # GET /list_invites.json
  def index
    @list_invites = ListInvite.all
  end

  # GET /list_invites/1
  # GET /list_invites/1.json
  def show
  end

  # GET /list_invites/new
  def new
    @list_invite = ListInvite.new(list_id: params[:list_id])
  end

  # GET /list_invites/1/edit
  def edit
  end

  # POST /list_invites
  # POST /list_invites.json
  def create
    @list_invite = ListInvite.new(list_invite_params.merge(user_id: current_user.id))

    respond_to do |format|
      if @list_invite.save
        format.html { redirect_to lists_path, notice: 'List invite was successfully created.' }
        format.json { render action: 'show', status: :created, location: @list_invite }
      else
        format.html { render action: 'new' }
        format.json { render json: @list_invite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /list_invites/1
  # PATCH/PUT /list_invites/1.json
  def update
		ListUser.create!(user: User.where(email: @list_invite.email).last, list: @list_invite.list)

    respond_to do |format|
      if @list_invite.update(list_invite_params)
        format.html { redirect_to lists_path, notice: 'List invite was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @list_invite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list_invites/1
  # DELETE /list_invites/1.json
  def destroy
    @list_invite.destroy
    respond_to do |format|
      format.html { redirect_to list_invites_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list_invite
      @list_invite = ListInvite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_invite_params
      params.require(:list_invite).permit(:list_id, :user_id, :email, :complete)
    end
end
