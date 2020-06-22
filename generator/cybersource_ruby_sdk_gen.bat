@echo off 

cd %~dp0

REM Delete the previously generated SDK code

rd /s /q ..\docs
rd /s /q ..\lib\cybersource_rest_client\api
rd /s /q ..\lib\cybersource_rest_client\models
rd /s /q ..\spec
del ..\lib\cybersource_rest_client.rb

REM Command to generate SDK
 
java -jar swagger-codegen-cli-2.2.3.jar generate -t cybersource-ruby-template -i cybersource-rest-spec.json -l ruby -o ../ -c %~dp0cybersource-ruby-config.json 

powershell -Command "(Get-Content ..\lib\cybersource_rest_client\api\secure_file_share_api.rb) | ForEach-Object { $_ -replace 'select_header_content_type\(\[''application/json;charset=utf-8', 'select_header_content_type([''*/*' } | Set-Content ..\lib\cybersource_rest_client\api\secure_file_share_api.rb"

REM to rename error__links to error_links
powershell -Command "(Get-Content ..\lib\cybersource_rest_client.rb) | ForEach-Object { $_ -replace 'cybersource_rest_client/models/error__links', 'cybersource_rest_client/models/error_links' } | Set-Content ..\lib\cybersource_rest_client.rb"

REM to rename long file name

subst q: "..\lib\cybersource_rest_client\models"
ECHO "Q DRIVE SUBST COMPLETE"

subst w: "..\spec\models"
ECHO "W DRIVE SUBST COMPLETE"

subst y: "..\docs"
ECHO "Y DRIVE SUBST COMPLETE"

REM #####################################################################################################################################################
rename "q:\ptsv2payments_processing_information_authorization_options_initiator_merchant_initiated_transaction.rb" "ptsv2payments_merchant_initiated_transaction.rb"

rename "w:\ptsv2payments_processing_information_authorization_options_initiator_merchant_initiated_transaction_spec.rb" "ptsv2payments_merchant_initiated_transaction_spec.rb"

powershell -Command "(Get-Content ..\lib\cybersource_rest_client.rb) | ForEach-Object { $_ -replace 'cybersource_rest_client/models/ptsv2payments_processing_information_authorization_options_initiator_merchant_initiated_transaction', 'cybersource_rest_client/models/ptsv2payments_merchant_initiated_transaction' } | Set-Content ..\lib\cybersource_rest_client.rb"

rename "y:\Ptsv2paymentsProcessingInformationAuthorizationOptionsInitiatorMerchantInitiatedTransaction.md" "Ptsv2paymentsMerchantInitiatedTransaction.md"

REM #####################################################################################################################################################
rename "q:\tmsv2customers__embedded_default_payment_instrument__embedded_instrument_identifier__links_payment_instruments.rb" "tmsv2customers__embedded_instrument_identifier__links_payment_instruments.rb"

rename "w:\tmsv2customers__embedded_default_payment_instrument__embedded_instrument_identifier__links_payment_instruments_spec.rb" "tmsv2customers__embedded_instrument_identifier__links_payment_instruments_spec.rb"

powershell -Command "(Get-Content ..\lib\cybersource_rest_client.rb) | ForEach-Object { $_ -replace 'cybersource_rest_client/models/tmsv2customers__embedded_default_payment_instrument__embedded_instrument_identifier__links_payment_instruments', 'cybersource_rest_client/models/tmsv2customers__embedded_instrument_identifier__links_payment_instruments' } | Set-Content ..\lib\cybersource_rest_client.rb"

rename "y:\Tmsv2customersEmbeddedDefaultPaymentInstrumentEmbeddedInstrumentIdentifierLinksPaymentInstruments.md" "Tmsv2customersEmbeddedInstrumentIdentifierLinksPaymentInstruments.md"

REM #####################################################################################################################################################
rename "q:\tmsv2customers__embedded_default_payment_instrument__embedded_instrument_identifier_processing_information_authorization_options.rb" "tmsv2customers_authorization_options.rb"

rename "w:\tmsv2customers__embedded_default_payment_instrument__embedded_instrument_identifier_processing_information_authorization_options_spec.rb" "tmsv2customers_authorization_options_spec.rb"

powershell -Command "(Get-Content ..\lib\cybersource_rest_client.rb) | ForEach-Object { $_ -replace 'cybersource_rest_client/models/tmsv2customers__embedded_default_payment_instrument__embedded_instrument_identifier_processing_information_authorization_options', 'cybersource_rest_client/models/tmsv2customers_authorization_options' } | Set-Content ..\lib\cybersource_rest_client.rb"

rename "y:\Tmsv2customersEmbeddedDefaultPaymentInstrumentEmbeddedInstrumentIdentifierProcessingInformationAuthorizationOptions.md" "Tmsv2customersAuthorizationOptions.md"

