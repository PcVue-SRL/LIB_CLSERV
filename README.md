# LIB_CLSERV – Client-Server Library for PcVue 16

**LIB_CLSERV** is a library designed to extend **PcVue 16** functionality in **redundant Client-Server architectures**.  
It provides a complete set of tools for **centralized management of multiple stations**, **automatic synchronization** of users and configurations, and **real-time monitoring** of the SCADA network status.

![Dashboard Client-Server](./DOCS/Image/Screen_Mimic.png)

## ⚙️ Main Features

- **Client-Server and Redundancy Management**  
  Automatic coordination between primary and secondary servers, with safe failover switching.

- **User Synchronization**  
  Centralized update of the `user.dat`.

- **Station Monitoring**  
  Continuous update of `LAN.<Station>.*` variables showing status, users, versions, and running modes.

- **Alarm and Buzzer Control**  
  Centralized sound management and alarm override using `Suona()`, `SetSuona()`, and `ResetSuona()` routines.

- **Version and Restart Management**  
  Version comparison between project and library, and controlled PcVue runtime restart via `Restart_PcVue()`.

- **Traceability and Logging**  
  Every event (login, logout, updates, restarts) is logged through `TRACE("LOG", ...)` for full diagnostic visibility.

## 🧩 Internal Architecture

LIB_CLSERV is built around a main SCADA Basic program (`LIB_CLSERV\P\GENERAL`) that manages:
- **Cyclic routines** for synchronization and alarm control (`ControlloUpgrade`, `Suona`, `Main2`),
- **Updates** for user, version, and connection status,
- **Auxiliary functions** for controlled restart, logging, and screenshot capture (via tools in `/TP/`).

External utilities included:
- `svrestart.exe` – controlled restart of the PcVue runtime  
- `playwav.exe` – centralized sound control  
- `nircmd.exe` – automatic screen capture  
- `user_copy.bat`, `user_load.bat` – user file synchronization  

## 📦 Requirements

- **PcVue 16**  
- **Redundant architecture** with at least two servers and multiple clients configured  
- **Shared Central Folder** accessible in read/write mode from all stations  
- **Project structure** as follows: C:\PcVueProjects\MyProject


## 🚀 Quick Installation Guide

1. Copy the **LIB_CLSERV** folder into the project’s `LIB` directory.  
2. Copy the **TP** folder into the project root.  
3. Edit `user_copy.bat` and `user_load.bat` to match your Central Folder network paths.  
4. In **Application Architect**, create instances from the provided templates and adapt the mimic or global parameters as needed.  
5. In **SCADA Basic**, add a preload script (`PRELOAD`) containing:

```vba
Sub Main()
    PROGRAM("PRELOAD", "LIB_CLSERV/GENERAL", "")
    PROGRAM("EXECUTE", "LIB_CLSERV/GENERAL", "")
End Sub 
```
6. Generate and deploy the project across all stations.

## 📘 Full Technical Documentation
For full installation instructions, detailed configuration steps, and complete SCADA Basic code, refer to the comprehensive manual:
➡️ [**LIB_CLSERV Technical Guide (PDF)**](./DOCS/LIB_CLSERV_Technical_Guide.pdf)
