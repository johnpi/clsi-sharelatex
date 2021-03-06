Path = require "path"

module.exports =
	# Options are passed to Sequelize.
	# See http://sequelizejs.com/documentation#usage-options for details
	mysql:
		clsi:
			database: "clsi"
			username: "clsi"
			password: null
			dialect: "sqlite"
			storage: Path.resolve(__dirname + "/../db.sqlite")

	path:
		compilesDir:  Path.resolve(__dirname + "/../compiles")
		clsiCacheDir: Path.resolve(__dirname + "/../cache")
		synctexBaseDir: (project_id) -> Path.join(@compilesDir, project_id)

	# clsi:
	# 	strace: true
	# 	archive_logs: true
	# 	commandRunner: "docker-runner-sharelatex"
	# 	docker:
	# 		image: "quay.io/sharelatex/texlive-full"
	# 		env:
	# 			PATH: "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/texlive/2013/bin/x86_64-linux/"
	# 			HOME: "/tmp"
	# 		modem:
	# 			socketPath: false
	# 		user: "tex"
	# 		latexmkCommandPrefix: []
	# 		# latexmkCommandPrefix: ["/usr/bin/time", "-v"]         # on Linux
	# 		# latexmkCommandPrefix: ["/usr/local/bin/gtime", "-v"]  # on Mac OSX, installed with `brew install gnu-time`

	internal:
		clsi:
			port: 3013
			host: "localhost"

	
	apis:
		clsi:
			url: "http://localhost:3013"
			
	smokeTest: false
	project_cache_length_ms: 1000 * 60 * 60 * 24
	parallelFileDownloads:1
