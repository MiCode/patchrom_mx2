.class public Lcom/android/gallery3d/app/PhotoPage;
.super Lcom/android/gallery3d/app/ActivityState;
.source "PhotoPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/AppBridge$Server;
.implements Lcom/android/gallery3d/app/OrientationManager$Listener;
.implements Lcom/android/gallery3d/ui/PhotoView$Listener;
.implements Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/PhotoPage$GetBmpForWallPaperTask;,
        Lcom/android/gallery3d/app/PhotoPage$MyDetailsSource;,
        Lcom/android/gallery3d/app/PhotoPage$PreparePhotoFallback;,
        Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;,
        Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;,
        Lcom/android/gallery3d/app/PhotoPage$Model;
    }
.end annotation


# static fields
.field private static final LIGHTBAR_SIZE:I


# instance fields
.field private mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

.field private volatile mActionBarAllowed:Z

.field private mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

.field private mAppBridge:Lcom/android/gallery3d/app/AppBridge;

.field private mAppBrightness:I

.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mBtnClickListener:Landroid/view/View$OnClickListener;

.field private mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

.field private mCurrentIndex:I

.field private mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

.field private mDLNADeviceAdapter:Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter",
            "<",
            "Landroid/media/dlna/DlnaDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mDLNADeviceDialog:Landroid/app/AlertDialog;

.field private mDeleteIsFocus:Z

.field private mDeletePath:Lcom/android/gallery3d/data/Path;

.field private mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

.field private mDlnaBtn:Landroid/widget/ImageButton;

.field private mDlnaClickListener:Landroid/view/View$OnClickListener;

.field private mDlnaClient:Landroid/media/dlna/DlnaClient;

.field private mDlnaLocalDevice:Landroid/media/dlna/DlnaDevice;

.field private mDlnaNum:I

.field private mDlnaReceiver:Landroid/content/BroadcastReceiver;

.field private mDownX:I

.field private mDownY:I

.field private mFilmModeLandscapeItemName:Landroid/widget/TextView;

.field private mFilmModeLandscapeResSize:Landroid/widget/TextView;

.field private mFilmModePortraitItemName:Landroid/widget/TextView;

.field private mFilmModePortraitResSize:Landroid/widget/TextView;

.field private mFilter:Landroid/content/IntentFilter;

.field private mHandler:Landroid/os/Handler;

.field private mHasActivityResult:Z

.field private mHasCamera:Z

.field private mInfobarIndex:Landroid/widget/TextView;

.field private mInfobarItemName:Landroid/widget/TextView;

.field private mInfobarSetName:Landroid/widget/TextView;

.field private mInfobarSize:Landroid/widget/TextView;

.field private mInforBarCustomView:Landroid/view/View;

.field private mIntentType:I

.field private mIsActive:Z

.field private mIsChangeLight:Z

.field private mIsMenuVisible:Z

.field private mIsPortrait:Z

.field private mIsVideo:Z

.field private mItem:Lcom/android/gallery3d/data/MediaObject;

.field private mLandscapeFileModeLayout:Landroid/view/ViewGroup;

.field private mLastState:I

.field private mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

.field private mLightLayout:Landroid/widget/LinearLayout;

.field private mLightProgress:I

.field mLihghtView:Landroid/view/View;

.field private mLockSet:Lcom/android/gallery3d/data/FilterLockSet;

.field private mMaxSysLight:I

.field private mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

.field private mMenu:Landroid/view/Menu;

.field private mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

.field private mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

.field private mMinSysLight:I

.field private mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

.field private mMoveRangeHorizontal:I

.field private mMoveRangeVertical:I

.field private mNeedUpdateInfo:Z

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOldLightPro:I

.field private mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

.field private mOriginalSetPathString:Ljava/lang/String;

.field private mPendingSharePath:Lcom/android/gallery3d/data/Path;

.field private mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

.field private mRepeat:Z

.field private final mRootPane:Lcom/android/gallery3d/ui/GLView;

.field private mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

.field private mScreenNailSet:Lcom/android/gallery3d/data/SnailAlbum;

.field private mSeekListener:Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;

.field private mSelectionButton:Lcom/meizu/widget/SelectionButton;

.field private mSelectionButtonInActionMode:Lcom/meizu/widget/SelectionButton;

.field private mSelectionButtonListener:Landroid/view/View$OnClickListener;

.field private mSetPathString:Ljava/lang/String;

.field private mSetWallpaper:Z

.field private mSetWallpaperDialog:Landroid/app/ProgressDialog;

.field private mShareActionProvider:Landroid/widget/ShareActionProvider;

.field private mShowBars:Z

.field private mShowDetails:Z

.field private mShuffle:Z

.field private mSlideshow:Z

.field private mSlideshowRepeat:Landroid/widget/ImageButton;

.field private mSlideshowShuffle:Landroid/widget/ImageButton;

.field private mSystemBrightness:I

.field private mTreatBackAsUp:Z

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 179
    const/16 v0, 0x4b

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    sput v0, Lcom/android/gallery3d/app/PhotoPage;->LIGHTBAR_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;-><init>()V

    .line 206
    iput v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 209
    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBarAllowed:Z

    .line 217
    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mNeedUpdateInfo:Z

    .line 220
    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    .line 261
    iput v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBrightness:I

    .line 262
    iput v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mSystemBrightness:I

    .line 263
    iput v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mOldLightPro:I

    .line 264
    iput v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightProgress:I

    .line 265
    iput v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDownX:I

    .line 266
    iput v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDownY:I

    .line 269
    iput v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaNum:I

    .line 270
    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsChangeLight:Z

    .line 271
    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mUri:Landroid/net/Uri;

    .line 274
    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasCamera:Z

    .line 294
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$1;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    .line 865
    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaClient:Landroid/media/dlna/DlnaClient;

    .line 866
    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilter:Landroid/content/IntentFilter;

    .line 867
    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaReceiver:Landroid/content/BroadcastReceiver;

    .line 868
    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaLocalDevice:Landroid/media/dlna/DlnaDevice;

    .line 870
    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    .line 871
    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceDialog:Landroid/app/AlertDialog;

    .line 872
    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceAdapter:Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;

    .line 971
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$9;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$9;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaClickListener:Landroid/view/View$OnClickListener;

    .line 1222
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$11;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$11;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSeekListener:Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;

    .line 1461
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$12;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$12;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 2782
    return-void
.end method

.method static synthetic access$002(Lcom/android/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsMenuVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/FilterLockSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLockSet:Lcom/android/gallery3d/data/FilterLockSet;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/FilterDeleteSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/OrientationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/AppBridge;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateBars()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->wantBars()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->layoutSlideshowButton()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->layoutFilmText()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideLightLayout()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->layoutInforCustomView()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/app/PhotoPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->startSlideShow()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShuffle:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShuffle:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/app/PhotoPage;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mRepeat:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mRepeat:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/gallery3d/app/PhotoPage;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/gallery3d/app/PhotoPage;)Lcom/meizu/widget/SelectionButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButtonInActionMode:Lcom/meizu/widget/SelectionButton;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/gallery3d/app/PhotoPage;Lcom/meizu/widget/SelectionButton;)Lcom/meizu/widget/SelectionButton;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButtonInActionMode:Lcom/meizu/widget/SelectionButton;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/ActionModeHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/gallery3d/app/PhotoPage;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButtonListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/meizu/widget/SelectionButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/GLView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/GalleryActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/gallery3d/app/PhotoPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaNum:I

    return p1
.end method

.method static synthetic access$3500(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateDLNADevicesList()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/gallery3d/app/PhotoPage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->showDlnaButton(Z)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/gallery3d/app/PhotoPage;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/gallery3d/app/PhotoPage;)Landroid/media/dlna/DlnaClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaClient:Landroid/media/dlna/DlnaClient;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/DetailsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showDLNADlg()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceAdapter:Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/GalleryApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/gallery3d/app/PhotoPage;)Landroid/media/dlna/DlnaDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaLocalDevice:Landroid/media/dlna/DlnaDevice;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/gallery3d/app/PhotoPage;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/gallery3d/app/PhotoPage;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->dlnaPlay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/gallery3d/app/PhotoPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBrightness:I

    return v0
.end method

