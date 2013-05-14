.class public Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TiAnalyticsModel.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "tianalytics.db"

.field private static final DB_VERSION:I = 0x4

.field private static final TAG:Ljava/lang/String; = "TiAnalyticsDb"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 31
    const-string v0, "tianalytics.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 32
    return-void
.end method

.method private doMigration_1(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 82
    const-string v0, "drop table if exists Events"

    .line 83
    .local v0, sql:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 85
    const-string v0, "create table Events (  _id INTEGER PRIMARY KEY AUTOINCREMENT,   EventId TEXT,   Name TEXT,   Timestamp TEXT,   MID TEXT,   SID TEXT,   AppID TEXT,   isJSON INTEGER,   Payload TEXT );"

    .line 98
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method private doMigration_2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 102
    const-string v0, "create table Props (  _id INTEGER PRIMARY KEY,   Name TEXT,   Value TEXT );"

    .line 109
    .local v0, sql:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    const-string v0, "insert into Props(Name, Value) values (\'Enrolled\', \'0\')"

    .line 114
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method private doMigration_3(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 120
    const-string v0, "drop table if exists Events"

    .line 123
    .local v0, sql:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 125
    const-string v0, "create table Events (  _id INTEGER PRIMARY KEY AUTOINCREMENT,   EventId TEXT,   Type TEXT,   Event TEXT,   Timestamp TEXT,   MID TEXT,   SID TEXT,   AppGUID TEXT,   isJSON INTEGER,   Payload TEXT );"

    .line 139
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 140
    return-void
.end method


# virtual methods
.method public addEvent(Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 144
    const/4 v1, 0x0

    .line 146
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 147
    const-string v3, "insert into Events(EventId, Type, Event, Timestamp, MID, SID, AppGUID, isJSON, Payload) values(?,?,?,?,?,?,?,?,?)"

    .line 150
    .local v3, sql:Ljava/lang/String;
    const/16 v6, 0x9

    new-array v0, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->createEventId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x2

    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getEventEvent()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x3

    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getEventTimestamp()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x4

    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getEventMid()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x5

    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getEventSid()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x6

    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getEventAppGuid()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x7

    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->mustExpandPayload()Z

    move-result v7

    if-eqz v7, :cond_1

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v6

    const/16 v4, 0x8

    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getEventPayload()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 161
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 169
    .end local v0           #args:[Ljava/lang/Object;
    .end local v3           #sql:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .restart local v3       #sql:Ljava/lang/String;
    :cond_1
    move v4, v5

    .line 150
    goto :goto_0

    .line 162
    .end local v3           #sql:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 163
    .local v2, e:Landroid/database/SQLException;
    :try_start_1
    const-string v4, "TiAnalyticsDb"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error adding event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 165
    .end local v2           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_2

    .line 166
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    throw v4
.end method

.method public deleteEvents([I)V
    .locals 7
    .parameter "records"

    .prologue
    .line 173
    array-length v4, p1

    if-lez v4, :cond_2

    .line 174
    const/4 v0, 0x0

    .line 176
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 178
    .local v3, sb:Ljava/lang/StringBuilder;
    const-string v4, "delete from Events where _id in ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_1

    .line 180
    if-lez v2, :cond_0

    .line 181
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_0
    aget v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    :cond_1
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    if-eqz v0, :cond_2

    .line 191
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 195
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #i:I
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    return-void

    .line 187
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 188
    .local v1, e:Landroid/database/SQLException;
    :try_start_1
    const-string v4, "TiAnalyticsDb"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error deleting events :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    if-eqz v0, :cond_2

    .line 191
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 190
    .end local v1           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_3

    .line 191
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    throw v4
.end method

.method public getEventsAsJSON(I)Ljava/util/HashMap;
    .locals 13
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 229
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 231
    .local v5, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lorg/json/JSONObject;>;"
    const/4 v1, 0x0

    .line 232
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 234
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 236
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "select _id, EventId, Type, Event, Timestamp, MID, SID, AppGUID, isJSON, Payload from Events  order by 1 limit "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 242
    .local v7, sql:Ljava/lang/String;
    const/4 v10, 0x0

    invoke-virtual {v1, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 244
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 245
    const/4 v10, 0x0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 246
    .local v6, seq:I
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 247
    .local v4, json:Lorg/json/JSONObject;
    const-string v10, "seq"

    invoke-virtual {v4, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 248
    const-string v10, "ver"

    const-string v11, "2"

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    const-string v10, "id"

    const/4 v11, 0x1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    const-string v10, "type"

    const/4 v11, 0x2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    const-string v10, "event"

    const/4 v11, 0x3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    const-string v10, "ts"

    const/4 v11, 0x4

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string v10, "mid"

    const/4 v11, 0x5

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    const-string v10, "sid"

    const/4 v11, 0x6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    const-string v10, "aguid"

    const/4 v11, 0x7

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    const/16 v10, 0x8

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-ne v10, v8, :cond_2

    move v3, v8

    .line 257
    .local v3, isJSON:Z
    :goto_1
    if-eqz v3, :cond_3

    .line 258
    const-string v10, "data"

    new-instance v11, Lorg/json/JSONObject;

    const/16 v12, 0x9

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 265
    .end local v3           #isJSON:Z
    .end local v4           #json:Lorg/json/JSONObject;
    .end local v6           #seq:I
    .end local v7           #sql:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 266
    .local v2, e:Lorg/json/JSONException;
    :try_start_1
    const-string v8, "TiAnalyticsDb"

    const-string v9, "Error creating JSON."

    invoke-static {v8, v9, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    if-eqz v0, :cond_0

    .line 271
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 273
    :cond_0
    if-eqz v1, :cond_1

    .line 274
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 278
    .end local v2           #e:Lorg/json/JSONException;
    :cond_1
    :goto_3
    return-object v5

    .restart local v4       #json:Lorg/json/JSONObject;
    .restart local v6       #seq:I
    .restart local v7       #sql:Ljava/lang/String;
    :cond_2
    move v3, v9

    .line 256
    goto :goto_1

    .line 260
    .restart local v3       #isJSON:Z
    :cond_3
    :try_start_2
    const-string v10, "data"

    const/16 v11, 0x9

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 267
    .end local v3           #isJSON:Z
    .end local v4           #json:Lorg/json/JSONObject;
    .end local v6           #seq:I
    .end local v7           #sql:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 268
    .local v2, e:Landroid/database/SQLException;
    :try_start_3
    const-string v8, "TiAnalyticsDb"

    const-string v9, "Error retrieving events to send as JSON: "

    invoke-static {v8, v9, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 270
    if-eqz v0, :cond_4

    .line 271
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 273
    :cond_4
    if-eqz v1, :cond_1

    .line 274
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_3

    .line 270
    .end local v2           #e:Landroid/database/SQLException;
    .restart local v7       #sql:Ljava/lang/String;
    :cond_5
    if-eqz v0, :cond_6

    .line 271
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 273
    :cond_6
    if-eqz v1, :cond_1

    .line 274
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_3

    .line 270
    .end local v7           #sql:Ljava/lang/String;
    :catchall_0
    move-exception v8

    if-eqz v0, :cond_7

    .line 271
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 273
    :cond_7
    if-eqz v1, :cond_8

    .line 274
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8
    throw v8
.end method

.method public hasEvents()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 198
    const/4 v3, 0x0

    .line 200
    .local v3, result:Z
    const/4 v1, 0x0

    .line 201
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 203
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 205
    const-string v4, "select exists(select _id from Events)"

    .line 209
    .local v4, sql:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 211
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 212
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_3

    const/4 v3, 0x1

    .line 217
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 218
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_1
    if-eqz v1, :cond_2

    .line 221
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 225
    .end local v4           #sql:Ljava/lang/String;
    :cond_2
    :goto_1
    return v3

    .restart local v4       #sql:Ljava/lang/String;
    :cond_3
    move v3, v5

    .line 212
    goto :goto_0

    .line 214
    .end local v4           #sql:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 215
    .local v2, e:Landroid/database/SQLException;
    :try_start_1
    const-string v5, "TiAnalyticsDb"

    const-string v6, "Error determining if there are events to send: "

    invoke-static {v5, v6, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    if-eqz v0, :cond_4

    .line 218
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_4
    if-eqz v1, :cond_2

    .line 221
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 217
    .end local v2           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_5

    .line 218
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_5
    if-eqz v1, :cond_6

    .line 221
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    throw v5
.end method

.method public markEnrolled()V
    .locals 6

    .prologue
    .line 313
    const-string v2, "update Props set Value = \'1\' where Name = \'Enrolled\'"

    .line 317
    .local v2, sql:Ljava/lang/String;
    const/4 v0, 0x0

    .line 319
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 320
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 321
    :catch_0
    move-exception v1

    .line 322
    .local v1, e:Landroid/database/SQLException;
    :try_start_1
    const-string v3, "TiAnalyticsDb"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error marking enrolled :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 324
    .end local v1           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v3
.end method

.method public needsEnrollEvent()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 282
    const/4 v3, 0x0

    .line 284
    .local v3, result:Z
    const/4 v1, 0x0

    .line 285
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 287
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 289
    const-string v4, "select Value from Props where Name = \'Enrolled\'"

    .line 293
    .local v4, sql:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 295
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 296
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_3

    const/4 v3, 0x1

    .line 301
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 302
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 304
    :cond_1
    if-eqz v1, :cond_2

    .line 305
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 309
    .end local v4           #sql:Ljava/lang/String;
    :cond_2
    :goto_1
    return v3

    .restart local v4       #sql:Ljava/lang/String;
    :cond_3
    move v3, v5

    .line 296
    goto :goto_0

    .line 298
    .end local v4           #sql:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 299
    .local v2, e:Landroid/database/SQLException;
    :try_start_1
    const-string v5, "TiAnalyticsDb"

    const-string v6, "Error retrieving events to send as JSON: "

    invoke-static {v5, v6, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    if-eqz v0, :cond_4

    .line 302
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 304
    :cond_4
    if-eqz v1, :cond_2

    .line 305
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 301
    .end local v2           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_5

    .line 302
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 304
    :cond_5
    if-eqz v1, :cond_6

    .line 305
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    throw v5
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 37
    const-string v1, "TiAnalyticsDb"

    const-string v2, "Creating Database tianalytics.db"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string v0, "create table Events (  _id INTEGER PRIMARY KEY,   EventId TEXT,   Name TEXT,   Timestamp TEXT,   MID TEXT,   SID TEXT,   isJSON INTEGER,   Payload TEXT );"

    .line 50
    .local v0, sql:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-virtual {p0, p1, v1, v2}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 53
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 58
    const-string v1, "TiAnalyticsDb"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading Database from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    move v0, p2

    .line 61
    .local v0, version:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 62
    packed-switch v0, :pswitch_data_0

    .line 76
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing migration path version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :pswitch_0
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->doMigration_1(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 65
    const/4 v0, 0x2

    .line 66
    goto :goto_0

    .line 68
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->doMigration_2(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 69
    const/4 v0, 0x3

    .line 70
    goto :goto_0

    .line 72
    :pswitch_2
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->doMigration_3(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 73
    const/4 v0, 0x4

    .line 74
    goto :goto_0

    .line 79
    :cond_0
    return-void

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
