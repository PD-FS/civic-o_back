json.extract! question, :id, :question_type_id, :txt_desc_question, :score_question, :level, :sn_active, :created_at, :updated_at
json.url question_url(question, format: :json)
