# Luis Eduardo Alejos Marroquín
# 20062009

class Computer
    @@users = {}
    
    def initialize username, password
        @username = username
        @password = password
        
        @files = {}

		def create(name)
			if File.file?(name)
				puts("Error, el archivo ya existe")
			else
				time = Time.new
				out_file = File.new(name, "w")
				out_file.puts("#{name} created at #{time}")
				@files[name] = time
				out_file.close
			end
		end

		def ls
			a = @files.sort
			a.length.times do |i|
				puts "#{a[i][0]} created at #{a[i][1]}"
			end
		end

		def rm(name)
			if File.file?(name)
				puts "Archivo #{name} eliminado."
			else
				puts("Error, el archivo no existe #{name}")
			end
		end

    end
end