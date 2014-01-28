/*
Go look at WTFPL and see what happens to this.
Jeff Bai <jeffbaichina@members.fsf.org>, 2014 for AOSC
*/

import Qt 4.7

Item {
    id: main

    width: screenSize.width
    height: screenSize.height
    // width: 300
    // height: 300

    /* property declarations --------------------------{{{ */
    property int stage
    property int iconSize: (screenSize.width <= 1024) ? 256 : 450
    /* }}} */

    /* signal declarations ----------------------------{{{ */

    /* }}} */

    /* JavaScript functions ---------------------------{{{ */
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
    /* }}} */

    /* object properties ------------------------------{{{ */

    /* }}} */

    /* child objects ----------------------------------{{{ */

/*    Rectangle {
        color: "black"
        anchors.fill: parent
    } */

/*    Rectangle {
        id: background

        gradient: Gradient {
            GradientStop { position: 0.0; color: "#000000" }
            GradientStop { position: 1.0; color: "#000000" }
        }

        anchors {
            top: parent.top
            left: parent.left
            right: parent.right
        }

        height: gear.y - 32

        opacity: 0
        Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } }
    }
*/

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

    /* }}} */

    /* stages -----------------------------------------{{{ */

    /* }}} */

    /* transitions ------------------------------------{{{ */

    /* }}} */
}

