class ScorePaper < ApplicationRecord
  def is_level(score_judge)   
    
    if score_judge >=90
      return "S級"
      else if score_judge <=89 && score_judge >=80
        return "A級"
        else if score_judge <=79 && score_judge >=70
          return "B級"
          else if score_judge <=69 && score_judge >=60
            return "C級"
            else if score_judge <60
              return "D級"
            end
          end
         end
      end
    end
  end

end