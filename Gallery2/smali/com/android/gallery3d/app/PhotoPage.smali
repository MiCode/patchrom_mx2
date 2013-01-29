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
    .line 176
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

    .line 203
    iput v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 206
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBarAllowed:Z

    .line 214
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mNeedUpdateInfo:Z

    .line 217
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    .line 257
    iput v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBrightness:I

    .line 258
    iput v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mSystemBrightness:I

    .line 259
    iput v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mOldLightPro:I

    .line 260
    iput v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightProgress:I

    .line 261
    iput v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDownX:I

    .line 262
    iput v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDownY:I

    .line 265
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsChangeLight:Z

    .line 266
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mUri:Landroid/net/Uri;

    .line 269
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasCamera:Z

    .line 287
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$1;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    .line 818
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaClient:Landroid/media/dlna/DlnaClient;

    .line 819
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilter:Landroid/content/IntentFilter;

    .line 820
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaReceiver:Landroid/content/BroadcastReceiver;

    .line 821
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaLocalDevice:Landroid/media/dlna/DlnaDevice;

    .line 823
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    .line 824
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceDialog:Landroid/app/AlertDialog;

    .line 825
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceAdapter:Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;

    .line 924
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$9;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$9;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaClickListener:Landroid/view/View$OnClickListener;

    .line 1177
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$11;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$11;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSeekListener:Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;

    .line 1403
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$12;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$12;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 2665
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

.method static synthetic access$1000(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/FilterDeleteSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/OrientationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/AppBridge;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateBars()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->wantBars()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->layoutSlideshowButton()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->layoutFilmText()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideLightLayout()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/app/PhotoPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

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
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->startSlideShow()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShuffle:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShuffle:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mRepeat:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mRepeat:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/gallery3d/app/PhotoPage;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/meizu/widget/SelectionButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButtonInActionMode:Lcom/meizu/widget/SelectionButton;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/gallery3d/app/PhotoPage;Lcom/meizu/widget/SelectionButton;)Lcom/meizu/widget/SelectionButton;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButtonInActionMode:Lcom/meizu/widget/SelectionButton;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/ActionModeHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/gallery3d/app/PhotoPage;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButtonListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/GLView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/GalleryActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

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

.method static synthetic access$3000(Lcom/android/gallery3d/app/PhotoPage;)Lcom/meizu/widget/SelectionButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateDLNADevicesList()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/gallery3d/app/PhotoPage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->showDlnaButton(Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/gallery3d/app/PhotoPage;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/gallery3d/app/PhotoPage;)Landroid/media/dlna/DlnaClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaClient:Landroid/media/dlna/DlnaClient;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showDLNADlg()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceAdapter:Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/GalleryApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/gallery3d/app/PhotoPage;)Landroid/media/dlna/DlnaDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaLocalDevice:Landroid/media/dlna/DlnaDevice;

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

