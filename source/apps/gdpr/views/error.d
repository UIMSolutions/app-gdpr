module apps.gdpr.views.error;

import apps.gdpr;
@safe:

class DGDPRErrorView : DView {
  mixin(ViewThis!("GDPRErrorView"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DGDPRErrorView~":DGDPRErrorView("~this.name~")::toH5");
    super.toH5(options);

    return [
      H5Div("APP Gdpr -> Error")
    ].toH5;
  }
}
mixin(ViewCalls!("GDPRErrorView"));
