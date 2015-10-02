$:.unshift(File.expand_path("..", __FILE__))

module Test2
	# autoload :A, "a"
	# # autoload :C, "a"
	# p A.method_name
	# p A::C.new.method_in_c
	module Test
		def self.m
			"m in Test"
		end
	end
end

p Test2::Test.m

Test2.autoload :MyModule, "a"
# autoload :C, "a"
p Test2::MyModule.method_name
p Test2::MyModule::C.new.method_in_c

# Test2.module_eval do
# 	autoload :MyModule, "a"
# 	puts MyModule.method_name
# end