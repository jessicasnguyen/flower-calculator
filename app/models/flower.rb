class Flower < ApplicationRecord
    def self.info
        Flower.find_by_sql("SELECT DISTINCT flo.name, flo.price, flo.bunch, CAST((flo.price / flo.bunch) AS decimal(16, 2)) as ppf, (CAST((flo.price / flo.bunch) as decimal(16, 2))*3) as retail
        FROM FLOWERS flo
        WHERE price <> 0
        ORDER BY flo.name")
    end

end
