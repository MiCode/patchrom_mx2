.class public interface abstract Lcom/meizu/video/client/common/Constant$DataSourceUri;
.super Ljava/lang/Object;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/common/Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataSourceUri"
.end annotation


# static fields
.field public static final sDownloadUri:Landroid/net/Uri;

.field public static final sVideoUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 222
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/meizu/video/client/common/Constant$DataSourceUri;->sDownloadUri:Landroid/net/Uri;

    .line 223
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/meizu/video/client/common/Constant$DataSourceUri;->sVideoUri:Landroid/net/Uri;

    return-void
.end method
