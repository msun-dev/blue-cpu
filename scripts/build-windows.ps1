$test_exe = .\bin\BlueTest.exe;

make -f .\scripts\makefiles\windows 
if ($?) {
	$test_exe
	echo "Compilation succeeded."
}
