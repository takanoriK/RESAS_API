class Menu < ApplicationRecord
    self.table_name = "gourmet"
    self.primary_key = "gourmet_id"
    belongs_to :gourmet

    def getData()
        data = Menu.where(prefecture_id: 1).pluck(:gourmet_name)
    end
end
