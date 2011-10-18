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

import QtQuick 1.0

Image {
    id: container

    property int mode: 0
    
    signal closed(int mode)
    signal opened
    
    function show(text, answer) {
        dialogText.text = text;
        answerText.text = answer;
        container.opacity = 1;
        container.opened()
    }

    function hide() {
        container.opacity = 0;
        container.closed(mode);
    }

    opacity: 0
    visible: opacity > 0

    source: "qrc:///images/dialog_small.png"
        
    Text {
        id: dialogText
        text: ""

        font.family: mainPage.mainFont
        font.bold: true
        font.pixelSize: mainPage.dialogFontSize
        color: mainPage.darkColour

        width: container.paintedWidth-40
        wrapMode: Text.Wrap
        
        anchors {
            top: parent.top
            left: parent.left
            leftMargin: 20
            rightMargin: 20
            topMargin: 20
            bottomMargin: 10
        }
    }

    Text {
        id: answerText
        text: "Yes, bring it on!"
        font.family: mainPage.mainFont
        /* font.bold: true */
        font.pixelSize: mainPage.dialogFontSize
        color: mainPage.uiAccentColour
        anchors {
            bottom: container.bottom
            left: parent.left
            leftMargin: 50
            rightMargin: 20
            topMargin: 30
            bottomMargin: 60
        }

    }
    Image {
        id: buttonImage
        source: "qrc:///images/icon_next_black.png"

        anchors {
            bottom: container.bottom
            left: answerText.right
            leftMargin: 30
            rightMargin: 40
            topMargin: 10
            bottomMargin: 40
        }
    }
    /* Rectangle { */
    /*     id: dropShadow */
    /*     width: container.width */
    /*     height: container.height */
    /*     radius: container.radius */
    /*     color: "black" */
    /*     opacity: 0.3 */
    /*     z: -10 */
    /*     anchors { */
    /*         horizontalCenter: container.horizontalCenter */
    /*         verticalCenter: container.verticalCenter */
    /*         horizontalCenterOffset: 5 */
    /*         verticalCenterOffset: 5 */
    /*     } */
    /* } */

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: container.hide()
    }
}
