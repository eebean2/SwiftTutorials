//////////////////////////////////////////////////////////////////
//                                                              //
//               Swift 101 - Swift Down and Dirty               //
//                                                              //
//////////////////////////////////////////////////////////////////
//                                                              //
// Copyright 2016 © Little Man Apps                             //
//                                                              //
// Licensed under the Apache License, Version 2.0 (the          //
// "License"); you may not use this file except in compliance   //
// with the License. You may obtain a copy of the License at    //
//                                                              //
//      http://www.apache.org/licenses/LICENSE-2.0              //
//                                                              //
// Unless required by applicable law or agreed to in writing,   //
// software distributed under the License is distributed on an  //
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, //
// either express or implied. See the License for the specific  //
// language governing permissions and limitations under the     //
// License.                                                     //
//                                                              //
//////////////////////////////////////////////////////////////////
/*
 *
 *      So you wanna learn Apple's Swift huh?
 *
 * Well ya came to the right place! Since Apple has there own
 * Swift 101, this will a down and dirty version to cover 
 * everything I can think of.
 *
 * This document does not care if you have pre-existing programming
 * knowlege. It will walk you through Swift from var to wtf. :)
 */

/*
 *
 * What is var/let?
 *
 * Ever written a statement like this? (objective-c)
 *
 * NSString * name = @"Sally";
 *
 * You probably have, and never will again. The same string in
 * Swift looks like this:
 *
 * let name = "Sally"
 *
 * Extremly differant isn't it?
 *
 * 
 * let
 *
 * let is a constant; you only use let when you do not plan on
 * changing the variable later in the code. Essentially they
 * are read-only and set at initilization. Such as above when
 * we said let name = "Sally" we created a String variable set
 * to "Sally".
 *
 * var
 *
 * var is variable, and mutable. Majority of your vairables will
 * be var's. e.g.
 *
 * var name = NSString()
 * name = "Sally"
 *
 * var's don't need to be set at time of initilization, and are
 * capable of being changed at any time in the code.
 *
 * Shoudld you need to explicitly set the type of variable you
 * are using, you do it like so:
 *
 * let name : String = "Sally"
 *
 * Try creating three or four variables on the lines below
 */

/// NOTE: If you get something wrong, the playground will let you know!






/// NOTE: _ is used to represent a variable without a name in Swift.
///         it is also used in the document to represent the same.

/*
 *
 * String, Array, Dictionary, Set, and Tuple
 *
 *
 * In every langauge, we have a way of delcaring a String, or a
 * line of characters. In Objective-C, we use NSString(). In
 * Swift, we use String. Although NSString is still useable, it
 * is not recommended, nor the default.
 *
 * let _ : String = "x"
 *
 * The variable above represents a traditional NSString() and acts
 * as so, with some variations on behavior (See String in the
 * Apple Developer Doc's)
 *
 * var _ : String = "x"
 *
 * The variable above represents a NSMutableString() and acts
 * as so, with some variations on behavior (See String in the
 * Apple Developer Doc's)
 *
 * Array, Dictonary, and Set all act the same as String for
 * NSArray/NSMutableArray, NSDictionary/NSMutableDictionary,
 * and NSSet/NSMutableSet respectively.
 *
 *
 * Tuples are not exactly something new to the world of Apple
 * programming, but have been given a fresh new take.
 *
 *
 * For example, take the following function:
 *
 * func anyFunction() -> (itemOne: String, itemTwo: String) {
 *      return("Hi", "Bye")
 * }
 *
 * The function may look weird to some (we will discus this next)
 * but it's the output we will look at now (the -> (itemOne...String)).
 * What is being returned is a tuple. Essentially a tuple is a
 * dictionary of data (although it does not look, act, or bet treated
 * like one, so don't try).
 * 
 * To access the information returned from this function we would
 * do it like so:
 *
 * let function = anyFunction()
 * let hi = function.itemOne
 * let bye = function.itemTwo
 *
 *
 * Try experimenting with tuples below!
 */

///HINT: Tuples can be created simply by let t = (bob: "Bob", sally: "Sally", joe: "Joe")





/*
 *
 * Functions
 *
 * func
 *
 * Thats how simple it is to start a function. Using 
 * func [functionName]([intake]: [Arguments], [go]: [Here]) -> 
 *                                      ([optionalReturn]: [Variables], [go]: [Here]) {
 *      [and all of your code here]
 *      return [optional return if required]
 * }
 *
 * Yepp, it's that simple.
 *
 * Example:
 *
 * func demo(name: String) -> String {
 *      return "Hello, \(name)"
 *   }
 *
 *
 * Now you try on the lines below!
 */







 


/*
 *
 * What are ! and ? for?
 *
 *
 * This is the hardest part! So what are they for?
 *
 * Well not just to make the sentence better.
 *
 * ! is to unwrap an optional.
 * ? is to create an optional.
 *
 * An optional is a variable that may or maynot have data. It's "optional"
 *
 * Below is an example of a function that returns an optional variable
 */

func opt(input: Int) -> (output: Int, outputName: String?) {
    
    // Notice how "optputName" has the ?
    // This means it doesn't have to return anything
    
    if input == 3 {
        return (input, "Creaters Favorite Number")
    } else if input > 3 {
        return (input, nil)
    } else {
        return (input, "It's a bit small there Jim... Ever concidered... You know....")
    }
}

/* This function takes an input (an Int) and ouputs an Int and String, but it
 * only outputs a string if the number equals 3 or less.
 *
 * Try calling the function below using the following: (look right when done)
 *
 * let out = opt(3)
 * print(out.outputName)
 */



/*
 * Got something funny, didn't ya?
 *
 * Looked like this? (you may see a \n at the end, this means newline, ignore it)
 *
 * "Optional("Creaters Favorite Number")"
 *
 * The reason you got this is because you didn't unwrap the optional.
 * Try this:
 *
 *  print(out.outputName!)
 */



/// NOTE: A quick fact about print(), you can easily print designer strings.
///             e.g. print("The current number is \(out.output)")
///       This goes for all designer strings, not just print()
///             e.g. let greeting = "Hello, \(name)"
///       Try it below!

/*
 *
 * You will not always know what needs a ! or ?. Xcode is very good about helping
 * you understand what does and does not. The Apple Developer Documentation is
 * also a very good place to find out rather your code shoud or shoudl not include
 * them for your pressent work/feature/code.
 *
 * When in doubt, look it up. Even if you have to look up "String", remember, you
 * are not the only one. There are still times I will look up simple classes to
 * see if there is something I'm missing, or because I'm forgetting something.
 *
 *
 *
 * Now take the space below to practice everything you have learned!
 *
 */












 
/*
 *
 *
 *
 * Congraduations, you now understand Swift!
 *
 *
 * Don't forget to look at my other tutorials at
 *      https://github.com/eebean2/SwiftTutorials
 * 
 *
 *
 * For a more in debth learning experiance, I point you to my friends @ RayWenderlynch @
 *      https://www.raywenderlich.com/143771/swift-tutorial-part-1-expressions-variables-constants
 *
 */
 
 
 
 
 
 
