module apps.gdpr;

mixin(ImportPhobos!());

// External
public {
  import vibe.d;
}

// UIM
public import uim.core;
public import uim.bootstrap;
public import uim.html;
public import uim.oop;
public import uim.models;
public import uim.apps;
public import web.controls;
public import uim.servers;

public import langs.javascript;

public {
  import apps.gdpr.controllers;
  import apps.gdpr.helpers;
  import apps.gdpr.routers;
  import apps.gdpr.tests;
  import apps.gdpr.views;
}

static this() {
  auto myApp = App("gdprApp", "apps/gdpr");
  with(myApp) {
    importTranslations;
    addControllers([
      "gdpr.index": IndexPageController
    ]);
    addRoutes(
      Route("", HTTPMethod.GET, controller("gdpr.index")),
      Route("/", HTTPMethod.GET, controller("gdpr.index"))
    );
  }

  AppRegistry.register("apps.gdpr", myApp);
}
