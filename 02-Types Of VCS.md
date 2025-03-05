DevOps Cycle is an infinite loop where everything is continuous.

## Version Control System Tools:
Version control systems are also known as:
- Software Configuration Management (SCM)
- Source Code Management (SCM)

## Need for Version Control Systems
- How does a version control system work?
- Benefits of version control systems.

## Types of Version Control Systems
1. Centralized Version Control System (CVCS)
2. Distributed Version Control System (DVCS)

Q. **Difference between CVCS and DVCS**

## Need for Version Control Systems
As developers, we often write several files containing source code. 
- Developer → Write Code → Files

### Client Project Example
- Client provided requirements to Durga to develop a project.
- Client project consists of 100 files developed.
- The client suggested some changes.
- I modified some files' source code to meet the client's requirements.
- I gave a demo, and the client suggested more changes.
- I modified some files' source code again to meet the client's requirements.
- I gave a third demo.
- The client requested the first version only.

### Importance of Version Control
- We should not overwrite our code; every version must be maintained.
1. Maintaining multiple versions manually is a complex activity.
2. If Developer A and Developer B are working on the same code, we need to merge their contributions. If both developers create a file named `Util.java`, one copy will overwrite the other, leading to abnormal behavior.
3. Every change should be tracked, including:
   - Who made the change
   - When the change was made
   - What changes were made
4. Overwriting of code should not happen.
5. Developers must share their code with peers to enable collaborative work.
6. Parallel development is essential.


### How Version Control System Works

Version control system always talks about files which contain source code. Everyone requires a version control system to maintain different versions of their documents. For example:

- Tester: To maintain different versions of test scripts
- Architect: To maintain different versions of documents
- Project Manager: To maintain different versions of Excel sheets, etc.


```mermaid 
graph TB
    subgraph Repository["Repository under version control"]
        versions["Versions"]
    end

    subgraph Versions
        direction LR
        C1["c1 version-1"]
        C2["c2 version-2"]
        C3["c3 Version-3"]
    end

    subgraph WorkingDirectory["Working directory / workspace"]
        direction TB
        ClientApp["Client app"]
        Files["Files"]
    end

    subgraph Files
        direction LR
        A["A.java"]
        B["B.java"]
        C["C.java"]
    end

    Repository -->|checkout| WorkingDirectory
    WorkingDirectory -->|commit| Repository
    Repository --- Versions
    ClientApp --- Files

    classDef default fill:#f5f5f5,stroke:#333,stroke-width:1px;
    classDef repository fill:#e6f3ff,stroke:#0066cc,stroke-width:2px;
    classDef workspace fill:#e6ffe6,stroke:#006600,stroke-width:2px;
    classDef versions fill:#ffe6e6,stroke:#cc0000,stroke-width:1px;
    classDef files fill:#fff5e6,stroke:#cc6600,stroke-width:1px;
    class Repository repository;
    class WorkingDirectory workspace;
    class Versions versions;
    class Files files;
    class C1,C2,C3 versions;
    class A,B,C files;

    linkStyle 0,1 stroke:#ff6600,stroke-width:2px;
```

### The Basic Terminology of Version Control System:

**_Working Directory:_** Where developers are required to create/modify files. Here version control is not applicable. Here we won't use the work like version-1, version-2 etc.

**_Repository:_** Where we have to store files and metadata. Here version control is applicable. Here we can talk about versions like version-1, version-2 etc.

**_Commit:_** The process of sending files from working directory to the repository.

**_Checkout:_** The process of sending files from repository to working directory.

**_Benefits of Version Control System:_**

1. We can maintain different versions and we can choose any version based on client requirement.
2. With every version/commit we can maintain metadata like:
	* commit message
	* who did changes
	* when he did the change
	* what changes he did
3. Developers can share the code to the peer developers in very easy way.
4. Multiple developers can work in collaborative way.
5. Parallel development.
6. We can provide access control like:
	* who can read code
	* who can modify code