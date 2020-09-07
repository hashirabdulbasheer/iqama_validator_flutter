import 'package:iqama_validator/iqama_validator.dart';
import 'package:test/test.dart';

void main() {

  test("Iqama Positive Validation Test", () async {
    bool isValid = IqamaValidator.validate("2172323137");
    expect(isValid, true);
  });

  test("Iqama Negative Validation Test", () async {
    bool isValid = IqamaValidator.validate("2313721723");
    expect(isValid, false);
  });

  test("Saudi National ID Validation Test", () async {
    bool isValid = IqamaValidator.validate("1046403927");
    expect(isValid, true);
  });

  test("Iqama Null Test", () async {
    bool isValid = IqamaValidator.validate(null);
    expect(isValid, false);
  });

  test("Iqama Empty Test", () async {
    bool isValid = IqamaValidator.validate("");
    expect(isValid, false);
  });

  test("Iqama Spaces Test", () async {
    bool isValid = IqamaValidator.validate("          ");
    expect(isValid, false);
  });

  test("Iqama Special Characters Test", () async {
    bool isValid = IqamaValidator.validate(" %^&*()!/?");
    expect(isValid, false);
  });

  test("Iqama Characters Test", () async {
    bool isValid = IqamaValidator.validate('abcdefghij');
    expect(isValid, false);
  });

  test("Iqama Single Number Changed Test", () async {
    bool isValid = IqamaValidator.validate("2172323134");
    expect(isValid, false);
  });

  test("Iqama Multiple Validation Test", () async {
    bool isValid = IqamaValidator.validate("2172323137");
    expect(isValid, true);
    isValid = IqamaValidator.validate("1046403927");
    expect(isValid, true);
    isValid = IqamaValidator.validate("123");
    expect(isValid, false);
    isValid = IqamaValidator.validate("555");
    expect(isValid, false);
    isValid = IqamaValidator.validate("2172323134");
    expect(isValid, false);
  });

  test("Negative Number Test", () async {
    bool isValid = IqamaValidator.validate("-100000000");
    expect(isValid, false);
  });

  test("Negative Iqama Test", () async {
    bool isValid = IqamaValidator.validate("-217232313");
    expect(isValid, false);
  });

  test("Double Number Test", () async {
    bool isValid = IqamaValidator.validate("9.14243234");
    expect(isValid, false);
  });
}
