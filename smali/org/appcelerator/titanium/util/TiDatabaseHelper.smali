.class public Lorg/appcelerator/titanium/util/TiDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TiDatabaseHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TiDbHelper"

.field private static final name:Ljava/lang/String; = "Titanium"

.field private static final version:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 27
    const-string v0, "Titanium"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 28
    return-void
.end method


# virtual methods
.method public deletePlatformParam(Ljava/lang/String;)V
    .locals 6
    .parameter "key"

    .prologue
    .line 60
    const-string v3, "delete from platform where name = ?"

    .line 61
    .local v3, platformSQL:Ljava/lang/String;
    const/4 v0, 0x0

    .line 64
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 66
    .local v2, platformInsertStatement:Landroid/database/sqlite/SQLiteStatement;
    const/4 v4, 0x1

    invoke-virtual {v2, v4, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 67
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 68
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 80
    .end local v2           #platformInsertStatement:Landroid/database/sqlite/SQLiteStatement;
    :cond_0
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v1

    .line 72
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "TiDbHelper"

    const-string v5, "Problem deleting data from platform: "

    invoke-static {v4, v5, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 76
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v4
.end method

.method public getPlatformParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "key"
    .parameter "def"

    .prologue
    .line 83
    const-string v2, "select value from platform where name = ?"

    .line 84
    .local v2, platformSQL:Ljava/lang/String;
    const/4 v0, 0x0

    .line 87
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 88
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 89
    .local v3, platformSelectStatement:Landroid/database/sqlite/SQLiteStatement;
    const/4 v5, 0x1

    invoke-virtual {v3, v5, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 90
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, result:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    if-nez v4, :cond_1

    .line 109
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 113
    .end local v3           #platformSelectStatement:Landroid/database/sqlite/SQLiteStatement;
    .end local v4           #result:Ljava/lang/String;
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 109
    .restart local v3       #platformSelectStatement:Landroid/database/sqlite/SQLiteStatement;
    .restart local v4       #result:Ljava/lang/String;
    .restart local p2
    :cond_1
    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    move-object p2, v4

    goto :goto_0

    .line 98
    .end local v3           #platformSelectStatement:Landroid/database/sqlite/SQLiteStatement;
    .end local v4           #result:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 101
    .local v1, e:Landroid/database/sqlite/SQLiteDoneException;
    :try_start_1
    const-string v5, "TiDbHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No value in database for platform key: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' returning supplied default \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 103
    .end local v1           #e:Landroid/database/sqlite/SQLiteDoneException;
    :catch_1
    move-exception v1

    .line 105
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v5, "TiDbHelper"

    const-string v6, "Problem retrieving data from platform: "

    invoke-static {v5, v6, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 109
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_3

    .line 110
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    throw v5
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 117
    const-string v0, "create table platform(name TEXT,value TEXT)"

    .line 118
    .local v0, platformSQL:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 122
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 125
    return-void
.end method

.method public setPlatformParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 31
    const-string v3, "insert into platform values (?,?)"

    .line 32
    .local v3, platformSQL:Ljava/lang/String;
    const/4 v0, 0x0

    .line 35
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 36
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 37
    .local v2, platformInsertStatement:Landroid/database/sqlite/SQLiteStatement;
    const/4 v4, 0x1

    invoke-virtual {v2, v4, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 38
    const/4 v4, 0x2

    invoke-virtual {v2, v4, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 39
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 40
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 52
    .end local v2           #platformInsertStatement:Landroid/database/sqlite/SQLiteStatement;
    :cond_0
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v1

    .line 44
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "TiDbHelper"

    const-string v5, "Problem saving data to platform: "

    invoke-static {v4, v5, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 48
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v4
.end method

.method public updatePlatformParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;->deletePlatformParam(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;->setPlatformParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method
