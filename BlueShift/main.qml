/*
Go look at WTFPL and see what happens to this.
Jeff Bai <jeffbaichina@members.fsf.org>, 2014 for AOSC
*/

import Qt 4.8

Item {
    id: main

    width: screenSize.width
    height: screenSize.height

    property int stage
    property int iconSize: (screenSize.width <= 1024) ? 256 : 450
    
    onStageChanged: {
        if (stage == 1) {
            background.opacity = 1
            gear2.opacity = 1
        }
        if (stage == 2) {
            gear1.opacity = 1
            mask.opacity = 1
            letter.opacity = 1
        }
        if (stage == 3) {
	    gear.opacity = 1
	    mask.opacity = 1
        }
        if (stage == 4) {
        }
        if (stage == 5) {
            logo.opacity = 1
        }
        if (stage == 6) {
        }
    }

    Image {
        id: gear

        height: iconSize
        width: iconSize
        smooth: true

        x: (parent.width - width) / 2
        y: (parent.height - height) / 2

        source: "images/Ring2.png"

        opacity: 0
        Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } }

        NumberAnimation {
            id: animateRotation
            target: gear
            properties: "rotation"
            from: 0
            to: 360
            duration: 1000

            loops: Animation.Infinite
            running: true
        }

    }
    
    Image {
        id: gear1

        height: iconSize
        width: iconSize
        smooth: true

        x: (parent.width - width) / 2
        y: (parent.height - height) / 2

        source: "images/Ring1.png"

        opacity: 0
        Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } }

        NumberAnimation {
            id: animateRotation
            target: gear
            properties: "rotation"
            from: 360
            to: 0
            duration: 1500

            loops: Animation.Infinite
            running: true
        }

    }
    
    Image {
        id: gear2

        height: iconSize
        width: iconSize
        smooth: true

        x: (parent.width - width) / 2
        y: (parent.height - height) / 2

        source: "images/Ring0.png"

        opacity: 0
        Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } }

        NumberAnimation {
            id: animateRotation
            target: gear
            properties: "rotation"
            from: 0
            to: 360
            duration: 2000

            loops: Animation.Infinite
            running: true
        }

    }

    Image {
        id: logo

        height: iconSize
        width: iconSize
        smooth: true

        x: (parent.width - width) / 2
        y: (parent.height - height) / 2

        source: "images/Hello.png"

        opacity: 0
        Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } }
    }

}

