.class public Lcom/android/gallery3d/app/AlbumPage;
.super Lcom/android/gallery3d/app/ActivityState;
.source "AlbumPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;
.implements Lcom/android/gallery3d/data/MediaSet$SyncListener;
.implements Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;,
        Lcom/android/gallery3d/app/AlbumPage$SmartLayout;,
        Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;,
        Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;,
        Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;
    }
.end annotation


# instance fields
.field private mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

.field private mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

.field private mAlbumDataAdapter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;

.field private mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

.field private mAllItemLocked:Z

.field mDelayUpdate:Ljava/lang/Runnable;

.field private mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

.field private mDetailsSource:Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;

.field private mDragBuilder:Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;

.field private mFocusIndex:I

.field private mGetContent:Z

.field private mHandler:Landroid/os/Handler;

.field private mInitialSynced:Z

.field private mIsActive:Z

.field private mIsVideo:Z

.field private mLoadingBits:I

.field private mLockIcon:Landroid/graphics/Bitmap;

.field private mMediaSet:Lcom/android/gallery3d/data/MediaSet;

.field private mMediaSetPath:Lcom/android/gallery3d/data/Path;

.field private mNoOpenCenter:Z

.field private mNormal:Landroid/graphics/NinePatch;

.field private mOpenCenter:Lcom/android/gallery3d/ui/RelativePosition;

.field private mParentMediaSetString:Ljava/lang/String;

.field private mPickedPhotoIndex:I

.field private mPositionProvider:Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

.field private mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

.field private final mRootPane:Lcom/android/gallery3d/ui/GLView;

.field private mSelectedMenuItem:Landroid/view/MenuItem;

.field private mSelectionButton:Lcom/meizu/widget/SelectionButton;

.field private mSelectionButtonInActionMode:Lcom/meizu/widget/SelectionButton;

.field private mSelectionButtonListener:Landroid/view/View$OnClickListener;

.field private mSetBucketId:I

.field private mSetWallpaper:Z

.field private mShowClusterMenu:Z

.field private mShowDetails:Z

.field private mSlideshowMenuItem:Landroid/view/MenuItem;

.field private mSlotView:Lcom/android/gallery3d/ui/SlotView;

.field private mSmartLayout:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

.field private mSrcRootDirPath:Ljava/lang/String;

.field private mSyncTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUserDistance:F

