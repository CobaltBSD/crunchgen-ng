case "${1}" in
	build)
		../crunchgen -m Makefile example.conf 2>/dev/null
		make -C src
		make
		;;
	clean)
		make clean
		make -C src clean
		rm -fv example.cache example.c Makefile
		;;
	*)
		echo "Valid options: [build|clean]"
esac
