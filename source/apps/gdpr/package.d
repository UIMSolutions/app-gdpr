module apps.gdpr;

mixin(ImportPhobos!());

// Dub
public import vibe.d;

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

DApp gdprApp;
static this() {
  gdprApp = App("gdprApp", "/apps/gdpr")
      .importTranslations()
      .addRoutes(
        Route("", HTTPMethod.GET, IndexPageController),
        Route("/", HTTPMethod.GET, IndexPageController)
      )
    );
}
