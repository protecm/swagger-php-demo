@echo off

echo ===========================================================================
echo                        GENERATING SERVER
echo ===========================================================================

java -jar "%~dp0..\..\swagger-codegen\swagger-codegen-cli.jar" generate ^
-i "%~dp0..\api\swagger\swagger.json" ^
-l slim ^
--model-package "Models" ^
-t "%~dp0..\api\swagger\slim" ^
-o "%~dp0..\api\demo\public"

echo ===========================================================================
echo                        COMPOSER INSTALL
echo ===========================================================================

pushd "%~dp0..\api\demo\public"
call composer install
popd

echo ===========================================================================
echo                        ENJOY :-)
echo ===========================================================================