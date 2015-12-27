require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/anagram.rb')

get('/form') do
  erb(:form)
end

get('/list') do
  @root_word = params.fetch('root_word')
  @word_list = params.fetch('word_list').split(', ').unshift(@root_word).anagram?()
  erb(:list)
end
