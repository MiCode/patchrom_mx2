.class public Lcom/android/gallery3d/app/AlbumPage$SmartLayout;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/SlotView$Layout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmartLayout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;,
        Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;
    }
.end annotation


# instance fields
.field private mActionBarHeight:I

.field private mAllItemLoaded:Z

.field private mBottomBarHeight:I

.field private mBucketNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentLength:I

.field private mDataLoader:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

.field private mHeaderHeight:I

.field private mHeight:I

.field private mIsVideo:Z

.field private mLastBucketId:I

.field private mLastSlotGap:I

.field private mLayoutSlots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingListener:Lcom/android/gallery3d/app/LoadingListener;

.field private mMaxTotalSlotGap:I

.field private mMinSlotGap:I

.field private mPadding:I

.field private mPaddingHori:I

.field private mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

.field private mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

.field private mScrollPosition:I

.field private mSlotCount:I

.field private mSlotGapH:I

.field private mSlotGapV:I

.field private mSlotHeight:I

.field private mSlotWidth:I

.field private mSlots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;",
            ">;"
        }
    .end annotation
.end field

.field private mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpSlot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

.field private mVideoUnitCount:I

.field private mVisibleEnd:I

.field private mVisibleRect:Landroid/graphics/Rect;

.field private mVisibleStart:I

