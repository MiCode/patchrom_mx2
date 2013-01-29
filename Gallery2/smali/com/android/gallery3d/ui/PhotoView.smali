.class public Lcom/android/gallery3d/ui/PhotoView;
.super Lcom/android/gallery3d/ui/GLView;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;,
        Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;,
        Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;,
        Lcom/android/gallery3d/ui/PhotoView$FullPicture;,
        Lcom/android/gallery3d/ui/PhotoView$Picture;,
        Lcom/android/gallery3d/ui/PhotoView$MyHandler;,
        Lcom/android/gallery3d/ui/PhotoView$Listener;,
        Lcom/android/gallery3d/ui/PhotoView$Model;,
        Lcom/android/gallery3d/ui/PhotoView$Size;
    }
.end annotation


# static fields
.field private static TRANSITION_SCALE_FACTOR:F


# instance fields
.field private mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mCameraRect:Landroid/graphics/Rect;

.field private mCameraRelativeFrame:Landroid/graphics/Rect;

.field private mCancelExtraScalingPending:Z

.field private mCompensation:I

.field private mDisplayRotation:I

.field private mFilmMode:Z

.field private final mFrameSelected:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private mFullScreenCamera:Z

.field private final mGestureListener:Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

.field private final mGestureRecognizer:Lcom/android/gallery3d/ui/GestureRecognizer;

.field private mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

.field private mHolding:I

.field private mImageCenter:Landroid/graphics/Point;

.field private mInSelectionMode:Z

.field private mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

.field private mLoadingText:Lcom/android/gallery3d/ui/StringTexture;

.field private mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

.field private mNextBound:I

.field private mNoThumbnailText:Lcom/android/gallery3d/ui/StringTexture;

.field private final mPictures:Lcom/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/RangeArray",
            "<",
            "Lcom/android/gallery3d/ui/PhotoView$Picture;",
            ">;"
        }
    .end annotation
.end field

.field private final mPositionController:Lcom/android/gallery3d/ui/PositionController;

.field private mPrevBound:I

.field private mScaleInterpolator:Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;

.field private mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mSetWallpaperMode:Z

