class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image, :measures

  def measures
    self.object.measures.map do |measure|
      measure.id
    end
  end
  
end
