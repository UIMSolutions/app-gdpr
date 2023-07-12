module apps.gdpr.views.index;

import apps.gdpr;
@safe:

class DGDPRIndexView : DView {
  mixin(ViewThis!("GDPRIndexView"));

  override DH5Obj[] toH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DGDPRIndexView~":DGDPRIndexView("~this.name~")::toH5");
    super.toH5(options);

    return [
      H5Div("APP gdpr -> Error")
    ].toH5;
  }
}
mixin(ViewCalls!("GDPRIndexView"));
