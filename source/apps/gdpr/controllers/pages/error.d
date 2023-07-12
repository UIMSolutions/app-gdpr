module apps.gdpr.controllers.pages.error;

import apps.gdpr;
@safe:

class DGDPRErrorPageController : DAPPPageController {
  mixin(ControllerThis!("GDPRErrorPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(GDPRErrorView(this));
  }
}
mixin(ControllerCalls!("GDPRErrorPageController"));
