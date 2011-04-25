# Running

Little macruby script to tell you via the exit code if an application is running or not on OS X.

## Usage

Call it with the bundle identifier of the application you want to test.

	$ macruby running.rb com.adiumX.adiumX
	$ echo $?
	0

If you want you can compile it into a binary and invoke that directly:

	$ macrubyc running.rb -o running
	$ ./running com.adiumX.adiumX
	$ echo $?
	0

## Exit codes

* 0: at least one process found using that bundle identifier - application is running
* 1: no processes found using that bundle identifier - application is not running
* 2: no bundle identifier passed
