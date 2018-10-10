class Menu < ApplicationRecord
    self.table_name = "gourmet"
    self.primary_key = "gourmet_id"
    belongs_to :gourmet

    def getData(pref_id)
        data = Menu.where(prefecture_id: pref_id).pluck(:gourmet_name)
    end
end
