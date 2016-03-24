//////////////////////////////////////////////////////////////////
//                                                              //
//           Custom Classes 101 - Classes Made Simple           //
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
 * Classes and structures are general-purpose, flexible constructs
 * that become the building blocks of your program’s code. You
 * define properties and methods to add functionality to your
 * classes and structures by using exactly the same syntax as
 * for constants, variables, and functions.
 *
 *                                        - Apple Devoper Docs.
 *
 * In object-oriented programming , a class is a template definition
 * of the method s and variable s in a particular kind of object.
 * Thus, an object is a specific instance of a class; it contains
 * real values instead of variables.
 *
 *                                        - whatis.techtarget.com
 *
 * In this playground, you will learn how to use a custom class for
 * use in everyday programming.
 *
 * Example of a Class:
 */

class Road {
    let carsDriving = 0
}

/*
 *
 * In order to access anything incide the class, carsDriving for
 * example, you must first call Road.
 *
 * It'll look something like this:
 *
 */

let road = Road()
let drivers = road.carsDriving

/*
 *
 * Now if you have no experiance with playgrounds, you will
 * notice on the right hand side of the screen that it now
 * says:
 *
 * "Road"
 * "0"
 *
 * This is because you delcared the Road class, then called
 * the "carsDriving" variable we created, which has 0 cars.
 *
 *
 * Below is a similar class of a street in a town. Add on
 * line 79 "let stopLights = 3" without quotations.
 *
 */

class SpoonerStreet {
    let carsDriving = 1
    
}

/*
 *
 * Now call on line 89 "let lights = sStreet.stopLights"
 * without quotation marks. You should see "3" to the right
 * when done.
 *
 */

let sStreet = SpoonerStreet()


/*
 *
 * Now comes the scary part. Doing it all on your own.
 * On the coming lines, your going to write a class from
 * begining to end and check it.
 *
 * Starting on line 140 you will type the following:
 *
 * class DodFarm {
 *    var cows = 7
 *    var chickens = true
 *    var flag = "Italy"
 *
 *    func soldCows(amount: Int) {
 *        cows = cows - amount
 *    }
 *
 *    func boughtCows(amount: Int) {
 *        cows = cows + amount
 *    }
 *
 *    func ateChicken() {
 *        chickens = false
 *    }
 *
 *    func boughtChickens() {
 *        chickens = true
 *    }
 *
 *    func changeFlag(newFlag: String) -> Bool {
 *        if newFlag == "America" {
 *            flag = newFlag
 *            print("Flag Changed")
 *            return true
 *        } else if newFlag == "Italy" {
 *            flag = newFlag
 *            print("Flag Changed")
 *            return true
 *        } else {
 *            print("Will not deflect you... COMMIE!")
 *            return false
 *        }
 * }
 *
 */



/*
 *
 * Don't stress, this only LOOKS intemidating.
 * Play around with the structure for a while till your
 * used to it. On the lines below, call your functions,
 * give it variables and have fun.
 *
 * You have completed a simple class with working functions,
 * variables, and more.
 *
 */


 




