case "${1}" in
	build)
		../crunchgen -m Makefile example.conf 2>/dev/null
		make
		;;
	clean)
		make clean
		rm -fv example.cache example.c Makefile
		find -name "*.o" -delete
		;;
	*)
		echo "Valid options: [build|clean]"
esac