.field private mWarning:Landroid/graphics/NinePatch;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;-><init>()V

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mPickedPhotoIndex:I

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAllItemLocked:Z

    .line 150
    iput-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    .line 179
    iput v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mFocusIndex:I

    .line 188
    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 190
    iput v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingBits:I

    .line 191
    iput-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mInitialSynced:Z

    .line 192
    new-instance v0, Lcom/android/gallery3d/ui/RelativePosition;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/RelativePosition;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mOpenCenter:Lcom/android/gallery3d/ui/RelativePosition;

    .line 196
    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mNormal:Landroid/graphics/NinePatch;

    .line 197
    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mWarning:Landroid/graphics/NinePatch;

    .line 198
    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mLockIcon:Landroid/graphics/Bitmap;

    .line 199
    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mDragBuilder:Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;

    .line 202
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumPage$1;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mPositionProvider:Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    .line 225
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumPage$2;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    .line 2403
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$14;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumPage$14;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDelayUpdate:Ljava/lang/Runnable;

    .line 2409
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/SlotView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->onDragEnd()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/data/Path;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->onDragStarted(Lcom/android/gallery3d/data/Path;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/AlbumPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->pickPhoto(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/AlbumPage$SmartLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSmartLayout:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->updateCount()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->checkSlideshowMenuItem()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/app/AlbumPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->onDown(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/AlbumPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsVideo:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/app/AlbumPage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->onUp(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/app/AlbumPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->onSingleTapUp(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/app/AlbumPage;)Lcom/meizu/widget/SelectionButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionButtonInActionMode:Lcom/meizu/widget/SelectionButton;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/gallery3d/app/AlbumPage;Lcom/meizu/widget/SelectionButton;)Lcom/meizu/widget/SelectionButton;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionButtonInActionMode:Lcom/meizu/widget/SelectionButton;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/ActionModeHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/gallery3d/app/AlbumPage;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionButtonListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/GalleryActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/GLView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/gallery3d/app/AlbumPage;)Lcom/meizu/widget/SelectionButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/gallery3d/app/AlbumPage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDragBuilder:Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/AlbumPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->hideDetails()V

    return-void
.end method

.method static synthetic access$3302(Lcom/android/gallery3d/app/AlbumPage;Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectedMenuItem:Landroid/view/MenuItem;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/android/gallery3d/app/AlbumPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AlbumPage;->mInitialSynced:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/gallery3d/app/AlbumPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->clearLoadingBit(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/gallery3d/app/AlbumPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/android/gallery3d/app/AlbumPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->setLoadingBit(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/DetailsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/gallery3d/app/AlbumPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSetBucketId:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/AlbumSlotRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/AlbumPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mNoOpenCenter:Z

    return v0
.end method

.method static synthetic access$6900(Lcom/android/gallery3d/app/AlbumPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAllItemLocked:Z

    return v0
.end method

.method static synthetic access$6902(Lcom/android/gallery3d/app/AlbumPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAllItemLocked:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/RelativePosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mOpenCenter:Lcom/android/gallery3d/ui/RelativePosition;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/gallery3d/app/AlbumPage;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mLockIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/gallery3d/app/AlbumPage;)Landroid/graphics/NinePatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mNormal:Landroid/graphics/NinePatch;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/gallery3d/app/AlbumPage;)Landroid/graphics/NinePatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mWarning:Landroid/graphics/NinePatch;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/AlbumPage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mUserDistance:F

    return v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/ui/PhotoFallbackEffect;)Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    return-object p1
.end method

.method private checkSlideshowMenuItem()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 955
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlideshowMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_1

    .line 956
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSetWallpaper:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getIntentType()Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    move-result-object v1

    iget v1, v1, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mType:I

    if-eqz v1, :cond_2

    .line 957
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlideshowMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 965
    :cond_1
    :goto_0
    return-void

    .line 959
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    instance-of v1, v1, Lcom/android/gallery3d/data/LocalAlbum;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    check-cast v1, Lcom/android/gallery3d/data/LocalAlbum;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/LocalAlbum;->getBucketId()I

    move-result v1

    sget v2, Lcom/android/gallery3d/util/MediaSetUtils;->RECORD_BUCKET_ID:I

    if-eq v1, v2, :cond_4

    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAllItemLocked:Z

    if-nez v1, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 962
    .local v0, show:Z
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlideshowMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private clearLoadingBit(I)V
    .locals 2
    .parameter "loadTaskBit"

    .prologue
    .line 1296
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingBits:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingBits:I

    .line 1297
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingBits:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 1298
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1301
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 1304
    :cond_0
    return-void
.end method

.method private getSlotRect(I)Landroid/graphics/Rect;
    .locals 5
    .parameter "slotIndex"

    .prologue
    .line 398
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 399
    .local v0, offset:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v2, v3, v0}, Lcom/android/gallery3d/ui/GLView;->getBoundsOf(Lcom/android/gallery3d/ui/GLView;Landroid/graphics/Rect;)Z

    .line 400
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 401
    .local v1, r:Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SlotView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 403
    return-object v1
.end method

.method private hideDetails()V
    .locals 2

    .prologue
    .line 878
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z

    .line 879
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->hide()V

    .line 880
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V

    .line 881
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 882
    return-void
.end method

.method private initDragBitmap()V
    .locals 5

    .prologue
    .line 505
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mNormal:Landroid/graphics/NinePatch;

    if-nez v2, :cond_0

    .line 506
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080502

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 508
    .local v0, normal:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/NinePatch;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    const-string v4, "normal"

    invoke-direct {v2, v0, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mNormal:Landroid/graphics/NinePatch;

    .line 510
    .end local v0           #normal:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mWarning:Landroid/graphics/NinePatch;

    if-nez v2, :cond_1

    .line 511
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10804ff

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 513
    .local v1, warning:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/NinePatch;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    const-string v4, "warning"

    invoke-direct {v2, v1, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mWarning:Landroid/graphics/NinePatch;

    .line 515
    .end local v1           #warning:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mLockIcon:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 516
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200d7

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mLockIcon:Landroid/graphics/Bitmap;

    .line 519
    :cond_2
    return-void
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 845
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    if-nez v0, :cond_0

    .line 846
    const-string v0, "MediaSet is null. Path = %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/gallery3d/common/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 848
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    instance-of v0, v0, Lcom/android/gallery3d/data/LocalAlbum;

    if-eqz v0, :cond_1

    .line 849
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    check-cast v0, Lcom/android/gallery3d/data/LocalAlbum;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/LocalAlbum;->getBucketId()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSetBucketId:I

    .line 853
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcom/android/gallery3d/data/MediaSet;)V

    .line 854
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSmartLayout:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    if-nez v0, :cond_2

    .line 855
    new-instance v0, Lcom/android/gallery3d/app/AlbumDataLoader;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/app/AlbumDataLoader;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/data/MediaSet;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;

    .line 859
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;

    new-instance v1, Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;-><init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/app/AlbumPage$1;)V

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;->setLoadingListener(Lcom/android/gallery3d/app/LoadingListener;)V

    .line 860
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setModel(Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;)V

    .line 862
    return-void

    .line 851
    :cond_1
    iput v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mSetBucketId:I

    goto :goto_0

    .line 857
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSmartLayout:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->getDataLoader()Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;

    goto :goto_1
.end method

.method private initializeViews(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, -0x2

    .line 713
    new-instance v0, Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;-><init>(Lcom/android/gallery3d/app/GalleryContext;I)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 714
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/ui/SelectionManager;->setSelectionListener(Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;)V

    .line 715
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/android/gallery3d/app/Config$AlbumPage;->get(Landroid/content/Context;)Lcom/android/gallery3d/app/Config$AlbumPage;

    move-result-object v4

    .line 719
    const-string v0, "media-path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    .line 720
    const-string v0, "parent-media-path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mParentMediaSetString:Ljava/lang/String;

    .line 721
    const-string v0, "key-src-root-dir"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSrcRootDirPath:Ljava/lang/String;

    .line 722
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 725
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsVideo:Z

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;-><init>(Lcom/android/gallery3d/app/AlbumPage;Z)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSmartLayout:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    .line 726
    new-instance v0, Lcom/android/gallery3d/ui/SlotView;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v2, v4, Lcom/android/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mSmartLayout:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/SlotView;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SlotView$Spec;Lcom/android/gallery3d/ui/SlotView$Layout;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    .line 731
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v3, v4, Lcom/android/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget-object v4, v4, Lcom/android/gallery3d/app/Config$AlbumPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-boolean v6, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsVideo:Z

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/SlotView$Spec;Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;Lcom/android/gallery3d/ui/SelectionManager;Z)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    .line 733
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setSlotRenderer(Lcom/android/gallery3d/ui/SlotView$SlotRenderer;)V

    .line 735
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 738
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    new-instance v1, Lcom/android/gallery3d/app/AlbumPage$6;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumPage$6;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setListener(Lcom/android/gallery3d/ui/SlotView$Listener;)V

    .line 760
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$7;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumPage$7;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionButtonListener:Landroid/view/View$OnClickListener;

    .line 771
    new-instance v0, Lcom/meizu/widget/SelectionButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/widget/SelectionButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    .line 772
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 773
    const/16 v1, 0x15

    iput v1, v0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 774
    const/16 v1, 0x20

    iput v1, v0, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    .line 775
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v1, v0}, Lcom/meizu/widget/SelectionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 777
    new-instance v0, Lcom/android/gallery3d/ui/ActionModeHandler;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/ActionModeHandler;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    .line 778
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsVideo:Z

    if-eqz v0, :cond_0

    const v0, 0x7f110003

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->setViewId(I)V

    .line 779
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    new-instance v1, Lcom/android/gallery3d/app/AlbumPage$8;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumPage$8;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->setActionModeListener(Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;)V

    .line 842
    return-void

    .line 778
    :cond_0
    const/high16 v0, 0x7f11

    goto :goto_0
.end method

.method private onDown(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    .line 322
    return-void
.end method

.method private onDragEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2504
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mDelayUpdate:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2505
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setDragItemPath(Lcom/android/gallery3d/data/Path;)V

    .line 2506
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->getView()Landroid/view/View;

    move-result-object v0

    .line 2507
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 2508
    invoke-virtual {v0}, Landroid/view/View;->releaseDragViewSurface()V

    .line 2509
    iput-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mDragBuilder:Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;

    .line 2510
    return-void
.end method

.method private onDragStarted(Lcom/android/gallery3d/data/Path;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 2513
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setDragItemPath(Lcom/android/gallery3d/data/Path;)V

    .line 2514
    return-void
.end method

.method private onGetContent(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 10
    .parameter "item"

    .prologue
    .line 407
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v7}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    .line 408
    .local v2, dm:Lcom/android/gallery3d/data/DataManager;
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 409
    .local v0, activity:Landroid/app/Activity;
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    const-string v8, "crop"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 411
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v6

    .line 412
    .local v6, uri:Landroid/net/Uri;
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.camera.action.CROP"

    invoke-direct {v7, v8, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v8, 0x200

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage;->getData()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    .line 415
    .local v3, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    const-string v8, "output"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    if-nez v7, :cond_0

    .line 416
    const-string v7, "return-data"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 418
    :cond_0
    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 419
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 465
    .end local v3           #intent:Landroid/content/Intent;
    .end local v6           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 421
    :cond_1
    const/4 v5, 0x0

    .line 422
    .local v5, needThread:Z
    instance-of v7, p1, Lcom/android/gallery3d/data/LocalImage;

    if-eqz v7, :cond_2

    move-object v4, p1

    .line 423
    check-cast v4, Lcom/android/gallery3d/data/LocalImage;

    .line 424
    .local v4, localImage:Lcom/android/gallery3d/data/LocalImage;
    invoke-virtual {v4}, Lcom/android/gallery3d/data/LocalImage;->getRotation()I

    move-result v7

    if-eqz v7, :cond_2

    .line 425
    const/4 v5, 0x1

    .line 429
    .end local v4           #localImage:Lcom/android/gallery3d/data/LocalImage;
    :cond_2
    if-eqz v5, :cond_3

    .line 430
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 431
    .local v1, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 432
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/android/gallery3d/app/AlbumPage$3;

    invoke-direct {v8, p0, p1, v0, v1}, Lcom/android/gallery3d/app/AlbumPage$3;-><init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/data/MediaItem;Landroid/app/Activity;Landroid/app/ProgressDialog;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 454
    .end local v1           #dlg:Landroid/app/ProgressDialog;
    :cond_3
    const/4 v6, 0x0

    .line 455
    .restart local v6       #uri:Landroid/net/Uri;
    instance-of v7, p1, Lcom/android/gallery3d/data/LocalImage;

    if-eqz v7, :cond_4

    move-object v7, p1

    .line 456
    check-cast v7, Lcom/android/gallery3d/data/LocalImage;

    invoke-static {v0, v7}, Lcom/android/gallery3d/util/GalleryUtils;->getRotatedUri(Landroid/content/Context;Lcom/android/gallery3d/data/LocalImage;)Landroid/net/Uri;

    move-result-object v6

    .line 458
    :cond_4
    if-nez v6, :cond_5

    .line 459
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    .line 461
    :cond_5
    const/4 v7, -0x1

    new-instance v8, Landroid/content/Intent;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 462
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private onSingleTapUp(I)V
    .locals 5
    .parameter "slotIndex"

    .prologue
    .line 334
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    if-nez v1, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;

    invoke-interface {v1, p1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 337
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    .line 338
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 339
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 340
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsSource:Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->findIndex(I)I

    .line 341
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0

    .line 349
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    .line 350
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setPressedUp()V

    .line 351
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xb4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private onUp(Z)V
    .locals 2
    .parameter "followedByLongPress"

    .prologue
    .line 325
    if-eqz p1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    .line 331
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setPressedUp()V

    goto :goto_0
.end method

.method private onUpPressed()V
    .locals 3

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 311
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mParentMediaSetString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 313
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 314
    const-string v1, "media-path"

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mParentMediaSetString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private pickPhoto(I)V
    .locals 4
    .parameter

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    if-nez v0, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_0

    .line 363
    invoke-static {}, Lcom/android/gallery3d/data/MediaObject;->isLockEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getLockState()I

    move-result v1

    if-lez v1, :cond_2

    .line 365
    iput p1, p0, Lcom/android/gallery3d/app/AlbumPage;->mPickedPhotoIndex:I

    .line 366
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/AlbumPage;->popupPasswordPad(I)V

    goto :goto_0

    .line 370
    :cond_2
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mGetContent:Z

    if-eqz v1, :cond_3

    .line 371
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/AlbumPage;->onGetContent(Lcom/android/gallery3d/data/MediaItem;)V

    goto :goto_0

    .line 375
    :cond_3
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 376
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSetWallpaper:Z

    if-nez v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0xb4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 380
    :cond_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 381
    const-string v2, "index-hint"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 382
    const-string v2, "open-animation-rect"

    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 384
    const-string v2, "media-set-path"

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v2, "media-item-path"

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSetWallpaper:Z

    if-eqz v0, :cond_5

    .line 389
    const-string v0, "key-set-wallpaper"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 390
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/PhotoPage;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private setLoadingBit(I)V
    .locals 1
    .parameter "loadTaskBit"

    .prologue
    .line 1292
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingBits:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingBits:I

    .line 1293
    return-void
.end method

.method private showDetails()V
    .locals 4

    .prologue
    .line 865
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z

    .line 866
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    if-nez v0, :cond_0

    .line 867
    new-instance v0, Lcom/android/gallery3d/ui/DetailsHelper;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsSource:Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/DetailsHelper;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    .line 868
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    new-instance v1, Lcom/android/gallery3d/app/AlbumPage$9;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumPage$9;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/DetailsHelper;->setCloseListener(Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;)V

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->show()V

    .line 875
    return-void
.end method

.method private updateCount()V
    .locals 0

    .prologue
    .line 2401
    return-void
.end method


# virtual methods
.method public doCluster(I)V
    .locals 4
    .parameter

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 524
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/FilterUtils;->newClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 525
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 526
    const-string v2, "media-path"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowClusterMenu:Z

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 529
    const-string v2, "set-title"

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v2, "set-subtitle"

    invoke-static {v0, p1}, Lcom/android/gallery3d/app/GalleryActionBar;->getClusterByTypeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/AlbumSetPage;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 537
    return-void
.end method

.method protected onBackPressed()V
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z

    if-eqz v0, :cond_0

    .line 299
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->hideDetails()V

    .line 307
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 305
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->onUpPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 6
    .parameter "data"
    .parameter "restoreState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 541
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 542
    const v2, 0x3e99999a

    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->meterToPixel(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mUserDistance:F

    .line 543
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v2, Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getIntentType()Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    move-result-object v2

    iget v2, v2, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mType:I

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsVideo:Z

    .line 544
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->initializeViews(Landroid/os/Bundle;)V

    .line 545
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->initializeData(Landroid/os/Bundle;)V

    .line 546
    const-string v2, "get-content"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mGetContent:Z

    .line 547
    const-string v2, "key-set-wallpaper"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSetWallpaper:Z

    .line 548
    const-string v2, "cluster-menu"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowClusterMenu:Z

    .line 549
    new-instance v2, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;-><init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/app/AlbumPage$1;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsSource:Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;

    .line 550
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 552
    .local v1, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    .line 555
    const-string v2, "auto-select-all"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 556
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->selectAll()V

    .line 559
    :cond_0
    const-string v2, "no-open-center"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mNoOpenCenter:Z

    .line 562
    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mNoOpenCenter:Z

    if-nez v2, :cond_1

    .line 563
    const-string v2, "set-center"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 564
    .local v0, center:[I
    if-eqz v0, :cond_1

    .line 565
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mOpenCenter:Lcom/android/gallery3d/ui/RelativePosition;

    aget v4, v0, v4

    aget v3, v0, v3

    invoke-virtual {v2, v4, v3}, Lcom/android/gallery3d/ui/RelativePosition;->setAbsolutePosition(II)V

    .line 566
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mOpenCenter:Lcom/android/gallery3d/ui/RelativePosition;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/SlotView;->startScatteringAnimation(Lcom/android/gallery3d/ui/RelativePosition;)V

    .line 570
    .end local v0           #center:[I
    :cond_1
    new-instance v2, Lcom/android/gallery3d/app/AlbumPage$5;

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/app/AlbumPage$5;-><init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    .line 629
    return-void

    .end local v1           #context:Landroid/content/Context;
    :cond_2
    move v2, v4

    .line 543
    goto :goto_0
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 8
    .parameter

    .prologue
    const v6, 0x7f09015b

    const v5, 0x7f090158

    const/16 v7, 0x8

    const/4 v1, 0x1

    .line 886
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 887
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v2

    .line 888
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 892
    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 893
    iget v4, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    packed-switch v4, :pswitch_data_0

    .line 905
    const v3, 0x7f110005

    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 906
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    .line 908
    const v3, 0x7f0d0195

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlideshowMenuItem:Landroid/view/MenuItem;

    .line 909
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->checkSlideshowMenuItem()V

    .line 911
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MIDDLE_SMALL:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v3, v4, v5}, Lcom/android/gallery3d/common/Utils;->truncateString(Ljava/lang/String;FFLandroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object v0

    .line 932
    :goto_0
    invoke-virtual {v2}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 933
    invoke-virtual {v2, v7}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 934
    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 935
    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setActionModeHeaderHidden(Z)V

    .line 936
    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setEnabledBackWhenOverlay(Z)V

    .line 938
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    const v3, 0x7f0d0194

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/ActionModeHandler;->findMenuItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 940
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->bounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/GLView;->bounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ge v0, v4, :cond_3

    move v0, v1

    .line 941
    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 943
    if-eqz v0, :cond_4

    .line 944
    invoke-virtual {v2, v7}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 951
    :cond_0
    :goto_2
    return v1

    .line 917
    :pswitch_0
    const v4, 0x7f110008

    invoke-virtual {v0, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 918
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    if-ne v0, v1, :cond_1

    const v0, 0x7f0a01d8

    :goto_3
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 919
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " > "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v4, 0x7f0a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 920
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    .line 922
    :goto_4
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MIDDLE_SMALL:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v4, v5, v6}, Lcom/android/gallery3d/common/Utils;->truncateString(Ljava/lang/String;FFLandroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object v0

    .line 925
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 928
    const v3, 0x7f0d0197

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 918
    :cond_1
    const v0, 0x7f0a01d9

    goto :goto_3

    .line 920
    :cond_2
    const-string v0, ""

    goto :goto_4

    .line 940
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 946
    :cond_4
    const/16 v0, 0x18

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 947
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 893
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 700
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onDestroy()V

    .line 701
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;->setLoadingListener(Lcom/android/gallery3d/app/LoadingListener;)V

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    if-eqz v0, :cond_1

    .line 705
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->setSelectionListener(Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;)V

    .line 707
    :cond_1
    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSmartLayout:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    .line 709
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->destroy()V

    .line 710
    return-void
.end method

.method public onHudViewClicked(ILjava/lang/Object;)Z
    .locals 2
    .parameter "id"
    .parameter "arg"

    .prologue
    .line 2371
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 2372
    .local v0, context:Landroid/content/Context;
    packed-switch p1, :pswitch_data_0

    .line 2391
    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 2376
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage;->onBackPressed()V

    goto :goto_0

    .line 2379
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/AlbumPage;->sharedByEmail(Landroid/content/Context;)Z

    goto :goto_0

    .line 2382
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/app/AlbumPage;->deleteSelectedObject(ILjava/lang/Object;)V

    goto :goto_0

    .line 2385
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage;->onHudViewSelect()V

    goto :goto_0

    .line 2388
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->onHudViewShare(I)V

    goto :goto_0

    .line 2372
    nop

    :pswitch_data_0
    .packed-switch 0x200
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 969
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1148
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/AlbumPage;->popupPasswordPadIfNeeded(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1149
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectedMenuItem:Landroid/view/MenuItem;

    move v0, v1

    .line 1156
    :goto_0
    return v0

    .line 971
    :sswitch_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->onUpPressed()V

    move v0, v1

    .line 972
    goto :goto_0

    .line 975
    :sswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    move v0, v1

    .line 976
    goto :goto_0

    .line 978
    :sswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 979
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    move v0, v1

    .line 980
    goto :goto_0

    .line 987
    :sswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;

    invoke-interface {v0, v2}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;->isActive(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 988
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;

    invoke-interface {v0, v2}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 990
    :goto_1
    if-nez v0, :cond_0

    .line 991
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mSmartLayout:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    if-eqz v3, :cond_0

    .line 992
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mSmartLayout:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mDataLoader:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$3200(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    move-result-object v3

    .line 993
    if-eqz v3, :cond_0

    .line 994
    invoke-virtual {v3, v2}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 998
    :cond_0
    if-nez v0, :cond_1

    .line 999
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v3, v2, v1}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    .line 1000
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1001
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaItem;

    .line 1004
    :cond_1
    if-eqz v0, :cond_2

    .line 1005
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1006
    const-string v4, "index-hint"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1007
    const-string v2, "media-set-path"

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    const-string v2, "media-item-path"

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    const-string v0, "key-slideshow"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1010
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/PhotoPage;

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v4, v3}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    :cond_2
    move v0, v1

    .line 1012
    goto/16 :goto_0

    .line 1015
    :sswitch_4
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z

    if-eqz v0, :cond_3

    .line 1016
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->hideDetails()V

    :goto_2
    move v0, v1

    .line 1020
    goto/16 :goto_0

    .line 1018
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->showDetails()V

    goto :goto_2

    .line 1027
    :sswitch_5
    new-instance v0, Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mSharedSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v0, v3, v4}, Lcom/android/gallery3d/ui/MenuExecutor;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    .line 1028
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    .line 1029
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mSrcRootDirPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    .line 1030
    new-instance v4, Lcom/android/gallery3d/app/AlbumPage$10;

    invoke-direct {v4, p0, v3}, Lcom/android/gallery3d/app/AlbumPage$10;-><init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/data/MediaSet;)V

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/ui/MenuExecutor;->setRequestArgFetcher(Lcom/android/gallery3d/ui/MenuExecutor$RequestArgFetcher;)V

    .line 1053
    new-instance v4, Lcom/android/gallery3d/app/AlbumPage$11;

    invoke-direct {v4, p0, v3, v0}, Lcom/android/gallery3d/app/AlbumPage$11;-><init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/ui/MenuExecutor;)V

    .line 1080
    const v3, 0x7f0d0197

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    :cond_4
    :goto_3
    move v0, v2

    .line 1156
    goto/16 :goto_0

    .line 1084
    :sswitch_6
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const v3, 0x7f0d0193

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1085
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    .line 1086
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1087
    new-instance v5, Landroid/widget/PopupMenu;

    invoke-direct {v5, v3, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1088
    invoke-virtual {v5}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 1089
    const v3, 0x7f0a01d7

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v1, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1090
    const v1, 0x7f0a01d6

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1091
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$12;

    invoke-direct {v0, p0, v4}, Lcom/android/gallery3d/app/AlbumPage$12;-><init>(Lcom/android/gallery3d/app/AlbumPage;Landroid/content/res/Resources;)V

    invoke-virtual {v5, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1118
    invoke-virtual {v5}, Landroid/widget/PopupMenu;->show()V

    goto :goto_3

    .line 1123
    :sswitch_7
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/AlbumPage;->popupPasswordPadIfNeeded(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1124
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectedMenuItem:Landroid/view/MenuItem;

    move v0, v1

    .line 1125
    goto/16 :goto_0

    .line 1127
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->getDragItemPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1128
    new-instance v4, Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v4, v0, v5}, Lcom/android/gallery3d/ui/MenuExecutor;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    .line 1130
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    if-le v0, v1, :cond_6

    .line 1131
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x7f10

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 1142
    :goto_4
    invoke-virtual {v4, p1, v0, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    move v0, v1

    .line 1143
    goto/16 :goto_0

    .line 1134
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/Path;

    .line 1135
    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->getObject()Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    .line 1136
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_7

    .line 1137
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0a01d2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1139
    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0a01cf

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_8
    move-object v0, v3

    goto/16 :goto_1

    .line 969
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0d0192 -> :sswitch_7
        0x7f0d0193 -> :sswitch_6
        0x7f0d0194 -> :sswitch_2
        0x7f0d0195 -> :sswitch_3
        0x7f0d0197 -> :sswitch_5
        0x7f0d01aa -> :sswitch_4
        0x7f0d01af -> :sswitch_1
    .end sparse-switch
.end method

.method public onLongTap(III)V
    .locals 12
    .parameter "slotIndex"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v11, 0x0

    .line 468
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mGetContent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSetWallpaper:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    if-eqz v0, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v7

    .line 470
    .local v7, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v7, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 472
    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v8

    .line 473
    .local v8, path:Lcom/android/gallery3d/data/Path;
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, v8}, Lcom/android/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/android/gallery3d/data/Path;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 474
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, v8}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 476
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsSource:Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->findIndex(I)I

    .line 477
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 480
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->initDragBitmap()V

    .line 481
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->getAlbumEntry(I)Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v2

    .line 482
    .local v2, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v9

    .line 483
    .local v9, r:Landroid/graphics/Rect;
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object v1, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;-><init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;IIII)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDragBuilder:Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;

    .line 484
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->getView()Landroid/view/View;

    move-result-object v10

    .line 485
    .local v10, view:Landroid/view/View;
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$4;

    invoke-direct {v0, p0, v8}, Lcom/android/gallery3d/app/AlbumPage$4;-><init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/data/Path;)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 500
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDragBuilder:Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;

    const/4 v1, 0x0

    invoke-virtual {v10, v11, v0, v11, v1}, Landroid/view/View;->startDragMz(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 680
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onPause()V

    .line 681
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    .line 683
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setSlotFilter(Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 685
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->pause()V

    .line 686
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;->pause()V

    .line 687
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->pause()V

    .line 688
    invoke-static {}, Lcom/android/gallery3d/ui/DetailsHelper;->pause()V

    .line 690
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 692
    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 693
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/AlbumPage;->clearLoadingBit(I)V

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->pause()V

    .line 696
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 633
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 634
    iput-boolean v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    .line 636
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v2

    const-string v3, "resume_animation"

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    .line 637
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    if-eqz v2, :cond_0

    .line 638
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setSlotFilter(Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 639
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mPositionProvider:Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->setPositionProvider(Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;)V

    .line 640
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->start()V

    .line 643
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/AlbumPage;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 645
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 647
    .local v1, path:Lcom/android/gallery3d/data/Path;
    const/4 v0, 0x0

    .line 648
    .local v0, enableHomeButton:Z
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Lcom/android/gallery3d/app/GalleryActionBar;->setDisplayOptions(ZZ)V

    .line 651
    invoke-direct {p0, v4}, Lcom/android/gallery3d/app/AlbumPage;->setLoadingBit(I)V

    .line 652
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;->resume()V

    .line 653
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->resume()V

    .line 655
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->resume()V

    .line 656
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/ActionModeHandler;->resume()V

    .line 657
    iget-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mInitialSynced:Z

    if-nez v2, :cond_1

    .line 658
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/AlbumPage;->setLoadingBit(I)V

    .line 659
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v2, p0}, Lcom/android/gallery3d/data/MediaSet;->requestSync(Lcom/android/gallery3d/data/MediaSet$SyncListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 663
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->updateCount()V

    .line 669
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 670
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 671
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/GalleryActionBar;->show()V

    .line 673
    :cond_2
    iget-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsVideo:Z

    if-nez v2, :cond_3

    .line 674
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 676
    :cond_3
    return-void
.end method

.method public onSelectionChange(Lcom/android/gallery3d/data/Path;Z)V
    .locals 2
    .parameter "path"
    .parameter "selected"

    .prologue
    .line 1257
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 1258
    .local v0, count:I
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    if-eqz v1, :cond_0

    .line 1259
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v1, v0}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    .line 1260
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionButtonInActionMode:Lcom/meizu/widget/SelectionButton;

    if-eqz v1, :cond_1

    .line 1261
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionButtonInActionMode:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v1, v0}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    .line 1262
    :cond_1
    return-void
.end method

.method public onSelectionModeChange(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1218
    packed-switch p1, :pswitch_data_0

    .line 1247
    :goto_0
    return-void

    .line 1220
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->startActionMode()Landroid/view/ActionMode;

    goto :goto_0

    .line 1227
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->finishActionMode()V

    .line 1228
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SelectionButton;->setAllSelected(Z)V

    .line 1229
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/SelectionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1230
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionButtonInActionMode:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SelectionButton;->setAllSelected(Z)V

    .line 1231
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionButtonInActionMode:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/SelectionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1234
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 1235
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 1236
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 1240
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 1241
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v0, v3}, Lcom/meizu/widget/SelectionButton;->setAllSelected(Z)V

    .line 1242
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionButtonInActionMode:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v0, v3}, Lcom/meizu/widget/SelectionButton;->setAllSelected(Z)V

    .line 1243
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 1218
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x7

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1161
    packed-switch p1, :pswitch_data_0

    .line 1215
    :cond_0
    :goto_0
    return-void

    .line 1164
    :pswitch_0
    if-eqz p3, :cond_0

    .line 1165
    const-string v0, "photo-index"

    invoke-virtual {p3, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mFocusIndex:I

    .line 1166
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mFocusIndex:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setCenterIndex(I)V

    goto :goto_0

    .line 1170
    :pswitch_1
    if-eqz p3, :cond_0

    .line 1171
    const-string v0, "return-index-hint"

    invoke-virtual {p3, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mFocusIndex:I

    .line 1172
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mFocusIndex:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->makeSlotVisible(I)V

    .line 1173
    if-ne p2, v4, :cond_0

    if-eqz p3, :cond_0

    .line 1174
    const-string v0, "copy-move-set-path"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1175
    if-eqz v0, :cond_0

    .line 1176
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1182
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->startRisingAnimation()V

    goto :goto_0

    .line 1186
    :pswitch_3
    if-ne p2, v4, :cond_0

    if-eqz p3, :cond_0

    .line 1187
    const-string v0, "copy-move-set-path"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1188
    if-eqz v0, :cond_0

    .line 1189
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1195
    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/app/AlbumPage;->onPasswordPadReturn(I)V

    .line 1196
    if-ne p2, v4, :cond_1

    .line 1197
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mPickedPhotoIndex:I

    if-ltz v0, :cond_1

    .line 1198
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mPickedPhotoIndex:I

    invoke-virtual {v1, v2, v3, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1201
    :cond_1
    iput v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mPickedPhotoIndex:I

    goto :goto_0

    .line 1205
    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/app/AlbumPage;->onPasswordPadReturn(I)V

    .line 1206
    if-ne p2, v4, :cond_2

    .line 1207
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectedMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 1208
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectedMenuItem:Landroid/view/MenuItem;

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 1211
    :cond_2
    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectedMenuItem:Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1161
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onSyncDone(Lcom/android/gallery3d/data/MediaSet;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1266
    const-string v0, "AlbumPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSyncDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/gallery3d/app/AlbumPage$13;

    invoke-direct {v1, p0, p2}, Lcom/android/gallery3d/app/AlbumPage$13;-><init>(Lcom/android/gallery3d/app/AlbumPage;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1289
    return-void
.end method
