//////////////////////////////////////////////////////////////////
//                                                              //
//                  NSUserDefaults : Hide It!                   //
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
// https://developer.apple.com/library/ios/documentation/Cocoa/Reference/Foundation/Miscellaneous/Foundation_Functions/#//apple_ref/c/func/NSLog
//
// For more information on NSUserDefaults, the topif of this
// tutorial, see
//
// https://developer.apple.com/library/ios/documentation/Cocoa/Reference/Foundation/Classes/NSUserDefaults_Class/#//apple_ref/occ/instm/NSUserDefaults
//
//////////////////////////////////////////////////////////////////

import Foundation

/*
 * What is NSUserDefaults?
 *
 * NSUserDefaults is a great way of saving information locally
 * (such as user scores) with minimal exposure to the user.
 * NSDefaults are stored 100% in code unlike a plist.
 *
 * Although NSUserDefaults are capable of doing some cool things,
 * we will only be looking at the simple use of it here.
 *
 * For example:
 *
 */

 let ud = NSUserDefaults.standardUserDefaults()

/*
 * Here we have created an instance of NSUserDefaults under
 * the standard user defaults (this is how you will usually
 * do it).
 *
 *
 * Now lets add some data to it!
 */

 ud.setBool(false, forKey: "RandomBool")

/*
 * You can store almost anything. Below are the common examples:
 *
 * setBool(bool, forKey: "name")
 * setFloat(float, forKey: "name")
 * setInteger(integer, forKey: "name")
 * setObject(anyObject, forKey: "name") (we will talk more on this)
 * setDouble(double, forKey: "name")
 * setURL(url, forKey: "name")
 *
 * Let's talk about setObject(_:forKey:)
 *
 * Objects accepted for AnyObject include:
 *
 * NSData
 * NSString
 * NSNumber
 * NSDate
 * NSArray
 * NSDictionary
 *
 * We will get into more details later.
 *
 */

let b = ud.boolForKey("RandomBool")

/*
 * Accessing these values after you have saved them is just as
 * simple. Simplely type one of the following (depending on
 * the data type saved):
 *
 * arrayForKey:
 * boolForKey:
 * dataForKey:
 * dictionaryForKey:
 * floatForKey:
 * integerForKey:
 * objectForKey: (we will talke more on this)
 * stringArrayForKey:
 * stringForKey:
 * doubleForKey:
 * URLForKey:
 *
 * As you can tell, there are many more values for getting
 * as there are for setting. This is because it is easier
 * to store a variable  then it is to return one. This is
 * subject for more a more intense "Birds and Bees" talk
 * then I'm ready to give though. (Google "How does my computer 
 * store things in memory" for answers)
 */

/*
 * setObject(anyObject, forKey: "name")
 * 
 * and
 *
 * objectForKey:
 *
 *
 * These are two functions that cover all values (AnyObject / Element)
 * and will store them under the key to be retrived when needed.
 * When you store the object, you will send it the class. 
 * (e.g. NSString) Unless you specificly have a Bool, Int, Float,
 * Double, or NSURL, you will use AnyObject and the above.
 *
 *
 * NOTICE:
 *
 * setValue(anyObject, forKey: "key") IS NOT the same as 
 * setObject(anyObject, forKey: "name")
 *
 * setValue... is part of NSKeyValueCoding (part of Foundation)
 * while setObject... is strictly for NSUserDefautls.
 * Always use setObject(anyObject, forKey: "name") as it is
 * designed to work with NSUserDefaults and will properly save
 * your item as setValue... may not.
 */

/*
 * Congradulations, you now understand the concepts of
 * NSUserDefaults. Now go use it somewhere! :D
 *
 */

/*
 * If you would like to practice, please start an empty project
 * on Xcode as you cannont use NSUserDefaults on a playground.
 *
 * The above code is only sample code to show you how it should
 * look, it does not function beyond to look cool in this playground.
 *
 */






