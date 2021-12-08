# SampleTables

This is a sample project to illustrate how to work with table objects in Rgogo Framework.

Actuarial tables are essential components of actuarial models. For example, premium rate tables and cash value tables are parts of product features. We need those tables in the models in order to project policy cash flows. Another common use case of actuarial tables is mortality assumptions. A mortality assumption is usually set based on a mortality table derived from industry or company experience studies.

This project is intended to be a supplement to the series of articles regarding how to work with actuarial tables in Rgogo Framework.  Those articles are posted in https://rmodel.io/projects/table-overview/

## Objectives

Tables in Rgogo are implemented using object oriented programming concept.  There are six basic table classes in Rgogo including:

| Class | Description |
| --- | --- |
| Table.AA | Attained age table |
| Table.IA | Issue age table |
| Table.PY | Policy year table |
| Table.IAPY | Issue age by policy year table | 
| Table.AABY | Attained age by birth year table | 
| Table.SU | Select and ultimate table | Select table: two-dimensional <br> Ultimate table: one-dimensional | Issue age and policy year |

The objectives of this sample project are to demonstrate the following:
1. how to create a table for each table class;
2. how to import table values from Excel when creating a table;
3. how to create a table package that contains your commonly-used tables and can be shared among other modeling projects;
4. how to look up a table;
5. how to export a table object to Excel.

## Prerequisite

You must install `Rgogo` package before using this sample project.  You can download these packages with the following commands if you have not done so:

```R
library(devtools)
install_github(repo = "ActPersp/Rgogo")
```

It is also assumed that you are using RStudio for development environment.

## Modifying Model

The sample R script files are located in the project _batch_ folder:

| File Name | Description |
| --- | --- |
| Scripts_01.R | Create an attained age table - example 1. |
| Scripts_02.R | Create an attained age table - example 2. |
| Scripts_03.R | Create an issue age table. |
| Scripts_04.R | Create a policy year table. |
| Scripts_05.R | Create an issue age by policy year table. |
| Scripts_06.R | Create an attained age by birth year table. |
| Scripts_07.R | Create a select and ultimate table. |
| Scripts_08.R | Look up tables using list as lookup key. |
| Scripts_09.R | Look up tables using coverage object as lookup key. |
| Scripts_10.R | Export a table object to Excel. |

Other folders in use include:

| Folder | Description |
| --- | --- |
| data-raw | This folder contains Excel files with table values to be imported to Rgogo table objects. |
| data | All created table objects are saved in R data format in this folder. |
| export | Table objects are exported to Excel files and saved in this folder. |





