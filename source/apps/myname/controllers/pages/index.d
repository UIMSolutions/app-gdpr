module apps.gdpr.controllers.pages.index;

import apps.gdpr;
@safe:

class DMYNAMEIndexPageController : DAPPPageController {
  mixin(ControllerThis!("MYNAMEIndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(MYNAMEIndexView(this));
  }
}
mixin(ControllerCalls!("MYNAMEIndexPageController"));
