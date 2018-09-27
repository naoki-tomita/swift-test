// Type
var boolType: Bool = false;
var intType: Int = -6; // you can use Int, Int8, Int16, Int32, Int64. Int means Int64.
var uintType: UInt = 7; // you can use UInt, UInt8, UInt16, UInt32, UInt64. UInt means UInt64.
var stringType: String = "foo";
var floatType: Float = 73.33356; // 32bit.
var doubleType: Double = 5.27689; // 64bit.

// you can get Type like this.
print(type(of: boolType));

// Int or UInt size is determined by cpu architecture.
// so, Int allocate 64bit memory when 64bit cpu architecture.
// you can test allocated memoty size.
// this parameter returns BYTE size.
print(MemoryLayout<Int>.size);

// variant
var mutableVariant: Int = 3;
var mutableVariantText: String = "foo";
var typeInferencedVariant = "It should be String type.";

// you cant set value to incompatible variant.
// var intValue: Int = 3.1415926;

// constant
let immutableVariant: Int = 7;
let ThisIsConstant: String = "THIS IS CONSTANT";

// calc number
let int = 2;
let double = 3.14159; // Double type.

// it cant do.
// binary operator '+' cannot be applied to operands of type 'Int' and 'Double'
// print(int + double);
print(Double(int) + double);

// cast to Int from Double.
// it will be truncated.
print(int + Int(double));

// like template literal
let Literal = "LITERAL"
print("Template \(Literal)");

// array
var mutableArray = [String]();
let immutableArray = [String]();

mutableArray.append("foo");
mutableArray.append("bar");

// it cant do.
// immutableArray.append("foo");

print(mutableArray);

var mutableDictionary = [String:Int]();
mutableDictionary["foo"] = 0;
mutableDictionary["bar"] = 1;

print(mutableDictionary);

// nullable variant. Optional type.
// it must specify variant type.
// null is called "nil" in swift.
// this syntax is called "Wrapped".
// String? == Optional<String>
var nillableVariant: String? = "Foo";

// for statement.
// but, for statement is deplecated.
// you should use for in statement.
for i in 0...3 { // 0...3 means 0 <= i <= 3
  print(i);
}

// () is no necessity.
for i in 0..<3 { // 0..<3 means 0 <= i < 3
  print(i);
}

// array can be use iteratable.
for x in mutableArray {
  print(x);
}

// if statement
// conditional expression is must return Bool.
let x = 5;
let y = 3;
if x > y {
  print("x is larger than y.");
} else if x == y {
  print("x and y is same.");
} else {
  print("y is larger than x");
}

// switch statement.
// break cant use.
// all case will be break, even if break was not written.
// but, you can "fallthrough" for fallthrough.
switch y {
  case 2:
    print("small \(y)");
  case 3:
    fallthrough;
  case 4:
    print(y);
  case 5...9:
    print("y is 5-9");
  default: // default must be implemented.
    print("default");
}

// pattern match can be use.
switch typeInferencedVariant {
  case "foo":
    print("foo");
  case let x where x == "should": // you can write like this.
    print("includes should");
  default:
    print("default");
}

// enum
enum Enum {
  case A
  case B
  case C
  case D
}

let enumVal = Enum.D;
switch enumVal {
  case .A:
    print("a");
  case .B:
    print("b");
  case .C:
    print("c");
  case .D:
    print("d");
  // but, it is no nessesary to implement when all case had implement.
}

// unwrap Optional type.
var str: String?;
if let unwrapped: String = str {
  // exec below line if str is non nil value.
  print(unwrapped);
}

// function
func function1(x: String) -> Int {
  print(x);
  return 7;
}

func function2(foo: String, bar: String) -> Void {
  // do nothing.
  return;
}

// you must call function with arg name.
print(function1(x: "foo"));
function2(foo: "foo", bar: "bar");

// tuple
// just like js object or array.
let tuple = (foo: "foo", bar: "bar");
let noKeyTuple = ("foo", "bar"); // non-key tuple.
print(tuple); // access all
print(tuple.foo); // access with specified key.
print(tuple.1); // access with specified index.
print(noKeyTuple); // access all
print(noKeyTuple.0) // only access with index.

// class
class MyClass {
  var member = "foo";
  let letMember = "bar";
  func memberFunc() {
    print("class method.");
  }
}

// extend class
class MyExtendedClass: MyClass {
  let extended = "extended";
  // override function.
  override func memberFunc() {
    super.memberFunc();
    print("overrided method");
  }
}

// get instance.
// not needed "new"
let mc = MyClass();
let mec = MyExtendedClass();
mc.memberFunc();
mec.memberFunc();

// struct
struct Struct {
  var member = "foo";
  let letMember = "bar";
  func memberFunc() {
    print("class method.");
  }
}

// struct pass deep copy.
// class pass reference.
var stct1 = Struct();
let stct2 = stct1;
stct1.member = "bar";
print(stct1); // will print member: "bar".
print(stct2); // will print member: "foo".
