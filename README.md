# Recommended modular structure for terraform projects without HCL or enterprise

1. Put environments / names of k8s clusters into environments/
    - terraform state remote reference goes into backend.tf
    - code goes into main.tf / variables.tf
    - if multiple modules used, group tf files into logical groups instead (e.g. flux.tf, vpc.tf, network.tf),
    have one file for one module
    - do not overuse modules, use if it makes management easier
    - modules should be opinionated and designed to do one thing well. If a module's function or purpose is hard to explain, the module is probably too complex. 
    - the module should only expose the most commonly modified arguments as variables. Initially, the module should only support variables that you are most likely to need.
2. Put repeatable code into modules
3. Do not pass variables unless needed, always ask if you need to pass a variable or it can be default everywhere


```
.
├── environments
│   ├── dev
│   │   ├── backend.tf
│   │   └── main.tf
│   └── prod
│       ├── backend.tf
│       └── main.tf
├── modules
│   └── my-module
│       └── main.tf
└── README.md
```


