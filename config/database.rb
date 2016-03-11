configure :development do
  # Log queries to STDOUT in development
  if Sinatra::Application.development?
    ActiveRecord::Base.logger = Logger.new(STDOUT)
  end

  set :database, {
    adapter: "sqlite3",
    database: "db/db.sqlite3"
  }

  # Load all models from app/models, using autoload instead of require
  # See http://www.rubyinside.com/ruby-techniques-revealed-autoload-1652.html
  Dir[APP_ROOT.join('app', 'models', '*.rb')].each do |model_file|
    filename = File.basename(model_file).gsub('.rb', '')
    autoload ActiveSupport::Inflector.camelize(filename), model_file
  end

end

configure :production do
 db = URI.parse(ENV['DATABASE_URL'] || 'postgres://bxbdalxlxjabue:jchV6NlpjhyVjha9Rc1qK2wbiK@ec2-107-21-120-109.compute-1.amazonaws.com:5432/d3a6u698vgnnar')

 ActiveRecord::Base.establish_connection(
   :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
   :database => db.path[1..-1],
   :encoding => 'utf8'
 )
end
