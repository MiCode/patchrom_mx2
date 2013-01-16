.class public Landroid/provider/Browser$BookmarkColumns;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Browser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BookmarkColumns"
.end annotation


# static fields
.field public static final BOOKMARK:Ljava/lang/String; = "bookmark"

.field public static final BOOKMARK_TITLE:Ljava/lang/String; = "bookmark_title"

.field public static final CATEGORY:Ljava/lang/String; = "category"

.field public static final CREATED:Ljava/lang/String; = "created"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DOMAIN_NAME:Ljava/lang/String; = "domain_name"

.field public static final FAVICON:Ljava/lang/String; = "favicon"

.field public static final POSITION:Ljava/lang/String; = "position"

.field public static final THUMBNAIL:Ljava/lang/String; = "thumbnail"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TOUCH_ICON:Ljava/lang/String; = "touch_icon"

.field public static final URL:Ljava/lang/String; = "url"

.field public static final USER_ENTERED:Ljava/lang/String; = "user_entered"

.field public static final VISITS:Ljava/lang/String; = "visits"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 644
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
