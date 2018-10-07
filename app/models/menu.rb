class Menu < ApplicationRecord
    self.table_name = "gourmet"
    self.primary_key = "gourmet_id"

    def getData(pref_id)        
        #Menu.find(1, 2, 3, 4)
        #Menu.where(gourmet_name: "ジンギスカン")
        Menu.where(prefecture_id: 1)
        
    end
end
