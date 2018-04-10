require "sinatra"
require_relative "random_pairs.rb"
enable :sessions

get "/" do
    erb :page_1
end

post "/keep" do
    session[:liked_pairs] = []
    total_names = params[:names]
    names = total_names[0].values
    session[:pairs] = random_pairs(names)
    redirect "/list_of_pairs"
end

get "/list_of_pairs" do
    session[:pairs]
    erb :page_2, locals:{pairs: session[:pairs]}
end

post "/redo" do
    session[:pair] = params[:liked_pairs]
    session[:hated_pairs] = []
    session[:pair].each do |pairs|
        session[:hated_pairs].push(pairs.split(','))
    end
    redirect "/done_yet"
end

get "/done_yet" do 
    session[:pair]
    session[:pairs]

    leftover_names = Array.new
    leftover_names = session[:pairs] - session[:hated_pairs]
    leftover_names = leftover_names.flatten
    session[:liked_pairs] << leftover_names
    if leftover_names.size == 0
        redirect "/finished"
    else
        session[:pairs] = random_pairs(session[:hated_pairs].flatten)
        redirect "/list_of_pairs"
    end
end

post "/done" do
    session[:pairs].each do |pairs|
        session[:liked_pairs] << pairs
    end
    redirect "/finished"
end

get "/finished" do
    session[:liked_pairs]
    erb :final_page, locals:{liked_pairs: session[:liked_pairs]}
end

get "/news" do
    erb :news
end

get "/contact" do
    erb :contact
end

get "/about-us" do
    erb :about
end