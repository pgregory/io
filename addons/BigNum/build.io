Binding clone do(
	dependsOnHeader("gmp.h")
	dependsOnFrameworkOrLib("GMP", "gmp")
	setIsServerBinding(true)

	debs    atPut("gmp", "libgmp3-dev")
	ebuilds atPut("gmp", "gmp")
	pkgs    atPut("gmp", "gmp")
	rpms    atPut("gmp", "gmp-devel")
)