.method static synthetic access$4802(Lcom/android/gallery3d/app/PhotoPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBrightness:I

    return p1
.end method

.method static synthetic access$4900(Lcom/android/gallery3d/app/PhotoPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMinSysLight:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/gallery3d/app/PhotoPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMaxSysLight:I

    return v0
.end method

.method static synthetic access$5102(Lcom/android/gallery3d/app/PhotoPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightProgress:I

    return p1
.end method

.method static synthetic access$5200(Lcom/android/gallery3d/app/PhotoPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->showDetails(I)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/gallery3d/app/PhotoPage;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetWallpaperDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/gallery3d/app/PhotoPage;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->getBmpForWallpaper()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideDetails()V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateInfo()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/gallery3d/app/PhotoPage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->showBars(Z)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/gallery3d/app/PhotoPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaObject;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mItem:Lcom/android/gallery3d/data/MediaObject;

    return-object v0
.end method

.method private canDoSlideShow()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 850
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-nez v1, :cond_1

    .line 859
    :cond_0
    :goto_0
    return v0

    .line 853
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 856
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/gallery3d/data/MtpSource;->isMtpPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 859
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canShowBars()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1300
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    if-nez v1, :cond_1

    .line 1304
    :cond_0
    :goto_0
    return v0

    .line 1302
    :cond_1
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBarAllowed:Z

    if-eqz v1, :cond_0

    .line 1304
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private dlnaInit(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 875
    const/16 v0, -0xa

    .line 876
    const-string v1, "LocalDevice"

    .line 877
    new-instance v2, Landroid/media/dlna/DlnaDevice;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Landroid/media/dlna/DlnaDevice;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaLocalDevice:Landroid/media/dlna/DlnaDevice;

    .line 883
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    check-cast v0, Lcom/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryAppImpl;->getDlnaClient()Landroid/media/dlna/DlnaClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaClient:Landroid/media/dlna/DlnaClient;

    .line 887
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(I)I

    move-result v1

    .line 888
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const v2, 0x7f0d0010

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 889
    new-instance v2, Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    .line 890
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 891
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 892
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 893
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setId(I)V

    .line 894
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1, v5, v1, v5}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 897
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 899
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 900
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09021f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 901
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090220

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 902
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 905
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilter:Landroid/content/IntentFilter;

    .line 906
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "media.dlnaservice.action.devicesChanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 907
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$7;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$7;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaReceiver:Landroid/content/BroadcastReceiver;

    .line 926
    return-void
.end method

.method private dlnaOnPause()V
    .locals 3

    .prologue
    .line 941
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    .line 942
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 943
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 944
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 946
    :cond_0
    return-void
.end method

.method private dlnaOnResume()V
    .locals 3

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    .line 930
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 932
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    check-cast v0, Lcom/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryAppImpl;->getRemoteDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 933
    if-nez v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020068

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 938
    :goto_0
    return-void

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020069

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private dlnaPlay(Ljava/lang/String;)V
    .locals 2
    .parameter "localPath"

    .prologue
    .line 949
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaClient:Landroid/media/dlna/DlnaClient;

    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$8;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/app/PhotoPage$8;-><init>(Lcom/android/gallery3d/app/PhotoPage;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/dlna/DlnaClient;->stop(Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z

    .line 969
    return-void
.end method

.method private enterState(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 2638
    iget v3, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    if-ne p1, v3, :cond_1

    .line 2727
    :cond_0
    :goto_0
    return-void

    .line 2640
    :cond_1
    const/4 v1, 0x0

    .line 2642
    .local v1, needInvalidActionbar:Z
    iget v3, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    packed-switch v3, :pswitch_data_0

    .line 2666
    :goto_1
    :pswitch_0
    iget v3, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    iput v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mLastState:I

    .line 2667
    iput p1, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    .line 2669
    iget v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mLastState:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaNum:I

    if-lez v3, :cond_2

    .line 2670
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateExtraButton()V

    .line 2674
    :cond_2
    packed-switch p1, :pswitch_data_1

    .line 2719
    :goto_2
    if-eqz v1, :cond_0

    .line 2720
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$21;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/PhotoPage$21;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2646
    :pswitch_1
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/PhotoView;->leaveWallpaperMode()V

    goto :goto_1

    .line 2655
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoPage;->setFilmTextShow(Z)V

    .line 2656
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 2657
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mInforBarCustomView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 2658
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateInfo()V

    .line 2659
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/ui/PhotoView;->setDoubleTapEnabled(Z)V

    goto :goto_1

    .line 2662
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoPage;->showSlideshowButtons(Z)V

    goto :goto_1

    .line 2678
    :pswitch_4
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars()V

    goto :goto_2

    .line 2681
    :pswitch_5
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showBars()V

    .line 2682
    const/4 v1, 0x1

    .line 2683
    goto :goto_2

    .line 2685
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->setFilmTextShow(Z)V

    .line 2686
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->layoutFilmText()V

    .line 2687
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/GLView;->bounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/GLView;->bounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v3, v4, :cond_3

    .line 2688
    .local v0, landscape:Z
    :goto_3
    if-eqz v0, :cond_4

    .line 2689
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 2694
    :goto_4
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateInfo()V

    .line 2695
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/ui/PhotoView;->setDoubleTapEnabled(Z)V

    goto :goto_2

    .end local v0           #landscape:Z
    :cond_3
    move v0, v2

    .line 2687
    goto :goto_3

    .line 2691
    .restart local v0       #landscape:Z
    :cond_4
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 2692
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    goto :goto_4

    .line 2698
    .end local v0           #landscape:Z
    :pswitch_7
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/PhotoView;->enterWallpaperMode()V

    .line 2699
    const/4 v1, 0x1

    .line 2700
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoPage;->showDlnaButton(Z)V

    goto/16 :goto_2

    .line 2703
    :pswitch_8
    const/4 v1, 0x1

    .line 2704
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoPage;->showDlnaButton(Z)V

    goto/16 :goto_2

    .line 2707
    :pswitch_9
    const/4 v1, 0x1

    .line 2708
    goto/16 :goto_2

    .line 2710
    :pswitch_a
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showBars()V

    goto/16 :goto_2

    .line 2714
    :pswitch_b
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showBars()V

    goto/16 :goto_2

    .line 2642
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 2674
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private getBmpForWallpaper()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 2817
    new-instance v2, Lcom/android/gallery3d/app/PhotoPage$GetBmpForWallPaperTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/app/PhotoPage$GetBmpForWallPaperTask;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V

    .line 2818
    .local v2, task:Lcom/android/gallery3d/app/PhotoPage$GetBmpForWallPaperTask;
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    .line 2819
    .local v1, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 2821
    :try_start_0
    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/GLRoot;->addOnGLIdleListener(Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2824
    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 2826
    :goto_0
    invoke-virtual {v2}, Lcom/android/gallery3d/app/PhotoPage$GetBmpForWallPaperTask;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2827
    .local v0, bitmap:Landroid/graphics/Bitmap;
    return-object v0

    .line 2822
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 2824
    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v3
.end method

.method private handleSingleTapUp()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1949
    iget v1, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 1992
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1953
    :pswitch_1
    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIntentType:I

    packed-switch v1, :pswitch_data_1

    .line 1955
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    .line 1965
    :goto_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    goto :goto_0

    .line 1959
    :pswitch_3
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    goto :goto_1

    .line 1962
    :pswitch_4
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    goto :goto_1

    .line 1968
    :pswitch_5
    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLastState:I

    if-ne v1, v4, :cond_1

    .line 1969
    invoke-direct {p0, v4}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    goto :goto_0

    .line 1971
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    .line 1972
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1976
    :pswitch_6
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    .line 1977
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    goto :goto_0

    .line 1980
    :pswitch_7
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    .line 1983
    :pswitch_8
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    goto :goto_0

    .line 1986
    :pswitch_9
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 1987
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    .line 1988
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    goto :goto_0

    .line 1949
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_9
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch

    .line 1953
    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private hideBars()V
    .locals 1

    .prologue
    .line 1275
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars(Z)V

    .line 1276
    return-void
.end method

.method private hideBars(Z)V
    .locals 3
    .parameter "useAnimation"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1278
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-nez v0, :cond_0

    .line 1289
    :goto_0
    return-void

    .line 1279
    :cond_0
    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 1280
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    if-eqz v0, :cond_1

    .line 1281
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->hide()V

    .line 1282
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoPage;->showDlnaButton(Z)V

    .line 1283
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoPage;->showSlideshowButtons(Z)V

    .line 1284
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 1285
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1288
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private hideDetails()V
    .locals 1

    .prologue
    .line 1823
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    .line 1824
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->hide()V

    .line 1825
    return-void
.end method

.method private hideLightLayout()V
    .locals 3

    .prologue
    .line 1213
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 1214
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1215
    .local v0, ani:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1216
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1217
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1219
    .end local v0           #ani:Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method private initBrightnessParams()V
    .locals 2

    .prologue
    .line 1183
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getSystemMaxBrightness()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMaxSysLight:I

    .line 1184
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getSystemMinBrightness()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMinSysLight:I

    .line 1185
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getAppBrightnessValue()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBrightness:I

    .line 1186
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getSystemBrightnessValue()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSystemBrightness:I

    .line 1187
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090208

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMoveRangeHorizontal:I

    .line 1188
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090209

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMoveRangeVertical:I

    .line 1189
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->initLightSeekBarProgress()V

    .line 1190
    return-void
.end method

.method private initButtons()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v7, -0x2

    .line 2932
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0d0010

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2934
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 2938
    invoke-static {v8}, Lcom/android/camera/Util;->dpToPixel(I)I

    move-result v2

    .line 2939
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2940
    new-instance v4, Landroid/widget/ImageButton;

    invoke-direct {v4, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    .line 2941
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setId(I)V

    .line 2942
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02004c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2943
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v4, v11}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2944
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2945
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v4, v2, v9, v2, v9}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 2946
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2948
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2949
    new-instance v4, Landroid/widget/ImageButton;

    invoke-direct {v4, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    .line 2950
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setId(I)V

    .line 2951
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020049

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2952
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v4, v11}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2953
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2954
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v4, v2, v9, v2, v9}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 2955
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2958
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09027a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2960
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2961
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitItemName:Landroid/widget/TextView;

    .line 2962
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitItemName:Landroid/widget/TextView;

    int-to-float v5, v2

    invoke-virtual {v4, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2963
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitItemName:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 2964
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitItemName:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2965
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitItemName:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2966
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitItemName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 2967
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitItemName:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MIDDLE_SMALL:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2968
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitItemName:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09027c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 2969
    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2970
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitItemName:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2972
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2973
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitResSize:Landroid/widget/TextView;

    .line 2974
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitResSize:Landroid/widget/TextView;

    int-to-float v2, v2

    invoke-virtual {v1, v9, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2975
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitResSize:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 2976
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitResSize:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2977
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitResSize:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2979
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090281

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2980
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f04004c

    invoke-virtual {v1, v3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLandscapeFileModeLayout:Landroid/view/ViewGroup;

    .line 2981
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2982
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mLandscapeFileModeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2983
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mLandscapeFileModeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2984
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLandscapeFileModeLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0d00ff

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModeLandscapeItemName:Landroid/widget/TextView;

    .line 2985
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLandscapeFileModeLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0d0100

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModeLandscapeResSize:Landroid/widget/TextView;

    .line 2986
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModeLandscapeItemName:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE_SMALL:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2987
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModeLandscapeItemName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 2989
    return-void
.end method

.method private initLightLayout()V
    .locals 4

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLihghtView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1166
    const v1, 0x7f040008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLihghtView:Landroid/view/View;

    .line 1169
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090206

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1170
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1171
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1172
    const/16 v1, 0x15

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1173
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLihghtView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1175
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLihghtView:Landroid/view/View;

    const v1, 0x7f0d000e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightLayout:Landroid/widget/LinearLayout;

    .line 1176
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLihghtView:Landroid/view/View;

    const v1, 0x7f0d000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/seekbar/VerSeekBar;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

    .line 1177
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSeekListener:Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setOnSeekBarChangeListener(Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;)V

    .line 1178
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setMax(I)V

    .line 1179
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->initLightSeekBarProgress()V

    .line 1180
    return-void
.end method

.method private layoutFilmText()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 3037
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 3071
    :goto_0
    return-void

    .line 3040
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->setFilmTextShow(Z)V

    .line 3045
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3047
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsPortrait:Z

    if-eqz v0, :cond_1

    .line 3050
    sget v0, Lcom/android/gallery3d/util/GalleryUtils;->STATUS_BAR_HEIGHT:I

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, v0

    .line 3051
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitItemName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3052
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3053
    invoke-virtual {v0, v4, v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3054
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitItemName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3057
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0901fc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v1, v0

    .line 3058
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitResSize:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3059
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3060
    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3061
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitResSize:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 3064
    :cond_1
    sget v0, Lcom/android/gallery3d/util/GalleryUtils;->STATUS_BAR_HEIGHT:I

    add-int/2addr v1, v0

    .line 3065
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLandscapeFileModeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3066
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3067
    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3068
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLandscapeFileModeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private layoutInforCustomView()V
    .locals 5

    .prologue
    const v4, 0x7f09027e

    const v2, 0x7f09027d

    const/4 v3, 0x0

    .line 2831
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2834
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsPortrait:Z

    if-eqz v0, :cond_1

    .line 2835
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090280

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2836
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2837
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarSetName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2838
    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2839
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarSetName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2841
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2842
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarItemName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2843
    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2844
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarItemName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2859
    :cond_0
    :goto_0
    return-void

    .line 2847
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09027f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2848
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2849
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarSetName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2850
    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2851
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarSetName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2853
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2854
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarItemName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2855
    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2856
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarItemName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private layoutSlideshowButton()V
    .locals 7

    .prologue
    const v6, 0x7f09021f

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/16 v3, 0xb

    const/4 v2, 0x0

    .line 2992
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    if-eq v0, v4, :cond_0

    .line 3034
    :goto_0
    return-void

    .line 2997
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaClient:Landroid/media/dlna/DlnaClient;

    invoke-virtual {v0}, Landroid/media/dlna/DlnaClient;->listPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 2998
    :goto_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsPortrait:Z

    if-eqz v0, :cond_3

    .line 3000
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3001
    if-eqz v1, :cond_2

    .line 3002
    invoke-virtual {v0, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3003
    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3008
    :goto_2
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090221

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v3, Lcom/android/gallery3d/util/GalleryUtils;->STATUS_BAR_HEIGHT:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 3010
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3012
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3013
    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3014
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090221

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/android/gallery3d/util/GalleryUtils;->STATUS_BAR_HEIGHT:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 3015
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 2997
    goto :goto_1

    .line 3005
    :cond_2
    invoke-virtual {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3006
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    .line 3018
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3019
    if-eqz v1, :cond_4

    .line 3020
    invoke-virtual {v0, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3021
    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3026
    :goto_3
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 3027
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3029
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3030
    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3031
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 3032
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 3023
    :cond_4
    invoke-virtual {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3024
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3
.end method

.method private onUpPressed()V
    .locals 4

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 1403
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    .line 1425
    :cond_0
    :goto_0
    return-void

    .line 1407
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1409
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v0, :cond_2

    .line 1411
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1412
    const-string v1, "media-path"

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    const-string v1, "parent-media-path"

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1419
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://media/external/file?bucketId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1421
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1422
    const-string v2, "vnd.android.cursor.dir/image"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1423
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static playVideo(Landroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2143
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 2144
    invoke-virtual {v3}, Landroid/content/Intent;->getMeizuFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    move v2, v0

    .line 2145
    :goto_0
    invoke-virtual {v3}, Landroid/content/Intent;->getMeizuFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_2

    .line 2146
    :goto_1
    if-eqz v2, :cond_0

    .line 2147
    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addMeizuFlags(I)Landroid/content/Intent;

    .line 2148
    const/16 v3, 0x80

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addMeizuFlags(I)Landroid/content/Intent;

    .line 2149
    const/16 v3, 0x10

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addMeizuFlags(I)Landroid/content/Intent;

    .line 2151
    :cond_0
    const-string v3, "isLockView"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2152
    const-string v2, "isSecurity"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2153
    const-string v0, "video/*"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "treat-up-as-back"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2156
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2161
    :goto_2
    return-void

    :cond_1
    move v2, v1

    .line 2144
    goto :goto_0

    :cond_2
    move v0, v1

    .line 2145
    goto :goto_1

    .line 2157
    :catch_0
    move-exception v0

    .line 2158
    const v0, 0x7f0a0167

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method private preparePhotoFallbackView()V
    .locals 3

    .prologue
    .line 2255
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    .line 2256
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$PreparePhotoFallback;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/gallery3d/app/PhotoPage$PreparePhotoFallback;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V

    .line 2257
    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 2260
    :try_start_0
    invoke-interface {v1, v0}, Lcom/android/gallery3d/ui/GLRoot;->addOnGLIdleListener(Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;)V

    .line 2261
    invoke-virtual {v0}, Lcom/android/gallery3d/app/PhotoPage$PreparePhotoFallback;->get()Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2263
    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 2265
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v1

    const-string v2, "resume_animation"

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2267
    return-void

    .line 2263
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    throw v0
.end method

.method private refreshHidingMessage()V
    .locals 0

    .prologue
    .line 1296
    return-void
.end method

.method private setCurrentPhotoByIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 2164
    if-nez p1, :cond_1

    .line 2170
    :cond_0
    :goto_0
    return-void

    .line 2165
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 2167
    .local v0, path:Lcom/android/gallery3d/data/Path;
    if-eqz v0, :cond_0

    .line 2168
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-interface {v1, v0, v2}, Lcom/android/gallery3d/app/PhotoPage$Model;->setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_0
.end method

.method private setFilmTextShow(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 2913
    if-eqz p1, :cond_1

    .line 2914
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsPortrait:Z

    if-eqz v0, :cond_0

    .line 2915
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitItemName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2916
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitResSize:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2917
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLandscapeFileModeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2928
    :goto_0
    return-void

    .line 2919
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitItemName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2920
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitResSize:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2921
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLandscapeFileModeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 2924
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitItemName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2925
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitResSize:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2926
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLandscapeFileModeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private setResult()V
    .locals 3

    .prologue
    .line 1428
    const/4 v0, 0x0

    .line 1429
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1430
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1431
    const-string v1, "return-index-hint"

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1433
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/app/PhotoPage;->setStateResult(ILandroid/content/Intent;)V

    .line 1434
    return-void
.end method

.method private showBars()V
    .locals 1

    .prologue
    .line 1251
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->showBars(Z)V

    .line 1252
    return-void
.end method

.method private showBars(Z)V
    .locals 2
    .parameter "useAnimation"

    .prologue
    const/4 v1, 0x1

    .line 1255
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v0, :cond_0

    .line 1272
    :goto_0
    return-void

    .line 1256
    :cond_0
    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 1257
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager;->unlockOrientation()V

    .line 1258
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    if-eqz v0, :cond_1

    .line 1259
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->show()V

    .line 1260
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mNeedUpdateInfo:Z

    if-eqz v0, :cond_1

    .line 1261
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateInfo()V

    .line 1264
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoPage;->showDlnaButton(Z)V

    .line 1265
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoPage;->showSlideshowButtons(Z)V

    .line 1267
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 1268
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1271
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    goto :goto_0
.end method

.method private showDLNADlg()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 979
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceAdapter:Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;

    if-nez v0, :cond_0

    .line 980
    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;

    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    new-array v2, v3, [Landroid/media/dlna/DlnaDevice;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;I)V

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceAdapter:Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    .line 984
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    const v2, 0x1030323

    invoke-direct {v1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 985
    const v0, 0x7f0a01c3

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 986
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceAdapter:Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;

    new-instance v2, Lcom/android/gallery3d/app/PhotoPage$10;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/PhotoPage$10;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1021
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceDialog:Landroid/app/AlertDialog;

    .line 1023
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateDLNADevicesList()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1024
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1028
    :goto_0
    return-void

    .line 1026
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/PhotoPage;->showDlnaButton(Z)V

    goto :goto_0
.end method

.method private showDetails(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 1828
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    .line 1829
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    if-nez v0, :cond_0

    .line 1830
    new-instance v0, Lcom/android/gallery3d/ui/DetailsHelper;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$MyDetailsSource;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/gallery3d/app/PhotoPage$MyDetailsSource;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/DetailsHelper;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    .line 1831
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$17;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/PhotoPage$17;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/DetailsHelper;->setCloseListener(Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;)V

    .line 1839
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/DetailsHelper;->setCurrentItem(Lcom/android/gallery3d/data/MediaItem;)V

    .line 1840
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/DetailsHelper;->reloadDetails(I)V

    .line 1841
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->show()V

    .line 1842
    return-void
.end method

.method private showDlnaButton(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 3093
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    .line 3124
    :cond_0
    :goto_0
    return-void

    .line 3095
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    xor-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 3097
    if-eqz p1, :cond_2

    .line 3098
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    const-wide/16 v3, 0xa

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3101
    :cond_2
    if-eqz p1, :cond_5

    .line 3102
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 3107
    :sswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 3108
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaClient:Landroid/media/dlna/DlnaClient;

    invoke-virtual {v0}, Landroid/media/dlna/DlnaClient;->listPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaNum:I

    .line 3109
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaNum:I

    if-lez v0, :cond_0

    .line 3110
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    check-cast v0, Lcom/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryAppImpl;->getRemoteDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 3111
    if-nez v0, :cond_4

    .line 3112
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    const v2, 0x7f020068

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3116
    :goto_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 3095
    goto :goto_1

    .line 3114
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    const v2, 0x7f020069

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2

    .line 3122
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 3102
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method private showLightLayout()V
    .locals 3

    .prologue
    .line 1204
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 1205
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1206
    .local v0, ani:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1207
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1208
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1210
    .end local v0           #ani:Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method private showSlideshowButtons(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 3075
    iget v1, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 3077
    const/4 v0, 0x4

    .line 3084
    .local v0, visibility:I
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 3085
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3087
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 3088
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3090
    :cond_1
    return-void

    .line 3080
    .end local v0           #visibility:I
    :pswitch_0
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .restart local v0       #visibility:I
    :goto_1
    goto :goto_0

    .end local v0           #visibility:I
    :cond_2
    const/4 v0, 0x4

    goto :goto_1

    .line 3075
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method private startSlideShow()V
    .locals 4

    .prologue
    .line 2730
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars()V

    .line 2731
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2732
    const-string v1, "media-set-path"

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/FilterDeleteSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2733
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 2734
    if-eqz v1, :cond_0

    .line 2735
    const-string v2, "media-item-path"

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2736
    :cond_0
    const-string v1, "photo-index"

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v2}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2737
    const-string v1, "repeat"

    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mRepeat:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2738
    const-string v1, "random-order"

    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mShuffle:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2739
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/SlideshowPage;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 2741
    return-void
.end method

.method private updateBars()V
    .locals 1

    .prologue
    .line 1320
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1321
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars()V

    .line 1323
    :cond_0
    return-void
.end method

.method private updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 6
    .parameter "photo"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 765
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v1, v3}, Lcom/android/gallery3d/app/PhotoPage$Model;->isCamera(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 766
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 767
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    .line 769
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getSystemBrightnessValue()I

    move-result v2

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/util/GalleryUtils;->setWindowBrightness(Landroid/view/Window;IZ)V

    .line 771
    invoke-static {v3}, Lcom/android/gallery3d/util/GalleryUtils;->setHasInitBrigtnessFlag(Z)V

    .line 785
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-ne v1, p1, :cond_5

    .line 820
    :cond_2
    :goto_1
    return-void

    .line 773
    :cond_3
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getHasInitBrigtnessFlag()Z

    move-result v1

    if-nez v1, :cond_1

    .line 774
    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBrightness:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 775
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->initGalleryBrightness(Landroid/content/Context;)V

    .line 776
    invoke-static {v4}, Lcom/android/gallery3d/util/GalleryUtils;->setHasInitBrigtnessFlag(Z)V

    .line 777
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->initBrightnessParams()V

    goto :goto_0

    .line 779
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBrightness:I

    invoke-static {v1, v2}, Lcom/android/gallery3d/util/GalleryUtils;->setWindowBrightness(Landroid/view/Window;I)V

    goto :goto_0

    .line 786
    :cond_5
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    .line 787
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_2

    .line 790
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    check-cast v1, Lcom/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/GalleryAppImpl;->getRemoteDeviceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 791
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v1, v3}, Lcom/android/gallery3d/app/PhotoPage$Model;->isCamera(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 793
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaClient:Landroid/media/dlna/DlnaClient;

    invoke-virtual {v1, v5}, Landroid/media/dlna/DlnaClient;->stop(Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z

    .line 794
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    check-cast v1, Lcom/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v1, v5}, Lcom/android/gallery3d/app/GalleryAppImpl;->setRemoteDeviceId(Ljava/lang/String;)V

    .line 802
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMenuOperations()V

    .line 803
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateTitle()V

    .line 804
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v1, :cond_7

    .line 805
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v2}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/DetailsHelper;->reloadDetails(I)V

    .line 807
    :cond_7
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8

    .line 808
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoPage;->updateShareURI(Lcom/android/gallery3d/data/Path;)V

    .line 814
    :cond_8
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 815
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 816
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateInfo()V

    goto/16 :goto_1

    .line 797
    :cond_9
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    check-cast v0, Lcom/android/gallery3d/data/LocalImage;

    .line 798
    .local v0, item:Lcom/android/gallery3d/data/LocalImage;
    iget-object v1, v0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoPage;->dlnaPlay(Ljava/lang/String;)V

    goto :goto_2

    .line 818
    .end local v0           #item:Lcom/android/gallery3d/data/LocalImage;
    :cond_a
    iput-boolean v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mNeedUpdateInfo:Z

    goto/16 :goto_1
.end method

.method private updateDLNADevicesList()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1032
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    check-cast v0, Lcom/android/gallery3d/app/GalleryAppImpl;

    .line 1034
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaClient:Landroid/media/dlna/DlnaClient;

    invoke-virtual {v1}, Landroid/media/dlna/DlnaClient;->listPlayers()Ljava/util/List;

    move-result-object v5

    .line 1035
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v3, :cond_0

    .line 1036
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/GalleryAppImpl;->setRemoteDeviceId(Ljava/lang/String;)V

    .line 1037
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020068

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    move v0, v2

    .line 1069
    :goto_0
    return v0

    .line 1041
    :cond_0
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaLocalDevice:Landroid/media/dlna/DlnaDevice;

    invoke-interface {v5, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1043
    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryAppImpl;->getRemoteDeviceId()Ljava/lang/String;

    move-result-object v6

    .line 1045
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceAdapter:Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;

    if-eqz v1, :cond_1

    .line 1046
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceAdapter:Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;

    invoke-virtual {v1, v5}, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;->setObjects(Ljava/util/List;)V

    .line 1047
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceAdapter:Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;->setSelection(I)V

    :cond_1
    move v4, v2

    .line 1050
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_5

    .line 1051
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/dlna/DlnaDevice;

    .line 1052
    iget-object v1, v1, Landroid/media/dlna/DlnaDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1053
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceAdapter:Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;

    if-eqz v1, :cond_2

    .line 1054
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceAdapter:Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;->setSelection(I)V

    :cond_2
    move v1, v3

    .line 1061
    :goto_2
    if-nez v1, :cond_3

    if-eqz v6, :cond_3

    .line 1062
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/GalleryAppImpl;->setRemoteDeviceId(Ljava/lang/String;)V

    .line 1063
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020068

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move v0, v3

    .line 1069
    goto :goto_0

    .line 1050
    :cond_4
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 1065
    :catch_0
    move-exception v0

    .line 1066
    const-string v1, "PhotoPage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDLNADeviceChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 1067
    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method private updateInfo()V
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 2862
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mInforBarCustomView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2910
    :goto_0
    return-void

    .line 2864
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    .line 2866
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getSize()J

    move-result-wide v3

    .line 2867
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v0

    .line 2868
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v1

    .line 2869
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v5

    rem-int/lit16 v5, v5, 0xb4

    if-eqz v5, :cond_5

    .line 2874
    :goto_1
    const-string v5, "%dx%d %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2876
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    if-eq v0, v8, :cond_2

    .line 2877
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-eqz v0, :cond_1

    .line 2878
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v0

    .line 2879
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2883
    :goto_2
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarIndex:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2885
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarItemName:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2887
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarSize:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2909
    :goto_3
    iput-boolean v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mNeedUpdateInfo:Z

    goto :goto_0

    .line 2881
    :cond_1
    const-string v0, "1/1"

    goto :goto_2

    .line 2889
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/FilterDeleteSet;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2890
    :goto_4
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090279

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09027c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MIDDLE_SMALL:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v3, v4, v5}, Lcom/android/gallery3d/common/Utils;->truncateString(Ljava/lang/String;FFLandroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object v0

    .line 2893
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-eqz v3, :cond_4

    .line 2894
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v3

    .line 2895
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2899
    :goto_5
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2900
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 2902
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitItemName:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2903
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitResSize:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2905
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModeLandscapeItemName:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2906
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModeLandscapeResSize:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 2889
    :cond_3
    const-string v0, ""

    goto/16 :goto_4

    .line 2897
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "1/1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_5
    move v9, v1

    move v1, v0

    move v0, v9

    goto/16 :goto_1
.end method

.method private updateMenuOperations()V
    .locals 3

    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_1

    .line 847
    :cond_0
    :goto_0
    return-void

    .line 836
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0d01b4

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 837
    if-eqz v0, :cond_2

    .line 838
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->canDoSlideShow()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 840
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v1

    .line 842
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    const-string v2, "image/*"

    invoke-static {v0, v2}, Lcom/android/gallery3d/util/GalleryUtils;->isEditorAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 843
    and-int/lit16 v0, v1, -0x201

    goto :goto_0
.end method

.method private updateShareURI(Lcom/android/gallery3d/data/Path;)V
    .locals 4
    .parameter

    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v0, :cond_1

    .line 747
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    .line 748
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaType(Lcom/android/gallery3d/data/Path;)I

    move-result v1

    .line 749
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 750
    invoke-static {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 751
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 752
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v1, v2}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 753
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v1, :cond_0

    .line 754
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Landroid/nfc/NfcAdapter;->setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V

    .line 757
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPendingSharePath:Lcom/android/gallery3d/data/Path;

    .line 762
    :goto_0
    return-void

    .line 760
    :cond_1
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPendingSharePath:Lcom/android/gallery3d/data/Path;

    goto :goto_0
.end method

.method private updateTitle()V
    .locals 2

    .prologue
    .line 823
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-nez v0, :cond_1

    .line 832
    :cond_0
    :goto_0
    return-void

    .line 824
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 826
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    if-eqz v1, :cond_0

    .line 827
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 828
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 830
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private wantBars()V
    .locals 1

    .prologue
    .line 1308
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showBars()V

    .line 1309
    :cond_0
    return-void
.end method


# virtual methods
.method public initLightSeekBarProgress()V
    .locals 4

    .prologue
    .line 1193
    const/4 v0, 0x0

    .line 1194
    .local v0, sysProgress:I
    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBrightness:I

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMinSysLight:I

    sub-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMaxSysLight:I

    iget v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mMinSysLight:I

    sub-int/2addr v2, v3

    div-int/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightProgress:I

    .line 1195
    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSystemBrightness:I

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMinSysLight:I

    sub-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMaxSysLight:I

    iget v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mMinSysLight:I

    sub-int/2addr v2, v3

    div-int v0, v1, v2

    .line 1196
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

    if-eqz v1, :cond_0

    .line 1197
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightProgress:I

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setProgress(I)V

    .line 1198
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setBreakPointLevel(I)V

    .line 1199
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->invalidate()V

    .line 1201
    :cond_0
    return-void
.end method

.method public lockOrientation()V
    .locals 2

    .prologue
    .line 2082
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2083
    return-void
.end method

.method public mzRecentDismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3165
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0, v2}, Lcom/android/gallery3d/app/PhotoPage$Model;->isCamera(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3166
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getHasInitBrigtnessFlag()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3167
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->initGalleryBrightness(Landroid/content/Context;)V

    .line 3168
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->setHasInitBrigtnessFlag(Z)V

    .line 3174
    :cond_0
    :goto_0
    return-void

    .line 3171
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getCurrentScreenBrightness()I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/util/GalleryUtils;->setWindowBrightness(Landroid/view/Window;IZ)V

    goto :goto_0
.end method

.method public mzRecentShow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3156
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getSystemBrightnessValue()I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/util/GalleryUtils;->setWindowBrightness(Landroid/view/Window;IZ)V

    .line 3159
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->saveGalleryBrightness(Landroid/content/Context;)V

    .line 3160
    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->setHasInitBrigtnessFlag(Z)V

    .line 3161
    return-void
.end method

.method public notifyScreenNailChanged()V
    .locals 2

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AppBridge;->attachScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/SnailItem;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 1458
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailSet:Lcom/android/gallery3d/data/SnailAlbum;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/SnailAlbum;->notifyChange()V

    .line 1459
    return-void
.end method

.method public onActionBarAllowed(Z)V
    .locals 0
    .parameter "allowed"

    .prologue
    .line 2094
    return-void
.end method

.method public onActionBarWanted()V
    .locals 2

    .prologue
    .line 2098
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2099
    return-void
.end method

.method public onActionMove(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter

    .prologue
    const/16 v10, 0x3e8

    const/4 v9, -0x1

    const/4 v3, 0x1

    const/16 v8, 0x9

    const/4 v2, 0x0

    .line 2004
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v2

    .line 2077
    :goto_0
    return v0

    .line 2008
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v3, :cond_2

    .line 2009
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 2010
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v2

    .line 2011
    goto :goto_0

    .line 2014
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 2015
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 2016
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDownX:I

    .line 2017
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDownY:I

    move v0, v2

    .line 2018
    goto :goto_0

    .line 2019
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 2020
    iput v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mOldLightPro:I

    .line 2021
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsChangeLight:Z

    if-eqz v0, :cond_4

    .line 2022
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v8, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2024
    :cond_4
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsChangeLight:Z

    move v0, v2

    .line 2025
    goto :goto_0

    .line 2026
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 2027
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->bounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2028
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mDownX:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 2029
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mDownY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 2030
    mul-float v5, v1, v1

    mul-float v6, v4, v4

    add-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v5

    const/high16 v6, 0x4170

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_d

    .line 2031
    div-float v1, v4, v1

    float-to-double v4, v1

    const-wide v6, 0x3fe921fb54442d18L

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    cmpg-double v1, v4, v6

    if-gez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsChangeLight:Z

    if-nez v1, :cond_6

    .line 2032
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 2033
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v2

    .line 2034
    goto/16 :goto_0

    .line 2036
    :cond_6
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 2037
    iput-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsChangeLight:Z

    .line 2039
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v4, v1

    .line 2040
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v1, v5, :cond_b

    .line 2041
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMoveRangeHorizontal:I

    sub-int v1, v0, v1

    .line 2042
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMoveRangeHorizontal:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v4, v0

    .line 2047
    :goto_1
    if-gez v0, :cond_7

    move v0, v2

    .line 2050
    :cond_7
    if-le v0, v1, :cond_8

    move v0, v1

    .line 2053
    :cond_8
    sub-int v0, v1, v0

    mul-int/lit16 v0, v0, 0x3e8

    div-int v1, v0, v1

    .line 2054
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOldLightPro:I

    if-eq v1, v0, :cond_a

    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOldLightPro:I

    if-eq v0, v9, :cond_a

    .line 2055
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOldLightPro:I

    if-le v1, v0, :cond_c

    .line 2056
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightProgress:I

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mOldLightPro:I

    sub-int v2, v1, v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightProgress:I

    .line 2057
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightProgress:I

    if-lt v0, v10, :cond_9

    .line 2058
    iput v10, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightProgress:I

    .line 2066
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightProgress:I

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setProgress(I)V

    .line 2067
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightProgress:I

    mul-int/lit16 v0, v0, 0xfd

    div-int/lit16 v0, v0, 0x3e8

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBrightness:I

    .line 2069
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBrightness:I

    invoke-static {v0, v2}, Lcom/android/gallery3d/util/GalleryUtils;->setWindowBrightness(Landroid/view/Window;I)V

    .line 2071
    :cond_a
    iput v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mOldLightPro:I

    move v0, v3

    .line 2072
    goto/16 :goto_0

    .line 2044
    :cond_b
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMoveRangeVertical:I

    sub-int v1, v0, v1

    .line 2045
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMoveRangeVertical:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v4, v0

    goto :goto_1

    .line 2061
    :cond_c
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightProgress:I

    iget v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mOldLightPro:I

    sub-int/2addr v4, v1

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightProgress:I

    .line 2062
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightProgress:I

    if-gtz v0, :cond_9

    .line 2063
    iput v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightProgress:I

    goto :goto_2

    :cond_d
    move v0, v2

    .line 2074
    goto/16 :goto_0

    :cond_e
    move v0, v2

    .line 2077
    goto/16 :goto_0
.end method

.method protected onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1332
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 1399
    :goto_0
    return-void

    .line 1339
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 1342
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    goto :goto_0

    .line 1345
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->switchToFirstImage()V

    goto :goto_0

    .line 1348
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->setResult()V

    .line 1349
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 1353
    :pswitch_3
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLastState:I

    if-eqz v0, :cond_1

    .line 1354
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLastState:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    goto :goto_0

    .line 1356
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_2

    .line 1357
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AppBridge;->onBackClicked()V

    .line 1358
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AppBridge;->checkScreenOrientation()V

    .line 1359
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->switchToFirstImage()V

    goto :goto_0

    .line 1361
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->setResult()V

    .line 1362
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 1368
    :pswitch_4
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->leaveWallpaperMode()V

    .line 1369
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetWallpaper:Z

    if-eqz v0, :cond_3

    .line 1370
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 1372
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    goto :goto_0

    .line 1376
    :pswitch_5
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    goto :goto_0

    .line 1379
    :pswitch_6
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 1382
    :pswitch_7
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v0, :cond_4

    .line 1383
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideDetails()V

    goto :goto_0

    .line 1384
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->isZoomIn()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1385
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->resetToFullView()V

    goto :goto_0

    .line 1388
    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->setResult()V

    .line 1389
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->isCamera(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1390
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AppBridge;->onBackClicked()V

    .line 1391
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->switchToFirstImage()V

    goto/16 :goto_0

    .line 1393
    :cond_6
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto/16 :goto_0

    .line 1332
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method

.method public onCommitDeleteImage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2134
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    if-nez v0, :cond_0

    .line 2139
    :goto_0
    return-void

    .line 2135
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 2136
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 2137
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    const v1, 0x7f0d01b0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    .line 2138
    iput-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    const/4 v0, 0x1

    .line 326
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsPortrait:Z

    .line 327
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 328
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 329
    return-void

    .line 326
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 17
    .parameter "data"
    .parameter "restoreState"

    .prologue
    .line 333
    invoke-super/range {p0 .. p2}, Lcom/android/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    .line 335
    new-instance v2, Lcom/android/gallery3d/ui/SelectionManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lcom/android/gallery3d/ui/SelectionManager;-><init>(Lcom/android/gallery3d/app/GalleryContext;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/SelectionManager;->setSelectionListener(Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;)V

    .line 337
    new-instance v2, Lcom/android/gallery3d/ui/MenuExecutor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v2, v3, v4}, Lcom/android/gallery3d/ui/MenuExecutor;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    .line 339
    new-instance v2, Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v2, v3, v4}, Lcom/android/gallery3d/ui/PhotoView;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/PhotoView;->setListener(Lcom/android/gallery3d/ui/PhotoView$Listener;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/GalleryApp;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getOrientationManager()Lcom/android/gallery3d/app/OrientationManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/app/OrientationManager;->addListener(Lcom/android/gallery3d/app/OrientationManager$Listener;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-interface {v2, v3}, Lcom/android/gallery3d/ui/GLRoot;->setOrientationSource(Lcom/android/gallery3d/ui/OrientationSource;)V

    .line 347
    const-string v2, "key-set-wallpaper"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetWallpaper:Z

    .line 348
    const-string v2, "key-slideshow"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshow:Z

    .line 349
    const-string v2, "media-set-path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 352
    const-string v2, "media-item-path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v5

    .line 353
    .local v5, itemPath:Lcom/android/gallery3d/data/Path;
    const-string v2, "treat-back-as-up"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mTreatBackAsUp:Z

    .line 355
    new-instance v2, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetWallpaperDialog:Landroid/app/ProgressDialog;

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetWallpaperDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0150

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetWallpaperDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mIsPortrait:Z

    .line 360
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->initButtons()V

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040066

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mInforBarCustomView:Landroid/view/View;

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mInforBarCustomView:Landroid/view/View;

    const v3, 0x7f0d0150

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarSetName:Landroid/widget/TextView;

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mInforBarCustomView:Landroid/view/View;

    const v3, 0x7f0d0152

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarIndex:Landroid/widget/TextView;

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mInforBarCustomView:Landroid/view/View;

    const v3, 0x7f0d0151

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarItemName:Landroid/widget/TextView;

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mInforBarCustomView:Landroid/view/View;

    const v3, 0x7f0d0153

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarSize:Landroid/widget/TextView;

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarSetName:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE_SMALL:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarIndex:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE_SMALL:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarItemName:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE_SMALL:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarSize:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE_SMALL:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 370
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mIsPortrait:Z

    if-nez v2, :cond_0

    .line 371
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->layoutInforCustomView()V

    .line 374
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 375
    const-string v2, "app-bridge"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/AppBridge;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v2, :cond_2

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/app/AppBridge;->setServer(Lcom/android/gallery3d/app/AppBridge$Server;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/OrientationManager;->lockOrientation()V

    .line 381
    invoke-static {}, Lcom/android/gallery3d/data/SnailSource;->newId()I

    move-result v10

    .line 382
    .local v10, id:I
    invoke-static {v10}, Lcom/android/gallery3d/data/SnailSource;->getSetPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v15

    .line 383
    .local v15, screenNailSetPath:Lcom/android/gallery3d/data/Path;
    invoke-static {v10}, Lcom/android/gallery3d/data/SnailSource;->getItemPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v14

    .line 384
    .local v14, screenNailItemPath:Lcom/android/gallery3d/data/Path;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/SnailAlbum;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailSet:Lcom/android/gallery3d/data/SnailAlbum;

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/SnailItem;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AppBridge;->attachScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/SnailItem;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v13

    .line 395
    .local v13, originalSet:Lcom/android/gallery3d/data/MediaSet;
    instance-of v2, v13, Lcom/android/gallery3d/data/LocalAlbum;

    if-eqz v2, :cond_1

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/filter/lock/{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v11

    .line 398
    .local v11, lockSet:Lcom/android/gallery3d/data/MediaSet;
    if-eqz v11, :cond_1

    instance-of v2, v11, Lcom/android/gallery3d/data/FilterLockSet;

    if-eqz v2, :cond_1

    .line 399
    check-cast v11, Lcom/android/gallery3d/data/FilterLockSet;

    .end local v11           #lockSet:Lcom/android/gallery3d/data/MediaSet;
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/gallery3d/app/PhotoPage;->mLockSet:Lcom/android/gallery3d/data/FilterLockSet;

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mLockSet:Lcom/android/gallery3d/data/FilterLockSet;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/FilterLockSet;->setNewAddedVisible(Z)V

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mLockSet:Lcom/android/gallery3d/data/FilterLockSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/FilterLockSet;->setForceLockSet(I)V

    .line 402
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mHasCamera:Z

    .line 406
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/combo/item/{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 410
    move-object v5, v14

    .line 413
    .end local v10           #id:I
    .end local v13           #originalSet:Lcom/android/gallery3d/data/MediaSet;
    .end local v14           #screenNailItemPath:Lcom/android/gallery3d/data/Path;
    .end local v15           #screenNailSetPath:Lcom/android/gallery3d/data/Path;
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    or-int/lit8 v2, v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v13

    .line 417
    .restart local v13       #originalSet:Lcom/android/gallery3d/data/MediaSet;
    instance-of v2, v13, Lcom/android/gallery3d/data/LocalAlbum;

    if-eqz v2, :cond_3

    .line 418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/filter/lock/{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v13

    .line 420
    if-eqz v13, :cond_3

    instance-of v2, v13, Lcom/android/gallery3d/data/FilterLockSet;

    if-eqz v2, :cond_3

    move-object v2, v13

    .line 421
    check-cast v2, Lcom/android/gallery3d/data/FilterLockSet;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mLockSet:Lcom/android/gallery3d/data/FilterLockSet;

    .line 422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mLockSet:Lcom/android/gallery3d/data/FilterLockSet;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/FilterLockSet;->setNewAddedVisible(Z)V

    .line 423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mLockSet:Lcom/android/gallery3d/data/FilterLockSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/FilterLockSet;->setForceLockSet(I)V

    .line 427
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2, v13}, Lcom/android/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcom/android/gallery3d/data/MediaSet;)V

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/filter/delete/{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/FilterDeleteSet;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    .line 431
    const-string v2, "index-hint"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-nez v2, :cond_4

    .line 433
    const-string v2, "PhotoPage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to restore "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_4
    new-instance v1, Lcom/android/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v7, :cond_a

    const/4 v7, -0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v8, :cond_b

    const/4 v8, 0x0

    :goto_2
    invoke-direct/range {v1 .. v8}, Lcom/android/gallery3d/app/PhotoDataAdapter;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/Path;IIZ)V

    .line 440
    .local v1, pda:Lcom/android/gallery3d/app/PhotoDataAdapter;
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->setModel(Lcom/android/gallery3d/ui/PhotoView$Model;)V

    .line 442
    if-eqz v5, :cond_5

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mItem:Lcom/android/gallery3d/data/MediaObject;

    .line 445
    :cond_5
    new-instance v2, Lcom/android/gallery3d/app/PhotoPage$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/gallery3d/app/PhotoPage$2;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->setDataListener(Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;)V

    .line 490
    .end local v1           #pda:Lcom/android/gallery3d/app/PhotoDataAdapter;
    .end local v13           #originalSet:Lcom/android/gallery3d/data/MediaSet;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getIntentType()Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    move-result-object v2

    iget v2, v2, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mType:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mIntentType:I

    .line 491
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mIntentType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mIsVideo:Z

    .line 492
    const-string v2, "media-item-uri"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 493
    .local v16, uri:Ljava/lang/String;
    if-eqz v16, :cond_6

    .line 494
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mUri:Landroid/net/Uri;

    .line 497
    :cond_6
    new-instance v2, Lcom/android/gallery3d/app/PhotoPage$3;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/gallery3d/app/PhotoPage$3;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/ui/GLRoot;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    .line 559
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshow:Z

    if-nez v2, :cond_7

    if-nez p2, :cond_7

    .line 560
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const-string v2, "open-animation-rect"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/ui/PhotoView;->setOpenAnimationRect(Landroid/graphics/Rect;)V

    .line 563
    :cond_7
    new-instance v2, Lcom/android/gallery3d/app/PhotoPage$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/gallery3d/app/PhotoPage$4;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButtonListener:Landroid/view/View$OnClickListener;

    .line 574
    new-instance v2, Lcom/meizu/widget/SelectionButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/meizu/widget/SelectionButton;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    .line 576
    new-instance v9, Landroid/app/ActionBar$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v9, v2, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 577
    .local v9, alp:Landroid/app/ActionBar$LayoutParams;
    const/16 v2, 0x15

    iput v2, v9, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 578
    const/16 v2, 0x20

    iput v2, v9, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v2, v9}, Lcom/meizu/widget/SelectionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 581
    new-instance v2, Lcom/android/gallery3d/app/PhotoPage$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/gallery3d/app/PhotoPage$5;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mBtnClickListener:Landroid/view/View$OnClickListener;

    .line 615
    new-instance v2, Lcom/android/gallery3d/ui/ActionModeHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v6}, Lcom/android/gallery3d/ui/ActionModeHandler;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    const v3, 0x7f110002

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/ActionModeHandler;->setViewId(I)V

    .line 617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/gallery3d/app/PhotoPage$6;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/ActionModeHandler;->setActionModeListener(Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;)V

    .line 646
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetWallpaper:Z

    if-nez v2, :cond_8

    .line 647
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/gallery3d/app/PhotoPage;->hideBars(Z)V

    .line 649
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/gallery3d/app/PhotoPage;->dlnaInit(Landroid/content/Context;)V

    .line 650
    return-void

    .line 359
    .end local v9           #alp:Landroid/app/ActionBar$LayoutParams;
    .end local v16           #uri:Ljava/lang/String;
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 436
    .restart local v13       #originalSet:Lcom/android/gallery3d/data/MediaSet;
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v8}, Lcom/android/gallery3d/app/AppBridge;->isPanorama()Z

    move-result v8

    goto/16 :goto_2

    .line 483
    .end local v13           #originalSet:Lcom/android/gallery3d/data/MediaSet;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v12

    check-cast v12, Lcom/android/gallery3d/data/MediaItem;

    .line 485
    .local v12, mediaItem:Lcom/android/gallery3d/data/MediaItem;
    new-instance v2, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-direct {v2, v3, v4, v12}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaItem;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->setModel(Lcom/android/gallery3d/ui/PhotoView$Model;)V

    .line 487
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V

    goto/16 :goto_3

    .line 491
    .end local v12           #mediaItem:Lcom/android/gallery3d/data/MediaItem;
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_4
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 14
    .parameter "menu"

    .prologue
    const/16 v13, 0x10

    const/16 v12, 0x8

    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 654
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 656
    .local v0, activity:Landroid/app/Activity;
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mInforBarCustomView:Landroid/view/View;

    .line 659
    .local v2, infobarView:Landroid/view/View;
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-eqz v9, :cond_0

    .line 660
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarSetName:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v10}, Lcom/android/gallery3d/data/FilterDeleteSet;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v6

    .line 664
    .local v6, menuInflater:Landroid/view/MenuInflater;
    const v5, 0x7f110012

    .line 665
    .local v5, menuId:I
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v9}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 666
    .local v1, bar:Landroid/app/ActionBar;
    iget v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mIntentType:I

    packed-switch v9, :pswitch_data_0

    .line 668
    :pswitch_0
    iget v9, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    packed-switch v9, :pswitch_data_1

    .line 670
    :pswitch_1
    invoke-virtual {v1, v13}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 671
    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 672
    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setActionBarViewCollapsable(Z)V

    .line 722
    :goto_0
    invoke-virtual {v1, v7}, Landroid/app/ActionBar;->setActionModeHeaderHidden(Z)V

    .line 723
    invoke-virtual {v1, v7}, Landroid/app/ActionBar;->setEnabledBackWhenOverlay(Z)V

    .line 724
    invoke-virtual {v6, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 726
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenu:Landroid/view/Menu;

    .line 727
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v9, :cond_1

    .line 728
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateInfo()V

    .line 731
    :cond_1
    iget-boolean v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsVideo:Z

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/ActionModeHandler;->isActive()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 732
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    const v10, 0x7f0d01b2

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/ui/ActionModeHandler;->findMenuItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 733
    .local v3, item:Landroid/view/MenuItem;
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/GLView;->bounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v10}, Lcom/android/gallery3d/ui/GLView;->bounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-le v9, v10, :cond_5

    move v4, v7

    .line 734
    .local v4, landscape:Z
    :goto_1
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 735
    if-eqz v4, :cond_6

    .line 736
    invoke-virtual {v1, v12}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 742
    .end local v3           #item:Landroid/view/MenuItem;
    .end local v4           #landscape:Z
    :cond_2
    :goto_2
    return v7

    .line 675
    :pswitch_2
    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 676
    invoke-virtual {v1, v11}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 677
    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setActionBarViewCollapsable(Z)V

    goto :goto_0

    .line 680
    :pswitch_3
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/GLView;->bounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v10}, Lcom/android/gallery3d/ui/GLView;->bounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-le v9, v10, :cond_3

    move v4, v7

    .line 681
    .restart local v4       #landscape:Z
    :goto_3
    if-eqz v4, :cond_4

    .line 682
    invoke-virtual {v1, v12}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    goto :goto_0

    .end local v4           #landscape:Z
    :cond_3
    move v4, v8

    .line 680
    goto :goto_3

    .line 684
    .restart local v4       #landscape:Z
    :cond_4
    const/16 v9, 0x18

    invoke-virtual {v1, v9}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 685
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v1, v9}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    goto :goto_0

    .line 689
    .end local v4           #landscape:Z
    :pswitch_4
    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 690
    invoke-virtual {v1, v11}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 691
    invoke-virtual {v1, v7}, Landroid/app/ActionBar;->setActionBarViewCollapsable(Z)V

    .line 692
    const v5, 0x7f110015

    .line 693
    goto/16 :goto_0

    .line 695
    :pswitch_5
    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 696
    invoke-virtual {v1, v11}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 697
    invoke-virtual {v1, v7}, Landroid/app/ActionBar;->setActionBarViewCollapsable(Z)V

    .line 698
    const v5, 0x7f110014

    .line 699
    goto/16 :goto_0

    .line 701
    :pswitch_6
    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 702
    invoke-virtual {v1, v11}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 703
    invoke-virtual {v1, v7}, Landroid/app/ActionBar;->setActionBarViewCollapsable(Z)V

    .line 704
    const v5, 0x7f110005

    goto/16 :goto_0

    .line 710
    :pswitch_7
    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 711
    invoke-virtual {v1, v7}, Landroid/app/ActionBar;->setActionBarViewCollapsable(Z)V

    .line 712
    const v5, 0x7f110018

    .line 713
    goto/16 :goto_0

    .line 715
    :pswitch_8
    invoke-virtual {v1, v13}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 716
    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 717
    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setActionBarViewCollapsable(Z)V

    .line 718
    const v5, 0x7f110013

    goto/16 :goto_0

    .restart local v3       #item:Landroid/view/MenuItem;
    :cond_5
    move v4, v8

    .line 733
    goto/16 :goto_1

    .line 738
    .restart local v4       #landscape:Z
    :cond_6
    const/16 v8, 0x18

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 739
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 666
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_7
    .end packed-switch

    .line 668
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onCurrentImageUpdated()V
    .locals 1

    .prologue
    .line 2318
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unfreeze()V

    .line 2319
    return-void
.end method

.method public onDeleteImage(Lcom/android/gallery3d/data/Path;I)V
    .locals 2
    .parameter "path"
    .parameter "offset"

    .prologue
    .line 2116
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->onCommitDeleteImage()V

    .line 2117
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    .line 2118
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeleteIsFocus:Z

    .line 2119
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/data/FilterDeleteSet;->addDeletion(Lcom/android/gallery3d/data/Path;I)V

    .line 2120
    return-void

    .line 2118
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 2409
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_0

    .line 2410
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AppBridge;->setServer(Lcom/android/gallery3d/app/AppBridge$Server;)V

    .line 2411
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/SnailItem;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 2412
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AppBridge;->detachScreenNail()V

    .line 2413
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    .line 2414
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailSet:Lcom/android/gallery3d/data/SnailAlbum;

    .line 2415
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    .line 2417
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/OrientationManager;->removeListener(Lcom/android/gallery3d/app/OrientationManager$Listener;)V

    .line 2418
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->setOrientationSource(Lcom/android/gallery3d/ui/OrientationSource;)V

    .line 2421
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2422
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLockSet:Lcom/android/gallery3d/data/FilterLockSet;

    .line 2424
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 2425
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2426
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2429
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 2430
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2431
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2434
    :cond_2
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onDestroy()V

    .line 2435
    return-void
.end method

.method public onDoubleTap(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1997
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_0

    .line 1998
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/app/AppBridge;->onDoubleTap(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2000
    :cond_0
    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 5
    .parameter "full"

    .prologue
    const/4 v2, 0x0

    .line 2103
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2105
    .local v0, m:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2106
    return-void

    .end local v0           #m:Landroid/os/Message;
    :cond_0
    move v1, v2

    .line 2103
    goto :goto_0
.end method

.method public onHudViewClicked(ILjava/lang/Object;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 2464
    .line 2465
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 2466
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    .line 2470
    sparse-switch p1, :sswitch_data_0

    .line 2472
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/app/ActivityState;->onHudViewClicked(ILjava/lang/Object;)Z

    .line 2634
    :goto_0
    :sswitch_0
    return v6

    .line 2475
    :sswitch_1
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 2477
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->onBackPressed()V

    goto :goto_0

    .line 2480
    :pswitch_0
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 2485
    :sswitch_2
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/PhotoPage;->sharedByEmail(Landroid/content/Context;)Z

    goto :goto_0

    .line 2490
    :sswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetWallpaperDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 2491
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$19;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/app/PhotoPage$19;-><init>(Lcom/android/gallery3d/app/PhotoPage;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 2526
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->onHudViewSelect()V

    goto :goto_0

    .line 2529
    :sswitch_5
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 2530
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 2531
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 2532
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    goto :goto_0

    .line 2535
    :sswitch_6
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 2536
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2537
    const-string v3, "confirm-overwrite"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2538
    const-class v3, Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2539
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2540
    invoke-static {v1}, Lcom/android/gallery3d/picasasource/PicasaSource;->isPicasaImage(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2541
    invoke-direct {p0, v6}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    goto :goto_0

    .line 2540
    :cond_0
    const/4 v1, 0x2

    goto :goto_1

    .line 2553
    :sswitch_7
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 2554
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 2555
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 2556
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/SelectionManager;->addToSelected(Lcom/android/gallery3d/data/Path;)V

    .line 2558
    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->onHudViewShare(I)V

    goto/16 :goto_0

    .line 2561
    :sswitch_9
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    const v3, 0x7f0d0062

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2562
    new-instance v3, Landroid/widget/PopupMenu;

    invoke-direct {v3, v2, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 2563
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 2564
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v4}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v4

    .line 2565
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 2566
    const/16 v4, 0x60c

    const v5, 0x7f0a01d6

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2567
    :cond_1
    const/16 v4, 0x60d

    const v5, 0x7f0a01d7

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2568
    const/16 v4, 0x60e

    const v5, 0x7f0a015a

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2569
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-eqz v4, :cond_2

    .line 2570
    const/16 v4, 0x60f

    const v5, 0x7f0a0159

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2571
    :cond_2
    const/16 v4, 0x610

    const v5, 0x7f0a01d9

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v6, v4, v6, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2574
    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$20;

    invoke-direct {v1, p0, v0}, Lcom/android/gallery3d/app/PhotoPage$20;-><init>(Lcom/android/gallery3d/app/PhotoPage;Landroid/app/Activity;)V

    invoke-virtual {v3, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 2608
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_0

    .line 2631
    :sswitch_a
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->onBackPressed()V

    goto/16 :goto_0

    .line 2470
    nop

    :sswitch_data_0
    .sparse-switch
        0x604 -> :sswitch_5
        0x605 -> :sswitch_6
        0x606 -> :sswitch_0
        0x607 -> :sswitch_9
        0x608 -> :sswitch_2
        0x609 -> :sswitch_8
        0x60a -> :sswitch_4
        0x612 -> :sswitch_0
        0x614 -> :sswitch_7
        0x615 -> :sswitch_1
        0x702 -> :sswitch_3
        0x703 -> :sswitch_3
        0x704 -> :sswitch_3
        0x705 -> :sswitch_a
    .end sparse-switch

    .line 2475
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1496
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    .line 1497
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0, v3}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v4

    .line 1499
    if-nez v4, :cond_0

    move v0, v2

    .line 1819
    :goto_0
    return v0

    .line 1504
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v0

    .line 1505
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v5

    .line 1507
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v6}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v6

    .line 1508
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    .line 1510
    sparse-switch v7, :sswitch_data_0

    move v0, v3

    .line 1816
    goto :goto_0

    .line 1512
    :sswitch_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->onUpPressed()V

    move v0, v2

    .line 1513
    goto :goto_0

    .line 1516
    :sswitch_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->startSlideShow()V

    move v0, v2

    .line 1517
    goto :goto_0

    .line 1520
    :sswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 1521
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.android.camera.action.CROP"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1522
    const-string v7, "confirm-overwrite"

    invoke-virtual {v3, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1523
    const-class v7, Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v3, v0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1524
    invoke-virtual {v6, v5}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1525
    invoke-static {v4}, Lcom/android/gallery3d/picasasource/PicasaSource;->isPicasaImage(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x3

    :cond_1
    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v2

    .line 1528
    goto :goto_0

    .line 1531
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 1534
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v8}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v2

    .line 1536
    goto :goto_0

    .line 1539
    :sswitch_4
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v1, :cond_2

    .line 1540
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideDetails()V

    :goto_1
    move v0, v2

    .line 1544
    goto :goto_0

    .line 1542
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->showDetails(I)V

    goto :goto_1

    .line 1547
    :sswitch_5
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1548
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 1549
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, v5}, Lcom/android/gallery3d/ui/SelectionManager;->addToSelected(Lcom/android/gallery3d/data/Path;)V

    .line 1551
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    if-le v0, v2, :cond_5

    .line 1552
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f10

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 1562
    :goto_2
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$13;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/PhotoPage$13;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v1, p1, v0, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    :cond_4
    :goto_3
    move v0, v2

    .line 1819
    goto/16 :goto_0

    .line 1555
    :cond_5
    invoke-virtual {v5}, Lcom/android/gallery3d/data/Path;->getObject()Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    .line 1556
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v0

    if-ne v0, v9, :cond_6

    .line 1557
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a01e1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1559
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a01de

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1587
    :sswitch_6
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f10

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 1589
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 1590
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, v5}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 1591
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    invoke-virtual {v1, p1, v0, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    move v0, v2

    .line 1592
    goto/16 :goto_0

    .line 1594
    :sswitch_7
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 1595
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, v5}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 1596
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    new-instance v1, Lcom/android/gallery3d/ui/ImportCompleteListener;

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-direct {v1, v3}, Lcom/android/gallery3d/ui/ImportCompleteListener;-><init>(Lcom/android/gallery3d/app/GalleryActivity;)V

    invoke-virtual {v0, p1, v8, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    move v0, v2

    .line 1598
    goto/16 :goto_0

    .line 1601
    :sswitch_8
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1602
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 1603
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->addToSelected(Lcom/android/gallery3d/data/Path;)V

    .line 1605
    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-virtual {v0, p1, v8, v8}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    move v0, v2

    .line 1606
    goto/16 :goto_0

    .line 1613
    :sswitch_9
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 1616
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1617
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 1618
    new-instance v2, Landroid/widget/PopupMenu;

    invoke-direct {v2, v1, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1619
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 1621
    const/4 v6, 0x5

    const v7, 0x7f0a01d7

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v3, v6, v3, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1622
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_8

    .line 1623
    const/4 v6, 0x6

    const v7, 0x7f0a01d6

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v3, v6, v3, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1625
    :cond_8
    const/16 v6, 0xb

    const v7, 0x7f0a01f9

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v3, v6, v3, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1627
    const/16 v6, 0x8

    const v7, 0x7f0a015a

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v3, v6, v3, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1630
    const/16 v6, 0xa

    const v7, 0x7f0a01d9

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v6, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1632
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$14;

    invoke-direct {v0, p0, v5, v4}, Lcom/android/gallery3d/app/PhotoPage$14;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/MediaItem;)V

    invoke-virtual {v2, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1673
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->show()V

    :goto_4
    move v0, v3

    .line 1711
    goto/16 :goto_0

    .line 1676
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0d01b3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1677
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 1678
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1679
    new-instance v5, Landroid/widget/PopupMenu;

    invoke-direct {v5, v1, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1680
    invoke-virtual {v5}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 1681
    const v1, 0x7f0a01e6

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1682
    const v1, 0x7f0a01e5

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v3, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1683
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$15;

    invoke-direct {v0, p0, v4}, Lcom/android/gallery3d/app/PhotoPage$15;-><init>(Lcom/android/gallery3d/app/PhotoPage;Landroid/content/res/Resources;)V

    invoke-virtual {v5, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1708
    invoke-virtual {v5}, Landroid/widget/PopupMenu;->show()V

    goto :goto_4

    .line 1713
    :sswitch_a
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->isZoomIn()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1714
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->resetToFullView()V

    .line 1715
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->skipAnimation()V

    .line 1717
    :cond_9
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 1718
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    move v0, v3

    .line 1719
    goto/16 :goto_0

    .line 1721
    :sswitch_b
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 1722
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 1724
    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIntentType:I

    packed-switch v1, :pswitch_data_1

    move v0, v2

    .line 1732
    goto/16 :goto_0

    .line 1726
    :pswitch_1
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "mms_video_title"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1735
    :goto_5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1736
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1737
    const-string v5, "com.meizu.action.SAVE_FILE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1738
    const-string v5, "init_directory"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1740
    const-string v3, "SAVEATTACHMENT"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1743
    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v4, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1745
    const-string v1, "android.intent.extra.STREAM"

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1747
    const-string v1, "title"

    const v3, 0x7f0a00d1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1748
    invoke-virtual {v0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1749
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_3

    .line 1729
    :pswitch_2
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "com.meizu.email.AttachmentFileName"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 1753
    :sswitch_c
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const v4, 0x7f0d01ce

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1754
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    .line 1755
    new-instance v5, Landroid/widget/PopupMenu;

    invoke-direct {v5, v4, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1756
    invoke-virtual {v5}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 1757
    const/4 v6, 0x3

    const v7, 0x7f0a01db

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v3, v6, v3, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1758
    const v6, 0x7f0a01da

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v3, v1, v3, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1759
    const v1, 0x7f0a01dc

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v9, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1760
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$16;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$16;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v5, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1806
    invoke-virtual {v5}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_3

    .line 1810
    :sswitch_d
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    const v0, 0x7f0d01c6

    if-ne v7, v0, :cond_a

    const/16 v0, -0x5a

    :goto_6
    invoke-virtual {v1, v5, v0}, Lcom/android/gallery3d/data/DataManager;->rotate(Lcom/android/gallery3d/data/Path;I)V

    goto/16 :goto_3

    :cond_a
    const/16 v0, 0x5a

    goto :goto_6

    .line 1813
    :sswitch_e
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    goto/16 :goto_3

    .line 1510
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0d01ae -> :sswitch_8
        0x7f0d01af -> :sswitch_8
        0x7f0d01b0 -> :sswitch_5
        0x7f0d01b1 -> :sswitch_9
        0x7f0d01b3 -> :sswitch_9
        0x7f0d01b4 -> :sswitch_1
        0x7f0d01c4 -> :sswitch_7
        0x7f0d01c5 -> :sswitch_3
        0x7f0d01c6 -> :sswitch_d
        0x7f0d01c7 -> :sswitch_d
        0x7f0d01c8 -> :sswitch_2
        0x7f0d01c9 -> :sswitch_6
        0x7f0d01ca -> :sswitch_4
        0x7f0d01cb -> :sswitch_6
        0x7f0d01cc -> :sswitch_a
        0x7f0d01cd -> :sswitch_e
        0x7f0d01ce -> :sswitch_c
        0x7f0d01d1 -> :sswitch_b
    .end sparse-switch

    .line 1613
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 1724
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onLongPress(II)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x0

    .line 1846
    iget v2, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 1887
    :cond_0
    :goto_0
    return-void

    .line 1851
    :pswitch_0
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v2, v4}, Lcom/android/gallery3d/app/PhotoPage$Model;->isCamera(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1854
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->bounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1855
    .local v1, rect:Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->right:I

    sget v3, Lcom/android/gallery3d/app/PhotoPage;->LIGHTBAR_SIZE:I

    sub-int/2addr v2, v3

    if-lt p1, v2, :cond_0

    .line 1856
    iput p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDownX:I

    .line 1857
    iput p2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDownY:I

    .line 1859
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightLayout:Landroid/widget/LinearLayout;

    if-nez v2, :cond_1

    .line 1860
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->initLightLayout()V

    .line 1863
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1864
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v2, :cond_2

    .line 1865
    invoke-direct {p0, v4}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    .line 1868
    :cond_2
    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBrightness:I

    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getAppBrightnessValue()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mSystemBrightness:I

    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getSystemBrightnessValue()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 1870
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->initBrightnessParams()V

    .line 1873
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 1874
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showLightLayout()V

    .line 1875
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1880
    .end local v1           #rect:Landroid/graphics/Rect;
    :pswitch_1
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->hitTest(II)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 1881
    .local v0, hitItem:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    .line 1882
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    goto :goto_0

    .line 1846
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOrientationCompensationChanged()V
    .locals 1

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestLayoutContentPane()V

    .line 1328
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2271
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onPause()V

    .line 2272
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z

    .line 2274
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unfreeze()V

    .line 2275
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2276
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->preparePhotoFallbackView()V

    .line 2278
    :cond_0
    invoke-static {}, Lcom/android/gallery3d/ui/DetailsHelper;->pause()V

    .line 2279
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    if-eqz v0, :cond_1

    .line 2280
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->onPause()V

    .line 2282
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 2284
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2286
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 2289
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->pause()V

    .line 2290
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->pause()V

    .line 2291
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/app/PhotoPage$Model;->pause()V

    .line 2292
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2293
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    if-eqz v0, :cond_2

    .line 2294
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/GalleryActionBar;->removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 2296
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->onCommitDeleteImage()V

    .line 2297
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->pause()V

    .line 2298
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/FilterDeleteSet;->clearDeletion()V

    .line 2300
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 2301
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2302
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2305
    :cond_4
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 2306
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoPage;->setFilmTextShow(Z)V

    .line 2309
    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->dlnaOnPause()V

    .line 2311
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->saveGalleryBrightness(Landroid/content/Context;)V

    .line 2312
    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->setHasInitBrigtnessFlag(Z)V

    .line 2313
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBrightness:I

    .line 2314
    return-void

    .line 2286
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v0
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2323
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 2324
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    .line 2325
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->freeze()V

    .line 2326
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z

    .line 2327
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 2329
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/app/PhotoPage$Model;->resume()V

    .line 2330
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->resume()V

    .line 2331
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->resume()V

    .line 2332
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->resume()V

    .line 2333
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    if-nez v0, :cond_0

    .line 2334
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    .line 2336
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    if-eqz v0, :cond_1

    .line 2337
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0, v3, v2}, Lcom/android/gallery3d/app/GalleryActionBar;->setDisplayOptions(ZZ)V

    .line 2338
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/GalleryActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 2344
    :cond_1
    iput-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasActivityResult:Z

    .line 2345
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2347
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 2348
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2351
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 2352
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2355
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0, v3}, Lcom/android/gallery3d/app/PhotoPage$Model;->isCamera(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2356
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getHasInitBrigtnessFlag()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2357
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->initGalleryBrightness(Landroid/content/Context;)V

    .line 2358
    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->setHasInitBrigtnessFlag(Z)V

    .line 2360
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->initBrightnessParams()V

    .line 2366
    :goto_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->dlnaOnResume()V

    .line 2368
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    if-ne v0, v7, :cond_5

    .line 2369
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoPage;->setFilmTextShow(Z)V

    .line 2372
    :cond_5
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetWallpaper:Z

    if-eqz v0, :cond_e

    .line 2373
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    .line 2379
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLockSet:Lcom/android/gallery3d/data/FilterLockSet;

    if-eqz v0, :cond_c

    .line 2380
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2381
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 2383
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasCamera:Z

    if-eqz v1, :cond_11

    .line 2384
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLockSet:Lcom/android/gallery3d/data/FilterLockSet;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/FilterLockSet;->setNewAddedVisible(Z)V

    .line 2385
    invoke-virtual {v0}, Landroid/content/Intent;->getMeizuFlags()I

    move-result v0

    .line 2386
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_f

    move v4, v2

    .line 2387
    :goto_2
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_10

    move v1, v2

    .line 2388
    :goto_3
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v6, "access_control"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/AccessControlManager;

    .line 2389
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v6}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/pm/AccessControlManager;->checkAccessControl(Ljava/lang/String;)Z

    move-result v0

    .line 2390
    const-string v6, "android.media.action.MEIZU_LOCK_SCREEN_CAMERA"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_7
    if-eqz v4, :cond_8

    if-nez v1, :cond_9

    :cond_8
    if-eqz v0, :cond_a

    :cond_9
    move v3, v2

    .line 2392
    :cond_a
    if-eqz v3, :cond_b

    .line 2393
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLockSet:Lcom/android/gallery3d/data/FilterLockSet;

    invoke-virtual {v0, v7}, Lcom/android/gallery3d/data/FilterLockSet;->setForceLockSet(I)V

    .line 2403
    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLockSet:Lcom/android/gallery3d/data/FilterLockSet;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/data/FilterLockSet;->setForceReload(Z)V

    .line 2405
    :cond_c
    return-void

    .line 2362
    :cond_d
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getCurrentScreenBrightness()I

    move-result v1

    invoke-static {v0, v1, v3}, Lcom/android/gallery3d/util/GalleryUtils;->setWindowBrightness(Landroid/view/Window;IZ)V

    goto/16 :goto_0

    .line 2374
    :cond_e
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshow:Z

    if-eqz v0, :cond_6

    .line 2375
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->startSlideShow()V

    .line 2376
    iput-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshow:Z

    goto/16 :goto_1

    :cond_f
    move v4, v3

    .line 2386
    goto :goto_2

    :cond_10
    move v1, v3

    .line 2387
    goto :goto_3

    .line 2396
    :cond_11
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2397
    const-string v1, "unlocked"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2398
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLockSet:Lcom/android/gallery3d/data/FilterLockSet;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/data/FilterLockSet;->setForceLockSet(I)V

    goto :goto_4
.end method

.method public onSelectionChange(Lcom/android/gallery3d/data/Path;Z)V
    .locals 2
    .parameter "path"
    .parameter "selected"

    .prologue
    .line 2774
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 2775
    .local v0, count:I
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    if-eqz v1, :cond_0

    .line 2776
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v1, v0}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    .line 2777
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButtonInActionMode:Lcom/meizu/widget/SelectionButton;

    if-eqz v1, :cond_1

    .line 2778
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButtonInActionMode:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v1, v0}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    .line 2779
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView;->invalidate()V

    .line 2780
    return-void
.end method

.method public onSelectionModeChange(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2745
    packed-switch p1, :pswitch_data_0

    .line 2768
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->invalidate()V

    .line 2769
    return-void

    .line 2747
    :pswitch_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    .line 2748
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->startActionMode()Landroid/view/ActionMode;

    .line 2749
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->enterSelectionMode()V

    goto :goto_0

    .line 2752
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    .line 2753
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->finishActionMode()V

    .line 2754
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SelectionButton;->setAllSelected(Z)V

    .line 2755
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v0, v3}, Lcom/meizu/widget/SelectionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2756
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButtonInActionMode:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SelectionButton;->setAllSelected(Z)V

    .line 2757
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButtonInActionMode:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v0, v3}, Lcom/meizu/widget/SelectionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2758
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->leaveSelectionMode()V

    goto :goto_0

    .line 2761
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 2763
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/SelectionButton;->setAllSelected(Z)V

    .line 2764
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButtonInActionMode:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/SelectionButton;->setAllSelected(Z)V

    goto :goto_0

    .line 2745
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSingleTapUpConfirmed(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1899
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v2, :cond_1

    .line 1900
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/app/AppBridge;->onSingleTapUp(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1943
    :cond_0
    :goto_0
    return-void

    .line 1904
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v2, v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v3

    .line 1905
    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    if-eq v3, v2, :cond_0

    .line 1910
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 1911
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1912
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideLightLayout()V

    goto :goto_0

    .line 1916
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1917
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_4

    move v2, v0

    .line 1919
    :goto_1
    if-eqz v2, :cond_8

    .line 1923
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v2

    .line 1924
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v4

    .line 1925
    div-int/lit8 v5, v2, 0x2

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0xc

    if-gt v5, v2, :cond_5

    div-int/lit8 v2, v4, 0x2

    sub-int v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0xc

    if-gt v2, v4, :cond_5

    .line 1928
    :goto_2
    if-eqz v0, :cond_6

    .line 1929
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getPlayUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1930
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1931
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1932
    const-string v2, "media-path"

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/FilterDeleteSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1933
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1935
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getPlayUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/app/PhotoPage;->playVideo(Landroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move v2, v1

    .line 1917
    goto :goto_1

    :cond_5
    move v0, v1

    .line 1925
    goto :goto_2

    .line 1938
    :cond_6
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->handleSingleTapUp()V

    goto/16 :goto_0

    .line 1941
    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto :goto_2
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v0, -0x1

    .line 2174
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasActivityResult:Z

    .line 2175
    packed-switch p1, :pswitch_data_0

    .line 2230
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2177
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/android/gallery3d/app/PhotoPage;->setCurrentPhotoByIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 2180
    :pswitch_2
    if-ne p2, v0, :cond_0

    .line 2181
    invoke-direct {p0, p3}, Lcom/android/gallery3d/app/PhotoPage;->setCurrentPhotoByIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 2185
    :pswitch_3
    if-ne p2, v0, :cond_0

    .line 2186
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 2187
    const v1, 0x7f0a0177

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f0a01b4

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2189
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2194
    :pswitch_4
    if-eqz p3, :cond_0

    .line 2195
    const-string v0, "media-item-path"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2196
    const-string v1, "photo-index"

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2197
    if-eqz v0, :cond_1

    .line 2198
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V

    .line 2200
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$18;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/PhotoPage$18;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2207
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    .line 2208
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateExtraButton()V

    goto :goto_0

    .line 2212
    :pswitch_5
    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 2213
    const-string v0, "copy-move-set-path"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2214
    if-eqz v0, :cond_0

    .line 2215
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2222
    :pswitch_6
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/app/PhotoPage;->onPasswordPadReturn(I)V

    .line 2223
    if-ne p2, v0, :cond_2

    .line 2224
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLockSet:Lcom/android/gallery3d/data/FilterLockSet;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/data/FilterLockSet;->setForceReload(Z)V

    goto :goto_0

    .line 2226
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    goto/16 :goto_0

    .line 2175
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setCameraRelativeFrame(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "frame"

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoView;->setCameraRelativeFrame(Landroid/graphics/Rect;)V

    .line 1443
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoView;->setSwipingEnabled(Z)V

    .line 1453
    return-void
.end method

.method public startPhotoEditor(ZLcom/android/gallery3d/data/Path;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaItem;

    .line 1483
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1484
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    const-class v3, Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1485
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1486
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1487
    const-string v0, "marked_mode"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1488
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1492
    :goto_0
    return-void

    .line 1489
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public switchWithCaptureAnimation(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoView;->switchWithCaptureAnimation(I)Z

    move-result v0

    return v0
.end method

.method public updateExtraButton()V
    .locals 5

    .prologue
    const v3, 0x7f090220

    const v2, 0x7f09021f

    const/16 v1, 0xb

    const/4 v4, 0x0

    .line 3128
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 3129
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsPortrait:Z

    if-eqz v0, :cond_1

    .line 3130
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3131
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3132
    iget v1, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 3138
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 3139
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3141
    :goto_0
    invoke-virtual {v0, v4, v2, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3142
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3152
    :cond_0
    :goto_1
    return-void

    .line 3134
    :pswitch_0
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090221

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/android/gallery3d/util/GalleryUtils;->STATUS_BAR_HEIGHT:I

    add-int/2addr v2, v1

    .line 3135
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090222

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 3144
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3145
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3146
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3147
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 3148
    invoke-virtual {v0, v4, v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3149
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 3132
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
