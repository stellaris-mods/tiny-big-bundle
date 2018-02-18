-- modinfo read by stlrel from http://github.com/stellaris-mods/scripts
return {
	path = "folk_tinybigbundle",
	name = "Tiny Big Bundle",
	tags = { "Utilities", "Graphics" },
	picture = "thumb.png",
	supported_version = "1.9.*",
	originalUploader = "folk",
	remote_file_id = false,
	zip = {
		-- include all files from .gitignore
		gitignore = true,
		files = {} -- can contain relative file paths
	},
	exclude = {
		"README.md",
		"steam.bbcode",
		".git",
		".gitignore",
		".gitattributes",
		".gitmodules",
	}
}
