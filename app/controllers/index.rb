get '/' do
  erb :index
end

get '/:user_input' do
  @user_input = params[:user_input]
  @anagrams = Word.anagram_matches(@user_input)
  erb :index
end

post '/anagram' do

  redirect "/#{params[:user_input]}"
end
