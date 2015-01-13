require('sinatra')
require('sinatra/reloader')
require('./lib/jobs')
also_reload('lib/**/*.rb')

get('/') do
  @all_jobs = Jobs.all()
  erb(:index)
end

post('/results') do
  title = params.fetch("title")
  duties = params.fetch("duties")
  years = params.fetch("years")
  jobs = Jobs.new(title, duties, years)
  jobs.save()
  redirect '/'
end

post('/clear') do
  Jobs.clear()
  redirect '/'
end

post('/delete') do
    Jobs.delete_at_index(params.fetch('hidden_num').to_i)
  redirect '/'
end
