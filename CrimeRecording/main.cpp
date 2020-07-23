//#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <connection.h>
//#include <QtQml>
//#include <QtCore/QDir>
#include <QtWebView/QtWebView>
#include <QtWebEngine/QtWebEngine>
#include <QtWidgets/QtWidgets>
#include <QtWidgets/QApplication>

#include <QQmlEngine>
#include <QQmlContext>
#include <QQmlComponent>

#include <QDateTime>

//#include <QtQuick/QQuickView>

//int main(int argc, char *argv[])
//{
//    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
//    QGuiApplication app(argc, argv);

//    qmlRegisterType<connection>("conn",1,0,"Con");

//    QQmlApplicationEngine engine;

//    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

//    return app.exec();
//}

//int main(int argc, char *argv[])
//{
//    QGuiApplication app(argc, argv);
//    qmlRegisterType<connection>("conn",1,0,"Con");

//    QQuickView view;
//    view.setSource(QUrl("qrc:/main.qml"));
//    view.show();

//    return app.exec();
//}

//int main(int argc, char *argv[])
//{
//    QGuiApplication app(argc, argv);

//    QQmlEngine engine;
//    QQmlContext *objectContext = new QQmlContext(engine.rootContext());

//    QQmlComponent component(&engine, "qml.qrc:/main.qml");
//    QObject *object = component.create(objectContext);

//    // ... delete object and objectContext when necessary

//    return app.exec();
//}

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

#include <QtGui/QGuiApplication>
#include <QtCore/QDir>
#include <QtQuick/QQuickView>
#include <QtQml/QQmlEngine>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    qmlRegisterType<connection>("conn",1,0,"Con");

    QQuickView viewer;

    // The following are needed to make examples run without having to install the module
    // in desktop environments.
#ifdef Q_OS_WIN
    QString extraImportPath(QStringLiteral("%1/../../../../%2"));
#else
    QString extraImportPath(QStringLiteral("%1/../../../%2"));
#endif
    viewer.engine()->addImportPath(extraImportPath.arg(QGuiApplication::applicationDirPath(),
                                      QString::fromLatin1("qml")));
    QObject::connect(viewer.engine(), &QQmlEngine::quit, &viewer, &QWindow::close);
    QQmlApplicationEngine engine;

    engine.load(QUrl(QLatin1String("qrc:/main.qml")));
 //   viewer.setTitle(QStringLiteral("QML multigraph example"));
 //   viewer.setSource(QUrl("qrc:/main.qml"));
//    viewer.setResizeMode(QQuickView::SizeRootObjectToView);
 //   viewer.show();
  //  viewer.close();

    return app.exec();
}
