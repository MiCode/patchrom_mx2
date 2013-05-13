.class public Lcom/android/gallery3d/ui/PositionController;
.super Ljava/lang/Object;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/PositionController$1;,
        Lcom/android/gallery3d/ui/PositionController$FilmRatio;,
        Lcom/android/gallery3d/ui/PositionController$Gap;,
        Lcom/android/gallery3d/ui/PositionController$Box;,
        Lcom/android/gallery3d/ui/PositionController$Platform;,
        Lcom/android/gallery3d/ui/PositionController$Animatable;,
        Lcom/android/gallery3d/ui/PositionController$Listener;
    }
.end annotation


# static fields
.field private static final ANIM_TIME:[I

.field private static final CENTER_OUT_INDEX:[I

.field private static final HORIZONTAL_SLACK:I

.field private static final IMAGE_GAP:I


# instance fields
.field private mActionbarHeight:I

.field private mBoundBottom:I

.field private mBoundLeft:I

.field private mBoundRight:I

.field private mBoundTop:I

.field private mBoxes:Lcom/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/RangeArray",
            "<",
            "Lcom/android/gallery3d/ui/PositionController$Box;",
            ">;"
        }
    .end annotation
.end field

.field private mConstrained:Z

.field private mConstrainedFrame:Landroid/graphics/Rect;

.field private mExtraScalingRange:Z

.field private mFilmMode:Z

.field private mFilmRatio:Lcom/android/gallery3d/ui/PositionController$FilmRatio;

.field private mFilmScroller:Landroid/widget/OverScroller;

.field private mFocusX:F

.field private mFocusY:F

.field private mGaps:Lcom/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/RangeArray",
            "<",
            "Lcom/android/gallery3d/ui/PositionController$Gap;",
            ">;"
        }
    .end annotation
.end field

.field private mHasNext:Z

.field private mHasPrev:Z

.field private mInScale:Z

.field private mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

.field private volatile mOpenAnimationRect:Landroid/graphics/Rect;

.field private mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

.field private mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

.field mPopFromTop:Z

.field private mRects:Lcom/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/RangeArray",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mTempBoxes:Lcom/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/RangeArray",
            "<",
            "Lcom/android/gallery3d/ui/PositionController$Box;",
            ">;"
        }
    .end annotation
.end field

.field private mTempGaps:Lcom/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/RangeArray",
            "<",
            "Lcom/android/gallery3d/ui/PositionController$Gap;",
            ">;"
        }
    .end annotation
.end field

.field private mViewH:I

