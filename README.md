# iqama_validator

IqamaValidator can be used to check if a string contains a valid Saudi Arabia Iqama number or a National ID number.
 
## Usage

Pass the Iqama number or Saudi National ID number as a string to IqamaValidator's validate method. 

```dart
bool status = IqamaValidator.validate("<iqamaNumber>");
```
          
The response is a bool. It is true if the string was a valid Iqama/Saudi national ID number.
                  