.method static synthetic access$4000(Lcom/android/gallery3d/app/PhotoPage;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/gallery3d/app/PhotoPage;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->dlnaPlay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/gallery3d/app/PhotoPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBrightness:I

    return v0
.end method

.method static synthetic access$4402(Lcom/android/gallery3d/app/PhotoPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBrightness:I

    return p1
.end method

.method static synthetic access$4500(Lcom/android/gallery3d/app/PhotoPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMinSysLight:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/gallery3d/app/PhotoPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMaxSysLight:I

    return v0
.end method

.method static synthetic access$4702(Lcom/android/gallery3d/app/PhotoPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightProgress:I

    return p1
.end method

.method static synthetic access$4800(Lcom/android/gallery3d/app/PhotoPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->showDetails(I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/gallery3d/app/PhotoPage;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetWallpaperDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/gallery3d/app/PhotoPage;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->getBmpForWallpaper()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideDetails()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateInfo()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/gallery3d/app/PhotoPage;Z)V
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

.method static synthetic access$900(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z

    return v0
.end method

.method private canDoSlideShow()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 803
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-nez v1, :cond_1

    .line 812
    :cond_0
    :goto_0
    return v0

    .line 806
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 809
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/gallery3d/data/MtpSource;->isMtpPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 812
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canShowBars()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1252
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    if-nez v1, :cond_1

    .line 1256
    :cond_0
    :goto_0
    return v0

    .line 1254
    :cond_1
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBarAllowed:Z

    if-eqz v1, :cond_0

    .line 1256
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private dlnaInit(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 828
    const/16 v0, -0xa

    .line 829
    const-string v1, "LocalDevice"

    .line 830
    new-instance v2, Landroid/media/dlna/DlnaDevice;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01b5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Landroid/media/dlna/DlnaDevice;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaLocalDevice:Landroid/media/dlna/DlnaDevice;

    .line 836
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    check-cast v0, Lcom/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryAppImpl;->getDlnaClient()Landroid/media/dlna/DlnaClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaClient:Landroid/media/dlna/DlnaClient;

    .line 840
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(I)I

    move-result v1

    .line 841
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const v2, 0x7f0d0010

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 842
    new-instance v2, Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    .line 843
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 844
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 845
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 846
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setId(I)V

    .line 847
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1, v5, v1, v5}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 850
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 852
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 853
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09011c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 854
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09011d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 855
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 858
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilter:Landroid/content/IntentFilter;

    .line 859
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "media.dlnaservice.action.devicesChanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 860
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$7;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$7;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaReceiver:Landroid/content/BroadcastReceiver;

    .line 879
    return-void
.end method

.method private dlnaOnPause()V
    .locals 3

    .prologue
    .line 894
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    .line 895
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 896
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 897
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 899
    :cond_0
    return-void
.end method

.method private dlnaOnResume()V
    .locals 3

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    .line 883
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 885
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    check-cast v0, Lcom/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryAppImpl;->getRemoteDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 886
    if-nez v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    const v1, 0x7f02006b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 891
    :goto_0
    return-void

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private dlnaPlay(Ljava/lang/String;)V
    .locals 2
    .parameter "localPath"

    .prologue
    .line 902
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaClient:Landroid/media/dlna/DlnaClient;

    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$8;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/app/PhotoPage$8;-><init>(Lcom/android/gallery3d/app/PhotoPage;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/dlna/DlnaClient;->stop(Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z

    .line 922
    return-void
.end method

.method private enterState(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 2527
    iget v3, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    if-ne p1, v3, :cond_1

    .line 2610
    :cond_0
    :goto_0
    return-void

    .line 2529
    :cond_1
    const/4 v1, 0x0

    .line 2531
    .local v1, needInvalidActionbar:Z
    iget v3, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    packed-switch v3, :pswitch_data_0

    .line 2554
    :goto_1
    :pswitch_0
    iget v3, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    iput v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mLastState:I

    .line 2555
    iput p1, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    .line 2558
    packed-switch p1, :pswitch_data_1

    .line 2602
    :goto_2
    if-eqz v1, :cond_0

    .line 2603
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$20;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/PhotoPage$20;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2535
    :pswitch_1
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/PhotoView;->leaveWallpaperMode()V

    goto :goto_1

    .line 2544
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoPage;->setFilmTextShow(Z)V

    .line 2545
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 2546
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mInforBarCustomView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 2547
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateInfo()V

    goto :goto_1

    .line 2550
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoPage;->showSlideshowButtons(Z)V

    goto :goto_1

    .line 2562
    :pswitch_4
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars()V

    goto :goto_2

    .line 2565
    :pswitch_5
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showBars()V

    .line 2566
    const/4 v1, 0x1

    .line 2567
    goto :goto_2

    .line 2569
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->setFilmTextShow(Z)V

    .line 2570
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->layoutFilmText()V

    .line 2571
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

    if-le v3, v4, :cond_2

    .line 2572
    .local v0, landscape:Z
    :goto_3
    if-eqz v0, :cond_3

    .line 2573
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 2578
    :goto_4
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateInfo()V

    goto :goto_2

    .end local v0           #landscape:Z
    :cond_2
    move v0, v2

    .line 2571
    goto :goto_3

    .line 2575
    .restart local v0       #landscape:Z
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 2576
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    goto :goto_4

    .line 2581
    .end local v0           #landscape:Z
    :pswitch_7
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/PhotoView;->enterWallpaperMode()V

    .line 2582
    const/4 v1, 0x1

    .line 2583
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoPage;->showDlnaButton(Z)V

    goto/16 :goto_2

    .line 2586
    :pswitch_8
    const/4 v1, 0x1

    .line 2587
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoPage;->showDlnaButton(Z)V

    goto/16 :goto_2

    .line 2590
    :pswitch_9
    const/4 v1, 0x1

    .line 2591
    goto/16 :goto_2

    .line 2593
    :pswitch_a
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showBars()V

    goto/16 :goto_2

    .line 2597
    :pswitch_b
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showBars()V

    goto/16 :goto_2

    .line 2531
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 2558
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
    .line 2700
    new-instance v2, Lcom/android/gallery3d/app/PhotoPage$GetBmpForWallPaperTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/app/PhotoPage$GetBmpForWallPaperTask;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V

    .line 2701
    .local v2, task:Lcom/android/gallery3d/app/PhotoPage$GetBmpForWallPaperTask;
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    .line 2702
    .local v1, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 2704
    :try_start_0
    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/GLRoot;->addOnGLIdleListener(Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2707
    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 2709
    :goto_0
    invoke-virtual {v2}, Lcom/android/gallery3d/app/PhotoPage$GetBmpForWallPaperTask;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2710
    .local v0, bitmap:Landroid/graphics/Bitmap;
    return-object v0

    .line 2705
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 2707
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

    .line 1861
    iget v1, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 1904
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1865
    :pswitch_1
    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIntentType:I

    packed-switch v1, :pswitch_data_1

    .line 1867
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    .line 1877
    :goto_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    goto :goto_0

    .line 1871
    :pswitch_3
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    goto :goto_1

    .line 1874
    :pswitch_4
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    goto :goto_1

    .line 1880
    :pswitch_5
    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLastState:I

    if-ne v1, v4, :cond_1

    .line 1881
    invoke-direct {p0, v4}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    goto :goto_0

    .line 1883
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    .line 1884
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1888
    :pswitch_6
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    .line 1889
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    goto :goto_0

    .line 1892
    :pswitch_7
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    .line 1895
    :pswitch_8
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    goto :goto_0

    .line 1898
    :pswitch_9
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 1899
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    .line 1900
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    goto :goto_0

    .line 1861
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

    .line 1865
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
    .line 1229
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars(Z)V

    .line 1230
    return-void
.end method

.method private hideBars(Z)V
    .locals 3
    .parameter "useAnimation"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1232
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-nez v0, :cond_0

    .line 1241
    :goto_0
    return-void

    .line 1233
    :cond_0
    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 1234
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    if-eqz v0, :cond_1

    .line 1235
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->hide()V

    .line 1236
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoPage;->showDlnaButton(Z)V

    .line 1237
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 1240
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private hideDetails()V
    .locals 1

    .prologue
    .line 1735
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    .line 1736
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->hide()V

    .line 1737
    return-void
.end method

.method private hideLightLayout()V
    .locals 3

    .prologue
    .line 1168
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 1169
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1170
    .local v0, ani:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1171
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1172
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1174
    .end local v0           #ani:Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method private initBrightnessParams()V
    .locals 2

    .prologue
    .line 1138
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getSystemMaxBrightness()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMaxSysLight:I

    .line 1139
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getSystemMinBrightness()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMinSysLight:I

    .line 1140
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getAppBrightnessValue()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBrightness:I

    .line 1141
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getSystemBrightnessValue()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSystemBrightness:I

    .line 1142
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09010a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMoveRangeHorizontal:I

    .line 1143
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09010b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMoveRangeVertical:I

    .line 1144
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->initLightSeekBarProgress()V

    .line 1145
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

    .line 2818
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0d0010

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2820
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 2824
    invoke-static {v8}, Lcom/android/camera/Util;->dpToPixel(I)I

    move-result v2

    .line 2825
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2826
    new-instance v4, Landroid/widget/ImageButton;

    invoke-direct {v4, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    .line 2827
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setId(I)V

    .line 2828
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020050

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2829
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v4, v11}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2830
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2831
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v4, v2, v9, v2, v9}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 2832
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2834
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2835
    new-instance v4, Landroid/widget/ImageButton;

    invoke-direct {v4, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    .line 2836
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setId(I)V

    .line 2837
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02004d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2838
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v4, v11}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2839
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2840
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v4, v2, v9, v2, v9}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 2841
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2844
    const/4 v2, 0x7

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(I)I

    move-result v2

    .line 2846
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2847
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitItemName:Landroid/widget/TextView;

    .line 2848
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitItemName:Landroid/widget/TextView;

    int-to-float v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2849
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitItemName:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 2850
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitItemName:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2851
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitItemName:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2852
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitItemName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 2853
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitItemName:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09015b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 2854
    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2855
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitItemName:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2857
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2858
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitResSize:Landroid/widget/TextView;

    .line 2859
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitResSize:Landroid/widget/TextView;

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2860
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitResSize:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 2861
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitResSize:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2862
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitResSize:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2864
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04004a

    invoke-virtual {v1, v2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLandscapeFileModeLayout:Landroid/view/ViewGroup;

    .line 2865
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2866
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mLandscapeFileModeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2867
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mLandscapeFileModeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2868
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLandscapeFileModeLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0d00fb

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModeLandscapeItemName:Landroid/widget/TextView;

    .line 2869
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLandscapeFileModeLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0d00fc

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModeLandscapeResSize:Landroid/widget/TextView;

    .line 2871
    return-void
.end method

.method private initLightLayout()V
    .locals 4

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLihghtView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1121
    const v1, 0x7f040007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLihghtView:Landroid/view/View;

    .line 1124
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090108

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1125
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1126
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1127
    const/16 v1, 0x15

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1128
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLihghtView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1130
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLihghtView:Landroid/view/View;

    const v1, 0x7f0d000e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightLayout:Landroid/widget/LinearLayout;

    .line 1131
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLihghtView:Landroid/view/View;

    const v1, 0x7f0d000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/seekbar/VerSeekBar;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

    .line 1132
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSeekListener:Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setOnSeekBarChangeListener(Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;)V

    .line 1133
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setMax(I)V

    .line 1134
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->initLightSeekBarProgress()V

    .line 1135
    return-void
.end method

.method private layoutFilmText()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2922
    iget v2, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 2959
    :goto_0
    return-void

    .line 2925
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->setFilmTextShow(Z)V

    .line 2928
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v2

    .line 2929
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v3

    .line 2930
    if-ge v2, v3, :cond_1

    .line 2933
    :goto_1
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050090

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2935
    if-eqz v0, :cond_2

    .line 2938
    sget v0, Lcom/android/gallery3d/util/GalleryUtils;->STATUS_BAR_HEIGHT:I

    add-int/2addr v0, v2

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900fd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v3, v0

    .line 2939
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitItemName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2940
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2941
    invoke-virtual {v0, v1, v3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 2942
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitItemName:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2945
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0900fe

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 2946
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitResSize:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2947
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2948
    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 2949
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitResSize:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2930
    goto :goto_1

    .line 2952
    :cond_2
    sget v0, Lcom/android/gallery3d/util/GalleryUtils;->STATUS_BAR_HEIGHT:I

    add-int/2addr v2, v0

    .line 2953
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLandscapeFileModeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2954
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2955
    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 2956
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLandscapeFileModeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method private layoutSlideshowButton()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v1, 0x1

    const/4 v5, 0x5

    const/16 v4, 0xb

    const/4 v2, 0x0

    .line 2874
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    if-eq v0, v5, :cond_0

    .line 2919
    :goto_0
    return-void

    .line 2878
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v0

    .line 2879
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v3

    .line 2880
    if-ge v0, v3, :cond_1

    move v0, v1

    .line 2882
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaClient:Landroid/media/dlna/DlnaClient;

    invoke-virtual {v3}, Landroid/media/dlna/DlnaClient;->listPlayers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 2883
    :goto_2
    if-eqz v0, :cond_4

    .line 2885
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2886
    if-eqz v1, :cond_3

    .line 2887
    invoke-virtual {v0, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2888
    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2893
    :goto_3
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f09011e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v3, Lcom/android/gallery3d/util/GalleryUtils;->STATUS_BAR_HEIGHT:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2895
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2897
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2898
    invoke-virtual {v0, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2899
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09011e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/android/gallery3d/util/GalleryUtils;->STATUS_BAR_HEIGHT:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2900
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 2880
    goto :goto_1

    :cond_2
    move v1, v2

    .line 2882
    goto :goto_2

    .line 2890
    :cond_3
    invoke-virtual {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2891
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3

    .line 2903
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2904
    if-eqz v1, :cond_5

    .line 2905
    invoke-virtual {v0, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2906
    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2911
    :goto_4
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f09011c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2912
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2914
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2915
    invoke-virtual {v0, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2916
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09011c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2917
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 2908
    :cond_5
    invoke-virtual {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2909
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_4
.end method

.method private onUpPressed()V
    .locals 4

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 1345
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    .line 1367
    :cond_0
    :goto_0
    return-void

    .line 1349
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1351
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v0, :cond_2

    .line 1353
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1354
    const-string v1, "media-path"

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    const-string v1, "parent-media-path"

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1361
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

    .line 1363
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1364
    const-string v2, "vnd.android.cursor.dir/image"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1365
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static playVideo(Landroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2055
    :try_start_0
    const-string v0, "video/*"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "treat-up-as-back"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2058
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2063
    :goto_0
    return-void

    .line 2059
    :catch_0
    move-exception v0

    .line 2060
    const v0, 0x7f0a015c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private preparePhotoFallbackView()V
    .locals 3

    .prologue
    .line 2147
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    .line 2148
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$PreparePhotoFallback;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/gallery3d/app/PhotoPage$PreparePhotoFallback;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V

    .line 2149
    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 2152
    :try_start_0
    invoke-interface {v1, v0}, Lcom/android/gallery3d/ui/GLRoot;->addOnGLIdleListener(Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;)V

    .line 2153
    invoke-virtual {v0}, Lcom/android/gallery3d/app/PhotoPage$PreparePhotoFallback;->get()Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2155
    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 2157
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v1

    const-string v2, "resume_animation"

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2159
    return-void

    .line 2155
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    throw v0
.end method

.method private refreshHidingMessage()V
    .locals 0

    .prologue
    .line 1248
    return-void
.end method

.method private setCurrentPhotoByIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 2066
    if-nez p1, :cond_1

    .line 2072
    :cond_0
    :goto_0
    return-void

    .line 2067
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

    .line 2069
    .local v0, path:Lcom/android/gallery3d/data/Path;
    if-eqz v0, :cond_0

    .line 2070
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-interface {v1, v0, v2}, Lcom/android/gallery3d/app/PhotoPage$Model;->setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_0
.end method

.method private setFilmTextShow(Z)V
    .locals 4
    .parameter "show"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 2799
    if-eqz p1, :cond_1

    .line 2800
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->bounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLView;->bounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2801
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitItemName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2802
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitResSize:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2803
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLandscapeFileModeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2814
    :goto_0
    return-void

    .line 2805
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitItemName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2806
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitResSize:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2807
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLandscapeFileModeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 2810
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitItemName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2811
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitResSize:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2812
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLandscapeFileModeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private setResult()V
    .locals 3

    .prologue
    .line 1370
    const/4 v0, 0x0

    .line 1371
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1372
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1373
    const-string v1, "return-index-hint"

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1375
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/app/PhotoPage;->setStateResult(ILandroid/content/Intent;)V

    .line 1376
    return-void
.end method

.method private showBars()V
    .locals 1

    .prologue
    .line 1206
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->showBars(Z)V

    .line 1207
    return-void
.end method

.method private showBars(Z)V
    .locals 2
    .parameter "useAnimation"

    .prologue
    const/4 v1, 0x1

    .line 1210
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v0, :cond_0

    .line 1226
    :goto_0
    return-void

    .line 1211
    :cond_0
    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 1212
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager;->unlockOrientation()V

    .line 1213
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    if-eqz v0, :cond_1

    .line 1214
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->show()V

    .line 1215
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mNeedUpdateInfo:Z

    if-eqz v0, :cond_1

    .line 1216
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateInfo()V

    .line 1219
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoPage;->showDlnaButton(Z)V

    .line 1220
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoPage;->showSlideshowButtons(Z)V

    .line 1222
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 1225
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    goto :goto_0
.end method

.method private showDLNADlg()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 932
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceAdapter:Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;

    if-nez v0, :cond_0

    .line 933
    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;

    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    new-array v2, v3, [Landroid/media/dlna/DlnaDevice;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;I)V

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceAdapter:Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    .line 937
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    const v2, 0x1030317

    invoke-direct {v1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 938
    const v0, 0x7f0a01b8

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 939
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceAdapter:Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;

    new-instance v2, Lcom/android/gallery3d/app/PhotoPage$10;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/PhotoPage$10;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 974
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceDialog:Landroid/app/AlertDialog;

    .line 976
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateDLNADevicesList()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 977
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 981
    :goto_0
    return-void

    .line 979
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/PhotoPage;->showDlnaButton(Z)V

    goto :goto_0
.end method

.method private showDetails(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 1740
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    .line 1741
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    if-nez v0, :cond_0

    .line 1742
    new-instance v0, Lcom/android/gallery3d/ui/DetailsHelper;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$MyDetailsSource;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/gallery3d/app/PhotoPage$MyDetailsSource;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/DetailsHelper;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    .line 1743
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$16;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/PhotoPage$16;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/DetailsHelper;->setCloseListener(Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;)V

    .line 1751
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/DetailsHelper;->setCurrentItem(Lcom/android/gallery3d/data/MediaItem;)V

    .line 1752
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/DetailsHelper;->reloadDetails(I)V

    .line 1753
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->show()V

    .line 1754
    return-void
.end method

.method private showDlnaButton(Z)V
    .locals 5
    .parameter "show"

    .prologue
    const/4 v1, 0x0

    .line 2977
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    .line 3001
    :cond_0
    :goto_0
    return-void

    .line 2979
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    xor-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 2981
    if-eqz p1, :cond_2

    .line 2982
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    const-wide/16 v3, 0xa

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2985
    :cond_2
    if-eqz p1, :cond_4

    .line 2986
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 2991
    :sswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 2992
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaClient:Landroid/media/dlna/DlnaClient;

    invoke-virtual {v0}, Landroid/media/dlna/DlnaClient;->listPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2993
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 2979
    goto :goto_1

    .line 2999
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 2986
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method private showLightLayout()V
    .locals 3

    .prologue
    .line 1159
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 1160
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1161
    .local v0, ani:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1162
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1163
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1165
    .end local v0           #ani:Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method private showSlideshowButtons(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 2963
    iget v1, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 2965
    const/4 v0, 0x4

    .line 2972
    .local v0, visibility:I
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2973
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2974
    return-void

    .line 2968
    .end local v0           #visibility:I
    :pswitch_0
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .restart local v0       #visibility:I
    :goto_1
    goto :goto_0

    .end local v0           #visibility:I
    :cond_0
    const/4 v0, 0x4

    goto :goto_1

    .line 2963
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method private startSlideShow()V
    .locals 4

    .prologue
    .line 2613
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars()V

    .line 2614
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2615
    const-string v1, "media-set-path"

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/FilterDeleteSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2616
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 2617
    if-eqz v1, :cond_0

    .line 2618
    const-string v2, "media-item-path"

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2619
    :cond_0
    const-string v1, "photo-index"

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v2}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2620
    const-string v1, "repeat"

    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mRepeat:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2621
    const-string v1, "random-order"

    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mShuffle:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2622
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/SlideshowPage;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 2624
    return-void
.end method

.method private updateBars()V
    .locals 1

    .prologue
    .line 1272
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1273
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars()V

    .line 1275
    :cond_0
    return-void
.end method

.method private updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 5
    .parameter "photo"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 725
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v1, v3}, Lcom/android/gallery3d/app/PhotoPage$Model;->isCamera(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 726
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 727
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    .line 729
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getSystemBrightnessValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/util/GalleryUtils;->setWindowBrightness(Landroid/view/Window;I)V

    .line 731
    invoke-static {v3}, Lcom/android/gallery3d/util/GalleryUtils;->setHasInitBrigtnessFlag(Z)V

    .line 745
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-ne v1, p1, :cond_5

    .line 773
    :cond_2
    :goto_1
    return-void

    .line 733
    :cond_3
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getHasInitBrigtnessFlag()Z

    move-result v1

    if-nez v1, :cond_1

    .line 734
    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBrightness:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 735
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->initGalleryBrightness(Landroid/content/Context;)V

    .line 736
    invoke-static {v4}, Lcom/android/gallery3d/util/GalleryUtils;->setHasInitBrigtnessFlag(Z)V

    .line 737
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->initBrightnessParams()V

    goto :goto_0

    .line 739
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBrightness:I

    invoke-static {v1, v2}, Lcom/android/gallery3d/util/GalleryUtils;->setWindowBrightness(Landroid/view/Window;I)V

    goto :goto_0

    .line 746
    :cond_5
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    .line 747
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_2

    .line 750
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    check-cast v1, Lcom/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/GalleryAppImpl;->getRemoteDeviceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 751
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    check-cast v0, Lcom/android/gallery3d/data/LocalImage;

    .line 752
    .local v0, item:Lcom/android/gallery3d/data/LocalImage;
    iget-object v1, v0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoPage;->dlnaPlay(Ljava/lang/String;)V

    .line 755
    .end local v0           #item:Lcom/android/gallery3d/data/LocalImage;
    :cond_6
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMenuOperations()V

    .line 756
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateTitle()V

    .line 757
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v1, :cond_7

    .line 758
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v2}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/DetailsHelper;->reloadDetails(I)V

    .line 760
    :cond_7
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8

    .line 761
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoPage;->updateShareURI(Lcom/android/gallery3d/data/Path;)V

    .line 767
    :cond_8
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 768
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 769
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateInfo()V

    goto :goto_1

    .line 771
    :cond_9
    iput-boolean v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mNeedUpdateInfo:Z

    goto/16 :goto_1
.end method

.method private updateDLNADevicesList()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 985
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    check-cast v0, Lcom/android/gallery3d/app/GalleryAppImpl;

    .line 987
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaClient:Landroid/media/dlna/DlnaClient;

    invoke-virtual {v1}, Landroid/media/dlna/DlnaClient;->listPlayers()Ljava/util/List;

    move-result-object v5

    .line 988
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v3, :cond_0

    .line 989
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/GalleryAppImpl;->setRemoteDeviceId(Ljava/lang/String;)V

    .line 990
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    const v1, 0x7f02006b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    move v0, v2

    .line 1022
    :goto_0
    return v0

    .line 994
    :cond_0
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaLocalDevice:Landroid/media/dlna/DlnaDevice;

    invoke-interface {v5, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 996
    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryAppImpl;->getRemoteDeviceId()Ljava/lang/String;

    move-result-object v6

    .line 998
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceAdapter:Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;

    if-eqz v1, :cond_1

    .line 999
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceAdapter:Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;

    invoke-virtual {v1, v5}, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;->setObjects(Ljava/util/List;)V

    .line 1000
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceAdapter:Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;->setSelection(I)V

    :cond_1
    move v4, v2

    .line 1003
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_5

    .line 1004
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/dlna/DlnaDevice;

    .line 1005
    iget-object v1, v1, Landroid/media/dlna/DlnaDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1006
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceAdapter:Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;

    if-eqz v1, :cond_2

    .line 1007
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceAdapter:Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;->setSelection(I)V

    :cond_2
    move v1, v3

    .line 1014
    :goto_2
    if-nez v1, :cond_3

    if-eqz v6, :cond_3

    .line 1015
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/GalleryAppImpl;->setRemoteDeviceId(Ljava/lang/String;)V

    .line 1016
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    const v1, 0x7f02006b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move v0, v3

    .line 1022
    goto :goto_0

    .line 1003
    :cond_4
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 1018
    :catch_0
    move-exception v0

    .line 1019
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

    .line 1020
    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method private updateInfo()V
    .locals 10

    .prologue
    const v3, 0x7f09015d

    const v2, 0x7f09015c

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 2716
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateExtraButton()V

    .line 2717
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2718
    if-eqz v0, :cond_0

    .line 2719
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v0, :cond_1

    .line 2720
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2721
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2722
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarSetName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2723
    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2724
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarSetName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2726
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2727
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarItemName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2728
    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2729
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarItemName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2745
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mInforBarCustomView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 2796
    :goto_1
    return-void

    .line 2732
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09015e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2733
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2734
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarSetName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2735
    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2736
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarSetName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2738
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2739
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarItemName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2740
    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2741
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarItemName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2747
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    .line 2749
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getSize()J

    move-result-wide v3

    .line 2750
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v0

    .line 2751
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v1

    .line 2752
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v5

    rem-int/lit16 v5, v5, 0xb4

    if-eqz v5, :cond_7

    .line 2757
    :goto_2
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

    .line 2759
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    if-eq v0, v8, :cond_4

    .line 2760
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-eqz v0, :cond_3

    .line 2761
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v0

    .line 2762
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

    .line 2766
    :goto_3
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarIndex:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2768
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarItemName:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2770
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarSize:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2785
    :goto_4
    iput-boolean v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mNeedUpdateInfo:Z

    .line 2787
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitItemName:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE_SMALL:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2788
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitItemName:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2789
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModePortraitResSize:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2791
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModeLandscapeItemName:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE_SMALL:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2792
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModeLandscapeItemName:Landroid/widget/TextView;

    const/16 v3, 0xfd

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 2793
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModeLandscapeItemName:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2794
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmModeLandscapeResSize:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2764
    :cond_3
    const-string v0, "1/1"

    goto :goto_3

    .line 2772
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/FilterDeleteSet;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2773
    :goto_5
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090158

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09015b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MIDDLE_SMALL:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v3, v4, v5}, Lcom/android/gallery3d/common/Utils;->truncateString(Ljava/lang/String;FFLandroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object v0

    .line 2776
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-eqz v3, :cond_6

    .line 2777
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v3

    .line 2778
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

    const-string v4, " / "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2782
    :goto_6
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 2772
    :cond_5
    const-string v0, ""

    goto :goto_5

    .line 2780
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " 1 / 1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_7
    move v9, v1

    move v1, v0

    move v0, v9

    goto/16 :goto_2
.end method

.method private updateMenuOperations()V
    .locals 3

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_1

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 789
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0d0195

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 790
    if-eqz v0, :cond_2

    .line 791
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->canDoSlideShow()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 793
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v1

    .line 795
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    const-string v2, "image/*"

    invoke-static {v0, v2}, Lcom/android/gallery3d/util/GalleryUtils;->isEditorAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 796
    and-int/lit16 v0, v1, -0x201

    goto :goto_0
.end method

.method private updateShareURI(Lcom/android/gallery3d/data/Path;)V
    .locals 7
    .parameter "path"

    .prologue
    .line 706
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v3, :cond_1

    .line 707
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    .line 708
    .local v1, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual {v1, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaType(Lcom/android/gallery3d/data/Path;)I

    move-result v2

    .line 709
    .local v2, type:I
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 710
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 711
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 712
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v3, v0}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 713
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v3, :cond_0

    .line 714
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v3, 0x1

    new-array v5, v3, [Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v4, v5, v3}, Landroid/nfc/NfcAdapter;->setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V

    .line 717
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mPendingSharePath:Lcom/android/gallery3d/data/Path;

    .line 722
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #manager:Lcom/android/gallery3d/data/DataManager;
    .end local v2           #type:I
    :goto_0
    return-void

    .line 720
    :cond_1
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPendingSharePath:Lcom/android/gallery3d/data/Path;

    goto :goto_0
.end method

.method private updateTitle()V
    .locals 2

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-nez v0, :cond_1

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 777
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 779
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    if-eqz v1, :cond_0

    .line 780
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 781
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 783
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private wantBars()V
    .locals 1

    .prologue
    .line 1260
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showBars()V

    .line 1261
    :cond_0
    return-void
.end method


# virtual methods
.method public initLightSeekBarProgress()V
    .locals 4

    .prologue
    .line 1148
    const/4 v0, 0x0

    .line 1149
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

    .line 1150
    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSystemBrightness:I

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMinSysLight:I

    sub-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMaxSysLight:I

    iget v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mMinSysLight:I

    sub-int/2addr v2, v3

    div-int v0, v1, v2

    .line 1151
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

    if-eqz v1, :cond_0

    .line 1152
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightProgress:I

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setProgress(I)V

    .line 1153
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setBreakPointLevel(I)V

    .line 1154
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->invalidate()V

    .line 1156
    :cond_0
    return-void
.end method

.method public lockOrientation()V
    .locals 2

    .prologue
    .line 1994
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1995
    return-void
.end method

.method public notifyScreenNailChanged()V
    .locals 2

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AppBridge;->attachScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/SnailItem;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 1400
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailSet:Lcom/android/gallery3d/data/SnailAlbum;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/SnailAlbum;->notifyChange()V

    .line 1401
    return-void
.end method

.method public onActionBarAllowed(Z)V
    .locals 0
    .parameter "allowed"

    .prologue
    .line 2006
    return-void
.end method

.method public onActionBarWanted()V
    .locals 2

    .prologue
    .line 2010
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2011
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

    .line 1916
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v2

    .line 1989
    :goto_0
    return v0

    .line 1920
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v3, :cond_2

    .line 1921
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1922
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v2

    .line 1923
    goto :goto_0

    .line 1926
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 1927
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1928
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDownX:I

    .line 1929
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDownY:I

    move v0, v2

    .line 1930
    goto :goto_0

    .line 1931
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 1932
    iput v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mOldLightPro:I

    .line 1933
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsChangeLight:Z

    if-eqz v0, :cond_4

    .line 1934
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v8, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1936
    :cond_4
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsChangeLight:Z

    move v0, v2

    .line 1937
    goto :goto_0

    .line 1938
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 1939
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->bounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1940
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mDownX:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1941
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mDownY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1942
    mul-float v5, v1, v1

    mul-float v6, v4, v4

    add-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v5

    const/high16 v6, 0x4170

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_d

    .line 1943
    div-float v1, v4, v1

    float-to-double v4, v1

    const-wide v6, 0x3fe921fb54442d18L

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    cmpg-double v1, v4, v6

    if-gez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsChangeLight:Z

    if-nez v1, :cond_6

    .line 1944
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1945
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v2

    .line 1946
    goto/16 :goto_0

    .line 1948
    :cond_6
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1949
    iput-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsChangeLight:Z

    .line 1951
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v4, v1

    .line 1952
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v1, v5, :cond_b

    .line 1953
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMoveRangeHorizontal:I

    sub-int v1, v0, v1

    .line 1954
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMoveRangeHorizontal:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v4, v0

    .line 1959
    :goto_1
    if-gez v0, :cond_7

    move v0, v2

    .line 1962
    :cond_7
    if-le v0, v1, :cond_8

    move v0, v1

    .line 1965
    :cond_8
    sub-int v0, v1, v0

    mul-int/lit16 v0, v0, 0x3e8

    div-int v1, v0, v1

    .line 1966
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOldLightPro:I

    if-eq v1, v0, :cond_a

    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOldLightPro:I

    if-eq v0, v9, :cond_a

    .line 1967
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOldLightPro:I

    if-le v1, v0, :cond_c

    .line 1968
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightProgress:I

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mOldLightPro:I

    sub-int v2, v1, v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightProgress:I

    .line 1969
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightProgress:I

    if-lt v0, v10, :cond_9

    .line 1970
    iput v10, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightProgress:I

    .line 1978
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightProgress:I

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setProgress(I)V

    .line 1979
    sget v0, Lcom/android/gallery3d/util/GalleryUtils;->MIN_SYSTEM_BRIGHTNESS:I

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightProgress:I

    sget v4, Lcom/android/gallery3d/util/GalleryUtils;->MIN_SYSTEM_BRIGHTNESS:I

    rsub-int v4, v4, 0xff

    mul-int/2addr v2, v4

    div-int/lit16 v2, v2, 0x3e8

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBrightness:I

    .line 1981
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBrightness:I

    invoke-static {v0, v2}, Lcom/android/gallery3d/util/GalleryUtils;->setWindowBrightness(Landroid/view/Window;I)V

    .line 1983
    :cond_a
    iput v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mOldLightPro:I

    move v0, v3

    .line 1984
    goto/16 :goto_0

    .line 1956
    :cond_b
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMoveRangeVertical:I

    sub-int v1, v0, v1

    .line 1957
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMoveRangeVertical:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v4, v0

    goto :goto_1

    .line 1973
    :cond_c
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightProgress:I

    iget v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mOldLightPro:I

    sub-int/2addr v4, v1

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightProgress:I

    .line 1974
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightProgress:I

    if-gtz v0, :cond_9

    .line 1975
    iput v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightProgress:I

    goto :goto_2

    :cond_d
    move v0, v2

    .line 1986
    goto/16 :goto_0

    :cond_e
    move v0, v2

    .line 1989
    goto/16 :goto_0
.end method

.method protected onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1284
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 1341
    :goto_0
    return-void

    .line 1291
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 1294
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    goto :goto_0

    .line 1298
    :pswitch_2
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLastState:I

    if-eqz v0, :cond_0

    .line 1299
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLastState:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    goto :goto_0

    .line 1301
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_1

    .line 1302
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->switchToFirstImage()V

    goto :goto_0

    .line 1304
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->setResult()V

    .line 1305
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 1311
    :pswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->leaveWallpaperMode()V

    .line 1312
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetWallpaper:Z

    if-eqz v0, :cond_2

    .line 1313
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 1315
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    goto :goto_0

    .line 1319
    :pswitch_4
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    goto :goto_0

    .line 1322
    :pswitch_5
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 1325
    :pswitch_6
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v0, :cond_3

    .line 1326
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideDetails()V

    goto :goto_0

    .line 1327
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->isZoomIn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1328
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->resetToFullView()V

    goto :goto_0

    .line 1331
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->setResult()V

    .line 1332
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mTreatBackAsUp:Z

    if-eqz v0, :cond_5

    .line 1333
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->onUpPressed()V

    goto :goto_0

    .line 1335
    :cond_5
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 1284
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method public onCommitDeleteImage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2046
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    if-nez v0, :cond_0

    .line 2051
    :goto_0
    return-void

    .line 2047
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 2048
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 2049
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    const v1, 0x7f0d0192

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    .line 2050
    iput-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 17
    .parameter "data"
    .parameter "restoreState"

    .prologue
    .line 310
    invoke-super/range {p0 .. p2}, Lcom/android/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    .line 312
    new-instance v2, Lcom/android/gallery3d/ui/SelectionManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lcom/android/gallery3d/ui/SelectionManager;-><init>(Lcom/android/gallery3d/app/GalleryContext;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/SelectionManager;->setSelectionListener(Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;)V

    .line 314
    new-instance v2, Lcom/android/gallery3d/ui/MenuExecutor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v2, v3, v4}, Lcom/android/gallery3d/ui/MenuExecutor;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    .line 316
    new-instance v2, Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v2, v3, v4}, Lcom/android/gallery3d/ui/PhotoView;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/PhotoView;->setListener(Lcom/android/gallery3d/ui/PhotoView$Listener;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/GalleryApp;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getOrientationManager()Lcom/android/gallery3d/app/OrientationManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/app/OrientationManager;->addListener(Lcom/android/gallery3d/app/OrientationManager$Listener;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-interface {v2, v3}, Lcom/android/gallery3d/ui/GLRoot;->setOrientationSource(Lcom/android/gallery3d/ui/OrientationSource;)V

    .line 324
    const-string v2, "key-set-wallpaper"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetWallpaper:Z

    .line 325
    const-string v2, "key-slideshow"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshow:Z

    .line 326
    const-string v2, "media-set-path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 329
    const-string v2, "media-item-path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v5

    .line 330
    .local v5, itemPath:Lcom/android/gallery3d/data/Path;
    const-string v2, "treat-back-as-up"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mTreatBackAsUp:Z

    .line 332
    new-instance v2, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetWallpaperDialog:Landroid/app/ProgressDialog;

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetWallpaperDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0145

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 335
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->initButtons()V

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040061

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mInforBarCustomView:Landroid/view/View;

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mInforBarCustomView:Landroid/view/View;

    const v3, 0x7f0d0135

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarSetName:Landroid/widget/TextView;

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mInforBarCustomView:Landroid/view/View;

    const v3, 0x7f0d0137

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarIndex:Landroid/widget/TextView;

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mInforBarCustomView:Landroid/view/View;

    const v3, 0x7f0d0136

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarItemName:Landroid/widget/TextView;

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mInforBarCustomView:Landroid/view/View;

    const v3, 0x7f0d0138

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarSize:Landroid/widget/TextView;

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarSetName:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE_SMALL:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarIndex:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE_SMALL:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarItemName:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE_SMALL:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarSize:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE_SMALL:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 347
    const-string v2, "app-bridge"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/AppBridge;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v2, :cond_1

    .line 349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/app/AppBridge;->setServer(Lcom/android/gallery3d/app/AppBridge$Server;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/OrientationManager;->lockOrientation()V

    .line 353
    invoke-static {}, Lcom/android/gallery3d/data/SnailSource;->newId()I

    move-result v10

    .line 354
    .local v10, id:I
    invoke-static {v10}, Lcom/android/gallery3d/data/SnailSource;->getSetPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v15

    .line 355
    .local v15, screenNailSetPath:Lcom/android/gallery3d/data/Path;
    invoke-static {v10}, Lcom/android/gallery3d/data/SnailSource;->getItemPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v14

    .line 356
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

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/SnailItem;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AppBridge;->attachScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/SnailItem;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v13

    .line 367
    .local v13, originalSet:Lcom/android/gallery3d/data/MediaSet;
    instance-of v2, v13, Lcom/android/gallery3d/data/LocalAlbum;

    if-eqz v2, :cond_0

    .line 368
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

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v11

    .line 370
    .local v11, lockSet:Lcom/android/gallery3d/data/MediaSet;
    if-eqz v11, :cond_0

    instance-of v2, v11, Lcom/android/gallery3d/data/FilterLockSet;

    if-eqz v2, :cond_0

    .line 371
    check-cast v11, Lcom/android/gallery3d/data/FilterLockSet;

    .end local v11           #lockSet:Lcom/android/gallery3d/data/MediaSet;
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/gallery3d/app/PhotoPage;->mLockSet:Lcom/android/gallery3d/data/FilterLockSet;

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mLockSet:Lcom/android/gallery3d/data/FilterLockSet;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/FilterLockSet;->setNewAddedVisible(Z)V

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mLockSet:Lcom/android/gallery3d/data/FilterLockSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/FilterLockSet;->setForceLockSet(I)V

    .line 374
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mHasCamera:Z

    .line 378
    :cond_0
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

    .line 382
    move-object v5, v14

    .line 386
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 388
    .end local v10           #id:I
    .end local v13           #originalSet:Lcom/android/gallery3d/data/MediaSet;
    .end local v14           #screenNailItemPath:Lcom/android/gallery3d/data/Path;
    .end local v15           #screenNailSetPath:Lcom/android/gallery3d/data/Path;
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    or-int/lit8 v2, v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v13

    .line 392
    .restart local v13       #originalSet:Lcom/android/gallery3d/data/MediaSet;
    instance-of v2, v13, Lcom/android/gallery3d/data/LocalAlbum;

    if-eqz v2, :cond_2

    .line 393
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

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v13

    .line 395
    if-eqz v13, :cond_2

    instance-of v2, v13, Lcom/android/gallery3d/data/FilterLockSet;

    if-eqz v2, :cond_2

    move-object v2, v13

    .line 396
    check-cast v2, Lcom/android/gallery3d/data/FilterLockSet;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mLockSet:Lcom/android/gallery3d/data/FilterLockSet;

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mLockSet:Lcom/android/gallery3d/data/FilterLockSet;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/FilterLockSet;->setNewAddedVisible(Z)V

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mLockSet:Lcom/android/gallery3d/data/FilterLockSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/FilterLockSet;->setForceLockSet(I)V

    .line 402
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2, v13}, Lcom/android/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcom/android/gallery3d/data/MediaSet;)V

    .line 403
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

    .line 404
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

    .line 406
    const-string v2, "index-hint"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-nez v2, :cond_3

    .line 408
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

    .line 411
    :cond_3
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

    if-nez v7, :cond_7

    const/4 v7, -0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v8, :cond_8

    const/4 v8, 0x0

    :goto_1
    invoke-direct/range {v1 .. v8}, Lcom/android/gallery3d/app/PhotoDataAdapter;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/Path;IIZ)V

    .line 415
    .local v1, pda:Lcom/android/gallery3d/app/PhotoDataAdapter;
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->setModel(Lcom/android/gallery3d/ui/PhotoView$Model;)V

    .line 418
    new-instance v2, Lcom/android/gallery3d/app/PhotoPage$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/gallery3d/app/PhotoPage$2;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->setDataListener(Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;)V

    .line 458
    .end local v1           #pda:Lcom/android/gallery3d/app/PhotoDataAdapter;
    .end local v13           #originalSet:Lcom/android/gallery3d/data/MediaSet;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getIntentType()Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    move-result-object v2

    iget v2, v2, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mType:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mIntentType:I

    .line 460
    const-string v2, "media-item-uri"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 461
    .local v16, uri:Ljava/lang/String;
    if-eqz v16, :cond_4

    .line 462
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mUri:Landroid/net/Uri;

    .line 465
    :cond_4
    new-instance v2, Lcom/android/gallery3d/app/PhotoPage$3;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/gallery3d/app/PhotoPage$3;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/ui/GLRoot;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    .line 518
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshow:Z

    if-nez v2, :cond_5

    if-nez p2, :cond_5

    .line 519
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const-string v2, "open-animation-rect"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/ui/PhotoView;->setOpenAnimationRect(Landroid/graphics/Rect;)V

    .line 522
    :cond_5
    new-instance v2, Lcom/android/gallery3d/app/PhotoPage$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/gallery3d/app/PhotoPage$4;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButtonListener:Landroid/view/View$OnClickListener;

    .line 533
    new-instance v2, Lcom/meizu/widget/SelectionButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/meizu/widget/SelectionButton;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    .line 535
    new-instance v9, Landroid/app/ActionBar$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v9, v2, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 536
    .local v9, alp:Landroid/app/ActionBar$LayoutParams;
    const/16 v2, 0x15

    iput v2, v9, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 537
    const/16 v2, 0x20

    iput v2, v9, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v2, v9}, Lcom/meizu/widget/SelectionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 540
    new-instance v2, Lcom/android/gallery3d/app/PhotoPage$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/gallery3d/app/PhotoPage$5;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mBtnClickListener:Landroid/view/View$OnClickListener;

    .line 574
    new-instance v2, Lcom/android/gallery3d/ui/ActionModeHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v6}, Lcom/android/gallery3d/ui/ActionModeHandler;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    const v3, 0x7f110002

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/ActionModeHandler;->setViewId(I)V

    .line 576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/gallery3d/app/PhotoPage$6;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/ActionModeHandler;->setActionModeListener(Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;)V

    .line 605
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetWallpaper:Z

    if-nez v2, :cond_6

    .line 606
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/gallery3d/app/PhotoPage;->hideBars(Z)V

    .line 608
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/gallery3d/app/PhotoPage;->dlnaInit(Landroid/content/Context;)V

    .line 609
    return-void

    .line 411
    .end local v9           #alp:Landroid/app/ActionBar$LayoutParams;
    .end local v16           #uri:Ljava/lang/String;
    .restart local v13       #originalSet:Lcom/android/gallery3d/data/MediaSet;
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v8}, Lcom/android/gallery3d/app/AppBridge;->isPanorama()Z

    move-result v8

    goto/16 :goto_1

    .line 451
    .end local v13           #originalSet:Lcom/android/gallery3d/data/MediaSet;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v12

    check-cast v12, Lcom/android/gallery3d/data/MediaItem;

    .line 453
    .local v12, mediaItem:Lcom/android/gallery3d/data/MediaItem;
    new-instance v2, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-direct {v2, v3, v4, v12}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaItem;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->setModel(Lcom/android/gallery3d/ui/PhotoView$Model;)V

    .line 455
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V

    goto/16 :goto_2
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 10
    .parameter "menu"

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 615
    .local v0, activity:Landroid/app/Activity;
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mInforBarCustomView:Landroid/view/View;

    .line 618
    .local v2, infobarView:Landroid/view/View;
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-eqz v8, :cond_0

    .line 619
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mInfobarSetName:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v9}, Lcom/android/gallery3d/data/FilterDeleteSet;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v6

    .line 623
    .local v6, menuInflater:Landroid/view/MenuInflater;
    const v5, 0x7f110011

    .line 624
    .local v5, menuId:I
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v8}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 625
    .local v1, bar:Landroid/app/ActionBar;
    iget v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mIntentType:I

    packed-switch v8, :pswitch_data_0

    .line 627
    :pswitch_0
    iget v8, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    packed-switch v8, :pswitch_data_1

    .line 629
    :pswitch_1
    const/16 v8, 0x10

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 630
    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 631
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setActionBarViewCollapsable(Z)V

    .line 681
    :goto_0
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setActionModeHeaderHidden(Z)V

    .line 682
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setEnabledBackWhenOverlay(Z)V

    .line 683
    invoke-virtual {v6, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 685
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenu:Landroid/view/Menu;

    .line 686
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v8, :cond_1

    .line 687
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateInfo()V

    .line 690
    :cond_1
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/ActionModeHandler;->isActive()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 691
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    const v9, 0x7f0d0194

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/ui/ActionModeHandler;->findMenuItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 692
    .local v3, item:Landroid/view/MenuItem;
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/GLView;->bounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/GLView;->bounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-ge v8, v9, :cond_5

    const/4 v7, 0x1

    .line 693
    .local v7, tobeLandscape:Z
    :goto_1
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 695
    if-eqz v7, :cond_6

    .line 696
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 702
    .end local v3           #item:Landroid/view/MenuItem;
    .end local v7           #tobeLandscape:Z
    :cond_2
    :goto_2
    const/4 v8, 0x1

    return v8

    .line 634
    :pswitch_2
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 635
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 636
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setActionBarViewCollapsable(Z)V

    goto :goto_0

    .line 639
    :pswitch_3
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/GLView;->bounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/GLView;->bounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-le v8, v9, :cond_3

    const/4 v4, 0x1

    .line 640
    .local v4, landscape:Z
    :goto_3
    if-eqz v4, :cond_4

    .line 641
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    goto :goto_0

    .line 639
    .end local v4           #landscape:Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 643
    .restart local v4       #landscape:Z
    :cond_4
    const/16 v8, 0x18

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 644
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    goto :goto_0

    .line 648
    .end local v4           #landscape:Z
    :pswitch_4
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 649
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 650
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setActionBarViewCollapsable(Z)V

    .line 651
    const v5, 0x7f110014

    .line 652
    goto/16 :goto_0

    .line 654
    :pswitch_5
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 655
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 656
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setActionBarViewCollapsable(Z)V

    .line 657
    const v5, 0x7f110013

    .line 658
    goto/16 :goto_0

    .line 660
    :pswitch_6
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 661
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 662
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setActionBarViewCollapsable(Z)V

    .line 663
    const v5, 0x7f110005

    goto/16 :goto_0

    .line 669
    :pswitch_7
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 670
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setActionBarViewCollapsable(Z)V

    .line 671
    const v5, 0x7f110016

    .line 672
    goto/16 :goto_0

    .line 674
    :pswitch_8
    const/16 v8, 0x10

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 675
    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 676
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setActionBarViewCollapsable(Z)V

    .line 677
    const v5, 0x7f110012

    goto/16 :goto_0

    .line 692
    .restart local v3       #item:Landroid/view/MenuItem;
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 698
    .restart local v7       #tobeLandscape:Z
    :cond_6
    const/16 v8, 0x18

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 699
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 625
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_7
    .end packed-switch

    .line 627
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
    .line 2220
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unfreeze()V

    .line 2221
    return-void
.end method

.method public onDeleteImage(Lcom/android/gallery3d/data/Path;I)V
    .locals 2
    .parameter "path"
    .parameter "offset"

    .prologue
    .line 2028
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->onCommitDeleteImage()V

    .line 2029
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    .line 2030
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeleteIsFocus:Z

    .line 2031
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/data/FilterDeleteSet;->addDeletion(Lcom/android/gallery3d/data/Path;I)V

    .line 2032
    return-void

    .line 2030
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2308
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_0

    .line 2309
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AppBridge;->setServer(Lcom/android/gallery3d/app/AppBridge$Server;)V

    .line 2310
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/SnailItem;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 2311
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AppBridge;->detachScreenNail()V

    .line 2312
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    .line 2313
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailSet:Lcom/android/gallery3d/data/SnailAlbum;

    .line 2314
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    .line 2316
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/OrientationManager;->removeListener(Lcom/android/gallery3d/app/OrientationManager$Listener;)V

    .line 2317
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->setOrientationSource(Lcom/android/gallery3d/ui/OrientationSource;)V

    .line 2320
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2321
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLockSet:Lcom/android/gallery3d/data/FilterLockSet;

    .line 2323
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onDestroy()V

    .line 2324
    return-void
.end method

.method public onDoubleTap(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1909
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_0

    .line 1910
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/app/AppBridge;->onDoubleTap(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1912
    :cond_0
    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 5
    .parameter "full"

    .prologue
    const/4 v2, 0x0

    .line 2015
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2017
    .local v0, m:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2018
    return-void

    .end local v0           #m:Landroid/os/Message;
    :cond_0
    move v1, v2

    .line 2015
    goto :goto_0
.end method

.method public onHudViewClicked(ILjava/lang/Object;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 2353
    .line 2354
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 2355
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    .line 2359
    sparse-switch p1, :sswitch_data_0

    .line 2361
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/app/ActivityState;->onHudViewClicked(ILjava/lang/Object;)Z

    .line 2523
    :goto_0
    :sswitch_0
    return v6

    .line 2364
    :sswitch_1
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 2366
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->onBackPressed()V

    goto :goto_0

    .line 2369
    :pswitch_0
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 2374
    :sswitch_2
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/PhotoPage;->sharedByEmail(Landroid/content/Context;)Z

    goto :goto_0

    .line 2379
    :sswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetWallpaperDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 2380
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$18;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/app/PhotoPage$18;-><init>(Lcom/android/gallery3d/app/PhotoPage;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 2415
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->onHudViewSelect()V

    goto :goto_0

    .line 2418
    :sswitch_5
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 2419
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 2420
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 2421
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    goto :goto_0

    .line 2424
    :sswitch_6
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 2425
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2426
    const-string v3, "confirm-overwrite"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2427
    const-class v3, Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2428
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2429
    invoke-static {v1}, Lcom/android/gallery3d/picasasource/PicasaSource;->isPicasaImage(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2430
    invoke-direct {p0, v6}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    goto :goto_0

    .line 2429
    :cond_0
    const/4 v1, 0x2

    goto :goto_1

    .line 2442
    :sswitch_7
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 2443
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 2444
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 2445
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/SelectionManager;->addToSelected(Lcom/android/gallery3d/data/Path;)V

    .line 2447
    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->onHudViewShare(I)V

    goto/16 :goto_0

    .line 2450
    :sswitch_9
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    const v3, 0x7f0d005d

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2451
    new-instance v3, Landroid/widget/PopupMenu;

    invoke-direct {v3, v2, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 2452
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 2453
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v4}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v4

    .line 2454
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 2455
    const/16 v4, 0x60c

    const v5, 0x7f0a01c7

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2456
    :cond_1
    const/16 v4, 0x60d

    const v5, 0x7f0a01c8

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2457
    const/16 v4, 0x60e

    const v5, 0x7f0a014f

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2458
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-eqz v4, :cond_2

    .line 2459
    const/16 v4, 0x60f

    const v5, 0x7f0a014e

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2460
    :cond_2
    const/16 v4, 0x610

    const v5, 0x7f0a01ca

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v6, v4, v6, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2463
    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$19;

    invoke-direct {v1, p0, v0}, Lcom/android/gallery3d/app/PhotoPage$19;-><init>(Lcom/android/gallery3d/app/PhotoPage;Landroid/app/Activity;)V

    invoke-virtual {v3, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 2497
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_0

    .line 2520
    :sswitch_a
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->onBackPressed()V

    goto/16 :goto_0

    .line 2359
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

    .line 2364
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

    .line 1424
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    .line 1425
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0, v3}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v4

    .line 1427
    if-nez v4, :cond_0

    move v0, v2

    .line 1731
    :goto_0
    return v0

    .line 1432
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v0

    .line 1433
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v5

    .line 1435
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v6}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v6

    .line 1436
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    .line 1438
    sparse-switch v7, :sswitch_data_0

    move v0, v3

    .line 1728
    goto :goto_0

    .line 1440
    :sswitch_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->onUpPressed()V

    move v0, v2

    .line 1441
    goto :goto_0

    .line 1444
    :sswitch_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->startSlideShow()V

    move v0, v2

    .line 1445
    goto :goto_0

    .line 1448
    :sswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 1449
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.android.camera.action.CROP"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1450
    const-string v7, "confirm-overwrite"

    invoke-virtual {v3, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1451
    const-class v7, Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v3, v0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1452
    invoke-virtual {v6, v5}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1453
    invoke-static {v4}, Lcom/android/gallery3d/picasasource/PicasaSource;->isPicasaImage(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x3

    :cond_1
    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v2

    .line 1456
    goto :goto_0

    .line 1459
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

    .line 1462
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v8}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v2

    .line 1464
    goto :goto_0

    .line 1467
    :sswitch_4
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v1, :cond_2

    .line 1468
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideDetails()V

    :goto_1
    move v0, v2

    .line 1472
    goto :goto_0

    .line 1470
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->showDetails(I)V

    goto :goto_1

    .line 1475
    :sswitch_5
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1476
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 1477
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, v5}, Lcom/android/gallery3d/ui/SelectionManager;->addToSelected(Lcom/android/gallery3d/data/Path;)V

    .line 1479
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    if-le v0, v2, :cond_5

    .line 1480
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f10

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 1490
    :goto_2
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-virtual {v1, p1, v0, v8}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    :cond_4
    :goto_3
    move v0, v2

    .line 1731
    goto/16 :goto_0

    .line 1483
    :cond_5
    invoke-virtual {v5}, Lcom/android/gallery3d/data/Path;->getObject()Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    .line 1484
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v0

    if-ne v0, v9, :cond_6

    .line 1485
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a01d2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1487
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a01cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1494
    :sswitch_6
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f10

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 1496
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 1497
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, v5}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 1498
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    invoke-virtual {v1, p1, v0, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    move v0, v2

    .line 1499
    goto/16 :goto_0

    .line 1501
    :sswitch_7
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 1502
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, v5}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 1503
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    new-instance v1, Lcom/android/gallery3d/ui/ImportCompleteListener;

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-direct {v1, v3}, Lcom/android/gallery3d/ui/ImportCompleteListener;-><init>(Lcom/android/gallery3d/app/GalleryActivity;)V

    invoke-virtual {v0, p1, v8, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    move v0, v2

    .line 1505
    goto/16 :goto_0

    .line 1508
    :sswitch_8
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1509
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->addToSelected(Lcom/android/gallery3d/data/Path;)V

    .line 1511
    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-virtual {v0, p1, v8, v8}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    move v0, v2

    .line 1512
    goto/16 :goto_0

    .line 1518
    :sswitch_9
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 1521
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1522
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 1523
    new-instance v2, Landroid/widget/PopupMenu;

    invoke-direct {v2, v1, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1524
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 1526
    const/4 v6, 0x5

    const v7, 0x7f0a01c8

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v3, v6, v3, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1527
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_8

    .line 1528
    const/4 v6, 0x6

    const v7, 0x7f0a01c7

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v3, v6, v3, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1530
    :cond_8
    const/16 v6, 0xb

    const v7, 0x7f0a01ea

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v3, v6, v3, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1532
    const/16 v6, 0x8

    const v7, 0x7f0a014f

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v3, v6, v3, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1535
    const/16 v6, 0xa

    const v7, 0x7f0a01ca

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v6, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1537
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$13;

    invoke-direct {v0, p0, v5, v4}, Lcom/android/gallery3d/app/PhotoPage$13;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/MediaItem;)V

    invoke-virtual {v2, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1592
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->show()V

    :goto_4
    move v0, v3

    .line 1628
    goto/16 :goto_0

    .line 1595
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0d0193

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1596
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 1597
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1598
    new-instance v5, Landroid/widget/PopupMenu;

    invoke-direct {v5, v1, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1599
    invoke-virtual {v5}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 1600
    const v1, 0x7f0a01d7

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1601
    const v1, 0x7f0a01d6

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v3, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1602
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$14;

    invoke-direct {v0, p0, v4}, Lcom/android/gallery3d/app/PhotoPage$14;-><init>(Lcom/android/gallery3d/app/PhotoPage;Landroid/content/res/Resources;)V

    invoke-virtual {v5, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1625
    invoke-virtual {v5}, Landroid/widget/PopupMenu;->show()V

    goto :goto_4

    .line 1630
    :sswitch_a
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 1631
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    move v0, v3

    .line 1632
    goto/16 :goto_0

    .line 1634
    :sswitch_b
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 1635
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 1637
    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIntentType:I

    packed-switch v1, :pswitch_data_1

    move v0, v2

    .line 1645
    goto/16 :goto_0

    .line 1639
    :pswitch_1
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "mms_video_title"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1648
    :goto_5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1649
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1650
    const-string v5, "com.meizu.action.SAVE_FILE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1651
    const-string v5, "init_directory"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1653
    const-string v3, "SAVEATTACHMENT"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1656
    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v4, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1658
    const-string v1, "android.intent.extra.STREAM"

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1660
    const-string v1, "title"

    const v3, 0x7f0a00c6

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1661
    invoke-virtual {v0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1662
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_3

    .line 1642
    :pswitch_2
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "com.meizu.email.AttachmentFileName"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 1666
    :sswitch_c
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const v4, 0x7f0d01ae

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1667
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    .line 1668
    new-instance v5, Landroid/widget/PopupMenu;

    invoke-direct {v5, v4, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1669
    invoke-virtual {v5}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 1670
    const v6, 0x7f0a01cb

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v3, v1, v3, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1671
    const/4 v1, 0x3

    const v6, 0x7f0a01cc

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v3, v1, v3, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1672
    const v1, 0x7f0a01cd

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v9, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1673
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$15;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$15;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v5, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1718
    invoke-virtual {v5}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_3

    .line 1722
    :sswitch_d
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    const v0, 0x7f0d01a6

    if-ne v7, v0, :cond_9

    const/16 v0, -0x5a

    :goto_6
    invoke-virtual {v1, v5, v0}, Lcom/android/gallery3d/data/DataManager;->rotate(Lcom/android/gallery3d/data/Path;I)V

    goto/16 :goto_3

    :cond_9
    const/16 v0, 0x5a

    goto :goto_6

    .line 1725
    :sswitch_e
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    goto/16 :goto_3

    .line 1438
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0d0190 -> :sswitch_8
        0x7f0d0191 -> :sswitch_8
        0x7f0d0192 -> :sswitch_5
        0x7f0d0193 -> :sswitch_9
        0x7f0d0195 -> :sswitch_1
        0x7f0d01a4 -> :sswitch_7
        0x7f0d01a5 -> :sswitch_3
        0x7f0d01a6 -> :sswitch_d
        0x7f0d01a7 -> :sswitch_d
        0x7f0d01a8 -> :sswitch_2
        0x7f0d01a9 -> :sswitch_6
        0x7f0d01aa -> :sswitch_4
        0x7f0d01ab -> :sswitch_6
        0x7f0d01ac -> :sswitch_a
        0x7f0d01ad -> :sswitch_e
        0x7f0d01ae -> :sswitch_c
        0x7f0d01b0 -> :sswitch_b
    .end sparse-switch

    .line 1518
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 1637
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

    .line 1758
    iget v2, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 1799
    :cond_0
    :goto_0
    return-void

    .line 1763
    :pswitch_0
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v2, v4}, Lcom/android/gallery3d/app/PhotoPage$Model;->isCamera(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1766
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->bounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1767
    .local v1, rect:Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->right:I

    sget v3, Lcom/android/gallery3d/app/PhotoPage;->LIGHTBAR_SIZE:I

    sub-int/2addr v2, v3

    if-lt p1, v2, :cond_0

    .line 1768
    iput p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDownX:I

    .line 1769
    iput p2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDownY:I

    .line 1771
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightLayout:Landroid/widget/LinearLayout;

    if-nez v2, :cond_1

    .line 1772
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->initLightLayout()V

    .line 1775
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1776
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v2, :cond_2

    .line 1777
    invoke-direct {p0, v4}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    .line 1780
    :cond_2
    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBrightness:I

    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getAppBrightnessValue()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mSystemBrightness:I

    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getSystemBrightnessValue()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 1782
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->initBrightnessParams()V

    .line 1785
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 1786
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showLightLayout()V

    .line 1787
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1792
    .end local v1           #rect:Landroid/graphics/Rect;
    :pswitch_1
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->hitTest(II)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 1793
    .local v0, hitItem:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    .line 1794
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    goto :goto_0

    .line 1758
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
    .line 1279
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestLayoutContentPane()V

    .line 1280
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 2163
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onPause()V

    .line 2164
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z

    .line 2166
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unfreeze()V

    .line 2167
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2168
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->preparePhotoFallbackView()V

    .line 2170
    :cond_0
    invoke-static {}, Lcom/android/gallery3d/ui/DetailsHelper;->pause()V

    .line 2171
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    if-eqz v0, :cond_1

    .line 2172
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->onPause()V

    .line 2174
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 2176
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2178
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 2181
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->pause()V

    .line 2182
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->pause()V

    .line 2183
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/app/PhotoPage$Model;->pause()V

    .line 2184
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2185
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    if-eqz v0, :cond_2

    .line 2186
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/GalleryActionBar;->removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 2188
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->onCommitDeleteImage()V

    .line 2189
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->pause()V

    .line 2190
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/FilterDeleteSet;->clearDeletion()V

    .line 2192
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    .line 2193
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2194
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2197
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    .line 2198
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2199
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2202
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 2203
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2204
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2207
    :cond_6
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 2208
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoPage;->setFilmTextShow(Z)V

    .line 2211
    :cond_7
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->dlnaOnPause()V

    .line 2213
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->saveGalleryBrightness(Landroid/content/Context;)V

    .line 2214
    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->setHasInitBrigtnessFlag(Z)V

    .line 2215
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBrightness:I

    .line 2216
    return-void

    .line 2178
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v0
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2225
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 2226
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    .line 2227
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->freeze()V

    .line 2228
    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z

    .line 2229
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 2231
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/app/PhotoPage$Model;->resume()V

    .line 2232
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->resume()V

    .line 2233
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->resume()V

    .line 2234
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->resume()V

    .line 2235
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    if-nez v0, :cond_0

    .line 2236
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    .line 2238
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    if-eqz v0, :cond_1

    .line 2239
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/app/GalleryActionBar;->setDisplayOptions(ZZ)V

    .line 2240
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/app/GalleryActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 2246
    :cond_1
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasActivityResult:Z

    .line 2247
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2249
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 2250
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2253
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 2254
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2257
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0, v2}, Lcom/android/gallery3d/app/PhotoPage$Model;->isCamera(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2258
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getHasInitBrigtnessFlag()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2259
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->initGalleryBrightness(Landroid/content/Context;)V

    .line 2260
    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->setHasInitBrigtnessFlag(Z)V

    .line 2262
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->initBrightnessParams()V

    .line 2268
    :goto_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->dlnaOnResume()V

    .line 2270
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    if-ne v0, v6, :cond_5

    .line 2271
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoPage;->setFilmTextShow(Z)V

    .line 2274
    :cond_5
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetWallpaper:Z

    if-eqz v0, :cond_a

    .line 2275
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    .line 2281
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLockSet:Lcom/android/gallery3d/data/FilterLockSet;

    if-eqz v0, :cond_8

    .line 2282
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2283
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 2285
    iget-boolean v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasCamera:Z

    if-eqz v4, :cond_c

    .line 2286
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mLockSet:Lcom/android/gallery3d/data/FilterLockSet;

    invoke-virtual {v4, v1}, Lcom/android/gallery3d/data/FilterLockSet;->setNewAddedVisible(Z)V

    .line 2287
    const-string v4, "LockView"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 2288
    const-string v5, "isSecurity"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2289
    const-string v5, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v4, :cond_b

    if-eqz v0, :cond_b

    move v0, v1

    .line 2291
    :goto_2
    if-eqz v0, :cond_7

    .line 2292
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLockSet:Lcom/android/gallery3d/data/FilterLockSet;

    invoke-virtual {v0, v6}, Lcom/android/gallery3d/data/FilterLockSet;->setForceLockSet(I)V

    .line 2302
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLockSet:Lcom/android/gallery3d/data/FilterLockSet;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/FilterLockSet;->setForceReload(Z)V

    .line 2304
    :cond_8
    return-void

    .line 2264
    :cond_9
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getCurrentScreenBrightness()I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/gallery3d/util/GalleryUtils;->setWindowBrightness(Landroid/view/Window;I)V

    goto :goto_0

    .line 2276
    :cond_a
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshow:Z

    if-eqz v0, :cond_6

    .line 2277
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->startSlideShow()V

    .line 2278
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mSlideshow:Z

    goto :goto_1

    :cond_b
    move v0, v2

    .line 2289
    goto :goto_2

    .line 2295
    :cond_c
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2296
    const-string v3, "unlocked"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2297
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLockSet:Lcom/android/gallery3d/data/FilterLockSet;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/data/FilterLockSet;->setForceLockSet(I)V

    goto :goto_3
.end method

.method public onSelectionChange(Lcom/android/gallery3d/data/Path;Z)V
    .locals 2
    .parameter "path"
    .parameter "selected"

    .prologue
    .line 2657
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 2658
    .local v0, count:I
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    if-eqz v1, :cond_0

    .line 2659
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v1, v0}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    .line 2660
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButtonInActionMode:Lcom/meizu/widget/SelectionButton;

    if-eqz v1, :cond_1

    .line 2661
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButtonInActionMode:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v1, v0}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    .line 2662
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView;->invalidate()V

    .line 2663
    return-void
.end method

.method public onSelectionModeChange(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2628
    packed-switch p1, :pswitch_data_0

    .line 2651
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->invalidate()V

    .line 2652
    return-void

    .line 2630
    :pswitch_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    .line 2631
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->startActionMode()Landroid/view/ActionMode;

    .line 2632
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->enterSelectionMode()V

    goto :goto_0

    .line 2635
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    .line 2636
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->finishActionMode()V

    .line 2637
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SelectionButton;->setAllSelected(Z)V

    .line 2638
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v0, v3}, Lcom/meizu/widget/SelectionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2639
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButtonInActionMode:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SelectionButton;->setAllSelected(Z)V

    .line 2640
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButtonInActionMode:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v0, v3}, Lcom/meizu/widget/SelectionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2641
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->leaveSelectionMode()V

    goto :goto_0

    .line 2644
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 2646
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/SelectionButton;->setAllSelected(Z)V

    .line 2647
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionButtonInActionMode:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/SelectionButton;->setAllSelected(Z)V

    goto :goto_0

    .line 2628
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

    .line 1811
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v2, :cond_1

    .line 1812
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/app/AppBridge;->onSingleTapUp(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1855
    :cond_0
    :goto_0
    return-void

    .line 1816
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v2, v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v3

    .line 1817
    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    if-eq v3, v2, :cond_0

    .line 1822
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mLightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 1823
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1824
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideLightLayout()V

    goto :goto_0

    .line 1828
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1829
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_4

    move v2, v0

    .line 1831
    :goto_1
    if-eqz v2, :cond_8

    .line 1835
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v2

    .line 1836
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v4

    .line 1837
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

    .line 1840
    :goto_2
    if-eqz v0, :cond_6

    .line 1841
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

    .line 1842
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1843
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1844
    const-string v2, "media-path"

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/FilterDeleteSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1847
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

    .line 1829
    goto :goto_1

    :cond_5
    move v0, v1

    .line 1837
    goto :goto_2

    .line 1850
    :cond_6
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->handleSingleTapUp()V

    goto/16 :goto_0

    .line 1853
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

    .line 2076
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasActivityResult:Z

    .line 2077
    packed-switch p1, :pswitch_data_0

    .line 2122
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2079
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/android/gallery3d/app/PhotoPage;->setCurrentPhotoByIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 2082
    :pswitch_2
    if-ne p2, v0, :cond_0

    .line 2083
    invoke-direct {p0, p3}, Lcom/android/gallery3d/app/PhotoPage;->setCurrentPhotoByIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 2087
    :pswitch_3
    if-ne p2, v0, :cond_0

    .line 2088
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 2089
    const v1, 0x7f0a016c

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f0a01a9

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2091
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2096
    :pswitch_4
    if-eqz p3, :cond_0

    .line 2097
    const-string v0, "media-item-path"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2098
    const-string v1, "photo-index"

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2099
    if-eqz v0, :cond_1

    .line 2100
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V

    .line 2102
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$17;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/PhotoPage$17;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2109
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V

    goto :goto_0

    .line 2113
    :pswitch_5
    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 2114
    const-string v0, "copy-move-set-path"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2115
    if-eqz v0, :cond_0

    .line 2116
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2077
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public setCameraRelativeFrame(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "frame"

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoView;->setCameraRelativeFrame(Landroid/graphics/Rect;)V

    .line 1385
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoView;->setSwipingEnabled(Z)V

    .line 1395
    return-void
.end method

.method public switchWithCaptureAnimation(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoView;->switchWithCaptureAnimation(I)Z

    move-result v0

    return v0
.end method

.method public updateExtraButton()V
    .locals 6

    .prologue
    const v5, 0x7f09011d

    const v3, 0x7f09011c

    const/16 v2, 0xb

    const/4 v4, 0x0

    .line 3005
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 3006
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 3007
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v0, :cond_1

    .line 3008
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3009
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3010
    iget v1, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 3016
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 3017
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3019
    :goto_0
    invoke-virtual {v0, v4, v2, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3020
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3029
    :goto_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->showDlnaButton(Z)V

    .line 3031
    :cond_0
    return-void

    .line 3012
    :pswitch_0
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09011e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/android/gallery3d/util/GalleryUtils;->STATUS_BAR_HEIGHT:I

    add-int/2addr v2, v1

    .line 3013
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f09011f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 3022
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3023
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3024
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3025
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 3026
    invoke-virtual {v0, v4, v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3027
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 3010
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
