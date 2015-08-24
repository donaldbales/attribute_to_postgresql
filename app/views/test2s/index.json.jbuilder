json.array!(@test2s) do |test2|
  json.extract! test2, :id, :attribute_timestamp_wotz, :attribute_timestamp_wtz
  json.url test2_url(test2, format: :json)
end
