.class public Landroid/provider/BrowserContract;
.super Ljava/lang/Object;
.source "BrowserContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/BrowserContract$SyncAccounts;,
        Landroid/provider/BrowserContract$SettingFiles;,
        Landroid/provider/BrowserContract$Popular;,
        Landroid/provider/BrowserContract$Identifications;,
        Landroid/provider/BrowserContract$Settings;,
        Landroid/provider/BrowserContract$Combined;,
        Landroid/provider/BrowserContract$ImageMappings;,
        Landroid/provider/BrowserContract$Images;,
        Landroid/provider/BrowserContract$SyncState;,
        Landroid/provider/BrowserContract$Searches;,
        Landroid/provider/BrowserContract$History;,
        Landroid/provider/BrowserContract$Accounts;,
        Landroid/provider/BrowserContract$Bookmarks;,
        Landroid/provider/BrowserContract$PopularColumns;,
        Landroid/provider/BrowserContract$ImageMappingColumns;,
        Landroid/provider/BrowserContract$HistoryColumns;,
        Landroid/provider/BrowserContract$ImageColumns;,
        Landroid/provider/BrowserContract$CommonColumns;,
        Landroid/provider/BrowserContract$SyncColumns;,
        Landroid/provider/BrowserContract$ChromeSyncColumns;,
        Landroid/provider/BrowserContract$BaseSyncColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.browser"

.field public static final AUTHORITY_URI:Landroid/net/Uri; = null

.field public static final BOOKMARKS_PROJECTION:[Ljava/lang/String; = null

.field public static final BOOKMARKS_PROJECTION_ACCOUNT_NAME_INDEX:I = 0x8

.field public static final BOOKMARKS_PROJECTION_ACCOUNT_TYPE_INDEX:I = 0x9

.field public static final BOOKMARKS_PROJECTION_DATE_CREATED_INDEX:I = 0xc

.field public static final BOOKMARKS_PROJECTION_DATE_MODIFIED_INDEX:I = 0xd

.field public static final BOOKMARKS_PROJECTION_DIRTY_INDEX:I = 0xe

.field public static final BOOKMARKS_PROJECTION_ID_INDEX:I = 0x0

.field public static final BOOKMARKS_PROJECTION_INSERT_AFTER_INDEX:I = 0x6

.field public static final BOOKMARKS_PROJECTION_IS_DELETED_INDEX:I = 0x7

.field public static final BOOKMARKS_PROJECTION_IS_FOLDER_INDEX:I = 0x3

.field public static final BOOKMARKS_PROJECTION_MAPPING_INDEX:I = 0x14

.field public static final BOOKMARKS_PROJECTION_PARENT_INDEX:I = 0x4

.field public static final BOOKMARKS_PROJECTION_POSITION_INDEX:I = 0x5

.field public static final BOOKMARKS_PROJECTION_SOURCE_ID_INDEX:I = 0xa

.field public static final BOOKMARKS_PROJECTION_SYNC1_INDEX:I = 0xf

.field public static final BOOKMARKS_PROJECTION_SYNC2_INDEX:I = 0x10

.field public static final BOOKMARKS_PROJECTION_SYNC3_INDEX:I = 0x11

.field public static final BOOKMARKS_PROJECTION_SYNC4_INDEX:I = 0x12

.field public static final BOOKMARKS_PROJECTION_SYNC5_INDEX:I = 0x13

.field public static final BOOKMARKS_PROJECTION_TITLE_INDEX:I = 0x1

.field public static final BOOKMARKS_PROJECTION_URL_INDEX:I = 0x2

.field public static final BOOKMARKS_PROJECTION_VERSION_INDEX:I = 0xb

.field public static final CALLER_IS_FLYME:Ljava/lang/String; = "caller_is_flyme"

.field public static final CALLER_IS_SYNCADAPTER:Ljava/lang/String; = "caller_is_syncadapter"

.field public static final PARAM_LIMIT:Ljava/lang/String; = "limit"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const-string v0, "content://com.android.browser"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/BrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 425
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "folder"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "parent"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "position"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "insert_after"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "sourceid"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "version"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "created"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "modified"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "dirty"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "sync1"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "sync2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "sync3"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "sync4"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "sync5"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "mapping"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/BrowserContract;->BOOKMARKS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 852
    return-void
.end method
