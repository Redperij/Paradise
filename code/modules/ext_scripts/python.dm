/proc/ext_python(var/script, var/args, var/scriptsprefix = 1)
	to_chat(world, "ext python [script] [args]")
	if(scriptsprefix) script = "scripts/" + script

	if(world.system_type == MS_WINDOWS)
		script = replacetext(script, "/", "\\")

	var/command = python_path + " " + script + " " + args
	shell("[command]")
	return
