# Catawiki Xcode template

This repository contains Xcode templates that we use for iOS development in Catawiki.
It currently contains 4 templates:
- VIPER Module
- VIPER Module tests
- VIPER Component tests
- Quick Spec

## Installation
Run `install.sh` script to copy the template to proper location

## VIPER Module Template
### Purpose
To save time setting up new VIPER modules, and to avoid making mistakes in the setup (strong-weak references, using outdated conventions).

### Usage
1. Create a group for new module in project tree
2. Right click to `New file... -> AppModule` 
3. Enter module name
4. Skip the file name (don't change)
5. Enjoy

## VIPER Module Tests Template
### Purpose
To save time setting up tests for new VIPER modules, and to avoid making mistakes in the setup.

### Usage
1. Create a group for new module in project tree
2. Right click to `New file... -> AppModuleTests` 
3. Enter module name
4. Skip the file name (don't change)
5. Enjoy

## VIPER Component Tests Template
### Purpose
To save time setting up tests for new VIPER components, and to avoid making mistakes in the setup.

### Usage
1. Create a group for new component in project tree
2. Right click to `New file... -> AppComponentTests` 
3. Enter component name
4. Skip the file name (don't change)
5. Enjoy

## Quick Spec Template
### Purpose
To save time setting up new test classes.

_Note_: this template explicitly imports the `Catawiki` framework.

### Usage
1. Right click to `New file... -> Quick Spec Class` 
2. Enter name of the file/class **being tested**: `BurritoPresenter`, **not** `BurritoPresenterSpec`
3. The `ClassnameSpec.swift` file is created and pre-filled for you.
4. Enjoy
