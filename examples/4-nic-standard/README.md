# Example: Standard 4-NIC deployment of FortiGate HA active-passive

This example shows how to use the module to deploy FortiGate HA cluster with 2 network interfaces for connections (external and internal) and a dedicated interfaces for HA sync and another one for management. While a 4-NIC approach matches the usual deployments, since version 7.0 it is possible to use the same interface for both HA sync and dedicated management functions. See (../3-nic-basic)[../3-nic-basic] for example.

In contrary to the *basic* examples, this one includes common non-obligatory options for the FortiGate HA module like labels, service_account or machine_type. Copy **main.tf** file contents fro mthis example as base for your own code.