REM #####################################################################################################################################################
rename "q:\tmsv2customers__embedded_default_payment_instrument__embedded_instrument_identifier_processing_information_authorization_options_initiator.rb" "tmsv2customers_authorization_options_initiator.rb"

rename "w:\tmsv2customers__embedded_default_payment_instrument__embedded_instrument_identifier_processing_information_authorization_options_initiator_spec.rb" "tmsv2customers_authorization_options_initiator_spec.rb"

powershell -Command "(Get-Content ..\lib\cybersource_rest_client.rb) | ForEach-Object { $_ -replace 'cybersource_rest_client/models/tmsv2customers__embedded_default_payment_instrument__embedded_instrument_identifier_processing_information_authorization_options_initiator', 'cybersource_rest_client/models/tmsv2customers_authorization_options_initiator' } | Set-Content ..\lib\cybersource_rest_client.rb"

rename "y:\Tmsv2customersEmbeddedDefaultPaymentInstrumentEmbeddedInstrumentIdentifierProcessingInformationAuthorizationOptionsInitiator.md" "Tmsv2customersAuthorizationOptionsInitiator.md"

REM #####################################################################################################################################################
rename "q:\tmsv2customers__embedded_default_payment_instrument__embedded_instrument_identifier_processing_information_authorization_options_initiator_merchant_initiated_transaction.rb" "tmsv2customers_merchant_initiated_transaction.rb"

rename "w:\tmsv2customers__embedded_default_payment_instrument__embedded_instrument_identifier_processing_information_authorization_options_initiator_merchant_initiated_transaction_spec.rb" "tmsv2customers_merchant_initiated_transaction_spec.rb"

powershell -Command "(Get-Content ..\lib\cybersource_rest_client.rb) | ForEach-Object { $_ -replace 'cybersource_rest_client/models/tmsv2customers__embedded_default_payment_instrument__embedded_instrument_identifier_processing_information_authorization_options_initiator_merchant_initiated_transaction', 'cybersource_rest_client/models/tmsv2customers_merchant_initiated_transaction' } | Set-Content ..\lib\cybersource_rest_client.rb"

powershell -Command "(Get-Content ..\lib\cybersource_rest_client.rb) | ForEach-Object { $_ -replace 'cybersource_rest_client/models/tmsv2customers_authorization_options_initiator_merchant_initiated_transaction', 'cybersource_rest_client/models/tmsv2customers_merchant_initiated_transaction' } | Set-Content ..\lib\cybersource_rest_client.rb"

rename "y:\Tmsv2customersEmbeddedDefaultPaymentInstrumentEmbeddedInstrumentIdentifierProcessingInformationAuthorizationOptionsInitiatorMerchantInitiatedTransaction.md" "Tmsv2customersMerchantInitiatedTransaction.md"

REM #####################################################################################################################################################
rename "q:\tmsv2customers__embedded_default_payment_instrument__embedded_instrument_identifier_processing_information.rb" "tmsv2customers_processing_information.rb"

rename "w:\tmsv2customers__embedded_default_payment_instrument__embedded_instrument_identifier_processing_information_spec.rb" "tmsv2customers_processing_information_spec.rb"

powershell -Command "(Get-Content ..\lib\cybersource_rest_client.rb) | ForEach-Object { $_ -replace 'cybersource_rest_client/models/tmsv2customers__embedded_default_payment_instrument__embedded_instrument_identifier_processing_information', 'cybersource_rest_client/models/tmsv2customers_processing_information' } | Set-Content ..\lib\cybersource_rest_client.rb"

rename "y:\Tmsv2customersEmbeddedDefaultPaymentInstrumentEmbeddedInstrumentIdentifierProcessingInformation.md" "Tmsv2customersProcessingInformation.md"

REM #####################################################################################################################################################
rename "q:\risk_v1_address_verifications_post201_response_address_verification_information_standard_address_address1.rb" "risk_v1_address_verifications_post201_response_address1.rb"

rename "w:\risk_v1_address_verifications_post201_response_address_verification_information_standard_address_address1_spec.rb" "risk_v1_address_verifications_post201_response_address1_spec.rb"

powershell -Command "(Get-Content ..\lib\cybersource_rest_client.rb) | ForEach-Object { $_ -replace 'cybersource_rest_client/models/risk_v1_address_verifications_post201_response_address_verification_information_standard_address_address1', 'cybersource_rest_client/models/risk_v1_address_verifications_post201_response_address1' } | Set-Content ..\lib\cybersource_rest_client.rb"

rename "y:\RiskV1AddressVerificationsPost201ResponseAddressVerificationInformationStandardAddressAddress1.md" "RiskV1AddressVerificationsPost201ResponseAddress1.md"

REM #####################################################################################################################################################
rename "q:\risk_v1_export_compliance_inquiries_post201_response_export_compliance_information_watch_list_matches.rb" "risk_v1_export_compliance_inquiries_post201_response_watch_list_matches.rb"

