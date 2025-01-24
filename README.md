# rpiExec

**Compiled Executables for the Raspberry Pi**

This repository contains **mbaigo systems** that have been cross-compiled for the Raspberry Pi. The Raspberry Pi was selected as the platform because it effectively demonstrates the potential of edge computing. Additionally, using a Raspberry Pi enhances security by isolating the system from personal computers. This reduces the risk of exposing sensitive data, prevents unauthorized access to personal files or applications, and limits the impact of potential vulnerabilities by confining operations to a dedicated, purpose-built device. The Raspberry Pi's small footprint and customizable environment further contribute to a secure and controlled deployment setup.

## Solution Deployment

- **Note**: Each system must be in its own directory.
- **Note**: Each system must be executable.

You can either clone the entire repository and then move each program to its own directory, or download each program individually and place it in its respective directory. For example, to download the `thermostat_rpi64` system:

```
mkdir thermostat
cd thermostat
wget https://github.com/sdoque/rpiExec/raw/main/thermostat_rpi64
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

The first time the program runs, it will create a `systemconfig.json` file. This file should be updated with the necessary configuration settings. On subsequent runs, the system will start and provide you with the address of its web server. You can access this address using a web browser to verify your setup.

## Remote Operation

If you are operating your Raspberry Pi remotely, you can use **ssh** to log in to the device. 

To manage multiple systems from a single terminal session and ensure they continue running even after disconnecting from the Raspberry Pi, use the **screen** utility. This allows you to create persistent sessions for each system, providing flexibility and reliability for remote operations.