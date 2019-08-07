@echo off

echo ===========================================================================
echo                        GENERATING CLIENT
echo ===========================================================================

java -jar "%~dp0..\..\swagger-codegen\swagger-codegen-cli.jar" generate ^
-i "%~dp0..\api\swagger\swagger.json" ^
-l php ^
-o "%~dp0..\client"

echo ===========================================================================
echo                        COMPOSER INSTALL
echo ===========================================================================

pushd "%~dp0..\client\SwaggerClient-php"
call composer install --ignore-platform-reqs
popd

echo ===========================================================================
echo                        ENJOY :-)
echo ===========================================================================