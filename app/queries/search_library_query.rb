class SearchLibraryQuery
  def initialize(libraries = Library.all.order(:name))
    @libraries = libraries
  end

  def search(value="")
    @libraries.where("name LIKE ?", "%#{value}%")
  end
end