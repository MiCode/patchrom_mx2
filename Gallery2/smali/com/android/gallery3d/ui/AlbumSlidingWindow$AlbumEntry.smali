.class public Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
.super Ljava/lang/Object;
.source "AlbumSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/AlbumSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumEntry"
.end annotation


# instance fields
.field public bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field public content:Lcom/android/gallery3d/ui/Texture;

.field private contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;

.field public fontScale:F

.field public isPanorama:Z

.field public isWaitDisplayed:Z

.field public item:Lcom/android/gallery3d/data/MediaItem;

.field private labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;

.field public labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field public mediaType:I

.field public path:Lcom/android/gallery3d/data/Path;

.field public rect:Landroid/graphics/Rect;

.field private refCount:I

.field public rotation:I

.field public slotIndex:I

.field public version:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->refCount:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->refCount:I

    return p1
.end method

.method static synthetic access$004(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->refCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->refCount:I

    return v0
.end method

.method static synthetic access$006(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->refCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->refCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;

    return-object p1
.end method


# virtual methods
.method layout(II)V
    .locals 3
    .parameter "slotWidth"
    .parameter "thumbWidth"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p2}, Lcom/android/gallery3d/data/MediaItem;->calcItemRect(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->rect:Landroid/graphics/Rect;

    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->rect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 85
    return-void
.end method
