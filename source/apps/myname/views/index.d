module apps.gdpr.views.index;

import apps.gdpr;
@safe:

class DMYNAMEIndexView : DView {
  mixin(ViewThis!("MYNAMEIndexView"));

  override DH5Obj[] toH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DMYNAMEIndexView~":DMYNAMEIndexView("~this.name~")::toH5");
    super.toH5(options);

    return [
      H5Div("APP gdpr -> Error")
    ].toH5;
  }
}
mixin(ViewCalls!("MYNAMEIndexView"));
