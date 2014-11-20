class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    @items = Item.all
    @item = Item.new
  end

  # GET /items/1
  # GET /items/1.json
  def show
    @item_attachments = @item.item_attachments.all
  end

  # GET /items/new
  def new
    @item = Item.new
    @item_attachment = @item.item_attachments.build
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        params[:item_attachments]['image'].each do |a|
          @item_attachment = @item.item_attachments.create!(:image => a, :item_id => @item.id)
        end
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.js   {}
        format.json { render json: @item, status: :created, location: @item }
      else
        format.html { render action: :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:title, :description, :location, :expiry_date, :lister_email, :lister_tel, :sms_notify, :image)
    end
end