rename "w:\risk_v1_export_compliance_inquiries_post201_response_export_compliance_information_watch_list_matches_spec.rb" "risk_v1_export_compliance_inquiries_post201_response_watch_list_matches_spec.rb"

powershell -Command "(Get-Content ..\lib\cybersource_rest_client.rb) | ForEach-Object { $_ -replace 'cybersource_rest_client/models/risk_v1_export_compliance_inquiries_post201_response_export_compliance_information_watch_list_matches', 'cybersource_rest_client/models/risk_v1_export_compliance_inquiries_post201_response_watch_list_matches' } | Set-Content ..\lib\cybersource_rest_client.rb"

rename "y:\RiskV1ExportComplianceInquiriesPost201ResponseExportComplianceInformationWatchListMatches.md" "RiskV1ExportComplianceInquiriesPost201ResponseWatchListMatches.md"

REM #####################################################################################################################################################
rename "q:\tmsv2customers__embedded_default_payment_instrument__embedded_instrument_identifier_tokenized_card.rb" "tmsv2customers_instrument_identifier_tokenized_card.rb"

rename "w:\tmsv2customers__embedded_default_payment_instrument__embedded_instrument_identifier_tokenized_card_spec.rb" "tmsv2customers_instrument_identifier_tokenized_card_spec.rb"

powershell -Command "(Get-Content ..\lib\cybersource_rest_client.rb) | ForEach-Object { $_ -replace 'cybersource_rest_client/models/tmsv2customers__embedded_default_payment_instrument__embedded_instrument_identifier_tokenized_card', 'cybersource_rest_client/models/tmsv2customers_instrument_identifier_tokenized_card' } | Set-Content ..\lib\cybersource_rest_client.rb"

rename "y:\Tmsv2customersEmbeddedDefaultPaymentInstrumentEmbeddedInstrumentIdentifierTokenizedCard.md" "Tmsv2customersInstrumentIdentifierTokenizedCard.md"

REM #####################################################################################################################################################
rename "q:\tmsv2customers__embedded_default_payment_instrument__embedded_instrument_identifier_tokenized_card_card.rb" "tmsv2customers_instrument_identifier_tokenized_card_card.rb"

rename "w:\tmsv2customers__embedded_default_payment_instrument__embedded_instrument_identifier_tokenized_card_card_spec.rb" "tmsv2customers_instrument_identifier_tokenized_card_card_spec.rb"

powershell -Command "(Get-Content ..\lib\cybersource_rest_client.rb) | ForEach-Object { $_ -replace 'cybersource_rest_client/models/tmsv2customers__embedded_default_payment_instrument__embedded_instrument_identifier_tokenized_card_card', 'cybersource_rest_client/models/tmsv2customers_instrument_identifier_tokenized_card_card' } | Set-Content ..\lib\cybersource_rest_client.rb"

rename "y:\Tmsv2customersEmbeddedDefaultPaymentInstrumentEmbeddedInstrumentIdentifierTokenizedCardCard.md" "Tmsv2customersInstrumentIdentifierTokenizedCardCard.md"

REM #####################################################################################################################################################


REM @echo off
@setlocal enableextensions enabledelayedexpansion

REM for /f "tokens=1* delims=\" %%A in (
REM   'forfiles /s /m *.rb /p ..\lib\AuthenticationSDK /c "cmd /c echo @relpath"'
REM ) do for %%F in (^"%%B) do (
REM   set original=%%~F
REM   call set removed=%%original:spec=%%
REM   if not !removed!==%%~F (
REM 	REM echo NOT PROCESSED
REM   ) else (
REM 	powershell -Command "$testVar = \"!original!\" ; $fileContents = (get-content ..\lib\cybersource_rest_client.rb) ; $fileContents[11] = $fileContents[11]+\"`r`nrequire 'AuthenticationSDK/\"+$testVar.replace(\"\\\",\"/\")+\"'\"; $fileContents|Set-Content ..\lib\cybersource_rest_client.rb"
REM   )
REM )

REM powershell -Command "(get-content ..\lib\cybersource_rest_client.rb) | ForEach-Object { $_ -replace 'require ''cybersource_rest_client/api/download_dtd_api''', '' } | ForEach-Object { $_ -replace 'require ''cybersource_rest_client/api/download_xsd_api''', '' } | Set-Content ..\lib\cybersource_rest_client.rb"

REM to remove beginning / from loc_var_path in all the api files
cd ..\lib\cybersource_rest_client\api
powershell -Command "&{$configFiles = Get-ChildItem . *.rb -rec;  foreach ($file in $configFiles){ (Get-Content $file.PSPath) | Foreach-Object { $_ -replace 'local_var_path = ''/', 'local_var_path = '''} | Set-Content $file.PSPath }}"

cd %~dp0\..

git checkout README.md
git checkout cybersource_rest_client.gemspec

subst q: /d
subst w: /d
subst y: /d

pause
