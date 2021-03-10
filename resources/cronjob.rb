resource_name :cronjob
property :filename, String, name_property: true

action :run do
  filename = new_resource.filename
  cron 'helper_cron_resource' do
    minute '0,30'
    command "sh #{filename}"
    action :create
  end
end
