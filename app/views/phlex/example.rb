module Views::Phlex
	class Example < Phlex::HTML
		def initialize(emoji:)
			@emoji = emoji
		end

		def template
			div class: "prose max-w-[600px] text-center mx-auto p-8 border-dashed border-2 rounded-md border-fuschia-600" do
				h3 { "Phlex example #{@emoji}" }
				p { "This is a Phlex component being rendered by Lookbook." }
			end
		end
	end
end