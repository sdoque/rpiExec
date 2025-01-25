# rpiExec

**Compiled Executables for the Raspberry Pi**

This repository contains **mbaigo systems** that have been cross-compiled for the Raspberry Pi. The Raspberry Pi was selected as the platform because it effectively demonstrates the potential of edge computing. Additionally, using a Raspberry Pi enhances security by isolating the system from personal computers. This reduces the risk of exposing sensitive data, prevents unauthorized access to personal files or applications, and limits the impact of potential vulnerabilities by confining operations to a dedicated, purpose-built device. The Raspberry Pi's small footprint and customizable environment further contribute to a secure and controlled deployment setup.

## Solution Deployment

- **Note**: Each system must be in its own directory.
- **Note**: Each system must be executable.

You can either [clone](#cloning-the-repository) the entire repository and then move each program to its own directory, or download each program individually and place it in its respective directory. For example, to download the `thermostat_rpi64` system:

```
mkdir thermostat
cd thermostat
wget https://github.com/sdoque/rpiExec/raw/main/thermostat/thermostat_rpi64
```

The program must be an executable. You can verify this by typing `ls -l`. In the Unix file permissions, the output should include at least one **x**, indicating execute permissions. For a typical executable file, the permissions might look like `-rwxr-xr-x`, where:

- **r** indicates read permission.
- **w** indicates write permission.
- **x** indicates execute permission.

If the file does not have execute permission, you can change its permissions using the following command:

```
chmod +x thermostat_rpi64
```

You can confirm the mode has changed by repeating the listing command (`ls -l`).

## Running the Program

The program must be started from the terminal (Command Line Interface) by typing:

```
./thermostat_rpi64
```

The first time the program runs, it creates a `systemconfig.json` file. This file should be updated with the necessary configuration settings. On subsequent runs, the system starts and provides you with the address of its web server. You can access this address using a web browser to verify your setup.

## Remote Operation
If you are operating your Raspberry Pi remotely, you can use **ssh** to log in to the device. 

To manage multiple systems from a single terminal session and ensure they continue running even after disconnecting from the Raspberry Pi, use the [**screen**](#screen) utility. This allows you to create persistent sessions for each system, providing flexibility and reliability for remote operations.

## Cloning the repository
For a rapid evaluation of the demonstration, on can clone the rpiExec repository with 

```
git clone https://github.com/sdoque/rpiExec.git
```

You then have to change the program files permission to be executable one, which can be done with one command. You want to execute the command from the *rpiExec* directory where the subdirectories are located and target files ending with `_rpi64`, you can use the following command:

```
find . -type f -name '*_rpi64' -exec chmod +x {} \;
```

### Explanation:
- `.`: Specifies the current directory (*rpiExec*) as the starting point for the search.
- `-type f`: Ensures that only files are targeted, not directories.
- `-name '*_rpi64'`: Matches files that end with `_rpi64`.
- `-exec chmod +x {} \;`: Makes each matching file executable.


## Screen
Screen is a comprehensive window manager that facilitates the simultaneous execution of multiple processes on a physical terminal. This enables us to initiate and maintain the operation of various systems concurrently.

For instance, we can consider the Service Registrar as an example, commencing from the *rpiExec* directory.

 ```
 screen -S esr
 ```

where  ```-S esr```Naming the window session as “esr” creates a new “window” or view where one can initiate the system of interest.

 ```
 cd esr
 ./esr
 ```

To detach from this window while leaving it running and return to the terminal, one must first type ```[Ctrl + A]```Subsequently, type the desired text. ```D```To detach, one returns to the original terminal view. To list all the windows created, one types: ```screen -ls```To return to a specific window, one types the window’s title. ```screen -r esr```In the context of the assigned name of the desired window, denoted as *esr*,

---
Annotations: 0,4451 SHA-256 0d0d08fa0e589ff10cd53abd2a68cda3  
&Writing Tools: 3518,4 3524 3527,4 3552,83 3642,6 3656,19 3682,59 3791,9 3880,6 3909 3913 3921 3960,8 3991 4104,5 4136,36 4180 4189 4276 4294 4324 4335,20 4375,17 4432,19  
@Jan van Deventer <van.deventer@me.com>: 2526 2537,10 3833 3860,2 3993 4019  
...
