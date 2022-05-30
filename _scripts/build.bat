@echo off
:: ========================================================================
:: $File: build.bat $
:: $Date: 2021-09-15 21:07:55 $
:: $Revision: $
:: $Creator: Jen-Chieh Shen $
:: $Notice: See LICENSE.txt for modification and distribution information
::                   Copyright © 2021 by Shen, Jen-Chieh $
:: ========================================================================

cd ..

hugo --destination ../public --minify