.field private mViewW:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    sput-object v2, Lcom/android/gallery3d/ui/PositionController;->ANIM_TIME:[I

    .line 102
    const/4 v2, 0x7

    new-array v2, v2, [I

    sput-object v2, Lcom/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    .line 104
    const/16 v2, 0x3c

    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    sput v2, Lcom/android/gallery3d/ui/PositionController;->IMAGE_GAP:I

    .line 105
    const/16 v2, 0xc

    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    sput v2, Lcom/android/gallery3d/ui/PositionController;->HORIZONTAL_SLACK:I

    .line 205
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 206
    add-int/lit8 v2, v0, 0x1

    div-int/lit8 v1, v2, 0x2

    .line 207
    .local v1, j:I
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_0

    neg-int v1, v1

    .line 208
    :cond_0
    sget-object v2, Lcom/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    aput v1, v2, v0

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    .end local v1           #j:I
    :cond_1
    return-void

    .line 64
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x58t 0x2t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xbct 0x2t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/ui/PositionController$Listener;)V
    .locals 7
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, -0x3

    .line 212
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v5, p0, Lcom/android/gallery3d/ui/PositionController;->mExtraScalingRange:Z

    .line 91
    iput-boolean v5, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    .line 115
    const/16 v1, 0x4b0

    iput v1, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    .line 116
    const/16 v1, 0x4b0

    iput v1, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    .line 117
    const/16 v1, 0x60

    iput v1, p0, Lcom/android/gallery3d/ui/PositionController;->mActionbarHeight:I

    .line 149
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    .line 156
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrained:Z

    .line 171
    new-instance v1, Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-direct {v1, p0, v4}, Lcom/android/gallery3d/ui/PositionController$Platform;-><init>(Lcom/android/gallery3d/ui/PositionController;Lcom/android/gallery3d/ui/PositionController$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 172
    new-instance v1, Lcom/android/gallery3d/util/RangeArray;

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    .line 175
    new-instance v1, Lcom/android/gallery3d/util/RangeArray;

    invoke-direct {v1, v2, v6}, Lcom/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    .line 176
    new-instance v1, Lcom/android/gallery3d/ui/PositionController$FilmRatio;

    invoke-direct {v1, p0, v4}, Lcom/android/gallery3d/ui/PositionController$FilmRatio;-><init>(Lcom/android/gallery3d/ui/PositionController;Lcom/android/gallery3d/ui/PositionController$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmRatio:Lcom/android/gallery3d/ui/PositionController$FilmRatio;

    .line 179
    new-instance v1, Lcom/android/gallery3d/util/RangeArray;

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/android/gallery3d/util/RangeArray;

    .line 180
    new-instance v1, Lcom/android/gallery3d/util/RangeArray;

    invoke-direct {v1, v2, v6}, Lcom/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/android/gallery3d/util/RangeArray;

    .line 184
    new-instance v1, Lcom/android/gallery3d/util/RangeArray;

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    .line 213
    iput-object p2, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    .line 214
    new-instance v1, Lcom/android/gallery3d/ui/FlingScroller;

    invoke-direct {v1}, Lcom/android/gallery3d/ui/FlingScroller;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

    .line 215
    new-instance v1, Landroid/widget/OverScroller;

    invoke-direct {v1, p1, v4, v5}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/OverScroller;

    .line 219
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->initPlatform()V

    .line 220
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    if-gt v0, v3, :cond_0

    .line 221
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    new-instance v2, Lcom/android/gallery3d/ui/PositionController$Box;

    invoke-direct {v2, p0, v4}, Lcom/android/gallery3d/ui/PositionController$Box;-><init>(Lcom/android/gallery3d/ui/PositionController;Lcom/android/gallery3d/ui/PositionController$1;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 222
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->initBox(I)V

    .line 223
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_0
    const/4 v0, -0x3

    :goto_1
    if-ge v0, v3, :cond_1

    .line 226
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    new-instance v2, Lcom/android/gallery3d/ui/PositionController$Gap;

    invoke-direct {v2, p0, v4}, Lcom/android/gallery3d/ui/PositionController$Gap;-><init>(Lcom/android/gallery3d/ui/PositionController;Lcom/android/gallery3d/ui/PositionController$1;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 227
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->initGap(I)V

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 230
    :cond_1
    sget v1, Lcom/android/gallery3d/util/GalleryUtils;->ACTIONBAR_HEIGHT:I

    iput v1, p0, Lcom/android/gallery3d/ui/PositionController;->mActionbarHeight:I

    .line 231
    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/ui/PositionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mExtraScalingRange:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/ui/PositionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/ui/PositionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mHasNext:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/ui/PositionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mHasPrev:Z

    return v0
.end method

.method static synthetic access$1400()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lcom/android/gallery3d/ui/PositionController;->HORIZONTAL_SLACK:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/ui/PositionController;FI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(FI)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/ui/PositionController;F)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->viewWiderThanScaledImage(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/ui/PositionController;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusX:F

    return v0
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/ui/PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/ui/PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/ui/PositionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrained:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/ui/PositionController;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/ui/PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/ui/PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/gallery3d/ui/PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mActionbarHeight:I

    return v0
.end method

.method static synthetic access$2500()[I
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/gallery3d/ui/PositionController;->ANIM_TIME:[I

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/gallery3d/ui/PositionController;)Landroid/widget/OverScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/ui/FlingScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/gallery3d/ui/PositionController;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(F)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/gallery3d/ui/PositionController;F)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->viewTallerThanScaledImage(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/gallery3d/ui/PositionController;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusY:F

    return v0
.end method

.method static synthetic access$3100(Lcom/android/gallery3d/ui/PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/gallery3d/ui/PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/ui/PositionController$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/PositionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mInScale:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/util/RangeArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    return-object v0
.end method

.method private calculateStableBound(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 1362
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(FI)V

    .line 1363
    return-void
.end method

.method private calculateStableBound(FI)V
    .locals 6
    .parameter "scale"
    .parameter "horizontalSlack"

    .prologue
    const/4 v5, 0x0

    .line 1337
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1340
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;F)I

    move-result v2

    .line 1341
    .local v2, w:I
    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;F)I

    move-result v1

    .line 1344
    .local v1, h:I
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v2, 0x1

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sub-int/2addr v3, p2

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    .line 1345
    div-int/lit8 v3, v2, 0x2

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v3, p2

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    .line 1346
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v1, 0x1

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    .line 1347
    div-int/lit8 v3, v1, 0x2

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    .line 1351
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->viewTallerThanScaledImage(F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1352
    iput v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    iput v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    .line 1356
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->viewWiderThanScaledImage(F)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1357
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v3, v3, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    .line 1359
    :cond_1
    return-void
.end method

.method private canScroll()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 571
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 572
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-wide v3, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 579
    :goto_0
    :sswitch_0
    return v1

    .line 573
    :cond_0
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    sparse-switch v3, :sswitch_data_0

    move v1, v2

    .line 579
    goto :goto_0

    .line 573
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method private convertBoxToRect(I)V
    .locals 10
    .parameter "i"

    .prologue
    .line 899
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v8, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 900
    .local v1, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v8, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 901
    .local v4, r:Landroid/graphics/Rect;
    iget v8, v1, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget-object v9, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v9, v9, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v9, v9, 0x2

    add-int v7, v8, v9

    .line 902
    .local v7, y:I
    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v5

    .line 903
    .local v5, w:I
    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v3

    .line 904
    .local v3, h:I
    if-nez p1, :cond_0

    .line 905
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v8, v8, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v9, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v9, v9, 0x2

    add-int v6, v8, v9

    .line 906
    .local v6, x:I
    div-int/lit8 v8, v5, 0x2

    sub-int v8, v6, v8

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 907
    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v5

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 919
    .end local v6           #x:I
    :goto_0
    div-int/lit8 v8, v3, 0x2

    sub-int v8, v7, v8

    iput v8, v4, Landroid/graphics/Rect;->top:I

    .line 920
    iget v8, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v3

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 921
    return-void

    .line 908
    :cond_0
    if-lez p1, :cond_1

    .line 909
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 910
    .local v0, a:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 911
    .local v2, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v2, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    add-int/2addr v8, v9

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 912
    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v5

    iput v8, v4, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 914
    .end local v0           #a:Landroid/graphics/Rect;
    .end local v2           #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    :cond_1
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    add-int/lit8 v9, p1, 0x1

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 915
    .restart local v0       #a:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v8, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 916
    .restart local v2       #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v9, v2, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    sub-int/2addr v8, v9

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 917
    iget v8, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v5

    iput v8, v4, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private gapToSide(Lcom/android/gallery3d/ui/PositionController$Box;)I
    .locals 3
    .parameter "b"

    .prologue
    .line 430
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    int-to-float v0, v0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iget v2, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getDefaultGapSize(I)I
    .locals 5
    .parameter "i"

    .prologue
    .line 411
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/android/gallery3d/ui/PositionController;->IMAGE_GAP:I

    .line 414
    :goto_0
    return v2

    .line 412
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 413
    .local v0, a:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 414
    .local v1, b:Lcom/android/gallery3d/ui/PositionController$Box;
    sget v2, Lcom/android/gallery3d/ui/PositionController;->IMAGE_GAP:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->gapToSide(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v3

    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/PositionController;->gapToSide(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method private getMaximalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F
    .locals 2
    .parameter "b"

    .prologue
    .line 1310
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v0

    .line 1312
    :goto_0
    return v0

    .line 1311
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrained:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v0

    goto :goto_0

    .line 1312
    :cond_1
    const/high16 v0, 0x40c0

    iget v1, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method private getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F
    .locals 8
    .parameter "b"

    .prologue
    .line 1281
    const/high16 v4, 0x3f80

    .line 1282
    .local v4, wFactor:F
    const/high16 v0, 0x3f80

    .line 1285
    .local v0, hFactor:F
    iget-boolean v5, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrained:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne p1, v5, :cond_1

    .line 1287
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 1288
    .local v3, viewW:I
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 1294
    .local v2, viewH:I
    :goto_0
    iget-boolean v5, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v5, :cond_0

    .line 1295
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    if-le v5, v6, :cond_2

    .line 1296
    const v4, 0x3f333333

    .line 1297
    const v0, 0x3ef5c28f

    .line 1304
    :cond_0
    :goto_1
    int-to-float v5, v3

    mul-float/2addr v5, v4

    iget v6, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v2

    mul-float/2addr v6, v0

    iget v7, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1306
    .local v1, s:F
    return v1

    .line 1290
    .end local v1           #s:F
    .end local v2           #viewH:I
    .end local v3           #viewW:I
    :cond_1
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    .line 1291
    .restart local v3       #viewW:I
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    .restart local v2       #viewH:I
    goto :goto_0

    .line 1299
    :cond_2
    const v4, 0x3f333333

    .line 1300
    const v0, 0x3f333333

    goto :goto_1
.end method

.method private getTargetScale(Lcom/android/gallery3d/ui/PositionController$Box;)F
    .locals 4
    .parameter "b"

    .prologue
    .line 1374
    iget-wide v0, p1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mToScale:F

    goto :goto_0
.end method

.method private heightOf(Lcom/android/gallery3d/ui/PositionController$Box;)I
    .locals 2
    .parameter "b"

    .prologue
    .line 839
    iget v0, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v0, v0

    iget v1, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private heightOf(Lcom/android/gallery3d/ui/PositionController$Box;F)I
    .locals 2
    .parameter "b"
    .parameter "scale"

    .prologue
    .line 849
    iget v0, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private initBox(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 942
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 943
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    .line 944
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    .line 945
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    .line 946
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    .line 947
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMaximalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    .line 948
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 949
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 950
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 951
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    .line 952
    return-void
.end method

.method private initBox(ILcom/android/gallery3d/ui/PhotoView$Size;)V
    .locals 3
    .parameter "index"
    .parameter "size"

    .prologue
    const/4 v2, 0x0

    .line 956
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    if-nez v1, :cond_1

    .line 957
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->initBox(I)V

    .line 970
    :goto_0
    return-void

    .line 960
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 961
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    .line 962
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    .line 963
    iput-boolean v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    .line 964
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    .line 965
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMaximalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    .line 966
    iput v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 967
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 968
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 969
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    goto :goto_0
.end method

.method private initGap(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 975
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 976
    .local v0, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    .line 977
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    .line 978
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 979
    return-void
.end method

.method private initGap(II)V
    .locals 3
    .parameter "index"
    .parameter "size"

    .prologue
    .line 982
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 983
    .local v0, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    .line 984
    iput p2, v0, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    .line 985
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 986
    return-void
.end method

.method private initPlatform()V
    .locals 3

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 935
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 936
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    .line 937
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 938
    return-void
.end method

.method private static isAlmostEqual(FF)Z
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1316
    sub-float v0, p0, p1

    .line 1317
    .local v0, diff:F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    neg-float v0, v0

    .end local v0           #diff:F
    :cond_0
    const v1, 0x3ca3d70a

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private layoutAndSetPosition()V
    .locals 2

    .prologue
    .line 858
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 859
    sget-object v1, Lcom/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/PositionController;->convertBoxToRect(I)V

    .line 858
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 862
    :cond_0
    return-void
.end method

.method private redraw()V
    .locals 1

    .prologue
    .line 783
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->layoutAndSetPosition()V

    .line 784
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PositionController$Listener;->invalidate()V

    .line 785
    return-void
.end method

.method private setBoxSize(IIIZ)Z
    .locals 5
    .parameter "i"
    .parameter "width"
    .parameter "height"
    .parameter "isViewSize"

    .prologue
    const/4 v3, 0x0

    .line 300
    iget-object v4, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v4, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 301
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-boolean v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    .line 304
    .local v2, wasViewSize:Z
    if-nez v2, :cond_1

    if-eqz p4, :cond_1

    .line 344
    :cond_0
    :goto_0
    return v3

    .line 306
    :cond_1
    iput-boolean p4, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    .line 308
    iget v4, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    if-ne p2, v4, :cond_2

    iget v4, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    if-eq p3, v4, :cond_0

    .line 319
    :cond_2
    if-le p2, p3, :cond_4

    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v3, v3

    int-to-float v4, p2

    div-float v1, v3, v4

    .line 323
    .local v1, ratio:F
    :goto_1
    iput p2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    .line 324
    iput p3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    .line 329
    if-eqz v2, :cond_5

    if-nez p4, :cond_5

    .line 330
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v3

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 331
    const-wide/16 v3, -0x1

    iput-wide v3, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 337
    :goto_2
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    const/high16 v4, 0x40c0

    mul-float/2addr v3, v4

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    .line 339
    if-nez p1, :cond_3

    .line 340
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusX:F

    div-float/2addr v3, v1

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusX:F

    .line 341
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusY:F

    div-float/2addr v3, v1

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusY:F

    .line 344
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 319
    .end local v1           #ratio:F
    :cond_4
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v3, v3

    int-to-float v4, p3

    div-float v1, v3, v4

    goto :goto_1

    .line 333
    .restart local v1       #ratio:F
    :cond_5
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr v3, v1

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 334
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mFromScale:F

    mul-float/2addr v3, v1

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mFromScale:F

    .line 335
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mToScale:F

    mul-float/2addr v3, v1

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mToScale:F

    goto :goto_2
.end method

.method private snapAndRedraw()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 788
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController$Platform;->startSnapback()Z

    .line 789
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    if-gt v0, v2, :cond_0

    .line 790
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Box;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController$Box;->startSnapback()Z

    .line 789
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 792
    :cond_0
    const/4 v0, -0x3

    :goto_1
    if-ge v0, v2, :cond_1

    .line 793
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Gap;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController$Gap;->startSnapback()Z

    .line 792
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 795
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmRatio:Lcom/android/gallery3d/ui/PositionController$FilmRatio;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController$FilmRatio;->startSnapback()Z

    .line 796
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->redraw()V

    .line 797
    return-void
.end method

.method private startAnimation(IIFI)Z
    .locals 3
    .parameter "targetX"
    .parameter "targetY"
    .parameter "targetScale"
    .parameter "kind"

    .prologue
    .line 801
    const/4 v0, 0x0

    .line 802
    .local v0, changed:Z
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v2, v2, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    #calls: Lcom/android/gallery3d/ui/PositionController$Platform;->doAnimation(III)Z
    invoke-static {v1, p1, v2, p4}, Lcom/android/gallery3d/ui/PositionController$Platform;->access$400(Lcom/android/gallery3d/ui/PositionController$Platform;III)Z

    move-result v1

    or-int/2addr v0, v1

    .line 803
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Box;

    #calls: Lcom/android/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v1, p2, p3, p4}, Lcom/android/gallery3d/ui/PositionController$Box;->access$500(Lcom/android/gallery3d/ui/PositionController$Box;IFI)Z

    move-result v1

    or-int/2addr v0, v1

    .line 804
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->redraw()V

    .line 805
    :cond_0
    return v0
.end method

.method private startOpeningAnimationIfNeeded()Z
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 348
    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    if-nez v6, :cond_1

    .line 371
    :cond_0
    :goto_0
    return v4

    .line 349
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v6, v4}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 350
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-boolean v6, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    if-nez v6, :cond_0

    .line 353
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    .line 354
    .local v3, r:Landroid/graphics/Rect;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/gallery3d/ui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    .line 356
    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    iget v8, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 357
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    iget v7, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iput v6, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 358
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    iget v8, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 360
    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v6, v6, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iget v7, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    invoke-direct {p0, v6, v4, v7, v9}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    .line 365
    const/4 v2, -0x1

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 366
    iget-object v4, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v4, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 367
    .local v1, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    iput v4, v1, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    .line 368
    iget v4, v1, Lcom/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    invoke-virtual {v1, v4, v9}, Lcom/android/gallery3d/ui/PositionController$Gap;->doAnimation(II)Z

    .line 365
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    :cond_2
    move v4, v5

    .line 371
    goto :goto_0
.end method

.method private updateScaleAndGapLimit()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 396
    const/4 v2, -0x3

    .local v2, i:I
    :goto_0
    if-gt v2, v4, :cond_0

    .line 397
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 398
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v3

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    .line 399
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMaximalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v3

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    .line 396
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 402
    .end local v0           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    :cond_0
    const/4 v2, -0x3

    :goto_1
    if-ge v2, v4, :cond_1

    .line 403
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 404
    .local v1, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v3

    iput v3, v1, Lcom/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    .line 402
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 406
    .end local v1           #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    :cond_1
    return-void
.end method

.method private viewTallerThanScaledImage(F)Z
    .locals 3
    .parameter "scale"

    .prologue
    const/4 v1, 0x0

    .line 1366
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;F)I

    move-result v0

    if-lt v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private viewWiderThanScaledImage(F)Z
    .locals 3
    .parameter "scale"

    .prologue
    const/4 v1, 0x0

    .line 1370
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;F)I

    move-result v0

    if-lt v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I
    .locals 2
    .parameter "b"

    .prologue
    .line 834
    iget v0, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v0, v0

    iget v1, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private widthOf(Lcom/android/gallery3d/ui/PositionController$Box;F)I
    .locals 2
    .parameter "b"
    .parameter "scale"

    .prologue
    .line 844
    iget v0, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public advanceAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 809
    const/4 v0, 0x0

    .line 810
    .local v0, changed:Z
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController$Platform;->advanceAnimation()Z

    move-result v2

    or-int/2addr v0, v2

    .line 811
    const/4 v1, -0x3

    .local v1, i:I
    :goto_0
    if-gt v1, v3, :cond_0

    .line 812
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PositionController$Box;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController$Box;->advanceAnimation()Z

    move-result v2

    or-int/2addr v0, v2

    .line 811
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 814
    :cond_0
    const/4 v1, -0x3

    :goto_1
    if-ge v1, v3, :cond_1

    .line 815
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PositionController$Gap;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController$Gap;->advanceAnimation()Z

    move-result v2

    or-int/2addr v0, v2

    .line 814
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 817
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmRatio:Lcom/android/gallery3d/ui/PositionController$FilmRatio;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController$FilmRatio;->advanceAnimation()Z

    move-result v2

    or-int/2addr v0, v2

    .line 818
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->redraw()V

    .line 819
    :cond_2
    return-void
.end method

.method public beginScale(FF)V
    .locals 5
    .parameter "focusX"
    .parameter "focusY"

    .prologue
    const/high16 v4, 0x3f00

    .line 506
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr p1, v2

    .line 507
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr p2, v2

    .line 508
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 509
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 510
    .local v1, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/PositionController;->mInScale:Z

    .line 511
    iget v2, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    div-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusX:F

    .line 512
    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    div-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusY:F

    .line 513
    return-void
.end method

.method public endScale()V
    .locals 1

    .prologue
    .line 541
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mInScale:Z

    .line 542
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    .line 543
    return-void
.end method

.method public flingFilmX(I)Z
    .locals 13
    .parameter "velocityX"

    .prologue
    const/4 v2, 0x0

    .line 697
    if-nez p1, :cond_1

    .line 712
    :cond_0
    :goto_0
    return v2

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 700
    .local v9, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v11, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 703
    .local v11, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    iget v10, v11, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    .line 704
    .local v10, defaultX:I
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mHasPrev:Z

    if-nez v0, :cond_2

    iget v0, v11, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    if-ge v0, v10, :cond_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mHasNext:Z

    if-nez v0, :cond_3

    iget v0, v11, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    if-le v0, v10, :cond_0

    .line 709
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/OverScroller;

    iget v1, v11, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    const/high16 v5, -0x8000

    const v6, 0x7fffffff

    move v3, p1

    move v4, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 711
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v12

    .line 712
    .local v12, targetX:I
    iget v0, v9, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v1, v9, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    const/4 v2, 0x7

    invoke-direct {p0, v12, v0, v1, v2}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    move-result v2

    goto :goto_0
.end method

.method public flingPage(II)Z
    .locals 14
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 666
    .local v9, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v11, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 669
    .local v11, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    iget v0, v9, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->viewWiderThanScaledImage(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v9, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->viewTallerThanScaledImage(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    const/4 v0, 0x0

    .line 693
    :goto_0
    return v0

    .line 676
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController;->getImageAtEdges()I

    move-result v10

    .line 677
    .local v10, edges:I
    if-lez p1, :cond_1

    and-int/lit8 v0, v10, 0x1

    if-nez v0, :cond_2

    :cond_1
    if-gez p1, :cond_3

    and-int/lit8 v0, v10, 0x2

    if-eqz v0, :cond_3

    .line 679
    :cond_2
    const/4 p1, 0x0

    .line 681
    :cond_3
    if-lez p2, :cond_4

    and-int/lit8 v0, v10, 0x4

    if-nez v0, :cond_5

    :cond_4
    if-gez p2, :cond_6

    and-int/lit8 v0, v10, 0x8

    if-eqz v0, :cond_6

    .line 683
    :cond_5
    const/16 p2, 0x0

    .line 686
    :cond_6
    if-nez p1, :cond_7

    if-nez p2, :cond_7

    const/4 v0, 0x0

    goto :goto_0

    .line 688
    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

    iget v1, v11, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v2, v9, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    iget v7, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    iget v8, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    move v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/gallery3d/ui/FlingScroller;->fling(IIIIIIII)V

    .line 690
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FlingScroller;->getFinalX()I

    move-result v12

    .line 691
    .local v12, targetX:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FlingScroller;->getFinalY()I

    move-result v13

    .line 692
    .local v13, targetY:I
    sget-object v0, Lcom/android/gallery3d/ui/PositionController;->ANIM_TIME:[I

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/FlingScroller;->getDuration()I

    move-result v2

    aput v2, v0, v1

    .line 693
    iget v0, v9, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    const/4 v1, 0x6

    invoke-direct {p0, v12, v13, v0, v1}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    move-result v0

    goto :goto_0
.end method

.method public forceImageSize(ILcom/android/gallery3d/ui/PhotoView$Size;)V
    .locals 2
    .parameter "index"
    .parameter "s"

    .prologue
    .line 275
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    if-nez v1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 277
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    .line 278
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    goto :goto_0
.end method

.method public getFilmRatio()F
    .locals 1

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmRatio:Lcom/android/gallery3d/ui/PositionController$FilmRatio;

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$FilmRatio;->mCurrentRatio:F

    return v0
.end method

.method public getImageAtEdges()I
    .locals 5

    .prologue
    .line 1229
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1230
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 1231
    .local v2, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v3}, Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(F)V

    .line 1232
    const/4 v1, 0x0

    .line 1233
    .local v1, edges:I
    iget v3, v2, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    if-gt v3, v4, :cond_0

    .line 1234
    or-int/lit8 v1, v1, 0x2

    .line 1236
    :cond_0
    iget v3, v2, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    if-lt v3, v4, :cond_1

    .line 1237
    or-int/lit8 v1, v1, 0x1

    .line 1239
    :cond_1
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    if-gt v3, v4, :cond_2

    .line 1240
    or-int/lit8 v1, v1, 0x8

    .line 1242
    :cond_2
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    if-lt v3, v4, :cond_3

    .line 1243
    or-int/lit8 v1, v1, 0x4

    .line 1245
    :cond_3
    return v1
.end method

.method public getImageHeight()I
    .locals 3

    .prologue
    .line 1219
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1220
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    return v1
.end method

.method public getImageScale()F
    .locals 3

    .prologue
    .line 1224
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1225
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    :goto_0
    return v1

    :cond_0
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method public getImageWidth()I
    .locals 3

    .prologue
    .line 1214
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1215
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    return v1
.end method

.method public getPosition(I)Landroid/graphics/Rect;
    .locals 1
    .parameter "index"

    .prologue
    .line 925
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method public hasDeletingBox()Z
    .locals 3

    .prologue
    .line 1268
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 1269
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Box;

    iget v1, v1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 1270
    const/4 v1, 0x1

    .line 1273
    :goto_1
    return v1

    .line 1268
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1273
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public hitTest(II)I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 756
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x7

    if-ge v0, v3, :cond_1

    .line 757
    sget-object v3, Lcom/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    aget v1, v3, v0

    .line 758
    .local v1, j:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 759
    .local v2, r:Landroid/graphics/Rect;
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 764
    .end local v1           #j:I
    .end local v2           #r:Landroid/graphics/Rect;
    :goto_1
    return v1

    .line 756
    .restart local v1       #j:I
    .restart local v2       #r:Landroid/graphics/Rect;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 764
    .end local v1           #j:I
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_1
    const v1, 0x7fffffff

    goto :goto_1
.end method

.method public isAtMaximumScale()Z
    .locals 3

    .prologue
    .line 1196
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1197
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/PositionController;->isAlmostEqual(FF)Z

    move-result v1

    return v1
.end method

.method public isAtMinimalScale()Z
    .locals 3

    .prologue
    .line 1191
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1192
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/PositionController;->isAlmostEqual(FF)Z

    move-result v1

    return v1
.end method

.method public isCameraNailCenter()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1207
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1208
    .local v0, r:Landroid/graphics/Rect;
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1209
    .local v1, w:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v3, v3, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget-object v4, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v4, v4, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v3, v3, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit16 v4, v1, -0x320

    if-ge v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public isCenter()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1201
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1202
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v2, v2, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v3, v3, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isScrolling()Z
    .locals 4

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-wide v0, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mToX:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveBox([IZZZ[Lcom/android/gallery3d/ui/PhotoView$Size;)V
    .locals 19
    .parameter "fromIndex"
    .parameter "hasPrev"
    .parameter "hasNext"
    .parameter "constrained"
    .parameter "sizes"

    .prologue
    .line 1022
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/ui/PositionController;->mHasPrev:Z

    .line 1023
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/ui/PositionController;->mHasNext:Z

    .line 1025
    new-instance v7, Lcom/android/gallery3d/util/RangeIntArray;

    const/16 v17, -0x3

    const/16 v18, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v7, v0, v1, v2}, Lcom/android/gallery3d/util/RangeIntArray;-><init>([III)V

    .line 1028
    .local v7, from:Lcom/android/gallery3d/util/RangeIntArray;
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/PositionController;->layoutAndSetPosition()V

    .line 1029
    const/4 v9, -0x3

    .local v9, i:I
    :goto_0
    const/16 v17, 0x3

    move/from16 v0, v17

    if-gt v9, v0, :cond_0

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1031
    .local v4, b:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Rect;

    .line 1032
    .local v14, r:Landroid/graphics/Rect;
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1029
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1036
    .end local v4           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v14           #r:Landroid/graphics/Rect;
    :cond_0
    const/4 v9, -0x3

    :goto_1
    const/16 v17, 0x3

    move/from16 v0, v17

    if-gt v9, v0, :cond_1

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1036
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1040
    :cond_1
    const/4 v9, -0x3

    :goto_2
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v9, v0, :cond_2

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1040
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1046
    :cond_2
    const/4 v9, -0x3

    :goto_3
    const/16 v17, 0x3

    move/from16 v0, v17

    if-gt v9, v0, :cond_4

    .line 1047
    invoke-virtual {v7, v9}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v10

    .line 1048
    .local v10, j:I
    const v17, 0x7fffffff

    move/from16 v0, v17

    if-ne v10, v0, :cond_3

    .line 1046
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1049
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    .line 1054
    .end local v10           #j:I
    :cond_4
    const/4 v9, -0x3

    :goto_5
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v9, v0, :cond_7

    .line 1055
    invoke-virtual {v7, v9}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v10

    .line 1056
    .restart local v10       #j:I
    const v17, 0x7fffffff

    move/from16 v0, v17

    if-ne v10, v0, :cond_6

    .line 1054
    :cond_5
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1057
    :cond_6
    add-int/lit8 v17, v9, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v11

    .line 1058
    .local v11, k:I
    const v17, 0x7fffffff

    move/from16 v0, v17

    if-eq v11, v0, :cond_5

    .line 1059
    add-int/lit8 v17, v10, 0x1

    move/from16 v0, v17

    if-ne v0, v11, :cond_5

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    .line 1066
    .end local v10           #j:I
    .end local v11           #k:I
    :cond_7
    const/4 v11, -0x3

    .line 1067
    .restart local v11       #k:I
    const/4 v9, -0x3

    :goto_7
    const/16 v17, 0x3

    move/from16 v0, v17

    if-gt v9, v0, :cond_a

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_8

    .line 1067
    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 1069
    :cond_8
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_9

    .line 1070
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 1072
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    add-int/lit8 v12, v11, 0x1

    .end local v11           #k:I
    .local v12, k:I
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1073
    add-int/lit8 v17, v9, 0x3

    aget-object v17, p5, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v9, v1}, Lcom/android/gallery3d/ui/PositionController;->initBox(ILcom/android/gallery3d/ui/PhotoView$Size;)V

    move v11, v12

    .end local v12           #k:I
    .restart local v11       #k:I
    goto :goto_8

    .line 1081
    :cond_a
    const/4 v6, -0x3

    .local v6, first:I
    :goto_a
    const/16 v17, 0x3

    move/from16 v0, v17

    if-gt v6, v0, :cond_b

    .line 1082
    invoke-virtual {v7, v6}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v17

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_e

    .line 1084
    :cond_b
    const/4 v13, 0x3

    .local v13, last:I
    :goto_b
    const/16 v17, -0x3

    move/from16 v0, v17

    if-lt v13, v0, :cond_c

    .line 1085
    invoke-virtual {v7, v13}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v17

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_f

    .line 1089
    :cond_c
    const/16 v17, 0x3

    move/from16 v0, v17

    if-le v6, v0, :cond_d

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/gallery3d/ui/PositionController$Box;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1091
    const/4 v13, 0x0

    move v6, v13

    .line 1099
    :cond_d
    const/16 v17, 0x0

    add-int/lit8 v18, v6, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v9

    :goto_c
    if-ge v9, v13, :cond_12

    .line 1100
    invoke-virtual {v7, v9}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v17

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    .line 1099
    :goto_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 1081
    .end local v13           #last:I
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 1084
    .restart local v13       #last:I
    :cond_f
    add-int/lit8 v13, v13, -0x1

    goto :goto_b

    .line 1101
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    add-int/lit8 v18, v9, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1102
    .local v3, a:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1103
    .restart local v4       #b:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v15

    .line 1104
    .local v15, wa:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v16

    .line 1105
    .local v16, wb:I
    iget v0, v3, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v17, v0

    div-int/lit8 v18, v15, 0x2

    sub-int v18, v15, v18

    add-int v17, v17, v18

    div-int/lit8 v18, v16, 0x2

    add-int v17, v17, v18

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1107
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPopFromTop:Z

    move/from16 v17, v0

    if-eqz v17, :cond_11

    .line 1108
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    goto :goto_d

    .line 1110
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    goto/16 :goto_d

    .line 1115
    .end local v3           #a:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v4           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v15           #wa:I
    .end local v16           #wb:I
    :cond_12
    const/16 v17, -0x1

    add-int/lit8 v18, v13, -0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v9

    :goto_e
    if-le v9, v6, :cond_15

    .line 1116
    invoke-virtual {v7, v9}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v17

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_13

    .line 1115
    :goto_f
    add-int/lit8 v9, v9, -0x1

    goto :goto_e

    .line 1117
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    add-int/lit8 v18, v9, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1118
    .restart local v3       #a:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1119
    .restart local v4       #b:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v15

    .line 1120
    .restart local v15       #wa:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v16

    .line 1121
    .restart local v16       #wb:I
    iget v0, v3, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v17, v0

    div-int/lit8 v18, v15, 0x2

    sub-int v17, v17, v18

    div-int/lit8 v18, v16, 0x2

    sub-int v18, v16, v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1123
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPopFromTop:Z

    move/from16 v17, v0

    if-eqz v17, :cond_14

    .line 1124
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    goto :goto_f

    .line 1126
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    goto :goto_f

    .line 1131
    .end local v3           #a:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v4           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v15           #wa:I
    .end local v16           #wb:I
    :cond_15
    const/4 v11, -0x3

    .line 1132
    const/4 v9, -0x3

    :goto_10
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v9, v0, :cond_19

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_16

    .line 1132
    :goto_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    .line 1134
    :cond_16
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_17

    .line 1135
    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    .line 1137
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    add-int/lit8 v12, v11, 0x1

    .end local v11           #k:I
    .restart local v12       #k:I
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1139
    .restart local v3       #a:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    add-int/lit8 v18, v9, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1140
    .restart local v4       #b:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v15

    .line 1141
    .restart local v15       #wa:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v16

    .line 1142
    .restart local v16       #wb:I
    if-lt v9, v6, :cond_18

    if-ge v9, v13, :cond_18

    .line 1143
    iget v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v17, v0

    iget v0, v3, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    div-int/lit8 v18, v16, 0x2

    sub-int v17, v17, v18

    div-int/lit8 v18, v15, 0x2

    sub-int v18, v15, v18

    sub-int v8, v17, v18

    .line 1144
    .local v8, g:I
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Lcom/android/gallery3d/ui/PositionController;->initGap(II)V

    move v11, v12

    .line 1145
    .end local v12           #k:I
    .restart local v11       #k:I
    goto :goto_11

    .line 1146
    .end local v8           #g:I
    .end local v11           #k:I
    .restart local v12       #k:I
    :cond_18
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/gallery3d/ui/PositionController;->initGap(I)V

    move v11, v12

    .end local v12           #k:I
    .restart local v11       #k:I
    goto :goto_11

    .line 1152
    .end local v3           #a:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v4           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v15           #wa:I
    .end local v16           #wb:I
    :cond_19
    add-int/lit8 v9, v6, -0x1

    :goto_13
    const/16 v17, -0x3

    move/from16 v0, v17

    if-lt v9, v0, :cond_1a

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    add-int/lit8 v18, v9, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1154
    .restart local v3       #a:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1155
    .restart local v4       #b:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v15

    .line 1156
    .restart local v15       #wa:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v16

    .line 1157
    .restart local v16       #wb:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 1158
    .local v8, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget v0, v3, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v17, v0

    div-int/lit8 v18, v15, 0x2

    sub-int v17, v17, v18

    div-int/lit8 v18, v16, 0x2

    sub-int v18, v16, v18

    sub-int v17, v17, v18

    iget v0, v8, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1152
    add-int/lit8 v9, v9, -0x1

    goto :goto_13

    .line 1161
    .end local v3           #a:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v4           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v8           #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    .end local v15           #wa:I
    .end local v16           #wb:I
    :cond_1a
    add-int/lit8 v9, v13, 0x1

    :goto_14
    const/16 v17, 0x3

    move/from16 v0, v17

    if-gt v9, v0, :cond_1b

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    add-int/lit8 v18, v9, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1163
    .restart local v3       #a:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1164
    .restart local v4       #b:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v15

    .line 1165
    .restart local v15       #wa:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v16

    .line 1166
    .restart local v16       #wb:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    add-int/lit8 v18, v9, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 1167
    .restart local v8       #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget v0, v3, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v17, v0

    div-int/lit8 v18, v15, 0x2

    sub-int v18, v15, v18

    add-int v17, v17, v18

    div-int/lit8 v18, v16, 0x2

    add-int v17, v17, v18

    iget v0, v8, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1161
    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    .line 1171
    .end local v3           #a:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v4           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v8           #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    .end local v15           #wa:I
    .end local v16           #wb:I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/gallery3d/ui/PositionController$Box;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    move/from16 v18, v0

    sub-int v5, v17, v18

    .line 1172
    .local v5, dx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    move/from16 v18, v0

    add-int v18, v18, v5

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mFromX:I

    move/from16 v18, v0

    add-int v18, v18, v5

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mFromX:I

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mToX:I

    move/from16 v18, v0

    add-int v18, v18, v5

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mToX:I

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mFlingOffset:I

    move/from16 v18, v0

    add-int v18, v18, v5

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mFlingOffset:I

    .line 1177
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/ui/PositionController;->mConstrained:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p4

    if-eq v0, v1, :cond_1c

    .line 1178
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/ui/PositionController;->mConstrained:Z

    .line 1179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 1180
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 1183
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    .line 1184
    return-void
.end method

.method public resetToFullView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 501
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 502
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    const/4 v3, 0x4

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    .line 503
    return-void
.end method

.method public scaleBy(FFF)I
    .locals 8
    .parameter "s"
    .parameter "focusX"
    .parameter "focusY"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v7, 0x3f00

    .line 521
    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr p2, v6

    .line 522
    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr p3, v6

    .line 523
    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v6, v5}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 524
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 531
    .local v1, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getTargetScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v6

    mul-float/2addr v6, p1

    invoke-virtual {v0, v6}, Lcom/android/gallery3d/ui/PositionController$Box;->clampScale(F)F

    move-result p1

    .line 532
    iget-boolean v6, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v6, :cond_1

    iget v2, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 533
    .local v2, x:I
    :goto_0
    iget-boolean v6, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v6, :cond_2

    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 534
    .local v3, y:I
    :goto_1
    invoke-direct {p0, v2, v3, p1, v4}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    .line 535
    iget v6, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    cmpg-float v6, p1, v6

    if-gez v6, :cond_3

    const/4 v4, -0x1

    .line 537
    :cond_0
    :goto_2
    return v4

    .line 532
    .end local v2           #x:I
    .end local v3           #y:I
    :cond_1
    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusX:F

    mul-float/2addr v6, p1

    sub-float v6, p2, v6

    add-float/2addr v6, v7

    float-to-int v2, v6

    goto :goto_0

    .line 533
    .restart local v2       #x:I
    :cond_2
    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusY:F

    mul-float/2addr v6, p1

    sub-float v6, p3, v6

    add-float/2addr v6, v7

    float-to-int v3, v6

    goto :goto_1

    .line 536
    .restart local v3       #y:I
    :cond_3
    iget v6, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    cmpl-float v6, p1, v6

    if-gtz v6, :cond_0

    move v4, v5

    .line 537
    goto :goto_2
.end method

.method public scrollFilmX(I)V
    .locals 8
    .parameter "dx"

    .prologue
    const/4 v7, 0x0

    .line 621
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->canScroll()Z

    move-result v3

    if-nez v3, :cond_0

    .line 653
    :goto_0
    return-void

    .line 623
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v7}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 624
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 628
    .local v1, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    iget-wide v3, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 629
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 639
    :cond_1
    :sswitch_0
    iget v3, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    add-int v2, v3, p1

    .line 643
    .local v2, x:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v3, v3, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    sub-int/2addr v2, v3

    .line 644
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PositionController;->mHasPrev:Z

    if-nez v3, :cond_3

    if-lez v2, :cond_3

    .line 645
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    const/4 v4, 0x1

    invoke-interface {v3, v2, v4}, Lcom/android/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 646
    const/4 v2, 0x0

    .line 651
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v3, v3, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    add-int/2addr v2, v3

    .line 652
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v4, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v2, v3, v4, v7}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    goto :goto_0

    .line 647
    :cond_3
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PositionController;->mHasNext:Z

    if-nez v3, :cond_2

    if-gez v2, :cond_2

    .line 648
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    neg-int v4, v2

    const/4 v5, 0x3

    invoke-interface {v3, v4, v5}, Lcom/android/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 649
    const/4 v2, 0x0

    goto :goto_1

    .line 629
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public scrollPage(II)V
    .locals 9
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v8, 0x0

    .line 583
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->canScroll()Z

    move-result v5

    if-nez v5, :cond_0

    .line 618
    :goto_0
    return-void

    .line 585
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v5, v8}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 586
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 588
    .local v1, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    iget v5, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v5}, Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(F)V

    .line 590
    iget v5, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    add-int v3, v5, p1

    .line 591
    .local v3, x:I
    iget v5, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    add-int v4, v5, p2

    .line 595
    .local v4, y:I
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    if-eq v5, v6, :cond_1

    .line 596
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    if-ge v4, v5, :cond_3

    .line 597
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    sub-int/2addr v6, v4

    const/4 v7, 0x2

    invoke-interface {v5, v6, v7}, Lcom/android/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 603
    :cond_1
    :goto_1
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    invoke-static {v4, v5, v6}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v4

    .line 607
    iget-boolean v5, p0, Lcom/android/gallery3d/ui/PositionController;->mHasPrev:Z

    if-nez v5, :cond_4

    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    if-le v3, v5, :cond_4

    .line 608
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    sub-int v2, v3, v5

    .line 609
    .local v2, pixels:I
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    const/4 v6, 0x1

    invoke-interface {v5, v2, v6}, Lcom/android/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 610
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    .line 617
    .end local v2           #pixels:I
    :cond_2
    :goto_2
    iget v5, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v3, v4, v5, v8}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    goto :goto_0

    .line 598
    :cond_3
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    if-le v4, v5, :cond_1

    .line 599
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    sub-int v6, v4, v6

    invoke-interface {v5, v6, v8}, Lcom/android/gallery3d/ui/PositionController$Listener;->onPull(II)V

    goto :goto_1

    .line 611
    :cond_4
    iget-boolean v5, p0, Lcom/android/gallery3d/ui/PositionController;->mHasNext:Z

    if-nez v5, :cond_2

    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    if-ge v3, v5, :cond_2

    .line 612
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    sub-int v2, v5, v3

    .line 613
    .restart local v2       #pixels:I
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    const/4 v6, 0x3

    invoke-interface {v5, v2, v6}, Lcom/android/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 614
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    goto :goto_2
.end method

.method public setConstrainedFrame(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "cFrame"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 269
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 270
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 271
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    goto :goto_0
.end method

.method public setExtraScalingRange(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mExtraScalingRange:Z

    if-ne v0, p1, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PositionController;->mExtraScalingRange:Z

    .line 387
    if-nez p1, :cond_0

    .line 388
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    goto :goto_0
.end method

.method public setFilmMode(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-ne p1, v0, :cond_0

    .line 382
    :goto_0
    return-void

    .line 376
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    .line 378
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 379
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 380
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController;->stopAnimation()V

    .line 381
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    goto :goto_0
.end method

.method public setImageSize(ILcom/android/gallery3d/ui/PhotoView$Size;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "index"
    .parameter "s"
    .parameter "cFrame"

    .prologue
    .line 283
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    if-nez v1, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    const/4 v0, 0x0

    .line 286
    .local v0, needUpdate:Z
    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 287
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 288
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 289
    const/4 v0, 0x1

    .line 291
    :cond_2
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    iget v2, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/gallery3d/ui/PositionController;->setBoxSize(IIIZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 293
    if-eqz v0, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 295
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    goto :goto_0
.end method

.method public setOpenAnimationRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/gallery3d/ui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    .line 235
    return-void
.end method

.method public setViewSize(II)V
    .locals 5
    .parameter "viewW"
    .parameter "viewH"

    .prologue
    .line 238
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    if-ne p1, v3, :cond_1

    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    if-ne p2, v3, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v2

    .line 242
    .local v2, wasMinimal:Z
    iput p1, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    .line 243
    iput p2, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    .line 244
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->initPlatform()V

    .line 246
    const/4 v1, -0x3

    .local v1, i:I
    :goto_1
    const/4 v3, 0x3

    if-gt v1, v3, :cond_2

    .line 247
    const/4 v3, 0x1

    invoke-direct {p0, v1, p1, p2, v3}, Lcom/android/gallery3d/ui/PositionController;->setBoxSize(IIIZ)Z

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 250
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 254
    if-eqz v2, :cond_3

    .line 255
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 256
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 261
    .end local v0           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->startOpeningAnimationIfNeeded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController;->skipToFinalPosition()V

    goto :goto_0
.end method

.method public skipAnimation()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const-wide/16 v5, -0x1

    .line 445
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-wide v3, v3, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 446
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v4, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v4, v4, Lcom/android/gallery3d/ui/PositionController$Platform;->mToX:I

    iput v4, v3, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 447
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v4, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v4, v4, Lcom/android/gallery3d/ui/PositionController$Platform;->mToY:I

    iput v4, v3, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    .line 448
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iput-wide v5, v3, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 450
    :cond_0
    const/4 v2, -0x3

    .local v2, i:I
    :goto_0
    if-gt v2, v7, :cond_2

    .line 451
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 452
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-wide v3, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 450
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 453
    :cond_1
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mToY:I

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 454
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mToScale:F

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 455
    iput-wide v5, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    goto :goto_1

    .line 457
    .end local v0           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    :cond_2
    const/4 v2, -0x3

    :goto_2
    if-ge v2, v7, :cond_4

    .line 458
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 459
    .local v1, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget-wide v3, v1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 457
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 460
    :cond_3
    iget v3, v1, Lcom/android/gallery3d/ui/PositionController$Gap;->mToGap:I

    iput v3, v1, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    .line 461
    iput-wide v5, v1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    goto :goto_3

    .line 463
    .end local v1           #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->redraw()V

    .line 464
    return-void
.end method

.method public skipToFinalPosition()V
    .locals 0

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController;->stopAnimation()V

    .line 472
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    .line 473
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController;->skipAnimation()V

    .line 474
    return-void
.end method

.method public snapback()V
    .locals 0

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    .line 468
    return-void
.end method

.method public startCaptureAnimationSlide(I)V
    .locals 8
    .parameter "offset"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x9

    .line 556
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v7}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 557
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 558
    .local v2, n:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 560
    .local v1, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v4, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v4, v4, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v5, v5, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    #calls: Lcom/android/gallery3d/ui/PositionController$Platform;->doAnimation(III)Z
    invoke-static {v3, v4, v5, v6}, Lcom/android/gallery3d/ui/PositionController$Platform;->access$400(Lcom/android/gallery3d/ui/PositionController$Platform;III)Z

    .line 562
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    #calls: Lcom/android/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v0, v7, v3, v6}, Lcom/android/gallery3d/ui/PositionController$Box;->access$500(Lcom/android/gallery3d/ui/PositionController$Box;IFI)Z

    .line 563
    iget v3, v2, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    #calls: Lcom/android/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v2, v7, v3, v6}, Lcom/android/gallery3d/ui/PositionController$Box;->access$500(Lcom/android/gallery3d/ui/PositionController$Box;IFI)Z

    .line 564
    iget v3, v1, Lcom/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    invoke-virtual {v1, v3, v6}, Lcom/android/gallery3d/ui/PositionController$Gap;->doAnimation(II)Z

    .line 565
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->redraw()V

    .line 566
    return-void
.end method

.method public startHorizontalSlide()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 547
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 548
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    const/4 v3, 0x3

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    .line 549
    return-void
.end method

.method public stopAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const-wide/16 v2, -0x1

    .line 435
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iput-wide v2, v1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 436
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    if-gt v0, v4, :cond_0

    .line 437
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Box;

    iput-wide v2, v1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 436
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 439
    :cond_0
    const/4 v0, -0x3

    :goto_1
    if-ge v0, v4, :cond_1

    .line 440
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Gap;

    iput-wide v2, v1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 442
    :cond_1
    return-void
.end method

.method public stopScrolling()V
    .locals 4

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-wide v0, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1257
    :goto_0
    return-void

    .line 1255
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 1256
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v2, v2, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iput v2, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mToX:I

    iput v2, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mFromX:I

    goto :goto_0
.end method

.method public zoomIn(FFF)V
    .locals 10
    .parameter "tapX"
    .parameter "tapY"
    .parameter "targetScale"

    .prologue
    const/high16 v9, 0x3f00

    .line 481
    iget v7, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr p1, v7

    .line 482
    iget v7, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr p2, v7

    .line 483
    iget-object v7, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 486
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v7, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v7, v7, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    int-to-float v7, v7

    sub-float v7, p1, v7

    iget v8, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    div-float v3, v7, v8

    .line 487
    .local v3, tempX:F
    iget v7, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    int-to-float v7, v7

    sub-float v7, p2, v7

    iget v8, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    div-float v4, v7, v8

    .line 489
    .local v4, tempY:F
    neg-float v7, v3

    mul-float/2addr v7, p3

    add-float/2addr v7, v9

    float-to-int v5, v7

    .line 490
    .local v5, x:I
    neg-float v7, v4

    mul-float/2addr v7, p3

    add-float/2addr v7, v9

    float-to-int v6, v7

    .line 492
    .local v6, y:I
    invoke-direct {p0, p3}, Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(F)V

    .line 493
    iget v7, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    iget v8, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    invoke-static {v5, v7, v8}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    .line 494
    .local v1, targetX:I
    iget v7, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    iget v8, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    invoke-static {v6, v7, v8}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v2

    .line 495
    .local v2, targetY:I
    iget v7, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iget v8, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    invoke-static {p3, v7, v8}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result p3

    .line 497
    const/4 v7, 0x4

    invoke-direct {p0, v1, v2, p3, v7}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    .line 498
    return-void
.end method
