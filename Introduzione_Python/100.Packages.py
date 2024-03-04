# The Jupyter Notebook is an interactive environment for running code in the browser.
# It is a great tool for exploratory data analysis and is widely used by data scientists.
# While the Jupyter Notebook supports many programming languages, we only need
# the Python support. The Jupyter Notebook makes it easy to incorporate code, text,
# and images, and all of this book was in fact written as a Jupyter Notebook.

# 'NumPy' is one of the fundamental packages for scientific computing in Python. It
# contains functionality for multidimensional arrays, high-level mathematical functions
# such as linear algebra operations and the Fourier transform, and pseudorandom
# number generators.

# 'SciPy' is a collection of functions for scientific computing in Python. It provides,
# among other functionality, advanced linear algebra routines, mathematical function
# optimization, signal processing, special mathematical functions, and statistical distributions.
#The most important part of SciPy for us is scipy.sparse: this provides
# sparse matrices, which are another representation that is used for data

# 'matplotlib' is the primary scientific plotting library in Python. It provides functions
# for making publication-quality visualizations such as line charts, histograms, scatter
# plots, and so on. Visualizing your data and different aspects of your analysis can give
# you important insights, and we will be using matplotlib for all our visualizations.

# pandas is a Python library for data wrangling and analysis. It is built around a data
# structure called the DataFrame that is modeled after the R DataFrame. Simply put, a
# pandas DataFrame is a table, similar to an Excel spreadsheet. pandas provides a great
# range of methods to modify and operate on this table; in particular, it allows SQL-like
# queries and joins of tables. In contrast to NumPy, which requires that all entries in an
# array be of the same type, pandas allows each column to have a separate type (for
# example, integers, dates, floating-point numbers, and strings). Another valuable tool
# provided by pandas is its ability to ingest from a great variety of file formats and databases,
# like SQL, Excel files, and comma-separated values (CSV) files.


# PACCHETTI VARI
import scipy
from scipy import signal 
import numpy as np 
import matplotlib.pyplot as plt 
import pandas as pd

# ALTRI PACCHETTI
import cartopy # MANCA DESCRIZIONE
import cartopy.crs as ccrs # MANCA DESCRIZIONE
import cartopy.feature as cfeature # MANCA DESCRIZIONE
from matplotlib.dates import DateFormatter 
from cartopy.util import add_cyclic_point # MANCA DESCRIZIONE
import xarray as xr # MANCA DESCRIZIONE
import copy # MANCA DESCRIZIONE
import calendar # MANCA DESCRIZIONE

# Installazione di Cartopy e Shapely
!apt-get install -qq libproj-dev proj-data proj-bin
!apt-get install -qq libgeos-dev
!pip install -q cython
!pip install -q cartopy
!apt-get -qq install python-cartopy python3-cartopy
!pip uninstall -y shapely
!pip install shapely --no-binary shapely
