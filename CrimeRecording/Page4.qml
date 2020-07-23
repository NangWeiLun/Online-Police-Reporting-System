/****************************************************************************
**
** Copyright (C) 2016 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the Qt Data Visualization module of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:GPL$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 3 or (at your option) any later version
** approved by the KDE Free Qt Foundation. The licenses are as published by
** the Free Software Foundation and appearing in the file LICENSE.GPL3
** included in the packaging of this file. Please review the following
** information to ensure the GNU General Public License requirements will
** be met: https://www.gnu.org/licenses/gpl-3.0.html.
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.9
import QtQuick.Layouts 1.3
import QtDataVisualization 1.3
import QtGraphicalEffects 1.0
import "."

Rectangle {
    id: mainView
    width: 1280
    height: 720
    Data {
        id: data
    }

    //! [0]
//    GridLayout {
//        id: gridLayout
//        columns: 1
//        Layout.fillHeight: true
//        Layout.fillWidth: true
//        anchors.top: mainView.top
//        anchors.bottom: mainView.bottom
//        anchors.left: mainView.left
//        anchors.right: mainView.right

//        Rectangle {
//            Layout.fillHeight: true
//            Layout.fillWidth: true
//            border.color: surfaceGraph.theme.gridLineColor
//            border.width: 2

//            Surface3D {
//                id: surfaceGraph
//                anchors.fill: parent
//                anchors.margins: parent.border.width
//                theme: Theme3D {
//                    type: Theme3D.ThemePrimaryColors
//                    font.pointSize: 60
//                }
//                scene.activeCamera.cameraPreset: Camera3D.CameraPresetIsometricLeftHigh

//                Surface3DSeries {
//                    itemLabelFormat: "Pop density at (@xLabel N, @zLabel E): @yLabel"
//                    ItemModelSurfaceDataProxy {
//                        itemModel: data.sharedData
//                        // The surface data points are not neatly lined up in rows and columns,
//                        // so we define explicit row and column roles.
//                        rowRole: "row"
//                        columnRole: "col"
//                        xPosRole: "latitude"
//                        zPosRole: "longitude"
//                        yPosRole: "pop_density"
//                    }
//                }
//            }
//        }

        // We'll use one grid cell for buttons
//        Rectangle {
//            Layout.fillHeight: true
//            Layout.fillWidth: true

//           GridLayout {
//                anchors.right: parent.right
//                anchors.left: parent.left
//                anchors.top: parent.top
//                anchors.bottom: parent.bottom
//                columns: 2

//                NewButton {
//                    Layout.minimumWidth: parent.width / 2
//                    Layout.fillHeight: true
//                    Layout.fillWidth: true
//                    text: "Clear Selections"
//                    onClicked: clearSelections() // call a helper function to keep button itself simpler
//                }

//                NewButton {
//                    Layout.minimumWidth: parent.width / 2
//                    Layout.fillHeight: true
//                    Layout.fillWidth: true
//                    text: "Quit"
//                    onClicked: Qt.quit(0);
//                }

//                NewButton {
//                    Layout.fillHeight: true
//                    Layout.fillWidth: true
//                    text: "Reset Cameras"
//                    onClicked: resetCameras() // call a helper function to keep button itself simpler
//                }

//                NewButton {
//                    Layout.fillHeight: true
//                    Layout.fillWidth: true
//                    text: "Toggle Mesh Styles"
//                    onClicked: toggleMeshStyle() // call a helper function to keep button itself simpler
//                }
//            }

//        }

//        Rectangle {
//            Layout.fillHeight: true
//            Layout.fillWidth: true
//            border.color: scatterGraph.theme.gridLineColor
//            border.width: 2

//            Scatter3D {
//                id: scatterGraph
//                anchors.fill: parent
//                anchors.margins: parent.border.width
//                theme: Theme3D {
//                    type: Theme3D.ThemeDigia
//                    font.pointSize: 60
//                }
//                scene.activeCamera.cameraPreset: Camera3D.CameraPresetIsometricLeftHigh

//                Scatter3DSeries {
//                    itemLabelFormat: "Pop density at (@xLabel N, @zLabel E): @yLabel"
//                    ItemModelScatterDataProxy {
//                        itemModel: data.sharedData
//                        // Mapping model roles to scatter series item coordinates.
//                        xPosRole: "latitude"
//                        zPosRole: "longitude"
//                        yPosRole: "pop_density"
//                    }
//                }
//            }
//        }

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            border.color: barGraph.theme.gridLineColor
            border.width: 2
            anchors.top: mainView.top
            anchors.bottom: mainView.bottom
            anchors.left: mainView.left
            anchors.right: mainView.right
            Bars3D {
                id: barGraph
                anchors.fill: parent
                anchors.margins: parent.border.width
                visible: true
                theme: Theme3D {
                    type: Theme3D.ThemeQt
                    font.pointSize: 60
                }

                selectionMode: AbstractGraph3D.SelectionItemAndRow | AbstractGraph3D.SelectionSlice
                scene.activeCamera.cameraPreset: Camera3D.CameraPresetIsometricLeftHigh

                Bar3DSeries {
                    itemLabelFormat: "@seriesName: @valueLabel"
                    name: "Number Report"

                    ItemModelBarDataProxy {
                        itemModel: data.sharedData
                        // Mapping model roles to bar series rows, columns, and values.
                        rowRole: "month"
                        rowLabels: "Month"
                        columnRole: "type"
                        columnLabels: "Type"
                        valueRole: "number"
                    }
                }
            }
            Bars3D {
                id: barGraph2
                anchors.fill: parent
                anchors.margins: parent.border.width
                visible: false
                theme: Theme3D {
                    type: Theme3D.ThemeQt
                    font.pointSize: 60
                }

                selectionMode: AbstractGraph3D.SelectionItemAndRow | AbstractGraph3D.SelectionSlice
                scene.activeCamera.cameraPreset: Camera3D.CameraPresetIsometricLeftHigh

                Bar3DSeries {
                    itemLabelFormat: "@seriesName: @valueLabel"
                    name: "Number Report"

                    ItemModelBarDataProxy {
                        itemModel: data.sharedData2
                        // Mapping model roles to bar series rows, columns, and values.
                        rowRole: "year"
                        rowLabels: "Year"
                        columnRole: "type"
                        columnLabels: "Type"
                        valueRole: "number"
                    }
                }
            }
            Bars3D {
                id: barGraph3
                anchors.fill: parent
                anchors.margins: parent.border.width
                visible: false
                theme: Theme3D {
                    type: Theme3D.ThemeQt
                    font.pointSize: 60
                }

                selectionMode: AbstractGraph3D.SelectionItemAndRow | AbstractGraph3D.SelectionSlice
                scene.activeCamera.cameraPreset: Camera3D.CameraPresetIsometricLeftHigh

                Bar3DSeries {
                    itemLabelFormat: "@seriesName: @valueLabel"
                    name: "Number Report"

                    ItemModelBarDataProxy {
                        itemModel: data.sharedData3
                        // Mapping model roles to bar series rows, columns, and values.
                        rowRole: "location"
                        rowLabels: "Location"
                        columnRole: "type"
                        columnLabels: "Type"
                        valueRole: "number"
                    }
                }
            }
            Bars3D {
                id: barGraph4
                anchors.fill: parent
                anchors.margins: parent.border.width
                visible: false
                theme: Theme3D {
                    type: Theme3D.ThemeQt
                    font.pointSize: 60
                }

                selectionMode: AbstractGraph3D.SelectionItemAndRow | AbstractGraph3D.SelectionSlice
                scene.activeCamera.cameraPreset: Camera3D.CameraPresetIsometricLeftHigh

                Bar3DSeries {
                    itemLabelFormat: "@seriesName: @valueLabel"
                    name: "Number Report"

                    ItemModelBarDataProxy {
                        itemModel: data.sharedData4
                        // Mapping model roles to bar series rows, columns, and values.
                        rowRole: "month"
                        rowLabels: "Month"
                        columnRole: "location"
                        columnLabels: "Location"
                        valueRole: "number"
                    }
                }
            }
        }
        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            border.color: barGraph.theme.gridLineColor
            border.width: 2
            anchors.top: mainView.top
            anchors.bottom: mainView.bottom
            anchors.left: mainView.left
            anchors.right: mainView.right
            visible: false

        }
        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            border.color: barGraph.theme.gridLineColor
            border.width: 2
            anchors.top: mainView.top
            anchors.bottom: mainView.bottom
            anchors.left: mainView.left
            anchors.right: mainView.right
            visible: false

        }
        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            border.color: barGraph.theme.gridLineColor
            border.width: 2
            anchors.top: mainView.top
            anchors.bottom: mainView.bottom
            anchors.left: mainView.left
            anchors.right: mainView.right
            visible: false

        }

        Rectangle {
            x: 1
            y: 1
            height: 20
            width: parent.width
            //Layout.fillHeight: true
            //Layout.fillWidth: true
            border.color: barGraph.theme.gridLineColor
            //border.width: 4

           GridLayout {
               anchors.right: parent.right
               anchors.left: parent.left
               anchors.top: parent.top
               anchors.bottom: parent.bottom
               columns: 5

            NewButton {
                Layout.minimumWidth: parent.width / 5
                Layout.fillHeight: true
                Layout.fillWidth: true
                text: "Reset"
                onClicked: clearSelections() // call a helper function to keep button itself simpler
            }
            NewButton {
                Layout.minimumWidth: parent.width / 5
                Layout.fillHeight: true
                Layout.fillWidth: true
                text: "Month X Type"
                onClicked: [barGraph.visible = true,barGraph2.visible=false,barGraph3.visible=false,barGraph4.visible=false]
            }
            NewButton{
                Layout.minimumWidth: parent.width / 5
                Layout.fillHeight: true
                Layout.fillWidth: true
                text: "Year X Type"
                onClicked: [barGraph.visible = false,barGraph2.visible=true,barGraph3.visible=false,barGraph4.visible=false]
            }
            NewButton{
                Layout.minimumWidth: parent.width / 5
                Layout.fillHeight: true
                Layout.fillWidth: true
                text: "Location X Type"
                onClicked: [barGraph.visible = false,barGraph2.visible=false,barGraph3.visible=true,barGraph4.visible=false]
            }
            NewButton{
                Layout.minimumWidth: parent.width / 5
                Layout.fillHeight: true
                Layout.fillWidth: true
                text: "Month X Location"
                onClicked: [barGraph.visible = false,barGraph2.visible=false,barGraph3.visible=false,barGraph4.visible=true]
            }
        }

    }

    function clearSelections() {
        barGraph.clearSelection()
        data.loadBarData()
//        scatterGraph.clearSelection()
//        surfaceGraph.clearSelection()
    }

    function resetCameras() {
//        surfaceGraph.scene.activeCamera.cameraPreset = Camera3D.CameraPresetIsometricLeftHigh
//        scatterGraph.scene.activeCamera.cameraPreset = Camera3D.CameraPresetIsometricLeftHigh
        barGraph.scene.activeCamera.cameraPreset = Camera3D.CameraPresetIsometricLeftHigh
//        surfaceGraph.scene.activeCamera.zoomLevel = 100.0
//        scatterGraph.scene.activeCamera.zoomLevel = 100.0
        barGraph.scene.activeCamera.zoomLevel = 100.0
    }

//    function toggleMeshStyle() {
//        if (barGraph.seriesList[0].meshSmooth === true) {
//            barGraph.seriesList[0].meshSmooth = false
//            if (surfaceGraph.seriesList[0].flatShadingSupported)
//                surfaceGraph.seriesList[0].flatShadingEnabled = true
//            scatterGraph.seriesList[0].meshSmooth = false
//        } else {
//            barGraph.seriesList[0].meshSmooth = true
//            surfaceGraph.seriesList[0].flatShadingEnabled = false
//            scatterGraph.seriesList[0].meshSmooth = true
//        }
//    }

//    Component.onCompleted: {
//        Qt.quit(0)
//    }
}


