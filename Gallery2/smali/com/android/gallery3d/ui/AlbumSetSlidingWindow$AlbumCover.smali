.class public Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
.super Ljava/lang/Object;
.source "AlbumSetSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumCover"
.end annotation


# instance fields
.field public bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field public content:Lcom/android/gallery3d/ui/Texture;

.field coverDataVersion:J

.field public coverItem:Lcom/android/gallery3d/data/MediaItem;

.field private coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;

.field public isPanorama:Z

.field public isWaitLoadingDisplayed:Z

.field public mediaType:I

.field public rect:Landroid/graphics/Rect;

.field public refCount:I

.field public rotation:I

.field public shadowHeight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;)Lcom/android/gallery3d/ui/BitmapLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;

    return-object p1
.end method
