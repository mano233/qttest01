#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
#include <iostream>
#include "d3d11squircle.h"
#include "lib/berizr.h"

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    qmlRegisterType<D3D11Squircle>("D3D11UnderQML", 1, 0, "D3D11Squircle");
    QQuickWindow::setGraphicsApi(QSGRendererInterface::Direct3D11);
    Bezier::Bezier<3> b({{110,150},{25,190},{210,250},{210,30}});
    std::cout<<b.length(3)<<std::endl;
    QQuickView view;
    view.setResizeMode(QQuickView::SizeRootObjectToView);
    view.setSource(QUrl("qrc:/main.qml"));
    view.show();
    return QGuiApplication::exec();
}
