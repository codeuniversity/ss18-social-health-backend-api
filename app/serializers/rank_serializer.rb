class RankSerializer < ActiveModel::Serializer
  attributes :id, :rank_id, :rank_type, :rank_name, :rank_description
end
