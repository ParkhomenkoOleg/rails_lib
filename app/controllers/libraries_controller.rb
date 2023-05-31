class LibrariesController < ApplicationController
  before_action :set_library, only: %i[ show edit update destroy pdf]


  # GET /libraries or /libraries.json
  # def index
  #   @libraries = Library.all
  # end

  def index
    @libraries = SearchLibraryQuery.new
    @libraries = @libraries.search(params["search"]).page(params[:page])

    respond_to do |format|
      format.html
      format.csv { send_data Library.to_csv, filename: "libraries-#{DateTime.now.strftime("%d%m%Y%H%M")}.csv"}
    end
  end

  def search
    puts params[:search]
    redirect_to "/libraries?search=#{params[:search]}"
  end

  def export_csv
    @hospitals = Library.all

    respond_to do |format|

      format.csv do
        response.headers['Content-Type'] = 'text/csv'
        response.headers['Content-Disposition'] = "attachment;filename=hospitals.csv"
      end
    end
  end

  def pdf
    pdf = Prawn::Document.new
    pdf.text @library.name, size: 32, style: :bold, color: 'CCCCFF'
    pdf.move_down 20
    pdf.text "Address: #{@library.address}"
    pdf.text "Year of creation: #{@library.year_of_creation}"
    pdf.text "City: #{@library.city}"
    pdf.text "Street address: #{@library.street_address}"
    send_data(pdf.render, filename: "libraries.pdf", type: "application/pdf", disposition: "inline")
  end

  # GET /libraries/1 or /libraries/1.json
  def show
    @library = Library.find(params['id'].to_i)
  end

  # GET /libraries/new
  def new
    @library = Library.new
  end

  # GET /libraries/1/edit
  def edit
  end

  # POST /libraries or /libraries.json
  def create
    @library = Library.new(library_params)

    respond_to do |format|
      if @library.save
        format.html { redirect_to library_url(@library), notice: "Library was successfully created." }
        format.json { render :show, status: :created, location: @library }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @library.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /libraries/1 or /libraries/1.json
  def update
    respond_to do |format|
      if @library.update(library_params)
        format.html { redirect_to library_url(@library), notice: "Library was successfully updated." }
        format.json { render :show, status: :ok, location: @library }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @library.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /libraries/1 or /libraries/1.json
  def destroy
    @library.destroy

    respond_to do |format|
      format.html { redirect_to libraries_url, notice: "Library was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_library
      @library = Library.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def library_params
      params.require(:library).permit(:name, :address, :year_of_creation)
    end
end
