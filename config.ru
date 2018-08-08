# config.ru
require 'rack'
class MiPrimeraWebApp
  def call(env)
    if env['REQUEST_PATH'] == '/'
    	file = File.read('index.html')
		[200, { 'Content-Type' => 'text/html' }, [file]]
    elsif env['REQUEST_PATH'] == '/otro.html'
    	file = File.read('otro.html')
		[200, { 'Content-Type' => 'text/html' }, [file]]
    else
    	file = File.read('404.html');
    	[404, { 'Content-Type' => 'text/html' }, [file]]
    end
  end
end
run MiPrimeraWebApp.new