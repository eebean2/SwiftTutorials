//////////////////////////////////////////////////////////////////
//                                                              //
//                   UserDefaults : Hide It!                    //
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
//
// The following code requires Foundation to be imported.
// For more information on Foundation, see
//
// https://developer.apple.com/reference/foundation
//
// For more information on UserDefaults, the topic of this
// tutorial, see
//
// https://developer.apple.com/reference/foundation/userdefaults
//
//////////////////////////////////////////////////////////////////

import Foundation

/*
 * What is UserDefaults?
 *
 * UserDefaults is a great way of saving information locally
 * (such as user scores) with minimal exposure to the user.
 * UserDefaults are stored 100% in code unlike a plist.
 *
 * Although UserDefaults are capable of doing some cool things,
 * we will only be looking at the simple use of it here.
 *
 * For example:
 *
 */

let defaults = UserDefaults.standard

/*
 * Here we have created an instance of UserDefaults under
 * the standard user defaults (this is how you will usually
 * do it).
 *
 *
 * Now lets add some data to it!
 */

defaults.set(false, forKey: "RandomBool")

/*
 * You can store almost anything. Below are the common examples:
 *
 * .set(Bool, forKey: String)
 * .set(Float, forKey: String)
 * .set(Int, forKey: String)
 * .set(Any, forKey: String) (we will talk more on this)
 * .set(Double, forKey: "name")
 * .set(url, forKey: "name")
 *
 * Let's talk about set(Any, forKey: String)
 *
 * Objects accepted for Any include:
 *
 * Data
 * String
 * Number
 * Date
 * Array
 * Dictionary
 *
 * We will get into more details later.
 *
 */

let b = defaults.bool(forKey: "RandomBool")

/*
 * Accessing these values after you have saved them is just as
 * simple. Simplely type one of the following (depending on
 * the data type saved):
 *
 * .array(forKey: String)
 * .bool(forKey: String)
 * .data(forKey: String)
 * .dictionary(forKey: String)
 * .float(forKey: String)
 * .integer(forKey: String)
 * .object(forKey: String) (we will talke more on this)
 * .string(arrayForKey: String)
 * .string(forKey: String)
 * .double(forKey: String)
 * .url(forKey: String)
 *
 * As you can tell, there are many more values for getting
 * as there are for setting. This is because it is easier
 * to store a variable  then it is to return one. This is
 * subject for more a more intense "Birds and Bees" talk
 * then I'm ready to give though. (Google "How does my computer 
 * store things in memory" for answers)
 */

/*
 * .set(Any, forKey: String)
 *
 *
 * This function covers all values
 * and will store them under the key to be retrived when needed.
 * When you store the object, you will send it the class. 
 * (e.g. String) Unless you specificly have a Bool, Int, Float,
 * Double, or URL, you will use Any and the above.
 *
 */

/*
 * Congradulations, you now understand the concepts of
 * UserDefaults. Now go use it somewhere! :D
 *
 */

/*
 * If you would like to practice, please start an empty project
 * on Xcode as you cannont use UserDefaults on a playground.
 *
 * The above code is only sample code to show you how it should
 * look, it does not function beyond to look cool in this playground.
 *
 */






