class MyMailsController < ApplicationController
  # GET /my_mails
  # GET /my_mails.json
  def index
    @my_mails = MyMail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @my_mails }
    end
  end

  # GET /my_mails/1
  # GET /my_mails/1.json
  def show
    @my_mail = MyMail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @my_mail }
    end
  end

  # GET /my_mails/new
  # GET /my_mails/new.json
  def new
    @my_mail = MyMail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @my_mail }
    end
  end

  # GET /my_mails/1/edit
  def edit
    @my_mail = MyMail.find(params[:id])
  end

  # POST /my_mails
  # POST /my_mails.json
  def create
    @my_mail = MyMail.new(params[:my_mail])

    respond_to do |format|
      if @my_mail.save
        format.html { redirect_to @my_mail, notice: 'My mail was successfully created.' }
        format.json { render json: @my_mail, status: :created, location: @my_mail }
      else
        format.html { render action: "new" }
        format.json { render json: @my_mail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /my_mails/1
  # PUT /my_mails/1.json
  def update
    @my_mail = MyMail.find(params[:id])

    respond_to do |format|
      if @my_mail.update_attributes(params[:my_mail])
        format.html { redirect_to @my_mail, notice: 'My mail was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @my_mail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_mails/1
  # DELETE /my_mails/1.json
  def destroy
    @my_mail = MyMail.find(params[:id])
    @my_mail.destroy

    respond_to do |format|
      format.html { redirect_to my_mails_url }
      format.json { head :ok }
    end
  end
end
