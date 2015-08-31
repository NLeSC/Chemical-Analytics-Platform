# Chemical-Analytics-Platform

Vagrant and ansible scripts to create chemical analytics platform vm based on Knime analytics platform.

The VM contains:
- myChembl which includes
    - postgresql with chembl database
    - rdkit with postgresql cartridge
    - ipython notebook
    - chembl web services at http://localhost
- lxde desktop environment
- KNIME analytics platform
- offline read-only copy of https://github.com/NLeSC/Chemical-Analytics-Platform/wiki powered by Gollum.
- fpocket
- openbabel
- viewmol
- xdrawchem

# Usage

Requirements:

* VirtualBox, https://www.virtualbox.org
* Vagrant, https://www.vagrantup.com

Start virtual machine with

    vagrant init nlesc/chemical-analytics-platform
    vagrant up

# Build and push

Requirements:

* Virtualbox
* Vagrant
* Ansible
* Hashicorp Atlas account
* About 55Gb of disk space for building and packaging

Build box with

    vagrant up
    vagrant provision
    vagrant package

Upload the box to hashicorp atlas with

    vagrant login
    vagrant push

# References

The chemical analytics platform Vagrant box is based on the myChembl Vagrant box (https://github.com/chembl/mychembl).

M. Davies, M. Nowotka, G. Papadatos, F. Atkinson, G.J.P. van Westen, N Dedman, R. Ochoa and J.P. Overington  (2014)
'myChEMBL: A Virtual Platform for Distributing Cheminformatics Tools and Open Data' Challenges 5 (334-337) ([[pdf|http://www.mdpi.com/2078-1547/5/2/334/pdf]])
