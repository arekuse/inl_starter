function main ()
	print("\n")
	local dict = require "scripts.app.dict"
	local cart = require "scripts.app.cart"
	local nes = require "scripts.app.nes"
	local snes = require "scripts.app.snes"
	local dump = require "scripts.app.dump"
	local erase = require "scripts.app.erase"
	local flash = require "scripts.app.flash"
	local swim = require "scripts.app.swim"
	local jtag = require "scripts.app.jtag"
	local ciccom = require "scripts.app.ciccom"
	local fwupdate = require "scripts.app.fwupdate"
	local files = require "scripts.app.files"

	local curcart = require "scripts.nes.nrom"
	local cart_console = "Set cart_console"
	local process_opts = {
		test = false,
		read = true,
		erase = false,
		program = false,
		verify = false,
		dumpram = false,
		writeram = false,
		dump_filename = "ignore/dump.bin",
		flash_filename = "ignore/flash.bin",
		verify_filename = "ignore/verifyout.bin",
		dumpram_filename = "ignore/ramdump.bin",
		writeram_filename = "",
	}
	local console_opts = {
		mirror = nil, -- Only used by latest INL discrete flash boards, set to "H" or "V" to change board mirroring
		prg_rom_size_kb = 32,
		chr_rom_size_kb = 8,
		wram_size_kb = 0,
		rom_size_kbyte = 8 * 128,
	}

	local force_cart = true

	if (force_cart or cart.detect_console(true)) then
		if cart_console == "NES" or cart_console == "Famicom" then
			dict.io("IO_RESET")	
			dict.io("NES_INIT")	
			curcart.process(process_opts, console_opts)
			dict.io("IO_RESET")	
		elseif cart_console == "SNES" then
			curcart.process(process_opts, console_opts)
			dict.io("IO_RESET")	
		elseif cart_console == "SEGA" then
			curcart.process(process_opts, console_opts)
			dict.io("IO_RESET")	
		end
	end
end
main ()
