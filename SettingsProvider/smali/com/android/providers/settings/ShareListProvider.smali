.class public Lcom/android/providers/settings/ShareListProvider;
.super Landroid/content/ContentProvider;
.source "ShareListProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/settings/ShareListProvider$LocalSQLiteHelper;
    }
.end annotation


# static fields
.field private static final mMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mHelper:Lcom/android/providers/settings/ShareListProvider$LocalSQLiteHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 28
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/settings/ShareListProvider;->mMatcher:Landroid/content/UriMatcher;

    .line 36
    sget-object v0, Lcom/android/providers/settings/ShareListProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string v1, "meizu_share"

    const-string v2, "share_list/"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 37
    sget-object v0, Lcom/android/providers/settings/ShareListProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string v1, "meizu_share"

    const-string v2, "share_list/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 80
    iget-object v2, p0, Lcom/android/providers/settings/ShareListProvider;->mHelper:Lcom/android/providers/settings/ShareListProvider$LocalSQLiteHelper;

    invoke-virtual {v2}, Lcom/android/providers/settings/ShareListProvider$LocalSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 81
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v2, Lcom/android/providers/settings/ShareListProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 82
    .local v0, code:I
    packed-switch v0, :pswitch_data_0

    .line 87
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 85
    :pswitch_0
    const-string v2, "share_list"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 97
    iget-object v5, p0, Lcom/android/providers/settings/ShareListProvider;->mHelper:Lcom/android/providers/settings/ShareListProvider$LocalSQLiteHelper;

    invoke-virtual {v5}, Lcom/android/providers/settings/ShareListProvider$LocalSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 98
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lcom/android/providers/settings/ShareListProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 99
    .local v0, code:I
    const-wide/16 v2, -0x1

    .line 100
    .local v2, id:J
    packed-switch v0, :pswitch_data_0

    .line 106
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_0

    .line 109
    :goto_1
    return-object v4

    .line 103
    :pswitch_0
    const-string v5, "share_list"

    invoke-virtual {v1, v5, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_0

    .line 109
    :cond_0
    const-string v4, "content://meizu_share/share_list"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_1

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 115
    new-instance v0, Lcom/android/providers/settings/ShareListProvider$LocalSQLiteHelper;

    invoke-virtual {p0}, Lcom/android/providers/settings/ShareListProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/providers/settings/ShareListProvider$LocalSQLiteHelper;-><init>(Lcom/android/providers/settings/ShareListProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/settings/ShareListProvider;->mHelper:Lcom/android/providers/settings/ShareListProvider$LocalSQLiteHelper;

    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 122
    iget-object v1, p0, Lcom/android/providers/settings/ShareListProvider;->mHelper:Lcom/android/providers/settings/ShareListProvider$LocalSQLiteHelper;

    invoke-virtual {v1}, Lcom/android/providers/settings/ShareListProvider$LocalSQLiteHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 123
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/android/providers/settings/ShareListProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 124
    .local v8, code:I
    packed-switch v8, :pswitch_data_0

    .line 129
    :goto_0
    return-object v5

    .line 127
    :pswitch_0
    const-string v1, "share_list"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 135
    iget-object v2, p0, Lcom/android/providers/settings/ShareListProvider;->mHelper:Lcom/android/providers/settings/ShareListProvider$LocalSQLiteHelper;

    invoke-virtual {v2}, Lcom/android/providers/settings/ShareListProvider$LocalSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 136
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v2, Lcom/android/providers/settings/ShareListProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 137
    .local v0, code:I
    packed-switch v0, :pswitch_data_0

    .line 142
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 140
    :pswitch_0
    const-string v2, "share_list"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
