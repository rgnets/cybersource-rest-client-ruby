# CyberSource::PtsV2PaymentsReversalsPost201ResponseAuthorizationInformation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**approval_code** | **String** | The authorization code returned by the processor. | [optional] 
**reason_code** | **String** | Reply flag for the original transaction. | [optional] 
**reversal_submitted** | **String** | Flag indicating whether a full authorization reversal was successfully submitted.  Possible values: - Y: The authorization reversal was successfully submitted. - N: The authorization reversal was not successfully submitted. You must send a credit request for a refund.  This field is supported only for **FDC Nashville Global**.  | [optional] 


