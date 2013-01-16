.class public final Landroid/provider/RecorderInfo$FileColumns;
.super Ljava/lang/Object;
.source "RecorderInfo.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/RecorderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileColumns"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.meizu.fileinfo"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.meizu.fileinfo"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATED:Ljava/lang/String; = "created"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "modified desc"

.field public static final FORMATNAME:Ljava/lang/String; = "formatname"

.field public static final ISREAD:Ljava/lang/String; = "isread"

.field public static final KIND:Ljava/lang/String; = "kind"

.field public static final LENGTH:Ljava/lang/String; = "length"

.field public static final MODIFIED:Ljava/lang/String; = "modified"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final SIZE:Ljava/lang/String; = "size"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "content://com.android.soundrecorder.provider/fileinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/RecorderInfo$FileColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method
