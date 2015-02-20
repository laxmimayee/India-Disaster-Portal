json.array!(@jobs) do |job|
  json.extract! job, :id, :company_name, :hiring_description, :company_url, :job_location, :email, :display_at, :approve
  json.url job_url(job, format: :json)
end
