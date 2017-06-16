json.extract! score_paper, :id, :name, :studentID, :score, :created_at, :updated_at
json.url score_paper_url(score_paper, format: :json)
