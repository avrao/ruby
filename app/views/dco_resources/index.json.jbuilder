json.array!(@dco_resources) do |dco_resource|
  json.extract! dco_resource, :id, :title, :title_link, :owned_by, :purpose, :added_by, :added_on, :outdated
  json.url dco_resource_url(dco_resource, format: :json)
end
