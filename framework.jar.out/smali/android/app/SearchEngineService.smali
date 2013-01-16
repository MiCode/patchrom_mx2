.class public Landroid/app/SearchEngineService;
.super Ljava/lang/Object;
.source "SearchEngineService.java"


# static fields
.field private static final ENGINE:Landroid/net/Uri;

.field private static final ENGINE_PREFER:Landroid/net/Uri;

.field private static final ENGINE_SEARCH:Landroid/net/Uri;

.field private static final ENGINE_SUGGEST:Landroid/net/Uri;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "content://browser/searchengine"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/app/SearchEngineService;->ENGINE:Landroid/net/Uri;

    .line 35
    const-string v0, "content://browser/searchengine/prefer"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/app/SearchEngineService;->ENGINE_PREFER:Landroid/net/Uri;

    .line 36
    const-string v0, "content://browser/searchengine/suggest"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/app/SearchEngineService;->ENGINE_SUGGEST:Landroid/net/Uri;

    .line 37
    const-string v0, "content://browser/searchengine/search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/app/SearchEngineService;->ENGINE_SEARCH:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/app/SearchEngineService;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method


# virtual methods
.method public getPreferEngine()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 68
    const/4 v6, 0x0

    .line 70
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/app/SearchEngineService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/app/SearchEngineService;->ENGINE_PREFER:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 71
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 72
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 76
    if-eqz v6, :cond_0

    .line 77
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 81
    :cond_0
    :goto_0
    return-object v0

    .line 73
    :catch_0
    move-exception v7

    .line 74
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    if-eqz v6, :cond_1

    .line 77
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v8

    .line 81
    goto :goto_0

    .line 76
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 77
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getSearchEnginesList()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 45
    const/4 v7, 0x0

    .line 47
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/app/SearchEngineService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/app/SearchEngineService;->ENGINE:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 48
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v9, engines:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v6, b:Landroid/os/Bundle;
    const-string v0, "engine_name"

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "engine_label"

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    .end local v6           #b:Landroid/os/Bundle;
    .end local v9           #engines:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    :catch_0
    move-exception v8

    .line 57
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    if-eqz v7, :cond_0

    .line 60
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v9, v10

    .line 64
    .end local v8           #e:Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v9

    .line 59
    .restart local v9       #engines:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    :cond_2
    if-eqz v7, :cond_1

    .line 60
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 59
    .end local v9           #engines:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 60
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public getSearchUriForQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "query"

    .prologue
    const/4 v8, 0x0

    .line 110
    const/4 v6, 0x0

    .line 112
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/app/SearchEngineService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/app/SearchEngineService;->ENGINE_SEARCH:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string/jumbo v3, "search=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 113
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 114
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 118
    if-eqz v6, :cond_0

    .line 119
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 123
    :cond_0
    :goto_0
    return-object v0

    .line 115
    :catch_0
    move-exception v7

    .line 116
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    if-eqz v6, :cond_1

    .line 119
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v8

    .line 123
    goto :goto_0

    .line 118
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 119
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getSuggestUriForQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "query"

    .prologue
    const/4 v8, 0x0

    .line 93
    const/4 v6, 0x0

    .line 95
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/app/SearchEngineService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/app/SearchEngineService;->ENGINE_SUGGEST:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string/jumbo v3, "suggest=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 96
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 97
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 101
    if-eqz v6, :cond_0

    .line 102
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 106
    :cond_0
    :goto_0
    return-object v0

    .line 98
    :catch_0
    move-exception v7

    .line 99
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    if-eqz v6, :cond_1

    .line 102
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v8

    .line 106
    goto :goto_0

    .line 101
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 102
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public setPreferEngine(Ljava/lang/String;)V
    .locals 7
    .parameter "engine"

    .prologue
    .line 86
    :try_start_0
    iget-object v1, p0, Landroid/app/SearchEngineService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/app/SearchEngineService;->ENGINE_PREFER:Landroid/net/Uri;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "prefer=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
