--[[pod_format="raw",created="2024-12-28 18:54:09",modified="2024-12-28 18:59:19",revision=3]]
-- by keet

	p = {
	title="keet ",
	g=create_gui({
		x=0,y=0,
		width=300,height=300,
		fgcol = 0x090d
	}),
	copybuttons = {},
	init = function(self,explorer)
		local page = self
		add(self.copybuttons,self.g:attach({
			x=90, y=8, width=16, height=16,
			event = function(self,msg)
				if(msg.event == "release") then
					set_clipboard(pod({type="gif", w=16, h=16, frames=8, speed=1, clr=0, imgdata=page.gif3_gif_raw}))
					notify("gif added to clipboard")
				end
			end
		}))
		self.button6 = self.g:attach_button({
			x=3.5, y=119.5, width=67, height=35,
			label="<< otomir23 ",
			click=function()
				explorer:open_page("https://i.otomir23.me/pico/index.lua")
			end
		})
		add(self.copybuttons, self.g:attach({
			x=113, y=38, width=24, height=24,
			event = function(self,msg)
				if(msg.event == "release") then
					set_clipboard("--[[pod,pod_type=\"image\"]]unpod(\""..page.image7_raw.."\")")
					notify("image userdata added to clipboard")
				end
			end
		}))
	end,
	get_gui = function(self,explorer)
		return self.g
	end,
	draw = function(self,explorer)
		cls(7)
		print("this is keet's\ncool website!\n ",11,5,30)
		self.gif3:draw(90,8,16,16,1,0)
		rect(0,116,291,156,27)
		print("webring ",130,122,26)
		palt(0)
		palt(0, true)
		sspr(self.image7, 0, 0, 16,16,113,38,24,24)
		palt()
		print("contact me in\ntelegram - @keetsta\n ",10,37,3)
		
	end,
	update = function(self,explorer)
		
	end,
	gif3_gif_raw = "b64:bHo0AA8BAAA5AgAAyXB4dQBDIIAQBEBZkAIAX3AZWhlQBAAIX0AJmgkwBAAIXyAJugkQBAAJ_BBfIBpeEA4GPhoGThAeBi4aDgY_EC4WDhoeFh4QXhpeBAD7DwAJCr4KGQoGXgY_ChkKFk4WLgoZCh4WThYOChkKvgQANU4aTgYAAF4AADMA_wAOFh4aDhYeChkKPgYaPgYmAAEGAFoaLjouGgYA2xYOOhYOGhkaHgY6HgYcAAEGABraAgB-KQoOeg4KOQYAFz8eeh4EAAmPGQAZCn4KGRAGAAE-DloOCAACAB4ArDkOPxgOORA5Dj0GABdeBAAAEgBYIDk_OTAEABG5AgBpOT45QJlQAgATcBcCkJBZkFmQWZBZQA==",
	gif3 = new_gif("b64:bHo0AA8BAAA5AgAAyXB4dQBDIIAQBEBZkAIAX3AZWhlQBAAIX0AJmgkwBAAIXyAJugkQBAAJ_BBfIBpeEA4GPhoGThAeBi4aDgY_EC4WDhoeFh4QXhpeBAD7DwAJCr4KGQoGXgY_ChkKFk4WLgoZCh4WThYOChkKvgQANU4aTgYAAF4AADMA_wAOFh4aDhYeChkKPgYaPgYmAAEGAFoaLjouGgYA2xYOOhYOGhkaHgY6HgYcAAEGABraAgB-KQoOeg4KOQYAFz8eeh4EAAmPGQAZCn4KGRAGAAE-DloOCAACAB4ArDkOPxgOORA5Dj0GABdeBAAAEgBYIDk_OTAEABG5AgBpOT45QJlQAgATcBcCkJBZkFmQWZBZQA==",8),
	image7_raw = "b64:bHo0ADoAAAA4AAAA8ClweHUAQyAQEAQ3fFe8J9wXjCccB3xHjDcMF2xHDBdsJywnfAc8F8wnvCfMJ1wHbAdcF9wnvFd8Nw==",
	image7 = unpod("b64:bHo0ADoAAAA4AAAA8ClweHUAQyAQEAQ3fFe8J9wXjCccB3xHjDcMF2xHDBdsJywnfAc8F8wnvCfMJ1wHbAdcF9wnvFd8Nw==")
}