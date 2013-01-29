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
    .line 1413
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1396
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleRect:Landroid/graphics/Rect;

    .line 1397
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 1398
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    invoke-direct {v0}, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mTmpSlot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    .line 1401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    .line 1402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLayoutSlots:Ljava/util/ArrayList;

    .line 1403
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;-><init>(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    .line 1405
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;-><init>(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mDataLoader:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    .line 1409
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mAllItemLoaded:Z

    .line 1411
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mBucketNames:Ljava/util/HashMap;

    .line 1414
    iput-boolean p2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mIsVideo:Z

    .line 1415
    return-void
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Lcom/android/gallery3d/app/LoadingListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLoadingListener:Lcom/android/gallery3d/app/LoadingListener;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;Lcom/android/gallery3d/app/LoadingListener;)Lcom/android/gallery3d/app/LoadingListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1363
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLoadingListener:Lcom/android/gallery3d/app/LoadingListener;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mDataLoader:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1363
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLastSlotGap:I

    return v0
.end method

.method static synthetic access$3802(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1363
    iput p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLastSlotGap:I

    return p1
.end method

.method static synthetic access$3900(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1363
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mIsVideo:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1363
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotGapH:I

    return v0
.end method

.method static synthetic access$4100(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1363
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mWidth:I

    return v0
.end method

.method static synthetic access$4200(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1363
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mMaxTotalSlotGap:I

    return v0
.end method

.method static synthetic access$4300(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1363
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mPaddingHori:I

    return v0
.end method

.method static synthetic access$4400(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1363
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotHeight:I

    return v0
.end method

.method static synthetic access$4900(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1363
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->getHeaderByBucketId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1363
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotCount:I

    return v0
.end method

.method static synthetic access$5102(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1363
    iput p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotCount:I

    return p1
.end method

.method static synthetic access$5300(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1363
    iput p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLastBucketId:I

    return p1
.end method

.method static synthetic access$5500(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1363
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mAllItemLoaded:Z

    return v0
.end method

.method static synthetic access$5502(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1363
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mAllItemLoaded:Z

    return p1
.end method

.method static synthetic access$5600(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1363
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->layout()V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1363
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->flushRow()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mTmpSlot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;)Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1363
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->makeAlbumSlot(Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;)Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7300(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1363
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleStart:I

    return v0
.end method

.method private addHeader(Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;)V
    .locals 2
    .parameter "slot"

    .prologue
    .line 1861
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mHasHeader:Z

    .line 1862
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mContentLength:I

    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mHeaderHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mContentLength:I

    .line 1863
    return-void
.end method

.method private addRow(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;)V
    .locals 2
    .parameter "row"

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1867
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mContentLength:I

    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotGapV:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mContentLength:I

    .line 1869
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mContentLength:I

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->layout(I)V

    .line 1870
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->getRowSlots()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1871
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->clear()V

    .line 1872
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mContentLength:I

    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mContentLength:I

    .line 1873
    return-void
.end method

.method private addSlot(Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;)V
    .locals 4
    .parameter "slot"

    .prologue
    .line 1876
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mHasHeader:Z

    .line 1877
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mHeader:Ljava/lang/String;

    .line 1879
    iget v2, p1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mBucketId:I

    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLastBucketId:I

    if-eq v2, v3, :cond_1

    .line 1880
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->getRowSlotCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1881
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->addRow(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;)V

    .line 1883
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->addHeader(Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;)V

    .line 1886
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->getRowSlotCount()I

    move-result v0

    .line 1887
    .local v0, rowSlotCount:I
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->getTotalSlotLength()I

    move-result v1

    .line 1889
    .local v1, rowSlotLength:I
    iget-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mIsVideo:Z

    if-eqz v2, :cond_3

    .line 1890
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->getRowSlotCount()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVideoUnitCount:I

    if-lt v2, v3, :cond_2

    .line 1891
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->addRow(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;)V

    .line 1901
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->addSlot(Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;)V

    .line 1903
    iget v2, p1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mBucketId:I

    iput v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLastBucketId:I

    .line 1904
    return-void

    .line 1894
    :cond_3
    add-int/lit8 v2, v0, 0x2

    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mMinSlotGap:I

    mul-int/2addr v2, v3

    add-int/2addr v2, v1

    iget-object v3, p1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mWidth:I

    if-le v2, v3, :cond_2

    .line 1897
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->addRow(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;)V

    goto :goto_0
.end method

.method private flushRow()V
    .locals 2

    .prologue
    .line 1907
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->getRowSlotCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1908
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->addRow(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;)V

    .line 1910
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mContentLength:I

    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mPadding:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mContentLength:I

    .line 1911
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mAllItemLoaded:Z

    .line 1912
    return-void
.end method

.method private getHeaderByBucketId(I)Ljava/lang/String;
    .locals 3
    .parameter "bucketId"

    .prologue
    .line 1851
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mBucketNames:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1852
    .local v0, header:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1853
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v1, v1, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/gallery3d/data/LocalAlbumSet;->getBucketName(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v0

    .line 1855
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mBucketNames:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1857
    :cond_0
    return-object v0
.end method

.method private getSlotBounds(I)Landroid/graphics/Rect;
    .locals 6
    .parameter "index"

    .prologue
    .line 1509
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    .line 1510
    .local v1, slot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    iget-object v0, v1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mRect:Landroid/graphics/Rect;

    .line 1511
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1517
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotHeight:I

    if-ge v2, v3, :cond_0

    .line 1518
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mTmpRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotHeight:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 1520
    :cond_0
    iget-boolean v2, v1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mHasHeader:Z

    if-eqz v2, :cond_1

    .line 1521
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mHeaderHeight:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 1524
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mTmpRect:Landroid/graphics/Rect;

    return-object v2
.end method

.method private getTotalSlotCount()I
    .locals 2

    .prologue
    .line 1940
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

    .line 1454
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v1, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->padding:I

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mPadding:I

    .line 1455
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v1, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->paddingHori:I

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mPaddingHori:I

    .line 1456
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v1, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->headerHeight:I

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mHeaderHeight:I

    .line 1458
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mIsVideo:Z

    if-eqz v1, :cond_3

    .line 1459
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v1, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->videoSlotWidth:I

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotWidth:I

    .line 1460
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v1, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->videoSlotHeight:I

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotHeight:I

    .line 1462
    const/4 v0, 0x1

    .line 1472
    .local v0, unitCount:I
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v1, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->videoSlotGapV:I

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotGapV:I

    .line 1473
    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mWidth:I

    iget v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mPaddingHori:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotWidth:I

    div-int v0, v1, v2

    .line 1474
    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1475
    :cond_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 1476
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

    .line 1481
    :goto_0
    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVideoUnitCount:I

    .line 1490
    .end local v0           #unitCount:I
    :goto_1
    iput v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLastSlotGap:I

    .line 1492
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    if-eqz v1, :cond_1

    .line 1493
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    iget v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotWidth:I

    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotHeight:I

    invoke-interface {v1, v2, v3}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onSlotSizeChanged(II)V

    .line 1495
    :cond_1
    return-void

    .line 1478
    .restart local v0       #unitCount:I
    :cond_2
    iput v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotGapH:I

    goto :goto_0

    .line 1483
    .end local v0           #unitCount:I
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v1, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->slotWidth:I

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotWidth:I

    .line 1484
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v1, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->slotHeight:I

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotHeight:I

    .line 1485
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v1, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->slotGapV:I

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotGapV:I

    .line 1486
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v1, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->slotGapH:I

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotGapH:I

    .line 1487
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v1, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->minSlotGap:I

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mMinSlotGap:I

    .line 1488
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v1, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->maxTotalSlotGap:I

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mMaxTotalSlotGap:I

    goto :goto_1
.end method

.method private layout()V
    .locals 5

    .prologue
    .line 1915
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->getRowSlotCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 1916
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->getRowSlots()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1917
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->clear()V

    .line 1920
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLayoutSlots:Ljava/util/ArrayList;

    .line 1921
    .local v2, tempSlots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;>;"
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLayoutSlots:Ljava/util/ArrayList;

    .line 1922
    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    .line 1924
    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mPadding:I

    iput v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mContentLength:I

    .line 1926
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSetBucketId:I
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage;->access$4500(Lcom/android/gallery3d/app/AlbumPage;)I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLastBucketId:I

    .line 1928
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

    .line 1929
    .local v1, slot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->addSlot(Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;)V

    goto :goto_0

    .line 1932
    .end local v1           #slot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLayoutSlots:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1934
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->getTotalSlotCount()I

    move-result v3

    iget v4, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotCount:I

    if-lt v3, v4, :cond_2

    .line 1935
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->flushRow()V

    .line 1937
    :cond_2
    return-void
.end method

.method private makeAlbumSlot(Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;)Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    .locals 4
    .parameter "item"
    .parameter "slot"

    .prologue
    const/4 v3, 0x0

    .line 1830
    if-nez p2, :cond_0

    .line 1831
    new-instance p2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    .end local p2
    invoke-direct {p2}, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;-><init>()V

    .line 1834
    .restart local p2
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mIsVideo:Z

    if-eqz v0, :cond_1

    .line 1835
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotWidth:I

    iget v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotHeight:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mRect:Landroid/graphics/Rect;

    .line 1839
    :goto_0
    iput-object p1, p2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mItem:Lcom/android/gallery3d/data/MediaItem;

    .line 1840
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mVersion:J

    .line 1841
    instance-of v0, p1, Lcom/android/gallery3d/data/LocalMediaItem;

    if-eqz v0, :cond_2

    .line 1842
    check-cast p1, Lcom/android/gallery3d/data/LocalMediaItem;

    .end local p1
    invoke-virtual {p1}, Lcom/android/gallery3d/data/LocalMediaItem;->getBucketId()I

    move-result v0

    iput v0, p2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mBucketId:I

    .line 1847
    :goto_1
    return-object p2

    .line 1837
    .restart local p1
    :cond_1
    iget-object v0, p2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/android/gallery3d/data/MediaItem;->calcItemRect(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 1844
    :cond_2
    iput v3, p2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mBucketId:I

    goto :goto_1
.end method

.method private setVisibleRange(II)V
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1601
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleStart:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleEnd:I

    if-ne p2, v0, :cond_1

    .line 1611
    :cond_0
    :goto_0
    return-void

    .line 1602
    :cond_1
    if-ge p1, p2, :cond_2

    .line 1603
    iput p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleStart:I

    .line 1604
    iput p2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleEnd:I

    .line 1608
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    if-eqz v0, :cond_0

    .line 1609
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleStart:I

    iget v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleEnd:I

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onVisibleRangeChanged(II)V

    goto :goto_0

    .line 1606
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleEnd:I

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleStart:I

    goto :goto_1
.end method

.method private updateVisibleSlotRange()V
    .locals 14

    .prologue
    .line 1531
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

    .line 1534
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .line 1536
    .local v2, lastIndex:I
    const/4 v5, 0x0

    .line 1537
    .local v5, min:I
    move v3, v2

    .line 1538
    .local v3, max:I
    const/4 v1, -0x1

    .line 1542
    .local v1, index:I
    :goto_0
    if-gt v5, v3, :cond_0

    .line 1543
    add-int v8, v5, v3

    div-int/lit8 v4, v8, 0x2

    .line 1544
    .local v4, mid:I
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    iget-object v6, v8, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mRect:Landroid/graphics/Rect;

    .line 1545
    .local v6, rect:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleRect:Landroid/graphics/Rect;

    invoke-static {v8, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1546
    move v1, v4

    .line 1572
    .end local v4           #mid:I
    .end local v6           #rect:Landroid/graphics/Rect;
    :cond_0
    :goto_1
    const/4 v7, -0x1

    .local v7, start:I
    const/4 v0, -0x1

    .line 1573
    .local v0, end:I
    move v7, v1

    :goto_2
    if-lez v7, :cond_1

    .line 1574
    add-int/lit8 v8, v7, -0x1

    invoke-direct {p0, v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->getSlotBounds(I)Landroid/graphics/Rect;

    move-result-object v6

    .line 1575
    .restart local v6       #rect:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleRect:Landroid/graphics/Rect;

    invoke-static {v8, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1580
    .end local v6           #rect:Landroid/graphics/Rect;
    :cond_1
    if-ltz v1, :cond_2

    .line 1581
    add-int/lit8 v0, v1, 0x1

    :goto_3
    if-gt v0, v2, :cond_2

    .line 1582
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->getSlotBounds(I)Landroid/graphics/Rect;

    move-result-object v6

    .line 1583
    .restart local v6       #rect:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleRect:Landroid/graphics/Rect;

    invoke-static {v8, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1589
    .end local v6           #rect:Landroid/graphics/Rect;
    :cond_2
    invoke-direct {p0, v7, v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->setVisibleRange(II)V

    .line 1590
    return-void

    .line 1559
    .end local v0           #end:I
    .end local v7           #start:I
    .restart local v4       #mid:I
    .restart local v6       #rect:Landroid/graphics/Rect;
    :cond_3
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, v6, Landroid/graphics/Rect;->top:I

    if-gt v8, v9, :cond_4

    .line 1560
    add-int/lit8 v3, v4, -0x1

    goto :goto_0

    .line 1561
    :cond_4
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    if-lt v8, v9, :cond_5

    .line 1562
    add-int/lit8 v5, v4, 0x1

    goto :goto_0

    .line 1564
    :cond_5
    move v1, v4

    .line 1565
    goto :goto_1

    .line 1573
    .end local v4           #mid:I
    .restart local v0       #end:I
    .restart local v7       #start:I
    :cond_6
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 1581
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method


# virtual methods
.method public addItem(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 1944
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->makeAlbumSlot(Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;)Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->addSlot(Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;)V

    .line 1945
    return-void
.end method

.method public advanceAnimation(J)Z
    .locals 1
    .parameter "animTime"

    .prologue
    .line 1739
    const/4 v0, 0x0

    return v0
.end method

.method public getDataLoader()Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;
    .locals 2

    .prologue
    .line 1969
    sget-object v1, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1970
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$1700(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotCount:I

    .line 1971
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1972
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mDataLoader:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    return-object v0

    .line 1971
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getScrollLimit()I
    .locals 3

    .prologue
    .line 1733
    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mContentLength:I

    iget v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mHeight:I

    sub-int v0, v1, v2

    .line 1734
    .local v0, limit:I
    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .end local v0           #limit:I
    :cond_0
    return v0
.end method

.method public getSlotCount()I
    .locals 1

    .prologue
    .line 1744
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotCount:I

    return v0
.end method

.method public getSlotHeight()I
    .locals 1

    .prologue
    .line 1449
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotHeight:I

    return v0
.end method

.method public getSlotIndexByPosition(FF[I)I
    .locals 11
    .parameter "x"
    .parameter "y"
    .parameter "pointInSlot"

    .prologue
    .line 1625
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v9

    add-int/lit8 v0, v9, 0x0

    .line 1626
    .local v0, absoluteX:I
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v10, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mScrollPosition:I

    add-int v1, v9, v10

    .line 1628
    .local v1, absoluteY:I
    if-eqz p3, :cond_0

    array-length v9, p3

    const/4 v10, 0x2

    if-lt v9, v10, :cond_0

    .line 1629
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, p3, v9

    .line 1630
    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, p3, v9

    .line 1633
    :cond_0
    if-ltz v0, :cond_1

    if-gez v1, :cond_3

    .line 1634
    :cond_1
    const/4 v2, -0x1

    .line 1728
    :cond_2
    :goto_0
    return v2

    .line 1637
    :cond_3
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1639
    .local v8, slotCount:I
    const/4 v6, 0x0

    .line 1640
    .local v6, min:I
    add-int/lit8 v4, v8, -0x1

    .line 1641
    .local v4, max:I
    const/4 v3, -0x1

    .line 1644
    .local v3, index:I
    :goto_1
    if-gt v6, v4, :cond_4

    .line 1645
    add-int v9, v6, v4

    div-int/lit8 v5, v9, 0x2

    .line 1646
    .local v5, mid:I
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    iget-object v7, v9, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mRect:Landroid/graphics/Rect;

    .line 1647
    .local v7, rect:Landroid/graphics/Rect;
    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1648
    move v3, v5

    .line 1721
    .end local v5           #mid:I
    .end local v7           #rect:Landroid/graphics/Rect;
    :cond_4
    :goto_2
    if-ltz v3, :cond_5

    if-ge v3, v8, :cond_5

    .line 1722
    if-eqz p3, :cond_5

    array-length v9, p3

    const/4 v10, 0x2

    if-lt v9, v10, :cond_5

    .line 1723
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    iget-object v7, v9, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mRect:Landroid/graphics/Rect;

    .line 1724
    .restart local v7       #rect:Landroid/graphics/Rect;
    const/4 v9, 0x0

    iget v10, v7, Landroid/graphics/Rect;->left:I

    sub-int v10, v0, v10

    aput v10, p3, v9

    .line 1725
    const/4 v9, 0x1

    iget v10, v7, Landroid/graphics/Rect;->top:I

    sub-int v10, v1, v10

    aput v10, p3, v9

    .end local v7           #rect:Landroid/graphics/Rect;
    :cond_5
    move v2, v3

    .line 1728
    goto :goto_0

    .line 1685
    .restart local v5       #mid:I
    .restart local v7       #rect:Landroid/graphics/Rect;
    :cond_6
    iget v9, v7, Landroid/graphics/Rect;->top:I

    if-ge v1, v9, :cond_7

    .line 1686
    add-int/lit8 v4, v5, -0x1

    goto :goto_1

    .line 1687
    :cond_7
    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    if-lt v1, v9, :cond_8

    .line 1688
    add-int/lit8 v6, v5, 0x1

    goto :goto_1

    .line 1690
    :cond_8
    iget v9, v7, Landroid/graphics/Rect;->left:I

    if-ge v0, v9, :cond_a

    .line 1691
    add-int/lit8 v2, v5, -0x1

    .local v2, i:I
    :goto_3
    iget v9, v7, Landroid/graphics/Rect;->top:I

    if-lt v1, v9, :cond_4

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v9, :cond_4

    if-ltz v2, :cond_4

    .line 1692
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    iget-object v7, v9, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mRect:Landroid/graphics/Rect;

    .line 1693
    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1694
    if-eqz p3, :cond_2

    array-length v9, p3

    const/4 v10, 0x2

    if-lt v9, v10, :cond_2

    .line 1695
    const/4 v9, 0x0

    iget v10, v7, Landroid/graphics/Rect;->left:I

    sub-int v10, v0, v10

    aput v10, p3, v9

    .line 1696
    const/4 v9, 0x1

    iget v10, v7, Landroid/graphics/Rect;->top:I

    sub-int v10, v1, v10

    aput v10, p3, v9

    goto/16 :goto_0

    .line 1691
    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 1701
    .end local v2           #i:I
    :cond_a
    iget v9, v7, Landroid/graphics/Rect;->right:I

    if-lt v0, v9, :cond_c

    .line 1702
    add-int/lit8 v2, v5, 0x1

    .restart local v2       #i:I
    :goto_4
    iget v9, v7, Landroid/graphics/Rect;->top:I

    if-lt v1, v9, :cond_4

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v9, :cond_4

    if-ge v2, v8, :cond_4

    .line 1703
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    iget-object v7, v9, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mRect:Landroid/graphics/Rect;

    .line 1704
    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1705
    if-eqz p3, :cond_2

    array-length v9, p3

    const/4 v10, 0x2

    if-lt v9, v10, :cond_2

    .line 1706
    const/4 v9, 0x0

    iget v10, v7, Landroid/graphics/Rect;->left:I

    sub-int v10, v0, v10

    aput v10, p3, v9

    .line 1707
    const/4 v9, 0x1

    iget v10, v7, Landroid/graphics/Rect;->top:I

    sub-int v10, v1, v10

    aput v10, p3, v9

    goto/16 :goto_0

    .line 1702
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1713
    .end local v2           #i:I
    :cond_c
    move v3, v5

    .line 1715
    goto/16 :goto_2
.end method

.method public getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3
    .parameter "index"
    .parameter "rect"

    .prologue
    const/4 v2, 0x0

    .line 1434
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1435
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1439
    :goto_0
    return-object p2

    .line 1437
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotWidth:I

    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotHeight:I

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public getSlotWidth()I
    .locals 1

    .prologue
    .line 1444
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotWidth:I

    return v0
.end method

.method public getVisibleEnd()I
    .locals 1

    .prologue
    .line 1620
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleEnd:I

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    .prologue
    .line 1615
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleStart:I

    return v0
.end method

.method public setActionBarHeight(I)V
    .locals 0
    .parameter "actionBarheight"

    .prologue
    .line 1749
    iput p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mActionBarHeight:I

    .line 1750
    return-void
.end method

.method public setBottomBarHeight(I)V
    .locals 0
    .parameter "bottomBarheight"

    .prologue
    .line 1754
    iput p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mBottomBarHeight:I

    .line 1755
    return-void
.end method

.method public setScrollPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1594
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mScrollPosition:I

    if-ne v0, p1, :cond_0

    .line 1598
    :goto_0
    return-void

    .line 1595
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mScrollPosition:I

    .line 1596
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->updateVisibleSlotRange()V

    .line 1597
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onContentChangeEnded()V

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1499
    iput p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mWidth:I

    .line 1500
    iput p2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mHeight:I

    .line 1501
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->initLayoutParameters()V

    .line 1502
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->layout()V

    .line 1503
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->updateVisibleSlotRange()V

    .line 1504
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onContentChangeEnded()V

    .line 1505
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    invoke-interface {v0, p1, p2}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onViewSizeChanged(II)V

    .line 1506
    return-void
.end method

.method public setSlotCount(I)Z
    .locals 1
    .parameter "slotCount"

    .prologue
    .line 1429
    const/4 v0, 0x0

    return v0
.end method

.method public setSlotRenderer(Lcom/android/gallery3d/ui/SlotView$SlotRenderer;)V
    .locals 0
    .parameter "renderer"

    .prologue
    .line 1424
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    .line 1425
    return-void
.end method

.method public setSlotSpec(Lcom/android/gallery3d/ui/SlotView$Spec;)V
    .locals 0
    .parameter "spec"

    .prologue
    .line 1419
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    .line 1420
    return-void
.end method

.method public updateIfNeeded(ZZZI)V
    .locals 2
    .parameter "needLayout"
    .parameter "visibilityChanged"
    .parameter "countChanged"
    .parameter "slotCountBefore"

    .prologue
    .line 1948
    if-eqz p1, :cond_0

    .line 1949
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->layout()V

    .line 1950
    const/4 p2, 0x1

    .line 1953
    :cond_0
    if-eqz p3, :cond_1

    .line 1954
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mDataLoader:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mDataListener:Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$4600(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;)Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1956
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mDataLoader:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mDataListener:Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$4600(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;)Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotCount:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;->onSizeChanged(I)V

    .line 1960
    :cond_1
    if-eqz p2, :cond_2

    .line 1961
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->updateVisibleSlotRange()V

    .line 1963
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mDataLoader:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    invoke-virtual {v0, p4}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->notifyChangeIfNeeded(I)V

    .line 1964
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onContentChangeEnded()V

    .line 1965
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 1966
    return-void
.end method
