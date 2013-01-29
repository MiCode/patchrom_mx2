.class public Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
.super Ljava/lang/Object;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumSlot"
.end annotation


# instance fields
.field public mBucketId:I

.field public mHasHeader:Z

.field public mHeader:Ljava/lang/String;

.field public mItem:Lcom/android/gallery3d/data/MediaItem;

.field public mRect:Landroid/graphics/Rect;

.field public mVersion:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1354
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1355
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mRect:Landroid/graphics/Rect;

    .line 1357
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mVersion:J

    .line 1358
    iput v2, p0, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mBucketId:I

    .line 1359
    iput-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mHasHeader:Z

    return-void
.end method
