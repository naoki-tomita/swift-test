// variant
var mutableVariant: Int = 3;
var mutableVariantText: String = "foo";
var typeInferencedVariant = "It should be String type.";

// constant
let immutableVariant: Int = 7;
let ThisIsConstant: String = "THIS IS CONSTANT";

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

// nullable variant.
// it must specify variant type.
var nillableVariant: String? = "Foo";
