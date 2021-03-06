module Adstack
  class AdGroup < Item
    include Adstack::Updateable

    field :id,            :f, :ro, :s
    field :campaign_id,   :f, :r, :s
    field :campaign_name, :f, :ro, :s
    field :name,          :f, :s
    field :status,        :f, :s, w: %w{ENABLED PAUSED DELETED}
    field :stats,         :ro

    service_api :ad_group

    parent :campaign

    def child_params
      super(ad_group_id: self.id)
    end

    def keyword_strings
      self.keywords.map &:to_s
    end

  end
end
