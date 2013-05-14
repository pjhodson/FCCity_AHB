.class Lti/modules/titanium/geolocation/GeolocationModule$1;
.super Ljava/lang/Object;
.source "GeolocationModule.java"

# interfaces
.implements Lti/modules/titanium/geolocation/TiLocation$GeocodeResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/geolocation/GeolocationModule;->createGeocodeResponseHandler(Lorg/appcelerator/kroll/KrollFunction;)Lti/modules/titanium/geolocation/TiLocation$GeocodeResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/geolocation/GeolocationModule;

.field final synthetic val$callback:Lorg/appcelerator/kroll/KrollFunction;

.field final synthetic val$geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;


# direct methods
.method constructor <init>(Lti/modules/titanium/geolocation/GeolocationModule;Lti/modules/titanium/geolocation/GeolocationModule;Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 767
    iput-object p1, p0, Lti/modules/titanium/geolocation/GeolocationModule$1;->this$0:Lti/modules/titanium/geolocation/GeolocationModule;

    iput-object p2, p0, Lti/modules/titanium/geolocation/GeolocationModule$1;->val$geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    iput-object p3, p0, Lti/modules/titanium/geolocation/GeolocationModule$1;->val$callback:Lorg/appcelerator/kroll/KrollFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleGeocodeResponse(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .parameter "geocodeResponse"

    .prologue
    .line 771
    const-string v0, "source"

    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule$1;->val$geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    invoke-virtual {p1, v0, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule$1;->val$callback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule$1;->this$0:Lti/modules/titanium/geolocation/GeolocationModule;

    invoke-virtual {v1}, Lti/modules/titanium/geolocation/GeolocationModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/appcelerator/kroll/KrollFunction;->call(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    return-void
.end method
