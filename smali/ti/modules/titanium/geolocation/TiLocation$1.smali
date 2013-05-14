.class Lti/modules/titanium/geolocation/TiLocation$1;
.super Landroid/os/AsyncTask;
.source "TiLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/geolocation/TiLocation;->getLookUpTask()Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/geolocation/TiLocation;


# direct methods
.method constructor <init>(Lti/modules/titanium/geolocation/TiLocation;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lti/modules/titanium/geolocation/TiLocation$1;->this$0:Lti/modules/titanium/geolocation/TiLocation;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 20
    .parameter "args"

    .prologue
    .line 226
    const/4 v9, 0x0

    .line 227
    .local v9, geocodeResponseHandler:Lti/modules/titanium/geolocation/TiLocation$GeocodeResponseHandler;
    const/4 v7, 0x0

    .line 229
    .local v7, event:Lorg/appcelerator/kroll/KrollDict;
    const/16 v17, 0x0

    :try_start_0
    aget-object v16, p1, v17

    check-cast v16, Ljava/lang/String;

    .line 230
    .local v16, url:Ljava/lang/String;
    const/16 v17, 0x1

    aget-object v4, p1, v17

    check-cast v4, Ljava/lang/String;

    .line 231
    .local v4, direction:Ljava/lang/String;
    const/16 v17, 0x2

    aget-object v17, p1, v17

    move-object/from16 v0, v17

    check-cast v0, Lti/modules/titanium/geolocation/TiLocation$GeocodeResponseHandler;

    move-object v9, v0

    .line 233
    const-string v17, "TiLocation"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "GEO URL ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "DEBUG_MODE"

    invoke-static/range {v17 .. v19}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v10, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 236
    .local v10, httpGet:Lorg/apache/http/client/methods/HttpGet;
    new-instance v11, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v11}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 237
    .local v11, httpParams:Lorg/apache/http/params/HttpParams;
    const/16 v17, 0x1388

    move/from16 v0, v17

    invoke-static {v11, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 239
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v11}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 240
    .local v3, client:Lorg/apache/http/client/HttpClient;
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v17

    const-string v18, "http.protocol.expect-continue"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 241
    new-instance v14, Lorg/apache/http/impl/client/BasicResponseHandler;

    invoke-direct {v14}, Lorg/apache/http/impl/client/BasicResponseHandler;-><init>()V

    .line 242
    .local v14, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    invoke-interface {v3, v10, v14}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 244
    .local v13, response:Ljava/lang/String;
    const-string v17, "TiLocation"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "received Geo ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "DEBUG_MODE"

    invoke-static/range {v17 .. v19}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 246
    if-eqz v13, :cond_0

    .line 248
    :try_start_1
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 249
    .local v12, jsonObject:Lorg/json/JSONObject;
    const-string v17, "success"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 250
    const-string v17, "forward"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/geolocation/TiLocation$1;->this$0:Lti/modules/titanium/geolocation/TiLocation;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lti/modules/titanium/geolocation/TiLocation;->buildForwardGeocodeResponse(Lorg/json/JSONObject;)Lorg/appcelerator/kroll/KrollDict;
    invoke-static {v0, v12}, Lti/modules/titanium/geolocation/TiLocation;->access$000(Lti/modules/titanium/geolocation/TiLocation;Lorg/json/JSONObject;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v7

    .line 256
    :goto_0
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 273
    .end local v3           #client:Lorg/apache/http/client/HttpClient;
    .end local v4           #direction:Ljava/lang/String;
    .end local v10           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v11           #httpParams:Lorg/apache/http/params/HttpParams;
    .end local v12           #jsonObject:Lorg/json/JSONObject;
    .end local v13           #response:Ljava/lang/String;
    .end local v14           #responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    .end local v16           #url:Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v9, :cond_2

    .line 274
    if-nez v7, :cond_1

    .line 275
    new-instance v7, Lorg/appcelerator/kroll/KrollDict;

    .end local v7           #event:Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {v7}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 276
    .restart local v7       #event:Lorg/appcelerator/kroll/KrollDict;
    const/16 v17, -0x1

    const-string v18, "Error obtaining geolocation"

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 278
    :cond_1
    invoke-interface {v9, v7}, Lti/modules/titanium/geolocation/TiLocation$GeocodeResponseHandler;->handleGeocodeResponse(Lorg/appcelerator/kroll/KrollDict;)V

    .line 281
    :cond_2
    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    return-object v17

    .line 254
    .restart local v3       #client:Lorg/apache/http/client/HttpClient;
    .restart local v4       #direction:Ljava/lang/String;
    .restart local v10       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v11       #httpParams:Lorg/apache/http/params/HttpParams;
    .restart local v12       #jsonObject:Lorg/json/JSONObject;
    .restart local v13       #response:Ljava/lang/String;
    .restart local v14       #responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    .restart local v16       #url:Ljava/lang/String;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/geolocation/TiLocation$1;->this$0:Lti/modules/titanium/geolocation/TiLocation;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lti/modules/titanium/geolocation/TiLocation;->buildReverseGeocodeResponse(Lorg/json/JSONObject;)Lorg/appcelerator/kroll/KrollDict;
    invoke-static {v0, v12}, Lti/modules/titanium/geolocation/TiLocation;->access$100(Lti/modules/titanium/geolocation/TiLocation;Lorg/json/JSONObject;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v7

    goto :goto_0

    .line 259
    :cond_4
    new-instance v8, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v8}, Lorg/appcelerator/kroll/KrollDict;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 260
    .end local v7           #event:Lorg/appcelerator/kroll/KrollDict;
    .local v8, event:Lorg/appcelerator/kroll/KrollDict;
    :try_start_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unable to resolve message: Code ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "errorcode"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 261
    .local v6, errorCode:Ljava/lang/String;
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v8, v0, v6}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-object v7, v8

    .end local v8           #event:Lorg/appcelerator/kroll/KrollDict;
    .restart local v7       #event:Lorg/appcelerator/kroll/KrollDict;
    goto :goto_1

    .line 264
    .end local v6           #errorCode:Ljava/lang/String;
    .end local v12           #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 265
    .local v5, e:Lorg/json/JSONException;
    :goto_2
    :try_start_4
    const-string v17, "TiLocation"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error converting geo response to JSONObject ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "DEBUG_MODE"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v5, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 269
    .end local v3           #client:Lorg/apache/http/client/HttpClient;
    .end local v4           #direction:Ljava/lang/String;
    .end local v5           #e:Lorg/json/JSONException;
    .end local v10           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v11           #httpParams:Lorg/apache/http/params/HttpParams;
    .end local v13           #response:Ljava/lang/String;
    .end local v14           #responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    .end local v16           #url:Ljava/lang/String;
    :catch_1
    move-exception v15

    .line 270
    .local v15, t:Ljava/lang/Throwable;
    :goto_3
    const-string v17, "TiLocation"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error retrieving geocode information ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "DEBUG_MODE"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v15, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 269
    .end local v7           #event:Lorg/appcelerator/kroll/KrollDict;
    .end local v15           #t:Ljava/lang/Throwable;
    .restart local v3       #client:Lorg/apache/http/client/HttpClient;
    .restart local v4       #direction:Ljava/lang/String;
    .restart local v8       #event:Lorg/appcelerator/kroll/KrollDict;
    .restart local v10       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v11       #httpParams:Lorg/apache/http/params/HttpParams;
    .restart local v12       #jsonObject:Lorg/json/JSONObject;
    .restart local v13       #response:Ljava/lang/String;
    .restart local v14       #responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    .restart local v16       #url:Ljava/lang/String;
    :catch_2
    move-exception v15

    move-object v7, v8

    .end local v8           #event:Lorg/appcelerator/kroll/KrollDict;
    .restart local v7       #event:Lorg/appcelerator/kroll/KrollDict;
    goto :goto_3

    .line 264
    .end local v7           #event:Lorg/appcelerator/kroll/KrollDict;
    .restart local v8       #event:Lorg/appcelerator/kroll/KrollDict;
    :catch_3
    move-exception v5

    move-object v7, v8

    .end local v8           #event:Lorg/appcelerator/kroll/KrollDict;
    .restart local v7       #event:Lorg/appcelerator/kroll/KrollDict;
    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Lti/modules/titanium/geolocation/TiLocation$1;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
