module apps.gdpr.controllers.pages.index;

import apps.gdpr;
@safe:

class DGDPRIndexPageController : DAPPPageController {
  mixin(ControllerThis!("GDPRIndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(GDPRIndexView(this));
  }
}
mixin(ControllerCalls!("GDPRIndexPageController"));
