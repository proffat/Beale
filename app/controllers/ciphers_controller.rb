class CiphersController < ApplicationController
  # GET /ciphers
  # GET /ciphers.json
  def index
    @ciphers = Cipher.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ciphers }
    end
  end

  # GET /ciphers/1
  # GET /ciphers/1.json
  def show
    @cipher = Cipher.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cipher }
    end
  end

  # GET /ciphers/new
  # GET /ciphers/new.json
  def new
    @cipher = Cipher.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cipher }
    end
  end

  # GET /ciphers/1/edit
  def edit
    @cipher = Cipher.find(params[:id])
  end

  # POST /ciphers
  # POST /ciphers.json
  def create
    @cipher = Cipher.new(params[:cipher])

    respond_to do |format|
      if @cipher.save
        format.html { redirect_to @cipher, notice: 'Cipher was successfully created.' }
        format.json { render json: @cipher, status: :created, location: @cipher }
      else
        format.html { render action: "new" }
        format.json { render json: @cipher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ciphers/1
  # PUT /ciphers/1.json
  def update
    @cipher = Cipher.find(params[:id])

    respond_to do |format|
      if @cipher.update_attributes(params[:cipher])
        format.html { redirect_to @cipher, notice: 'Cipher was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @cipher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ciphers/1
  # DELETE /ciphers/1.json
  def destroy
    @cipher = Cipher.find(params[:id])
    @cipher.destroy

    respond_to do |format|
      format.html { redirect_to ciphers_url }
      format.json { head :ok }
    end
  end
end
