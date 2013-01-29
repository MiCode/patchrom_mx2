.class public Lcom/android/gallery3d/ui/AlbumSlidingWindow;
.super Ljava/lang/Object;
.source "AlbumSlidingWindow.java"

# interfaces
.implements Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;,
        Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelLoader;,
        Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;,
        Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryUpdater;,
        Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;,
        Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;
    }
.end annotation


# instance fields
.field private mActiveEnd:I

.field private mActiveRequestCount:I

.field private mActiveStart:I

.field private mContentEnd:I

.field private mContentStart:I

.field private final mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

.field private mEntryPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFreedEntry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

.field private mHeaderTextures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/gallery3d/ui/StringTexture;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderWidth:I

.field private mIsActive:Z

.field private final mIsVideo:Z

.field private final mLabelMaker:Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;

.field private mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

.field private mSize:I

.field private mSlotWidth:I

.field private final mSource:Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;

.field private final mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

.field private final mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

.field private final mThreadPool:Lcom/android/gallery3d/util/JobLimiter;

.field private mThumbWidth:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;Lcom/android/gallery3d/ui/SlotView$Spec;Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;IZ)V
    .locals 3
    .parameter "activity"
    .parameter "source"
    .parameter "spec"
    .parameter "labelSpec"
    .parameter "cacheSize"
    .parameter "isVideo"

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .line 99
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .line 101
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    .line 102
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    .line 106
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    .line 107
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mEntryPool:Ljava/util/HashMap;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mFreedEntry:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mHeaderTextures:Ljava/util/HashMap;

    .line 118
    invoke-interface {p2, p0}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;->setDataListener(Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;)V

    .line 119
    iput-object p2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;

    .line 120
    iput-object p3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    .line 121
    new-array v0, p5, [Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    .line 122
    invoke-interface {p2}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;->size()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    .line 123
    iput-boolean p6, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsVideo:Z

    .line 125
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$1;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$1;-><init>(Lcom/android/gallery3d/ui/AlbumSlidingWindow;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    .line 133
    new-instance v0, Lcom/android/gallery3d/util/JobLimiter;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/util/JobLimiter;-><init>(Lcom/android/gallery3d/util/ThreadPool;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mThreadPool:Lcom/android/gallery3d/util/JobLimiter;

    .line 134
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;

    invoke-direct {v0, p4}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;-><init>(Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mLabelMaker:Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;

    .line 135
    new-instance v0, Lcom/android/gallery3d/ui/TextureUploader;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/TextureUploader;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    .line 136
    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mLabelMaker:Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/util/JobLimiter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mThreadPool:Lcom/android/gallery3d/util/JobLimiter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/SynchronizedHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/TextureUploader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$706(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->requestNonactiveImages()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    return-object v0
.end method

.method private cancelNonactiveImages()V
    .locals 5

    .prologue
    .line 313
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 315
    .local v1, range:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 316
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->cancelSlotImage(I)V

    .line 317
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->cancelSlotImage(I)V

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    :cond_0
    return-void
.end method

.method private cancelSlotImage(I)V
    .locals 3
    .parameter "slotIndex"

    .prologue
    .line 322
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 324
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    if-eqz v0, :cond_0

    .line 325
    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_2

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapLoader;->cancelLoad()V

    .line 326
    :cond_2
    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$200(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$200(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapLoader;->cancelLoad()V

    goto :goto_0
.end method

.method private clearEntryPool()V
    .locals 3

    .prologue
    .line 529
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mEntryPool:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    .line 530
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v2

    if-eqz v2, :cond_1

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BitmapLoader;->recycle()V

    .line 531
    :cond_1
    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    goto :goto_0

    .line 533
    .end local v0           #entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mEntryPool:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 534
    return-void
.end method

.method private clearFreedPool()V
    .locals 5

    .prologue
    .line 213
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mEntryPool:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    .line 214
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->refCount:I
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)I

    move-result v2

    if-nez v2, :cond_0

    .line 215
    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v2

    if-eqz v2, :cond_1

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BitmapLoader;->recycle()V

    .line 216
    :cond_1
    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 217
    :cond_2
    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$200(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v2

    if-eqz v2, :cond_3

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$200(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BitmapLoader;->recycle()V

    .line 218
    :cond_3
    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 219
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mFreedEntry:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    .end local v0           #entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    :cond_5
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mFreedEntry:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    .line 223
    .restart local v0       #entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mEntryPool:Ljava/util/HashMap;

    iget-wide v3, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->version:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 225
    .end local v0           #entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    :cond_6
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mFreedEntry:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 226
    return-void
.end method

.method private freeSlotContent(I)V
    .locals 4
    .parameter "slotIndex"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    .line 331
    .local v0, data:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    array-length v3, v0

    rem-int v2, p1, v3

    .line 332
    .local v2, index:I
    aget-object v1, v0, v2

    .line 333
    .local v1, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    if-eqz v1, :cond_0

    .line 334
    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$006(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)I

    .line 335
    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 337
    :cond_0
    return-void
.end method

.method private getEntryLabelLoader(ILcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelLoader;
    .locals 8
    .parameter "index"
    .parameter "item"

    .prologue
    .line 340
    instance-of v3, p2, Lcom/android/gallery3d/data/LocalVideo;

    if-eqz v3, :cond_1

    move-object v2, p2

    .line 341
    check-cast v2, Lcom/android/gallery3d/data/LocalVideo;

    .line 342
    .local v2, video:Lcom/android/gallery3d/data/LocalVideo;
    iget-object v3, v2, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->getFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, format:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 348
    :goto_0
    const-string v3, "%s %s %dx%d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v2, Lcom/android/gallery3d/data/LocalVideo;->durationInSec:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Lcom/android/gallery3d/common/Utils;->getTime(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/LocalVideo;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v2}, Lcom/android/gallery3d/data/LocalVideo;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, info:Ljava/lang/String;
    new-instance v3, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelLoader;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/LocalVideo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, p1, v4, v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelLoader;-><init>(Lcom/android/gallery3d/ui/AlbumSlidingWindow;ILjava/lang/String;Ljava/lang/String;)V

    .line 353
    .end local v0           #format:Ljava/lang/String;
    .end local v1           #info:Ljava/lang/String;
    .end local v2           #video:Lcom/android/gallery3d/data/LocalVideo;
    :goto_1
    return-object v3

    .line 346
    .restart local v0       #format:Ljava/lang/String;
    .restart local v2       #video:Lcom/android/gallery3d/data/LocalVideo;
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 353
    .end local v0           #format:Ljava/lang/String;
    .end local v2           #video:Lcom/android/gallery3d/data/LocalVideo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getHeaderTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/StringTexture;
    .locals 5
    .parameter "header"

    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mHeaderTextures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/StringTexture;

    .line 152
    .local v0, texture:Lcom/android/gallery3d/ui/StringTexture;
    if-nez v0, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v1, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->headerTextFontSize:I

    int-to-float v1, v1

    const v2, -0x7f7f80

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mHeaderWidth:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v3, v4}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FIFZ)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mHeaderTextures:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_0
    return-object v0
.end method

.method private prepareSlotContent(I)V
    .locals 7
    .parameter "slotIndex"

    .prologue
    const/4 v6, 0x1

    .line 357
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;

    invoke-interface {v4, p1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 358
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    const-wide/16 v2, -0x1

    .line 359
    .local v2, version:J
    if-eqz v1, :cond_0

    .line 360
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v2

    .line 361
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mEntryPool:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    .line 362
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    if-eqz v0, :cond_0

    .line 363
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$004(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)I

    .line 364
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v5, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v5, v5

    rem-int v5, p1, v5

    aput-object v0, v4, v5

    .line 385
    :goto_0
    return-void

    .line 368
    .end local v0           #entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    :cond_0
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;-><init>()V

    .line 369
    .restart local v0       #entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    iput-object v1, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    .line 370
    if-nez v1, :cond_2

    const-wide/16 v4, -0x1

    :goto_1
    iput-wide v4, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->version:J

    .line 371
    iget-object v4, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v4}, Lcom/android/gallery3d/util/GalleryUtils;->isPanorama(Lcom/android/gallery3d/data/MediaItem;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isPanorama:Z

    .line 372
    if-nez v1, :cond_3

    move v4, v6

    :goto_2
    iput v4, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->mediaType:I

    .line 375
    if-nez v1, :cond_4

    const/4 v4, 0x0

    :goto_3
    iput-object v4, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/android/gallery3d/data/Path;

    .line 376
    if-nez v1, :cond_5

    const/4 v4, 0x0

    :goto_4
    iput v4, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->rotation:I

    .line 377
    new-instance v4, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;

    iget-object v5, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    invoke-direct {v4, p0, p1, v5}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;-><init>(Lcom/android/gallery3d/ui/AlbumSlidingWindow;ILcom/android/gallery3d/data/MediaItem;)V

    #setter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0, v4}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$102(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 378
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsVideo:Z

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 379
    iget-object v4, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    invoke-direct {p0, p1, v4}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->getEntryLabelLoader(ILcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelLoader;

    move-result-object v4

    #setter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0, v4}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$202(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 380
    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSlotWidth:I

    iget v5, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mThumbWidth:I

    invoke-virtual {v0, v4, v5}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->layout(II)V

    .line 382
    :cond_1
    #setter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->refCount:I
    invoke-static {v0, v6}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$002(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;I)I

    .line 383
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mEntryPool:Ljava/util/HashMap;

    iget-wide v5, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->version:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v5, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v5, v5

    rem-int v5, p1, v5

    aput-object v0, v4, v5

    goto :goto_0

    .line 370
    :cond_2
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v4

    goto :goto_1

    .line 372
    :cond_3
    iget-object v4, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v4

    goto :goto_2

    .line 375
    :cond_4
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    goto :goto_3

    .line 376
    :cond_5
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v4

    goto :goto_4
.end method

.method private requestNonactiveImages()V
    .locals 5

    .prologue
    .line 291
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 293
    .local v1, range:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 294
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->requestSlotImage(I)V

    .line 295
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->requestSlotImage(I)V

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_0
    return-void
.end method

.method private requestSlotImage(I)V
    .locals 3
    .parameter "slotIndex"

    .prologue
    .line 301
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 303
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/android/gallery3d/ui/Texture;

    if-nez v1, :cond_2

    .line 305
    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_2

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapLoader;->startLoad()V

    .line 307
    :cond_2
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsVideo:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-nez v1, :cond_0

    .line 308
    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$200(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$200(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapLoader;->startLoad()V

    goto :goto_0
.end method

.method private setContentWindow(II)V
    .locals 3
    .parameter "contentStart"
    .parameter "contentEnd"

    .prologue
    .line 173
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ne p2, v2, :cond_0

    .line 210
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    if-nez v2, :cond_1

    .line 178
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .line 179
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .line 180
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;

    invoke-interface {v2, p1, p2}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;->setActiveWindow(II)V

    goto :goto_0

    .line 184
    :cond_1
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ge p1, v2, :cond_2

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt v2, p2, :cond_4

    .line 185
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 186
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 188
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;

    invoke-interface {v2, p1, p2}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;->setActiveWindow(II)V

    .line 189
    move v0, p1

    :goto_2
    if-ge v0, p2, :cond_8

    .line 190
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 193
    .end local v0           #i:I
    .end local v1           #n:I
    :cond_4
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .restart local v0       #i:I
    :goto_3
    if-ge v0, p1, :cond_5

    .line 194
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 196
    :cond_5
    move v0, p2

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .restart local v1       #n:I
    :goto_4
    if-ge v0, v1, :cond_6

    .line 197
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 199
    :cond_6
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;

    invoke-interface {v2, p1, p2}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;->setActiveWindow(II)V

    .line 200
    move v0, p1

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    :goto_5
    if-ge v0, v1, :cond_7

    .line 201
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 203
    :cond_7
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    :goto_6
    if-ge v0, p2, :cond_8

    .line 204
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 208
    :cond_8
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .line 209
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    goto :goto_0
.end method

.method private static startLoadBitmap(Lcom/android/gallery3d/ui/BitmapLoader;)Z
    .locals 1
    .parameter "loader"

    .prologue
    .line 388
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 390
    :goto_0
    return v0

    .line 389
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BitmapLoader;->startLoad()V

    .line 390
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BitmapLoader;->isRequestInProgress()Z

    move-result v0

    goto :goto_0
.end method

.method private updateAllImageRequests()V
    .locals 5

    .prologue
    .line 394
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    .line 395
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    .local v1, i:I
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 396
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v4, v4

    rem-int v4, v1, v4

    aget-object v0, v3, v4

    .line 397
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v3, :cond_1

    .line 398
    iget-object v3, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/android/gallery3d/ui/Texture;

    if-nez v3, :cond_0

    .line 399
    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->startLoadBitmap(Lcom/android/gallery3d/ui/BitmapLoader;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    .line 401
    :cond_0
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsVideo:Z

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-nez v3, :cond_1

    .line 402
    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$200(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->startLoadBitmap(Lcom/android/gallery3d/ui/BitmapLoader;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    .line 395
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 406
    .end local v0           #entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    :cond_2
    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    if-nez v3, :cond_3

    .line 407
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->requestNonactiveImages()V

    .line 411
    :goto_1
    return-void

    .line 409
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->cancelNonactiveImages()V

    goto :goto_1
.end method

.method private updateTextureUploadQueue()V
    .locals 7

    .prologue
    .line 260
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    if-nez v4, :cond_1

    .line 283
    :cond_0
    return-void

    .line 261
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/TextureUploader;->clear()V

    .line 264
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    .local v1, i:I
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 265
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v5, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v5, v5

    rem-int v5, v1, v5

    aget-object v0, v4, v5

    .line 266
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    if-eqz v0, :cond_3

    .line 267
    iget-object v4, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v4, :cond_2

    .line 268
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    iget-object v5, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/ui/TextureUploader;->addFgTexture(Lcom/android/gallery3d/ui/UploadedTexture;)V

    .line 270
    :cond_2
    iget-object v4, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v4, :cond_3

    .line 271
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    iget-object v5, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/ui/TextureUploader;->addFgTexture(Lcom/android/gallery3d/ui/UploadedTexture;)V

    .line 264
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    .end local v0           #entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    :cond_4
    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v5, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v6, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 279
    .local v3, range:I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    .line 280
    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->uploadBgTextureInSlot(I)V

    .line 281
    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->uploadBgTextureInSlot(I)V

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private uploadBgTextureInSlot(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 246
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ge p1, v1, :cond_1

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_1

    .line 247
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 248
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    if-eqz v0, :cond_1

    .line 249
    iget-object v1, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/TextureUploader;->addBgTexture(Lcom/android/gallery3d/ui/UploadedTexture;)V

    .line 252
    :cond_0
    iget-object v1, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/TextureUploader;->addBgTexture(Lcom/android/gallery3d/ui/UploadedTexture;)V

    .line 257
    .end local v0           #entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    :cond_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    .line 574
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/TextureUploader;->clear()V

    .line 575
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 576
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 575
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 578
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->clearEntryPool()V

    .line 579
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mLabelMaker:Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->clearRecycledLabels()V

    .line 580
    return-void
.end method

.method public get(I)Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    .locals 4
    .parameter "slotIndex"

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    const-string v0, "invalid slot: %s outsides (%s, %s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/gallery3d/common/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getHeaderTexture(I)Lcom/android/gallery3d/ui/StringTexture;
    .locals 2
    .parameter "slotIndex"

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;

    invoke-interface {v1, p1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;->getHeader(I)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, header:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->getHeaderTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v1

    .line 164
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isActiveSlot(I)Z
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 169
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContentChangeEnded()V
    .locals 0

    .prologue
    .line 550
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->clearFreedPool()V

    .line 551
    return-void
.end method

.method public onContentChanged(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 538
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ge p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 539
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 540
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    .line 541
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->updateAllImageRequests()V

    .line 542
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;->onContentChanged()V

    .line 546
    :cond_0
    return-void
.end method

.method public onSizeChanged(I)V
    .locals 3
    .parameter "size"

    .prologue
    .line 515
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    if-eq v1, p1, :cond_3

    .line 516
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    .line 517
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;->onSizeChanged(I)V

    .line 518
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    if-le v1, v2, :cond_2

    .line 519
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ge v0, v1, :cond_1

    .line 520
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 519
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 522
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    iput v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .line 524
    .end local v0           #i:I
    :cond_2
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    if-le v1, v2, :cond_3

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    iput v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    .line 526
    :cond_3
    return-void
.end method

.method public onSlotSizeChanged(II)V
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v6, 0x0

    .line 592
    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSlotWidth:I

    if-eq v4, p1, :cond_0

    iget-boolean v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsVideo:Z

    if-nez v4, :cond_1

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSlotWidth:I

    .line 595
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mLabelMaker:Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->getLabelHeight()I

    move-result v2

    .line 596
    .local v2, labelHeight:I
    sub-int v4, p2, v2

    iput v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mThumbWidth:I

    .line 597
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mLabelMaker:Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;

    iget v5, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSlotWidth:I

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->setLabelWidth(I)V

    .line 599
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    if-eqz v4, :cond_0

    .line 601
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .local v1, i:I
    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .local v3, n:I
    :goto_1
    if-ge v1, v3, :cond_5

    .line 602
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v5, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v5, v5

    rem-int v5, v1, v5

    aget-object v0, v4, v5

    .line 603
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    if-nez v0, :cond_2

    .line 601
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 604
    :cond_2
    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$200(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 605
    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$200(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/BitmapLoader;->recycle()V

    .line 606
    #setter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0, v6}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$202(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 607
    iput-object v6, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 609
    :cond_3
    iget-object v4, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v4, :cond_4

    .line 610
    iget-object v4, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    invoke-direct {p0, v1, v4}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->getEntryLabelLoader(ILcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelLoader;

    move-result-object v4

    #setter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0, v4}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$202(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 612
    :cond_4
    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSlotWidth:I

    iget v5, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mThumbWidth:I

    invoke-virtual {v0, v4, v5}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->layout(II)V

    goto :goto_2

    .line 614
    .end local v0           #entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->updateAllImageRequests()V

    .line 615
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->updateTextureUploadQueue()V

    goto :goto_0
.end method

.method public onViewSizeChanged(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mHeaderTextures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 588
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->headerTextMarginLeft:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mHeaderWidth:I

    .line 589
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 562
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    .line 563
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/TextureUploader;->clear()V

    .line 564
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 565
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    if-lt v0, v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    if-lt v0, v2, :cond_1

    .line 566
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 564
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 569
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->clearFreedPool()V

    .line 570
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mLabelMaker:Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->clearRecycledLabels()V

    .line 571
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 554
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    .line 555
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 556
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    .line 555
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 558
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->updateAllImageRequests()V

    .line 559
    return-void
.end method

.method public setActiveWindow(II)V
    .locals 7
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v6, 0x0

    .line 232
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    .line 234
    .local v2, data:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    .line 235
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    .line 237
    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    array-length v4, v2

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    array-length v5, v2

    sub-int/2addr v4, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v6, v4}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    .line 239
    .local v1, contentStart:I
    array-length v3, v2

    add-int/2addr v3, v1

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 240
    .local v0, contentEnd:I
    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->setContentWindow(II)V

    .line 241
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->updateTextureUploadQueue()V

    .line 242
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->updateAllImageRequests()V

    .line 243
    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    .line 140
    return-void
.end method