.field private mWidth:I

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;Z)V
    .locals 1
    .parameter
    .parameter "isVideo"

    .prologue
    .line 1510
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1493
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleRect:Landroid/graphics/Rect;

    .line 1494
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 1495
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    invoke-direct {v0}, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mTmpSlot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    .line 1498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    .line 1499
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLayoutSlots:Ljava/util/ArrayList;

    .line 1500
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;-><init>(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    .line 1502
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;-><init>(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mDataLoader:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    .line 1506
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mAllItemLoaded:Z

    .line 1508
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mBucketNames:Ljava/util/HashMap;

    .line 1511
    iput-boolean p2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mIsVideo:Z

    .line 1512
    return-void
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Lcom/android/gallery3d/app/LoadingListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLoadingListener:Lcom/android/gallery3d/app/LoadingListener;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;Lcom/android/gallery3d/app/LoadingListener;)Lcom/android/gallery3d/app/LoadingListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1460
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLoadingListener:Lcom/android/gallery3d/app/LoadingListener;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mDataLoader:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1460
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLastSlotGap:I

    return v0
.end method

.method static synthetic access$4002(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1460
    iput p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLastSlotGap:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1460
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mIsVideo:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1460
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotGapH:I

    return v0
.end method

.method static synthetic access$4300(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1460
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mWidth:I

    return v0
.end method

.method static synthetic access$4400(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1460
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mMaxTotalSlotGap:I

    return v0
.end method

.method static synthetic access$4500(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1460
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mPaddingHori:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1460
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotHeight:I

    return v0
.end method

.method static synthetic access$5100(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1460
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->getHeaderByBucketId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1460
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotCount:I

    return v0
.end method

.method static synthetic access$5302(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1460
    iput p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotCount:I

    return p1
.end method

.method static synthetic access$5500(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1460
    iput p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLastBucketId:I

    return p1
.end method

.method static synthetic access$5700(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1460
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mAllItemLoaded:Z

    return v0
.end method

.method static synthetic access$5702(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1460
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mAllItemLoaded:Z

    return p1
.end method

.method static synthetic access$5800(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1460
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->layout()V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1460
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->flushRow()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mTmpSlot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;)Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1460
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->makeAlbumSlot(Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;)Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1460
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleStart:I

    return v0
.end method

.method private addHeader(Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;)V
    .locals 2
    .parameter "slot"

    .prologue
    .line 2054
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mHasHeader:Z

    .line 2055
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mContentLength:I

    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mHeaderHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mContentLength:I

    .line 2056
    return-void
.end method

.method private addRow(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;)V
    .locals 3
    .parameter "row"

    .prologue
    .line 2059
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2060
    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mContentLength:I

    iget v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotGapV:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mContentLength:I

    .line 2062
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mContentLength:I

    invoke-virtual {p1, v1}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->layout(I)I

    move-result v0

    .line 2063
    .local v0, length:I
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->getRowSlots()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2064
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->clear()V

    .line 2065
    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mContentLength:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mContentLength:I

    .line 2066
    return-void
.end method

.method private addSlot(Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;)V
    .locals 4
    .parameter "slot"

    .prologue
    .line 2069
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mHasHeader:Z

    .line 2070
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mHeader:Ljava/lang/String;

    .line 2072
    iget v2, p1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mBucketId:I

    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLastBucketId:I

    if-eq v2, v3, :cond_1

    .line 2073
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->getRowSlotCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 2074
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->addRow(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;)V

    .line 2076
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->addHeader(Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;)V

    .line 2079
    :cond_1
    iget-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mIsVideo:Z

    if-eqz v2, :cond_4

    .line 2080
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->getRowSlotCount()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVideoUnitCount:I

    if-lt v2, v3, :cond_2

    .line 2081
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->addRow(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;)V

    .line 2083
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->addSlot(Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;)V

    .line 2094
    :cond_3
    :goto_0
    iget v2, p1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mBucketId:I

    iput v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLastBucketId:I

    .line 2095
    return-void

    .line 2085
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->addSlot(Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;)V

    .line 2086
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->getRowSlotCount()I

    move-result v0

    .line 2087
    .local v0, rowSlotCount:I
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->getTotalSlotLength()I

    move-result v1

    .line 2088
    .local v1, rowSlotLength:I
    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotGapH:I

    mul-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mWidth:I

    if-lt v2, v3, :cond_3

    .line 2090
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->addRow(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;)V

    goto :goto_0
.end method

.method private flushRow()V
    .locals 2

    .prologue
    .line 2098
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->getRowSlotCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2099
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->addRow(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;)V

    .line 2101
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mContentLength:I

    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mPadding:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mContentLength:I

    .line 2102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mAllItemLoaded:Z

    .line 2103
    return-void
.end method

.method private getHeaderByBucketId(I)Ljava/lang/String;
    .locals 3
    .parameter "bucketId"

    .prologue
    .line 2044
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mBucketNames:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2045
    .local v0, header:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2046
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v1, v1, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/gallery3d/data/LocalAlbumSet;->getBucketName(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v0

    .line 2048
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mBucketNames:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2050
    :cond_0
    return-object v0
.end method

.method private getSlotBounds(I)Landroid/graphics/Rect;
    .locals 6
    .parameter "index"

    .prologue
    .line 1606
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    .line 1607
    .local v1, slot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    iget-object v0, v1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mRect:Landroid/graphics/Rect;

    .line 1608
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1614
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotHeight:I

    if-ge v2, v3, :cond_0

    .line 1615
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mTmpRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotHeight:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 1617
    :cond_0
    iget-boolean v2, v1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mHasHeader:Z

    if-eqz v2, :cond_1

    .line 1618
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mHeaderHeight:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 1621
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mTmpRect:Landroid/graphics/Rect;

    return-object v2
.end method

.method private getTotalSlotCount()I
    .locals 2

    .prologue
    .line 2131
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->getRowSlotCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private initLayoutParameters()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1551
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v1, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->padding:I

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mPadding:I

    .line 1552
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v1, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->paddingHori:I

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mPaddingHori:I

    .line 1553
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v1, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->headerHeight:I

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mHeaderHeight:I

    .line 1555
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mIsVideo:Z

    if-eqz v1, :cond_3

    .line 1556
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v1, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->videoSlotWidth:I

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotWidth:I

    .line 1557
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v1, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->videoSlotHeight:I

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotHeight:I

    .line 1559
    const/4 v0, 0x1

    .line 1569
    .local v0, unitCount:I
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v1, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->videoSlotGapV:I

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotGapV:I

    .line 1570
    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mWidth:I

    iget v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mPaddingHori:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotWidth:I

    div-int v0, v1, v2

    .line 1571
    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1572
    :cond_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 1573
    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mWidth:I

    iget v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotWidth:I

    mul-int/2addr v2, v0

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mPaddingHori:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/lit8 v2, v0, -0x1

    div-int/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotGapH:I

    .line 1578
    :goto_0
    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVideoUnitCount:I

    .line 1587
    .end local v0           #unitCount:I
    :goto_1
    iput v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLastSlotGap:I

    .line 1589
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    if-eqz v1, :cond_1

    .line 1590
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    iget v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotWidth:I

    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotHeight:I

    invoke-interface {v1, v2, v3}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onSlotSizeChanged(II)V

    .line 1592
    :cond_1
    return-void

    .line 1575
    .restart local v0       #unitCount:I
    :cond_2
    iput v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotGapH:I

    goto :goto_0

    .line 1580
    .end local v0           #unitCount:I
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v1, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->slotWidth:I

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotWidth:I

    .line 1581
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v1, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->slotHeight:I

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotHeight:I

    .line 1582
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v1, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->slotGapV:I

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotGapV:I

    .line 1583
    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotGapV:I

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotGapH:I

    .line 1584
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v1, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->minSlotGap:I

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mMinSlotGap:I

    .line 1585
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v1, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->maxTotalSlotGap:I

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mMaxTotalSlotGap:I

    goto :goto_1
.end method

.method private layout()V
    .locals 5

    .prologue
    .line 2106
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->getRowSlotCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 2107
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->getRowSlots()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2108
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->clear()V

    .line 2111
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLayoutSlots:Ljava/util/ArrayList;

    .line 2112
    .local v2, tempSlots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;>;"
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLayoutSlots:Ljava/util/ArrayList;

    .line 2113
    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    .line 2115
    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mPadding:I

    iput v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mContentLength:I

    .line 2117
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSetBucketId:I
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage;->access$4700(Lcom/android/gallery3d/app/AlbumPage;)I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLastBucketId:I

    .line 2119
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLayoutSlots:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    .line 2120
    .local v1, slot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->addSlot(Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;)V

    goto :goto_0

    .line 2123
    .end local v1           #slot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLayoutSlots:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2125
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->getTotalSlotCount()I

    move-result v3

    iget v4, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotCount:I

    if-lt v3, v4, :cond_2

    .line 2126
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->flushRow()V

    .line 2128
    :cond_2
    return-void
.end method

.method private makeAlbumSlot(Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;)Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    .locals 4
    .parameter "item"
    .parameter "slot"

    .prologue
    const/4 v1, 0x0

    .line 2022
    if-nez p2, :cond_0

    .line 2023
    new-instance p2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    .end local p2
    invoke-direct {p2}, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;-><init>()V

    .line 2026
    .restart local p2
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mIsVideo:Z

    if-eqz v0, :cond_1

    .line 2027
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotWidth:I

    iput v0, p2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mWidth:I

    .line 2032
    :goto_0
    iput-object p1, p2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mItem:Lcom/android/gallery3d/data/MediaItem;

    .line 2033
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mVersion:J

    .line 2034
    instance-of v0, p1, Lcom/android/gallery3d/data/LocalMediaItem;

    if-eqz v0, :cond_3

    .line 2035
    check-cast p1, Lcom/android/gallery3d/data/LocalMediaItem;

    .end local p1
    invoke-virtual {p1}, Lcom/android/gallery3d/data/LocalMediaItem;->getBucketId()I

    move-result v0

    iput v0, p2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mBucketId:I

    .line 2040
    :goto_1
    return-object p2

    .line 2029
    .restart local p1
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotHeight:I

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/data/MediaItem;->calcItemWidth(I)I

    move-result v0

    iput v0, p2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mWidth:I

    .line 2030
    iget v0, p2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mWidth:I

    mul-int/lit8 v0, v0, 0x3

    iget v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotHeight:I

    mul-int/lit8 v2, v2, 0x4

    if-le v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mIsWide:Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 2037
    :cond_3
    iput v1, p2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mBucketId:I

    goto :goto_1
.end method

.method private setVisibleRange(II)V
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1698
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleStart:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleEnd:I

    if-ne p2, v0, :cond_1

    .line 1708
    :cond_0
    :goto_0
    return-void

    .line 1699
    :cond_1
    if-ge p1, p2, :cond_2

    .line 1700
    iput p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleStart:I

    .line 1701
    iput p2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleEnd:I

    .line 1705
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    if-eqz v0, :cond_0

    .line 1706
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleStart:I

    iget v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleEnd:I

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onVisibleRangeChanged(II)V

    goto :goto_0

    .line 1703
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleEnd:I

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleStart:I

    goto :goto_1
.end method

.method private updateVisibleSlotRange()V
    .locals 14

    .prologue
    .line 1628
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleRect:Landroid/graphics/Rect;

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mScrollPosition:I

    iget v11, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mActionBarHeight:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mWidth:I

    iget v12, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mScrollPosition:I

    iget v13, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mHeight:I

    add-int/2addr v12, v13

    iget v13, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mBottomBarHeight:I

    add-int/2addr v12, v13

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 1631
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .line 1633
    .local v2, lastIndex:I
    const/4 v5, 0x0

    .line 1634
    .local v5, min:I
    move v3, v2

    .line 1635
    .local v3, max:I
    const/4 v1, -0x1

    .line 1639
    .local v1, index:I
    :goto_0
    if-gt v5, v3, :cond_0

    .line 1640
    add-int v8, v5, v3

    div-int/lit8 v4, v8, 0x2

    .line 1641
    .local v4, mid:I
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    iget-object v6, v8, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mRect:Landroid/graphics/Rect;

    .line 1642
    .local v6, rect:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleRect:Landroid/graphics/Rect;

    invoke-static {v8, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1643
    move v1, v4

    .line 1669
    .end local v4           #mid:I
    .end local v6           #rect:Landroid/graphics/Rect;
    :cond_0
    :goto_1
    const/4 v7, -0x1

    .local v7, start:I
    const/4 v0, -0x1

    .line 1670
    .local v0, end:I
    move v7, v1

    :goto_2
    if-lez v7, :cond_1

    .line 1671
    add-int/lit8 v8, v7, -0x1

    invoke-direct {p0, v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->getSlotBounds(I)Landroid/graphics/Rect;

    move-result-object v6

    .line 1672
    .restart local v6       #rect:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleRect:Landroid/graphics/Rect;

    invoke-static {v8, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1677
    .end local v6           #rect:Landroid/graphics/Rect;
    :cond_1
    if-ltz v1, :cond_2

    .line 1678
    add-int/lit8 v0, v1, 0x1

    :goto_3
    if-gt v0, v2, :cond_2

    .line 1679
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->getSlotBounds(I)Landroid/graphics/Rect;

    move-result-object v6

    .line 1680
    .restart local v6       #rect:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleRect:Landroid/graphics/Rect;

    invoke-static {v8, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1686
    .end local v6           #rect:Landroid/graphics/Rect;
    :cond_2
    invoke-direct {p0, v7, v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->setVisibleRange(II)V

    .line 1687
    return-void

    .line 1656
    .end local v0           #end:I
    .end local v7           #start:I
    .restart local v4       #mid:I
    .restart local v6       #rect:Landroid/graphics/Rect;
    :cond_3
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, v6, Landroid/graphics/Rect;->top:I

    if-gt v8, v9, :cond_4

    .line 1657
    add-int/lit8 v3, v4, -0x1

    goto :goto_0

    .line 1658
    :cond_4
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    if-lt v8, v9, :cond_5

    .line 1659
    add-int/lit8 v5, v4, 0x1

    goto :goto_0

    .line 1661
    :cond_5
    move v1, v4

    .line 1662
    goto :goto_1

    .line 1670
    .end local v4           #mid:I
    .restart local v0       #end:I
    .restart local v7       #start:I
    :cond_6
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 1678
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method


# virtual methods
.method public addItem(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 2135
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->makeAlbumSlot(Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;)Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->addSlot(Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;)V

    .line 2136
    return-void
.end method

.method public advanceAnimation(J)Z
    .locals 1
    .parameter "animTime"

    .prologue
    .line 1836
    const/4 v0, 0x0

    return v0
.end method

.method public getDataLoader()Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;
    .locals 2

    .prologue
    .line 2160
    sget-object v1, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2161
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$2000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotCount:I

    .line 2162
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2163
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mDataLoader:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    return-object v0

    .line 2162
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getScrollLimit()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1830
    iget v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mContentLength:I

    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mHeight:I

    sub-int v3, v2, v3

    sget-boolean v2, Lcom/android/gallery3d/util/GalleryUtils;->HAS_PERMANENT_MENU_KEY:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/android/gallery3d/util/GalleryUtils;->BOTTOMBAR_HEIGHT:I

    :goto_0
    add-int v0, v3, v2

    .line 1831
    .local v0, limit:I
    if-gtz v0, :cond_0

    move v0, v1

    .end local v0           #limit:I
    :cond_0
    return v0

    :cond_1
    move v2, v1

    .line 1830
    goto :goto_0
.end method

.method public getSlotCount()I
    .locals 1

    .prologue
    .line 1841
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotCount:I

    return v0
.end method

.method public getSlotHeight()I
    .locals 1

    .prologue
    .line 1546
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotHeight:I

    return v0
.end method

.method public getSlotIndexByPosition(FF[I)I
    .locals 11
    .parameter "x"
    .parameter "y"
    .parameter "pointInSlot"

    .prologue
    .line 1722
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v9

    add-int/lit8 v0, v9, 0x0

    .line 1723
    .local v0, absoluteX:I
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v10, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mScrollPosition:I

    add-int v1, v9, v10

    .line 1725
    .local v1, absoluteY:I
    if-eqz p3, :cond_0

    array-length v9, p3

    const/4 v10, 0x2

    if-lt v9, v10, :cond_0

    .line 1726
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, p3, v9

    .line 1727
    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, p3, v9

    .line 1730
    :cond_0
    if-ltz v0, :cond_1

    if-gez v1, :cond_3

    .line 1731
    :cond_1
    const/4 v2, -0x1

    .line 1825
    :cond_2
    :goto_0
    return v2

    .line 1734
    :cond_3
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1736
    .local v8, slotCount:I
    const/4 v6, 0x0

    .line 1737
    .local v6, min:I
    add-int/lit8 v4, v8, -0x1

    .line 1738
    .local v4, max:I
    const/4 v3, -0x1

    .line 1741
    .local v3, index:I
    :goto_1
    if-gt v6, v4, :cond_4

    .line 1742
    add-int v9, v6, v4

    div-int/lit8 v5, v9, 0x2

    .line 1743
    .local v5, mid:I
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    iget-object v7, v9, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mRect:Landroid/graphics/Rect;

    .line 1744
    .local v7, rect:Landroid/graphics/Rect;
    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1745
    move v3, v5

    .line 1818
    .end local v5           #mid:I
    .end local v7           #rect:Landroid/graphics/Rect;
    :cond_4
    :goto_2
    if-ltz v3, :cond_5

    if-ge v3, v8, :cond_5

    .line 1819
    if-eqz p3, :cond_5

    array-length v9, p3

    const/4 v10, 0x2

    if-lt v9, v10, :cond_5

    .line 1820
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    iget-object v7, v9, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mRect:Landroid/graphics/Rect;

    .line 1821
    .restart local v7       #rect:Landroid/graphics/Rect;
    const/4 v9, 0x0

    iget v10, v7, Landroid/graphics/Rect;->left:I

    sub-int v10, v0, v10

    aput v10, p3, v9

    .line 1822
    const/4 v9, 0x1

    iget v10, v7, Landroid/graphics/Rect;->top:I

    sub-int v10, v1, v10

    aput v10, p3, v9

    .end local v7           #rect:Landroid/graphics/Rect;
    :cond_5
    move v2, v3

    .line 1825
    goto :goto_0

    .line 1782
    .restart local v5       #mid:I
    .restart local v7       #rect:Landroid/graphics/Rect;
    :cond_6
    iget v9, v7, Landroid/graphics/Rect;->top:I

    if-ge v1, v9, :cond_7

    .line 1783
    add-int/lit8 v4, v5, -0x1

    goto :goto_1

    .line 1784
    :cond_7
    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    if-lt v1, v9, :cond_8

    .line 1785
    add-int/lit8 v6, v5, 0x1

    goto :goto_1

    .line 1787
    :cond_8
    iget v9, v7, Landroid/graphics/Rect;->left:I

    if-ge v0, v9, :cond_a

    .line 1788
    add-int/lit8 v2, v5, -0x1

    .local v2, i:I
    :goto_3
    iget v9, v7, Landroid/graphics/Rect;->top:I

    if-lt v1, v9, :cond_4

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v9, :cond_4

    if-ltz v2, :cond_4

    .line 1789
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    iget-object v7, v9, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mRect:Landroid/graphics/Rect;

    .line 1790
    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1791
    if-eqz p3, :cond_2

    array-length v9, p3

    const/4 v10, 0x2

    if-lt v9, v10, :cond_2

    .line 1792
    const/4 v9, 0x0

    iget v10, v7, Landroid/graphics/Rect;->left:I

    sub-int v10, v0, v10

    aput v10, p3, v9

    .line 1793
    const/4 v9, 0x1

    iget v10, v7, Landroid/graphics/Rect;->top:I

    sub-int v10, v1, v10

    aput v10, p3, v9

    goto/16 :goto_0

    .line 1788
    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 1798
    .end local v2           #i:I
    :cond_a
    iget v9, v7, Landroid/graphics/Rect;->right:I

    if-lt v0, v9, :cond_c

    .line 1799
    add-int/lit8 v2, v5, 0x1

    .restart local v2       #i:I
    :goto_4
    iget v9, v7, Landroid/graphics/Rect;->top:I

    if-lt v1, v9, :cond_4

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v9, :cond_4

    if-ge v2, v8, :cond_4

    .line 1800
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    iget-object v7, v9, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mRect:Landroid/graphics/Rect;

    .line 1801
    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1802
    if-eqz p3, :cond_2

    array-length v9, p3

    const/4 v10, 0x2

    if-lt v9, v10, :cond_2

    .line 1803
    const/4 v9, 0x0

    iget v10, v7, Landroid/graphics/Rect;->left:I

    sub-int v10, v0, v10

    aput v10, p3, v9

    .line 1804
    const/4 v9, 0x1

    iget v10, v7, Landroid/graphics/Rect;->top:I

    sub-int v10, v1, v10

    aput v10, p3, v9

    goto/16 :goto_0

    .line 1799
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1810
    .end local v2           #i:I
    :cond_c
    move v3, v5

    .line 1812
    goto/16 :goto_2
.end method

.method public getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3
    .parameter "index"
    .parameter "rect"

    .prologue
    const/4 v2, 0x0

    .line 1531
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1532
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1536
    :goto_0
    return-object p2

    .line 1534
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotWidth:I

    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotHeight:I

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public getSlotWidth()I
    .locals 1

    .prologue
    .line 1541
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotWidth:I

    return v0
.end method

.method public getVisibleEnd()I
    .locals 1

    .prologue
    .line 1717
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleEnd:I

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    .prologue
    .line 1712
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleStart:I

    return v0
.end method

.method public setActionBarHeight(I)V
    .locals 0
    .parameter "actionBarheight"

    .prologue
    .line 1846
    iput p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mActionBarHeight:I

    .line 1847
    return-void
.end method

.method public setBottomBarHeight(I)V
    .locals 0
    .parameter "bottomBarheight"

    .prologue
    .line 1851
    iput p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mBottomBarHeight:I

    .line 1852
    return-void
.end method

.method public setScrollPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1691
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mScrollPosition:I

    if-ne v0, p1, :cond_0

    .line 1695
    :goto_0
    return-void

    .line 1692
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mScrollPosition:I

    .line 1693
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->updateVisibleSlotRange()V

    .line 1694
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onContentChangeEnded()V

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1596
    iput p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mWidth:I

    .line 1597
    iput p2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mHeight:I

    .line 1598
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->initLayoutParameters()V

    .line 1599
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->layout()V

    .line 1600
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->updateVisibleSlotRange()V

    .line 1601
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onContentChangeEnded()V

    .line 1602
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    invoke-interface {v0, p1, p2}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onViewSizeChanged(II)V

    .line 1603
    return-void
.end method

.method public setSlotCount(I)Z
    .locals 1
    .parameter "slotCount"

    .prologue
    .line 1526
    const/4 v0, 0x0

    return v0
.end method

.method public setSlotRenderer(Lcom/android/gallery3d/ui/SlotView$SlotRenderer;)V
    .locals 0
    .parameter "renderer"

    .prologue
    .line 1521
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    .line 1522
    return-void
.end method

.method public setSlotSpec(Lcom/android/gallery3d/ui/SlotView$Spec;)V
    .locals 0
    .parameter "spec"

    .prologue
    .line 1516
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    .line 1517
    return-void
.end method

.method public updateIfNeeded(ZZZI)V
    .locals 2
    .parameter "needLayout"
    .parameter "visibilityChanged"
    .parameter "countChanged"
    .parameter "slotCountBefore"

    .prologue
    .line 2139
    if-eqz p1, :cond_0

    .line 2140
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->layout()V

    .line 2141
    const/4 p2, 0x1

    .line 2144
    :cond_0
    if-eqz p3, :cond_1

    .line 2145
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mDataLoader:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mDataListener:Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$4800(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;)Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2147
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mDataLoader:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mDataListener:Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$4800(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;)Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotCount:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;->onSizeChanged(I)V

    .line 2151
    :cond_1
    if-eqz p2, :cond_2

    .line 2152
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->updateVisibleSlotRange()V

    .line 2154
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mDataLoader:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    invoke-virtual {v0, p4}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->notifyChangeIfNeeded(I)V

    .line 2155
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onContentChangeEnded()V

    .line 2156
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 2157
    return-void
.end method
