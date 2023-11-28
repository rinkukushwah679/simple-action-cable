class ArtilesController < ApplicationController
  before_action :set_artile, only: %i[ show edit update destroy ]

  # GET /artiles or /artiles.json
  def index
    @artiles = Artile.all
    # require "uri"
    # require "net/http"

   

    # #Get access_token
    # # uri = URI.parse("https://api-platform-sandbox.cvent.com/ea/oauth2/token?grant_type=client_credentials&client_id=0oa1kjqakw0RGhuKv0h8&scope=event%2Fevents%3Aread")
    # uri = URI.parse("https://api-platform-sandbox.cvent.com/ea/oauth2/token?grant_type=client_credentials&client_id=#{ENV['CVENT_CLIENT_ID']}&scope=event%2Fevents%3Awrite")
    # request = Net::HTTP::Post.new(uri)
    # client_id = ENV['CVENT_CLIENT_ID']
    # client_secret = ENV['CVENT_CLIENT_SECRET']
    # request.content_type = "application/x-www-form-urlencoded"
    # request["Authorization"] = "Basic #{Base64.strict_encode64("#{ENV['CVENT_CLIENT_ID']}:#{ENV['CVENT_CLIENT_SECRET']}")}"
    # # request["Authorization"] = "Basic #{Base64.strict_encode64(ENV['CVENT_CLIENT_ID']:ENV['CVENT_CLIENT_SECRET'])}"

    # req_options = {
    #   use_ssl: uri.scheme == "https",
    # }
    # @token = []
    # response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
    #   res = http.request(request)
    #   byebug
    #   @token << JSON.parse(res.body)['access_token']
    # end


    # #Validate Access Token

    # uri = URI.parse("http://api-platform-sandbox.cvent.com/ea/token-validation")
    # request = Net::HTTP::Get.new(uri)
    # request["Accept"] = "application/json"
    # request["Authorization"] = "Bearer #{@token.first}"

    # req_options = {
    #   use_ssl: uri.scheme == "https",
    # }

    # response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
    #   http.request(request)
    # end

    # #get event lists
    # uri = URI.parse("https://api-platform-sandbox.cvent.com/ea/events")
    # request = Net::HTTP::Get.new(uri)
    # request["Accept"] = "application/json"
    # request["Authorization"] = "Bearer #{@token.first}"

    # req_options = {
    #   use_ssl: uri.scheme == "https",
    # }
    # @event_list = []
    # response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
    #   res = http.request(request)
    #   @event_list << JSON.parse(res.body)
    # end

    # @event_list.first['data'].last










    # curl --location --request POST 'https://api-platform-sandbox.cvent.com/ea/oauth2/token?grant_type=client_credentials&client_id=0oa1kjqakw0RGhuKv0h8&scope=event%2Fevents%3Aread' \
    # --header 'Content-Type: application/x-www-form-urlencoded' \
    # --header 'Authorization: Basic MG9hMWtqcWFrdzBSR2h1S3YwaDg6MHRIX29Rdk9Wb1p5UDgxbjRVby0yaGd6elotR2haSzA5cGJQNFAxMg==' \
    # --data ''


    # curl --location --request GET 'https://api-platform-sandbox.cvent.com/ea/token-validation' \
    # -H 'Accept: application/json' \
    # -H 'Authorization: Bearer eyJraWQiOiJySkwxYWNJNGZuX3hzeS0xTnlUbmJyOGRMclhic3g4UDJ6MXI0UG1tTXQ0IiwiYWxnIjoiUlMyNTYifQ.eyJ2ZXIiOjEsImp0aSI6IkFULnFXZTB6RGEtTll4aXFIYTV1X2VUeWZVQUxYa3o3UHJHaThqUWhwb3l2STAiLCJpc3MiOiJodHRwczovL3Nzby1zYW5kYm94LmN2ZW50LmNvbS9vYXV0aDIvYXVzeXR3MGR4ZWpsOGJCaTEwaDciLCJhdWQiOiJhcGktcGxhdGZvcm0iLCJpYXQiOjE2NzgxOTE1MjEsImV4cCI6MTY3ODE5NTEyMSwiY2lkIjoiMG9hMWtqcWFrdzBSR2h1S3YwaDgiLCJzY3AiOlsiZXZlbnQvZXZlbnRzOnJlYWQiXSwic3ViIjoiMG9hMWtqcWFrdzBSR2h1S3YwaDgifQ.OSNlOrUcE9Z2jJrRv_oN2qiNSWNKPi9YOWAR5wOzo9VFVdgYXSqo2WVtc8bAOkVuIWmhX4bGoLWyFBz9OfuoXbcMmjt0ClQhdxOY9JUYG6VAudw9exUqvtRxfCE8kp3BwGa5lfQ3o0gpNUr1hX66zI_wUtj3qnB76v5c78J9dH3UyNUzA6tf90xO3JkdfBKOPsEVezadLIhcCsP_MBYFcDolh_FHO7_v4mPiuolrw9_Itbbf4HYdYaqVCuq_w8WyvE_aCTgz-DPGkvv-eNllXLj61xcbmA0LUZruJzHNzq_GJjITaFkJKtIc8oXAH6i8YsHgSJTC-_iDgXj2-oBiMQ'



  end

  # GET /artiles/1 or /artiles/1.json
  def show
    
  end

  def date_record
    render json: [{"title":"Event 49 for testingd","start":"2023-06-22T09:00:00.000Z","end":"2023-06-23T10:00:00.000Z"},{"title":"Event 488","start":"2023-06-18T11:31:00.000Z","end":"2023-06-23T11:31:00.000Z"},{"title":"Event43","start":"2023-09-14T11:29:00.000Z","end":"2023-09-22T11:29:00.000Z"},{"title":"new event 42","start":"2023-06-08T11:22:00.000Z","end":"2023-06-23T11:22:00.000Z"}]
  end

  # GET /artiles/new
  def new
    @artile = Artile.new
  end

  # GET /artiles/1/edit
  def edit
  end

  # POST /artiles or /artiles.json
  def create
    @artile = Artile.new(artile_params)

    respond_to do |format|
      if @artile.save
        format.html { redirect_to artile_url(@artile), notice: "Artile was successfully created." }
        format.json { render :show, status: :created, location: @artile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artiles/1 or /artiles/1.json
  def update
    respond_to do |format|
      if @artile.update(artile_params)
        format.html { redirect_to artile_url(@artile), notice: "Artile was successfully updated." }
        format.json { render :show, status: :ok, location: @artile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artiles/1 or /artiles/1.json
  def destroy
    @artile.destroy

    respond_to do |format|
      format.html { redirect_to artiles_url, notice: "Artile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artile
      @artile = Artile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artile_params
      params.require(:artile).permit(:title)
    end
end