.field private mSizes:[Lcom/android/gallery3d/ui/PhotoView$Size;

.field private mTileView:Lcom/android/gallery3d/ui/TileImageView;

.field private mTouchBoxDeletable:Z

.field private mTouchBoxIndex:I

.field private mUndoBarState:I

.field private mUndoIndexHint:I

.field private mVideoPlayIcon:Lcom/android/gallery3d/ui/Texture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    const v0, 0x3f3d70a4

    sput v0, Lcom/android/gallery3d/ui/PhotoView;->TRANSITION_SCALE_FACTOR:F

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V
    .locals 9
    .parameter "activity"
    .parameter "selectionManager"

    .prologue
    const v8, 0x7fffffff

    const/4 v7, 0x3

    const/4 v6, -0x1

    const/high16 v5, 0x41a0

    const/4 v4, 0x0

    .line 249
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 173
    new-instance v2, Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;

    const/high16 v3, 0x3f00

    invoke-direct {v2, v3}, Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mScaleInterpolator:Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;

    .line 176
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    const v3, 0x3f666666

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 188
    new-instance v2, Lcom/android/gallery3d/util/RangeArray;

    const/4 v3, -0x3

    invoke-direct {v2, v3, v7}, Lcom/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    .line 190
    const/4 v2, 0x7

    new-array v2, v2, [Lcom/android/gallery3d/ui/PhotoView$Size;

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mSizes:[Lcom/android/gallery3d/ui/PhotoView$Size;

    .line 207
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mImageCenter:Landroid/graphics/Point;

    .line 209
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    .line 210
    iput v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    .line 211
    iput v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    .line 213
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    .line 214
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    .line 234
    iput v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    .line 241
    iput v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    .line 250
    new-instance v2, Lcom/android/gallery3d/ui/TileImageView;

    invoke-direct {v2, p1}, Lcom/android/gallery3d/ui/TileImageView;-><init>(Lcom/android/gallery3d/app/GalleryContext;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    .line 251
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/PhotoView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 252
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 253
    .local v0, context:Landroid/content/Context;
    new-instance v2, Lcom/android/gallery3d/ui/NinePatchTexture;

    const v3, 0x7f020077

    invoke-direct {v2, v0, v3}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mFrameSelected:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 254
    iput-object p2, p0, Lcom/android/gallery3d/ui/PhotoView;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 267
    const v2, 0x7f0a0007

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5, v6}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mLoadingText:Lcom/android/gallery3d/ui/StringTexture;

    .line 270
    const v2, 0x7f0a0137

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5, v6}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mNoThumbnailText:Lcom/android/gallery3d/ui/StringTexture;

    .line 274
    new-instance v2, Lcom/android/gallery3d/ui/PhotoView$MyHandler;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/ui/PhotoView$MyHandler;-><init>(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    .line 276
    new-instance v2, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;-><init>(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/PhotoView$1;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureListener:Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

    .line 277
    new-instance v2, Lcom/android/gallery3d/ui/GestureRecognizer;

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureListener:Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

    invoke-direct {v2, v0, v3}, Lcom/android/gallery3d/ui/GestureRecognizer;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/GestureRecognizer$Listener;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/android/gallery3d/ui/GestureRecognizer;

    .line 279
    new-instance v2, Lcom/android/gallery3d/ui/PositionController;

    new-instance v3, Lcom/android/gallery3d/ui/PhotoView$1;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/ui/PhotoView$1;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    invoke-direct {v2, v0, v3}, Lcom/android/gallery3d/ui/PositionController;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/PositionController$Listener;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    .line 300
    new-instance v2, Lcom/android/gallery3d/ui/ResourceTexture;

    const v3, 0x7f02008b

    invoke-direct {v2, v0, v3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mVideoPlayIcon:Lcom/android/gallery3d/ui/Texture;

    .line 301
    const/4 v1, -0x3

    .local v1, i:I
    :goto_0
    if-gt v1, v7, :cond_1

    .line 302
    if-nez v1, :cond_0

    .line 303
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    new-instance v3, Lcom/android/gallery3d/ui/PhotoView$FullPicture;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/ui/PhotoView$FullPicture;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    invoke-virtual {v2, v1, v3}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 301
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 305
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    new-instance v3, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;

    invoke-direct {v3, p0, v1}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;-><init>(Lcom/android/gallery3d/ui/PhotoView;I)V

    invoke-virtual {v2, v1, v3}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 308
    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/ui/PhotoView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->showUndoBar(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->snapback()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/ui/PhotoView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->checkHideUndoBar(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/TileImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->getPanoramaRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->getCameraRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$172(Lcom/android/gallery3d/ui/PhotoView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    return v0
.end method

.method static synthetic access$176(Lcom/android/gallery3d/ui/PhotoView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    return v0
.end method

.method static synthetic access$1800(III)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->getRotated(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->canUndoLastPicture()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/GestureRecognizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/android/gallery3d/ui/GestureRecognizer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/ui/PhotoView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    return-void
.end method

.method static synthetic access$2200(III)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->calculateMoveOutProgress(III)F

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/ui/PhotoView;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->getScrollScale(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/gallery3d/ui/PhotoView;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->getScrollAlpha(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$2500(FFF)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->interpolate(FFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/gallery3d/ui/PhotoView;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->getOffsetAlpha(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->drawVideoPlayIcon(Lcom/android/gallery3d/ui/GLCanvas;I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->drawLoadingFailMessage(Lcom/android/gallery3d/ui/GLCanvas;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->drawPlaceHolder(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/gallery3d/ui/PhotoView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->switchToHitPicture(II)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/util/RangeArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mSetWallpaperMode:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxDeletable:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/gallery3d/ui/PhotoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxDeletable:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/gallery3d/ui/PhotoView;FF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->swipeImages(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    return v0
.end method

.method static synthetic access$3502(Lcom/android/gallery3d/ui/PhotoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/gallery3d/ui/PhotoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchFocus()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/PhotoView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->captureAnimationDone(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/SynchronizedHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    return v0
.end method

.method private static calculateMoveOutProgress(III)F
    .locals 4
    .parameter "left"
    .parameter "right"
    .parameter "viewWidth"

    .prologue
    .line 1734
    sub-int v0, p1, p0

    .line 1741
    .local v0, w:I
    if-ge v0, p2, :cond_1

    .line 1742
    div-int/lit8 v2, p2, 0x2

    div-int/lit8 v3, v0, 0x2

    sub-int v1, v2, v3

    .line 1743
    .local v1, zx:I
    if-le p0, v1, :cond_0

    .line 1744
    sub-int v2, p0, v1

    neg-int v2, v2

    int-to-float v2, v2

    sub-int v3, p2, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1764
    .end local v1           #zx:I
    :goto_0
    return v2

    .line 1746
    .restart local v1       #zx:I
    :cond_0
    sub-int v2, p0, v1

    int-to-float v2, v2

    neg-int v3, v0

    sub-int/2addr v3, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_0

    .line 1756
    .end local v1           #zx:I
    :cond_1
    if-lez p0, :cond_2

    .line 1757
    neg-int v2, p0

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    goto :goto_0

    .line 1760
    :cond_2
    if-ge p1, p2, :cond_3

    .line 1761
    sub-int v2, p2, p1

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    goto :goto_0

    .line 1764
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private canUndoLastPicture()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1423
    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 1424
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private captureAnimationDone(I)V
    .locals 2
    .parameter "offset"

    .prologue
    const/4 v1, 0x1

    .line 1708
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    .line 1709
    if-ne p1, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v0, :cond_0

    .line 1711
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 1712
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarWanted()V

    .line 1714
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->snapback()V

    .line 1715
    return-void
.end method

.method private checkFocusSwitching()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 1496
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v0, :cond_1

    .line 1501
    :cond_0
    :goto_0
    return-void

    .line 1497
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SynchronizedHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1498
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchPosition()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1499
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SynchronizedHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private checkHideUndoBar(I)V
    .locals 7
    .parameter "addition"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1407
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    or-int/2addr v6, p1

    iput v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    .line 1408
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_1

    .line 1416
    :cond_0
    :goto_0
    return-void

    .line 1409
    :cond_1
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_4

    move v2, v4

    .line 1410
    .local v2, timeout:Z
    :goto_1
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_5

    move v3, v4

    .line 1411
    .local v3, touched:Z
    :goto_2
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_6

    move v1, v4

    .line 1412
    .local v1, fullCamera:Z
    :goto_3
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_7

    move v0, v4

    .line 1413
    .local v0, deleteLast:Z
    :goto_4
    if-eqz v2, :cond_2

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    .line 1414
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->hideUndoBar()V

    goto :goto_0

    .end local v0           #deleteLast:Z
    .end local v1           #fullCamera:Z
    .end local v2           #timeout:Z
    .end local v3           #touched:Z
    :cond_4
    move v2, v5

    .line 1409
    goto :goto_1

    .restart local v2       #timeout:Z
    :cond_5
    move v3, v5

    .line 1410
    goto :goto_2

    .restart local v3       #touched:Z
    :cond_6
    move v1, v5

    .line 1411
    goto :goto_3

    .restart local v1       #fullCamera:Z
    :cond_7
    move v0, v5

    .line 1412
    goto :goto_4
.end method

.method private drawLoadingFailMessage(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mNoThumbnailText:Lcom/android/gallery3d/ui/StringTexture;

    .line 917
    .local v0, m:Lcom/android/gallery3d/ui/StringTexture;
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/StringTexture;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/gallery3d/ui/StringTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 918
    return-void
.end method

.method private drawPlaceHolder(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "canvas"
    .parameter "r"

    .prologue
    .line 904
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v4, v0

    const v5, -0xddddde

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 905
    return-void
.end method

.method private drawVideoPlayIcon(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 6
    .parameter "canvas"
    .parameter "side"

    .prologue
    .line 909
    div-int/lit8 v4, p2, 0x6

    .line 911
    .local v4, s:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mVideoPlayIcon:Lcom/android/gallery3d/ui/Texture;

    neg-int v1, v4

    div-int/lit8 v2, v1, 0x2

    neg-int v1, v4

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    move v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 912
    return-void
.end method

.method private static gapToSide(II)I
    .locals 2
    .parameter "imageWidth"
    .parameter "viewWidth"

    .prologue
    .line 1634
    const/4 v0, 0x0

    sub-int v1, p1, p0

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getCameraRotation()I
    .locals 2

    .prologue
    .line 547
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private getOffsetAlpha(F)F
    .locals 3
    .parameter "offset"

    .prologue
    const/high16 v2, 0x3f80

    .line 1812
    const/high16 v1, 0x3f00

    div-float/2addr p1, v1

    .line 1813
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    sub-float v0, v2, p1

    .line 1814
    .local v0, alpha:F
    :goto_0
    const v1, 0x3cf5c28f

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    return v1

    .line 1813
    .end local v0           #alpha:F
    :cond_0
    add-float v0, v2, p1

    goto :goto_0
.end method

.method private getPanoramaRotation()I
    .locals 1

    .prologue
    .line 551
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    return v0
.end method

.method private static getRotated(III)I
    .locals 1
    .parameter "degree"
    .parameter "original"
    .parameter "theother"

    .prologue
    .line 921
    rem-int/lit16 v0, p0, 0xb4

    if-nez v0, :cond_0

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method private getScrollAlpha(F)F
    .locals 3
    .parameter "scrollProgress"

    .prologue
    const/high16 v0, 0x3f80

    .line 1770
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v0

    :cond_0
    return v0
.end method

.method private getScrollScale(F)F
    .locals 4
    .parameter "scrollProgress"

    .prologue
    .line 1777
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mScaleInterpolator:Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;->getInterpolation(F)F

    move-result v0

    .line 1779
    .local v0, interpolatedProgress:F
    const/high16 v2, 0x3f80

    sub-float/2addr v2, v0

    sget v3, Lcom/android/gallery3d/ui/PhotoView;->TRANSITION_SCALE_FACTOR:F

    mul-float/2addr v3, v0

    add-float v1, v2, v3

    .line 1781
    .local v1, scale:F
    return v1
.end method

.method private hideUndoBar()V
    .locals 2

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    .line 1392
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onCommitDeleteImage()V

    .line 1394
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    .line 1395
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    .line 1396
    return-void
.end method

.method private static interpolate(FFF)F
    .locals 1
    .parameter "ratio"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 1806
    sub-float v0, p2, p1

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method private saveTexture(III)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "texture"
    .parameter "width"
    .parameter "height"

    .prologue
    const v10, 0x8d40

    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 1906
    new-array v8, v9, [I

    .line 1907
    .local v8, frame:[I
    invoke-static {v9, v8, v0}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 1908
    aget v1, v8, v0

    invoke-static {v10, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1909
    const v1, 0x8ce0

    const/16 v2, 0xde1

    invoke-static {v10, v1, v2, p1, v0}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 1912
    mul-int v1, p2, p3

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 1913
    .local v6, buffer:Ljava/nio/ByteBuffer;
    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v1, v0

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 1914
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1915
    .local v7, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v7, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 1917
    invoke-static {v10, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1918
    invoke-static {v9, v8, v0}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 1919
    return-object v7
.end method

.method private setFilmMode(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1329
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-ne v0, p1, :cond_1

    .line 1340
    :cond_0
    :goto_0
    return-void

    .line 1330
    :cond_1
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    .line 1331
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/PositionController;->setFilmMode(Z)V

    .line 1332
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    if-nez p1, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Lcom/android/gallery3d/ui/PhotoView$Model;->setNeedFullImage(Z)V

    .line 1333
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-interface {v3, v0}, Lcom/android/gallery3d/ui/PhotoView$Model;->setFocusHintDirection(I)V

    .line 1335
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    if-nez p1, :cond_4

    :goto_3
    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 1337
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1338
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Listener;->lockOrientation()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1332
    goto :goto_1

    :cond_3
    move v0, v2

    .line 1333
    goto :goto_2

    :cond_4
    move v1, v2

    .line 1335
    goto :goto_3
.end method

.method private setPictureSize(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 463
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoView$Picture;

    .line 464
    .local v0, p:Lcom/android/gallery3d/ui/PhotoView$Picture;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Picture;->getSize()Lcom/android/gallery3d/ui/PhotoView$Size;

    move-result-object v3

    if-nez p1, :cond_0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {v2, p1, v3, v1}, Lcom/android/gallery3d/ui/PositionController;->setImageSize(ILcom/android/gallery3d/ui/PhotoView$Size;Landroid/graphics/Rect;)V

    .line 466
    return-void

    .line 464
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showUndoBar(Z)V
    .locals 4
    .parameter "deleteLast"

    .prologue
    const/4 v3, 0x7

    .line 1383
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    .line 1384
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    .line 1385
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    .line 1387
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/gallery3d/ui/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1388
    return-void
.end method

.method private slideToNextPicture()Z
    .locals 1

    .prologue
    .line 1620
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 1623
    :goto_0
    return v0

    .line 1621
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToNextImage()V

    .line 1622
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->startHorizontalSlide()V

    .line 1623
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private slideToPrevPicture()Z
    .locals 1

    .prologue
    .line 1627
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    .line 1630
    :goto_0
    return v0

    .line 1628
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToPrevImage()V

    .line 1629
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->startHorizontalSlide()V

    .line 1630
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private snapToNeighborImage()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1603
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v4, :cond_1

    .line 1616
    :cond_0
    :goto_0
    return v3

    .line 1605
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v4, v3}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 1606
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v2

    .line 1607
    .local v2, viewW:I
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v4, v2}, Lcom/android/gallery3d/ui/PhotoView;->gapToSide(II)I

    move-result v4

    add-int/lit16 v1, v4, 0x100

    .line 1610
    .local v1, threshold:I
    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int v4, v2, v4

    if-le v4, v1, :cond_2

    .line 1611
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToNextPicture()Z

    move-result v3

    goto :goto_0

    .line 1612
    :cond_2
    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-le v4, v1, :cond_0

    .line 1613
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToPrevPicture()Z

    move-result v3

    goto :goto_0
.end method

.method private snapback()V
    .locals 1

    .prologue
    .line 1596
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    and-int/lit8 v0, v0, -0x5

    if-eqz v0, :cond_1

    .line 1600
    :cond_0
    :goto_0
    return-void

    .line 1597
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->snapToNeighborImage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1598
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->snapback()V

    goto :goto_0
.end method

.method private swipeImages(FF)Z
    .locals 6
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v3, 0x0

    .line 1570
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v4, :cond_1

    .line 1592
    :cond_0
    :goto_0
    return v3

    .line 1574
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    .line 1575
    .local v0, controller:Lcom/android/gallery3d/ui/PositionController;
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v2

    .line 1576
    .local v2, isMinimal:Z
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->getImageAtEdges()I

    move-result v1

    .line 1577
    .local v1, edges:I
    if-nez v2, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 1578
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_0

    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_0

    .line 1584
    :cond_2
    const/high16 v4, -0x3c6a

    cmpg-float v4, p1, v4

    if-gez v4, :cond_4

    if-nez v2, :cond_3

    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_4

    .line 1586
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToNextPicture()Z

    move-result v3

    goto :goto_0

    .line 1587
    :cond_4
    const/high16 v4, 0x4396

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    if-nez v2, :cond_5

    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_0

    .line 1589
    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToPrevPicture()Z

    move-result v3

    goto :goto_0
.end method

.method private switchFocus()V
    .locals 1

    .prologue
    .line 1505
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    if-eqz v0, :cond_0

    .line 1514
    :goto_0
    return-void

    .line 1506
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1508
    :pswitch_1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToPrevImage()V

    goto :goto_0

    .line 1511
    :pswitch_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToNextImage()V

    goto :goto_0

    .line 1506
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private switchPosition()I
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 1519
    iget-object v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v10, v9}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 1520
    .local v1, curr:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v10

    div-int/lit8 v0, v10, 0x2

    .line 1522
    .local v0, center:I
    iget v10, v1, Landroid/graphics/Rect;->left:I

    if-le v10, v0, :cond_0

    iget v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-gez v10, :cond_0

    .line 1523
    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v8, v7}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v5

    .line 1524
    .local v5, prev:Landroid/graphics/Rect;
    iget v8, v1, Landroid/graphics/Rect;->left:I

    sub-int v2, v8, v0

    .line 1525
    .local v2, currDist:I
    iget v8, v5, Landroid/graphics/Rect;->right:I

    sub-int v6, v0, v8

    .line 1526
    .local v6, prevDist:I
    if-ge v6, v2, :cond_1

    .line 1538
    .end local v2           #currDist:I
    .end local v5           #prev:Landroid/graphics/Rect;
    .end local v6           #prevDist:I
    :goto_0
    return v7

    .line 1529
    :cond_0
    iget v7, v1, Landroid/graphics/Rect;->right:I

    if-ge v7, v0, :cond_1

    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-lez v7, :cond_1

    .line 1530
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 1531
    .local v3, next:Landroid/graphics/Rect;
    iget v7, v1, Landroid/graphics/Rect;->right:I

    sub-int v2, v0, v7

    .line 1532
    .restart local v2       #currDist:I
    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int v4, v7, v0

    .line 1533
    .local v4, nextDist:I
    if-ge v4, v2, :cond_1

    move v7, v8

    .line 1534
    goto :goto_0

    .end local v2           #currDist:I
    .end local v3           #next:Landroid/graphics/Rect;
    .end local v4           #nextDist:I
    :cond_1
    move v7, v9

    .line 1538
    goto :goto_0
.end method

.method private switchToHitPicture(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1544
    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-gez v1, :cond_1

    .line 1545
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 1546
    .local v0, r:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-lt v1, p1, :cond_1

    .line 1547
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToPrevPicture()Z

    .line 1559
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-void

    .line 1552
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-lez v1, :cond_0

    .line 1553
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 1554
    .restart local v0       #r:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-gt v1, p1, :cond_0

    .line 1555
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToNextPicture()Z

    goto :goto_0
.end method

.method private switchToNextImage()V
    .locals 2

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 1643
    return-void
.end method

.method private switchToPrevImage()V
    .locals 2

    .prologue
    .line 1646
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 1647
    return-void
.end method

.method private switchWithCaptureAnimationLocked(I)Z
    .locals 5
    .parameter "offset"

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1676
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    if-eqz v3, :cond_0

    .line 1704
    :goto_0
    return v1

    .line 1677
    :cond_0
    if-ne p1, v1, :cond_3

    .line 1678
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-gtz v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 1680
    :cond_1
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v3, v2}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 1681
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToNextImage()V

    .line 1682
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/PositionController;->startCaptureAnimationSlide(I)V

    .line 1701
    :goto_1
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    .line 1702
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, p1, v2}, Lcom/android/gallery3d/ui/SynchronizedHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1703
    .local v0, m:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const-wide/16 v3, 0x2bc

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/gallery3d/ui/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1683
    .end local v0           #m:Landroid/os/Message;
    :cond_3
    if-ne p1, v4, :cond_7

    .line 1684
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-ltz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 1685
    :cond_4
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v3, :cond_5

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 1690
    :cond_5
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_6

    .line 1691
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToFirstImage()V

    .line 1692
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController;->skipToFinalPosition()V

    goto :goto_0

    .line 1696
    :cond_6
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToFirstImage()V

    .line 1697
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/ui/PositionController;->startCaptureAnimationSlide(I)V

    goto :goto_1

    :cond_7
    move v1, v2

    .line 1699
    goto :goto_0
.end method

.method private updateCameraRect()V
    .locals 12

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v6

    .line 510
    .local v6, w:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v1

    .line 511
    .local v1, h:I
    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    rem-int/lit16 v7, v7, 0xb4

    if-eqz v7, :cond_0

    .line 512
    move v5, v6

    .line 513
    .local v5, tmp:I
    move v6, v1

    .line 514
    move v1, v5

    .line 516
    .end local v5           #tmp:I
    :cond_0
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v2, v7, Landroid/graphics/Rect;->left:I

    .line 517
    .local v2, l:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v4, v7, Landroid/graphics/Rect;->top:I

    .line 518
    .local v4, t:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v3, v7, Landroid/graphics/Rect;->right:I

    .line 519
    .local v3, r:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 522
    .local v0, b:I
    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    sparse-switch v7, :sswitch_data_0

    .line 529
    :goto_0
    const-string v7, "PhotoView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "compensation = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", CameraRelativeFrame = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mCameraRect = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    return-void

    .line 523
    :sswitch_0
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v2, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 524
    :sswitch_1
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v8, v1, v0

    sub-int v9, v1, v4

    invoke-virtual {v7, v8, v2, v9, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 525
    :sswitch_2
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v8, v6, v3

    sub-int v9, v1, v0

    sub-int v10, v6, v2

    sub-int v11, v1, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 526
    :sswitch_3
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v8, v6, v3

    sub-int v9, v6, v2

    invoke-virtual {v7, v4, v8, v0, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 522
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public buildFallbackEffect(Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/GLCanvas;)Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    .locals 17
    .parameter "root"
    .parameter "canvas"

    .prologue
    .line 1830
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 1831
    .local v12, location:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v12}, Lcom/android/gallery3d/ui/GLView;->getBoundsOf(Lcom/android/gallery3d/ui/GLView;Landroid/graphics/Rect;)Z

    move-result v3

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 1833
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/PhotoView;->bounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 1834
    .local v9, fullRect:Landroid/graphics/Rect;
    new-instance v8, Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    invoke-direct {v8}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;-><init>()V

    .line 1835
    .local v8, effect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    const/4 v10, -0x3

    .local v10, i:I
    :goto_0
    const/4 v3, 0x3

    if-gt v10, v3, :cond_4

    .line 1836
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v3, v10}, Lcom/android/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v11

    .line 1837
    .local v11, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v11, :cond_1

    .line 1835
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1838
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v3, v10}, Lcom/android/gallery3d/ui/PhotoView$Model;->getScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v2

    .line 1839
    .local v2, sc:Lcom/android/gallery3d/ui/ScreenNail;
    instance-of v3, v2, Lcom/android/gallery3d/ui/BitmapScreenNail;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/gallery3d/ui/BitmapScreenNail;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BitmapScreenNail;->isShowingPlaceholder()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1843
    new-instance v13, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/ui/PhotoView;->getPhotoRect(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v13, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1844
    .local v13, rect:Landroid/graphics/Rect;
    invoke-static {v9, v13}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1845
    iget v3, v12, Landroid/graphics/Rect;->left:I

    iget v4, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v13, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1847
    invoke-interface {v2}, Lcom/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v6

    .line 1848
    .local v6, width:I
    invoke-interface {v2}, Lcom/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v7

    .line 1849
    .local v7, height:I
    invoke-virtual {v11}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v14

    .line 1851
    .local v14, rotation:I
    const/4 v15, 0x0

    .line 1852
    .local v15, texture:Lcom/android/gallery3d/ui/RawTexture;
    div-int/lit8 v3, v14, 0x5a

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    .line 1853
    new-instance v15, Lcom/android/gallery3d/ui/RawTexture;

    .end local v15           #texture:Lcom/android/gallery3d/ui/RawTexture;
    const/4 v3, 0x1

    invoke-direct {v15, v6, v7, v3}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    .line 1858
    .restart local v15       #texture:Lcom/android/gallery3d/ui/RawTexture;
    :goto_2
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/android/gallery3d/ui/GLCanvas;->beginRenderTarget(Lcom/android/gallery3d/ui/RawTexture;)V

    .line 1860
    if-eqz v14, :cond_3

    .line 1861
    const/4 v3, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 1862
    int-to-float v3, v14

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v16, 0x3f80

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v3, v4, v5, v1}, Lcom/android/gallery3d/ui/GLCanvas;->rotate(FFFF)V

    .line 1863
    sparse-switch v14, :sswitch_data_0

    .line 1868
    :goto_3
    invoke-interface/range {p2 .. p2}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 1873
    :goto_4
    invoke-interface/range {p2 .. p2}, Lcom/android/gallery3d/ui/GLCanvas;->endRenderTarget()V

    .line 1874
    invoke-virtual {v11}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v8, v3, v13, v15}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->addEntry(Lcom/android/gallery3d/data/Path;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/RawTexture;)V

    goto :goto_1

    .line 1855
    :cond_2
    new-instance v15, Lcom/android/gallery3d/ui/RawTexture;

    .end local v15           #texture:Lcom/android/gallery3d/ui/RawTexture;
    const/4 v3, 0x1

    invoke-direct {v15, v7, v6, v3}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    .restart local v15       #texture:Lcom/android/gallery3d/ui/RawTexture;
    goto :goto_2

    .line 1864
    :sswitch_0
    const/4 v4, 0x0

    neg-int v5, v7

    move-object/from16 v3, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/gallery3d/ui/ScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_3

    .line 1865
    :sswitch_1
    neg-int v4, v6

    neg-int v5, v7

    move-object/from16 v3, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/gallery3d/ui/ScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_3

    .line 1866
    :sswitch_2
    neg-int v4, v6

    const/4 v5, 0x0

    move-object/from16 v3, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/gallery3d/ui/ScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_3

    .line 1870
    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/gallery3d/ui/ScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_4

    .line 1876
    .end local v2           #sc:Lcom/android/gallery3d/ui/ScreenNail;
    .end local v6           #width:I
    .end local v7           #height:I
    .end local v11           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v13           #rect:Landroid/graphics/Rect;
    .end local v14           #rotation:I
    .end local v15           #texture:Lcom/android/gallery3d/ui/RawTexture;
    :cond_4
    return-object v8

    .line 1863
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 936
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionMove(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 937
    const/4 v0, 0x1

    .line 939
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public enterSelectionMode()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1888
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mInSelectionMode:Z

    .line 1889
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 1890
    return-void
.end method

.method public enterWallpaperMode()V
    .locals 1

    .prologue
    .line 1898
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mSetWallpaperMode:Z

    .line 1899
    return-void
.end method

.method public getDrawnBmpOfCurrentItem(Lcom/android/gallery3d/ui/GLCanvas;I)Landroid/graphics/Bitmap;
    .locals 13
    .parameter
    .parameter

    .prologue
    const/16 v12, 0x5a

    const/4 v3, 0x1

    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 1923
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 1924
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 1925
    if-eq p2, v12, :cond_0

    const/16 v4, 0x10e

    if-ne p2, v4, :cond_3

    :cond_0
    move v8, v3

    .line 1926
    :goto_0
    if-eqz v8, :cond_5

    move v6, v0

    move v7, v2

    .line 1932
    :goto_1
    new-instance v10, Lcom/android/gallery3d/ui/RawTexture;

    invoke-direct {v10, v7, v6, v3}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    .line 1933
    invoke-interface {p1, v10}, Lcom/android/gallery3d/ui/GLCanvas;->beginRenderTarget(Lcom/android/gallery3d/ui/RawTexture;)V

    .line 1934
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v11

    .line 1935
    new-instance v0, Lcom/android/gallery3d/ui/GLPaint;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/GLPaint;-><init>()V

    .line 1936
    const/high16 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/GLPaint;->setColor(I)V

    .line 1937
    int-to-float v3, v7

    int-to-float v4, v6

    const/high16 v5, -0x100

    move-object v0, p1

    move v2, v1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 1938
    if-eqz v8, :cond_1

    .line 1940
    if-ne p2, v12, :cond_4

    .line 1942
    neg-int v0, v7

    int-to-float v0, v0

    move v2, v1

    .line 1947
    :goto_2
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 1948
    int-to-float v3, p2

    const/high16 v4, 0x3f80

    invoke-interface {p1, v3, v1, v1, v4}, Lcom/android/gallery3d/ui/GLCanvas;->rotate(FFFF)V

    .line 1949
    invoke-interface {p1, v2, v0}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 1952
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v0, p1, v11}, Lcom/android/gallery3d/ui/PhotoView$Picture;->draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V

    .line 1953
    if-eqz v8, :cond_2

    .line 1954
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 1957
    :cond_2
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->endRenderTarget()V

    .line 1960
    iget v0, v10, Lcom/android/gallery3d/ui/BasicTexture;->mId:I

    invoke-direct {p0, v0, v7, v6}, Lcom/android/gallery3d/ui/PhotoView;->saveTexture(III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1961
    return-object v0

    :cond_3
    move v8, v9

    .line 1925
    goto :goto_0

    .line 1944
    :cond_4
    neg-int v0, v6

    int-to-float v0, v0

    move v2, v0

    move v0, v1

    .line 1945
    goto :goto_2

    :cond_5
    move v6, v2

    move v7, v0

    goto :goto_1
.end method

.method public getFilmMode()Z
    .locals 1

    .prologue
    .line 1343
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    return v0
.end method

.method public getPhotoRect(I)Landroid/graphics/Rect;
    .locals 1
    .parameter "index"

    .prologue
    .line 1826
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public hitTest(II)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1965
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/PositionController;->hitTest(II)I

    move-result v0

    return v0
.end method

.method public isZoomIn()Z
    .locals 1

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public leaveSelectionMode()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1893
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mInSelectionMode:Z

    .line 1894
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 1895
    return-void
.end method

.method public leaveWallpaperMode()V
    .locals 1

    .prologue
    .line 1902
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mSetWallpaperMode:Z

    .line 1903
    return-void
.end method

.method public notifyDataChange([III)V
    .locals 12
    .parameter "fromIndex"
    .parameter "prevBound"
    .parameter "nextBound"

    .prologue
    .line 391
    iput p2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    .line 392
    iput p3, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    .line 395
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 396
    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    .line 397
    .local v8, k:I
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    .line 398
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    const/4 v0, 0x7

    if-ge v6, v0, :cond_0

    .line 399
    aget v0, p1, v6

    if-ne v0, v8, :cond_2

    .line 400
    add-int/lit8 v0, v6, -0x3

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    .line 407
    .end local v6           #i:I
    .end local v8           #k:I
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    .line 408
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 409
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->hideUndoBar()V

    .line 414
    :cond_1
    const/4 v6, -0x3

    .restart local v6       #i:I
    :goto_1
    const/4 v0, 0x3

    if-gt v6, v0, :cond_3

    .line 415
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v6}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/gallery3d/ui/PhotoView$Picture;

    .line 416
    .local v10, p:Lcom/android/gallery3d/ui/PhotoView$Picture;
    invoke-interface {v10}, Lcom/android/gallery3d/ui/PhotoView$Picture;->reload()V

    .line 417
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mSizes:[Lcom/android/gallery3d/ui/PhotoView$Size;

    add-int/lit8 v1, v6, 0x3

    invoke-interface {v10}, Lcom/android/gallery3d/ui/PhotoView$Picture;->getSize()Lcom/android/gallery3d/ui/PhotoView$Size;

    move-result-object v2

    aput-object v2, v0, v1

    .line 414
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 398
    .end local v10           #p:Lcom/android/gallery3d/ui/PhotoView$Picture;
    .restart local v8       #k:I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 420
    .end local v8           #k:I
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->hasDeletingBox()Z

    move-result v11

    .line 423
    .local v11, wasDeleting:Z
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-gez v1, :cond_5

    const/4 v2, 0x1

    :goto_2
    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-lez v1, :cond_6

    const/4 v3, 0x1

    :goto_3
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lcom/android/gallery3d/ui/PhotoView$Model;->isCamera(I)Z

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mSizes:[Lcom/android/gallery3d/ui/PhotoView$Size;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/PositionController;->moveBox([IZZZ[Lcom/android/gallery3d/ui/PhotoView$Size;)V

    .line 425
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->isCamera(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 426
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 427
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 430
    :cond_4
    const/4 v6, -0x3

    :goto_4
    const/4 v0, 0x3

    if-gt v6, v0, :cond_7

    .line 431
    invoke-direct {p0, v6}, Lcom/android/gallery3d/ui/PhotoView;->setPictureSize(I)V

    .line 430
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 423
    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    .line 434
    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->hasDeletingBox()Z

    move-result v7

    .line 438
    .local v7, isDeleting:Z
    if-eqz v11, :cond_8

    if-nez v7, :cond_8

    .line 439
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    .line 440
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SynchronizedHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 441
    .local v9, m:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v9, v1, v2}, Lcom/android/gallery3d/ui/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 445
    .end local v9           #m:Landroid/os/Message;
    :cond_8
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->invalidate()V

    .line 446
    return-void
.end method

.method public notifyImageChange(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 454
    if-nez p1, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onCurrentImageUpdated()V

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Picture;->reload()V

    .line 458
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->setPictureSize(I)V

    .line 459
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->invalidate()V

    .line 460
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changeSize"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v8, 0x0

    .line 471
    sub-int v6, p4, p2

    .line 472
    .local v6, w:I
    sub-int v2, p5, p3

    .line 473
    .local v2, h:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v7, v8, v8, v6, v2}, Lcom/android/gallery3d/ui/TileImageView;->layout(IIII)V

    .line 478
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v5

    .line 479
    .local v5, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v5}, Lcom/android/gallery3d/ui/GLRoot;->getDisplayRotation()I

    move-result v1

    .line 480
    .local v1, displayRotation:I
    invoke-interface {v5}, Lcom/android/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v0

    .line 481
    .local v0, compensation:I
    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    if-ne v7, v1, :cond_0

    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    if-eq v7, v0, :cond_2

    .line 483
    :cond_0
    iput v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    .line 484
    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    .line 489
    const/4 v3, -0x3

    .local v3, i:I
    :goto_0
    const/4 v7, 0x3

    if-gt v3, v7, :cond_2

    .line 490
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v7, v3}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PhotoView$Picture;

    .line 491
    .local v4, p:Lcom/android/gallery3d/ui/PhotoView$Picture;
    invoke-interface {v4}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 492
    invoke-interface {v4}, Lcom/android/gallery3d/ui/PhotoView$Picture;->forceSize()V

    .line 489
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 497
    .end local v3           #i:I
    .end local v4           #p:Lcom/android/gallery3d/ui/PhotoView$Picture;
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->updateCameraRect()V

    .line 498
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/ui/PositionController;->setConstrainedFrame(Landroid/graphics/Rect;)V

    .line 499
    if-eqz p1, :cond_3

    .line 500
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/gallery3d/ui/PositionController;->setViewSize(II)V

    .line 502
    :cond_3
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/android/gallery3d/ui/GestureRecognizer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 931
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 1351
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController;->skipAnimation()V

    .line 1352
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/TileImageView;->freeTextures()V

    .line 1353
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 1354
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PhotoView$Picture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/PhotoView$Picture;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 1353
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1356
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->hideUndoBar()V

    .line 1357
    return-void
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 21
    .parameter "canvas"

    .prologue
    .line 1434
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController;->isCameraNailCenter()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v10, 0x1

    .line 1437
    .local v10, full:Z
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/ui/PhotoView;->mFullScreenCamera:Z

    if-eq v10, v2, :cond_0

    .line 1438
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/gallery3d/ui/PhotoView;->mFullScreenCamera:Z

    .line 1439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v2, v10}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onFullScreenChanged(Z)V

    .line 1440
    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/SynchronizedHandler;->sendEmptyMessage(I)Z

    .line 1446
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/ui/PhotoView;->mFullScreenCamera:Z

    if-eqz v2, :cond_3

    .line 1447
    const/4 v15, 0x0

    .line 1462
    .local v15, neighbors:I
    :goto_1
    move v11, v15

    .local v11, i:I
    :goto_2
    neg-int v2, v15

    if-lt v11, v2, :cond_a

    .line 1463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v2, v11}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v18

    .line 1464
    .local v18, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, v11}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PhotoView$Picture;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v2, v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Picture;->draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V

    .line 1466
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/ui/PhotoView;->mInSelectionMode:Z

    if-eqz v2, :cond_1

    .line 1467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v2, v11}, Lcom/android/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v14

    .line 1468
    .local v14, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v14, :cond_1

    .line 1469
    invoke-virtual {v14}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v17

    .line 1470
    .local v17, path:Lcom/android/gallery3d/data/Path;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/android/gallery3d/data/Path;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->getImageRotation(I)I

    move-result v20

    .line 1472
    .local v20, rotation:I
    div-int/lit8 v2, v20, 0x5a

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7

    const/16 v19, 0x1

    .line 1473
    .local v19, rotated:Z
    :goto_3
    const/16 v19, 0x0

    .line 1474
    if-eqz v19, :cond_8

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 1475
    .local v9, dw:I
    :goto_4
    if-eqz v19, :cond_9

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 1476
    .local v8, dh:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView;->mFrameSelected:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v16

    .line 1477
    .local v16, pad:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView;->mFrameSelected:Lcom/android/gallery3d/ui/NinePatchTexture;

    move-object/from16 v0, v18

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int v4, v3, v4

    move-object/from16 v0, v18

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int v5, v3, v5

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v9

    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v3

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v8

    move-object/from16 v0, v16

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/gallery3d/ui/NinePatchTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 1462
    .end local v8           #dh:I
    .end local v9           #dw:I
    .end local v14           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v16           #pad:Landroid/graphics/Rect;
    .end local v17           #path:Lcom/android/gallery3d/data/Path;
    .end local v19           #rotated:Z
    .end local v20           #rotation:I
    :cond_1
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_2

    .line 1434
    .end local v10           #full:Z
    .end local v11           #i:I
    .end local v15           #neighbors:I
    .end local v18           #r:Landroid/graphics/Rect;
    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1451
    .restart local v10       #full:Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController;->getFilmRatio()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    const/4 v13, 0x1

    .line 1452
    .local v13, inPageMode:Z
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    const/4 v12, 0x1

    .line 1454
    .local v12, inCaptureAnimation:Z
    :goto_7
    if-eqz v13, :cond_6

    if-nez v12, :cond_6

    .line 1455
    const/4 v15, 0x1

    .restart local v15       #neighbors:I
    goto/16 :goto_1

    .line 1451
    .end local v12           #inCaptureAnimation:Z
    .end local v13           #inPageMode:Z
    .end local v15           #neighbors:I
    :cond_4
    const/4 v13, 0x0

    goto :goto_6

    .line 1452
    .restart local v13       #inPageMode:Z
    :cond_5
    const/4 v12, 0x0

    goto :goto_7

    .line 1457
    .restart local v12       #inCaptureAnimation:Z
    :cond_6
    const/4 v15, 0x3

    .restart local v15       #neighbors:I
    goto/16 :goto_1

    .line 1472
    .end local v12           #inCaptureAnimation:Z
    .end local v13           #inPageMode:Z
    .restart local v11       #i:I
    .restart local v14       #item:Lcom/android/gallery3d/data/MediaItem;
    .restart local v17       #path:Lcom/android/gallery3d/data/Path;
    .restart local v18       #r:Landroid/graphics/Rect;
    .restart local v20       #rotation:I
    :cond_7
    const/16 v19, 0x0

    goto :goto_3

    .line 1474
    .restart local v19       #rotated:Z
    :cond_8
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v9

    goto :goto_4

    .line 1475
    .restart local v9       #dw:I
    :cond_9
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v8

    goto :goto_5

    .line 1486
    .end local v9           #dw:I
    .end local v14           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v17           #path:Lcom/android/gallery3d/data/Path;
    .end local v18           #r:Landroid/graphics/Rect;
    .end local v19           #rotated:Z
    .end local v20           #rotation:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController;->advanceAnimation()V

    .line 1487
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/PhotoView;->checkFocusSwitching()V

    .line 1488
    return-void
.end method

.method public resetToFullView()V
    .locals 1

    .prologue
    .line 1884
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->resetToFullView()V

    .line 1885
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageView;->prepareTextures()V

    .line 1361
    return-void
.end method

.method public setCameraRelativeFrame(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "frame"

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 536
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->updateCameraRect()V

    .line 541
    return-void
.end method

.method public setListener(Lcom/android/gallery3d/ui/PhotoView$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1822
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    .line 1823
    return-void
.end method

.method public setModel(Lcom/android/gallery3d/ui/PhotoView$Model;)V
    .locals 2
    .parameter "model"

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    .line 312
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/TileImageView;->setModel(Lcom/android/gallery3d/ui/TileImageView$Model;)V

    .line 313
    return-void
.end method

.method public setOpenAnimationRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 1658
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PositionController;->setOpenAnimationRect(Landroid/graphics/Rect;)V

    .line 1659
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureListener:Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->setSwipingEnabled(Z)V

    .line 1326
    return-void
.end method

.method public switchToFirstImage()V
    .locals 2

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 1651
    return-void
.end method

.method public switchWithCaptureAnimation(I)Z
    .locals 2
    .parameter "offset"

    .prologue
    .line 1666
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 1667
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 1669
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->switchWithCaptureAnimationLocked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1671
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method
