/*
  Copyright 2011 Mats Sjöberg
  
  This file is part of the Heebo programme.
  
  Heebo is free software: you can redistribute it and/or modify it
  under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.
  
  Heebo is distributed in the hope that it will be useful, but WITHOUT
  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
  or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public
  License for more details.
  
  You should have received a copy of the GNU General Public License
  along with Heebo.  If not, see <http://www.gnu.org/licenses/>.
*/

//-----------------------------------------------------------------------------

.pragma library

var jewel_maxtype = 5;

var board_width = 6;
var board_height = 9;

var block_width = 80;
var block_height = 80;

// height of toolbar
var toolbar_height = 99;

// Pixels to drag/swipe until it's interpreted as a movement
var moveLimit = 5;

//-----------------------------------------------------------------------------
// Utility functions
//-----------------------------------------------------------------------------

Function.prototype.method = function (name, func) {
    this.prototype[name] = func;
    return this;
};

//-----------------------------------------------------------------------------

Number.method('sign', function () {
    return this > 0 ? 1 : this < 0 ? -1 : 0;
});

//-----------------------------------------------------------------------------

Number.method('abs', function () {
    return Math.abs(this);
});

//-----------------------------------------------------------------------------

var isNumber = function (obj) {
    return typeof obj === 'number';
}

