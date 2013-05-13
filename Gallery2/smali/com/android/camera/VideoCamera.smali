.class public Lcom/android/camera/VideoCamera;
.super Lcom/android/camera/ActivityBase;
.source "VideoCamera.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
.implements Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/camera/VideoFocusManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/VideoCamera$VideoNamer;,
        Lcom/android/camera/VideoCamera$FlashLightAdapter;,
        Lcom/android/camera/VideoCamera$JpegPictureCallback;,
        Lcom/android/camera/VideoCamera$GetThumbnailTask;,
        Lcom/android/camera/VideoCamera$SaveRecordCaptureThumbnailToFileTask;,
        Lcom/android/camera/VideoCamera$MyOrientationEventListener;,
        Lcom/android/camera/VideoCamera$SysBroadcastReceiver;,
        Lcom/android/camera/VideoCamera$MyBroadcastReceiver;,
        Lcom/android/camera/VideoCamera$MainHandler;,
        Lcom/android/camera/VideoCamera$AutoFocusCallback;
    }
.end annotation


# instance fields
.field private final mAutoFocusCallback:Lcom/android/camera/VideoCamera$AutoFocusCallback;

.field private mBackControl:Lcom/android/camera/ui/GlowImageView;

.field private mBackControlImg:Lcom/android/camera/ui/RotateImageView;

.field private mBackControlImgRunnable:Ljava/lang/Runnable;

.field private mBgLearningMessageFrame:Landroid/view/View;

.field private mBgLearningMessageRotater:Lcom/android/camera/ui/RotateLayout;

.field private mCameraDisplayOrientation:I

.field private mCameraMenuInfo:Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

.field mCanNextFocusRunnable:Ljava/lang/Runnable;

.field private mCaptureAnimView:Landroid/widget/ImageView;

.field private mCaptureTimeLapse:Z

.field private mConfiguration_orientation:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mDesiredPreviewHeight:I

.field private mDesiredPreviewWidth:I

.field private mDisplayRotation:I

.field private mDoneText:Landroid/widget/TextView;

.field private final mErrorCallback:Lcom/android/camera/CameraErrorCallback;

.field private mFadeOutRotateToast:Ljava/lang/Runnable;

.field private mFlashLightAdapter:Lcom/android/camera/VideoCamera$FlashLightAdapter;

.field private mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

.field private mFlashLightItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private mFlashLightList:Landroid/widget/ListView;

.field private mFlashLightMode:Ljava/lang/String;

.field private mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

.field private mFocusManager:Lcom/android/camera/VideoFocusManager;

.field private final mGetThumbnailRuunable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mHomePressedRunnable:Ljava/lang/Runnable;

.field private mIsBackControlDown:Z

.field private mIsCanNextFocus:Z

.field private mIsCanResumeVideoRecording:Z

.field mIsCollapseMenuControl:Z

.field private mIsDisableCameraSound:Z

.field private mIsFlymeCaptureIntent:Z

.field private mIsGotoGallery:Z

.field private mIsInfoMaxDuration:Z

.field private mIsInfoMaxFileSize:Z

.field private mIsLastFileEncryptRecord:Z

.field private mIsLockView:Z

.field private mIsLockViewIntent:Z

.field private mIsMeizuVideoIntent:Z

.field private mIsMeizuVideoRecord:Z

.field private mIsMenuAnimation:Z

.field private mIsMenuLongPress:Z

.field private mIsMenuShowed:Z

.field private mIsNeedRefreshStorageHint:Z

.field private mIsPreForbidDegree:Z

.field private mIsSecurityAppLock:Z

.field private mIsStartVideoPlay:Z

.field private mIsSwitchCameraFinish:Z

.field private mIsVideoCaptureIntent:Z

.field private mIsVideoRecord:Z

.field private mIsVideoRecordPause:Z

.field private mLabelsLinearLayout:Lcom/android/camera/ui/RotateLayout;

.field private mLabelsLinearLayoutMMS:Lcom/android/camera/ui/RotateLayout;

.field private mLocationManager:Lcom/android/camera/LocationManager;

.field private mMainMenuAdapter:Lcom/android/camera/VideoMainMenuAdapter;

.field private mMainMenu_h:Landroid/widget/ListView;

.field private mMainMenu_v:Landroid/widget/ListView;

.field private mMainSel:I

.field private mMaxVideoDurationInMs:I

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderRecording:Z

.field private mMeizuVideoRecordMaxSize:J

.field private mMenuBackControl:Landroid/widget/RelativeLayout;

.field private mMenuControl:Lcom/android/camera/ui/GlowImageView;

.field private mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

.field private mMenuFadeOutAniLis:Landroid/view/animation/Animation$AnimationListener;

.field private mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

.field private mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

.field private mMenuShowIcon:Lcom/android/camera/ui/GlowImageView;

.field private mOnResumeTime:J

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationCompensationAtRecordStart:I

.field private mOrientationListener:Lcom/android/camera/VideoCamera$MyOrientationEventListener;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mPowerReceiver:Landroid/content/BroadcastReceiver;

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

.field mPreviewing:Z

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mQuickCapture:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordingPauseStartTime:J

.field private mRecordingPauseTime:J

.field private mRecordingStartTime:J

.field private mRecordingTimeCountsDown:Z

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private mRecordingTimeViewMMS:Landroid/widget/TextView;

.field private mRestoreFlash:Z

.field private mReviewControl:Landroid/view/View;

.field private mReviewDoneButton:Landroid/widget/ImageView;

.field private mReviewImage:Landroid/widget/ImageView;

.field private mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

.field private mRotateDialog:Lcom/android/camera/RotateDialogController;

.field private mRotateFlashLightListLayout:Lcom/android/camera/ui/RotateLayout;

.field private mRotateToastLayout:Lcom/android/camera/ui/RotateLayout;

.field private mRotateToastText:Landroid/widget/TextView;

.field private mSceneMode:Ljava/lang/String;

.field private mScreenShot:Landroid/graphics/Bitmap;

.field private mSecondLevelFadeIn:Landroid/view/animation/Animation;

.field private mSecondLevelFadeOut:Landroid/view/animation/Animation;

.field private mSelIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private mStorageSpace:J

.field private mSubMenu_h:Landroid/widget/ListView;

.field private mSubMenu_v:Landroid/widget/ListView;

.field private mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

.field private mSubVideoSizeAdapter:Lcom/android/camera/SubMenuAdapter;

.field private mSubWBAdapter:Lcom/android/camera/SubMenuAdapter;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

.field private mSwitchCameraBtnImg1:Lcom/android/camera/ui/RotateImageView;

.field private mSwitchCameraBtnImg2:Lcom/android/camera/ui/RotateImageView;

.field private mSwitchCameraModeLayout:Landroid/widget/LinearLayout;

.field private mSwitchingCamera:Z

.field private mSysReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephoneyManager:Landroid/telephony/TelephonyManager;

.field private mTimeBetweenTimeLapseFrameCaptureMs:I

.field private mVideoControlPaneLayout:Lcom/android/camera/ui/ControlPanelLayout;

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFilename:Ljava/lang/String;

.field private mVideoNamer:Lcom/android/camera/VideoCamera$VideoNamer;

.field private mVideoQuality:I

.field private mVideoRecordCaptureBtn:Lcom/android/camera/ui/RotateImageView;

.field private mVideoRecordPauseBtn:Lcom/android/camera/ui/RotateImageView;

.field private mVideoRecordedTimes:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;-><init>()V

    .line 147
    new-instance v0, Lcom/android/camera/CameraErrorCallback;

    invoke-direct {v0, v2}, Lcom/android/camera/CameraErrorCallback;-><init>(Lcom/android/camera/CameraErrorCallback$Listener;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 173
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsVideoRecord:Z

    .line 181
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 183
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeCountsDown:Z

    .line 203
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    .line 205
    iput v1, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 210
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    .line 222
    new-instance v0, Lcom/android/camera/VideoCamera$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/VideoCamera$MainHandler;-><init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    .line 226
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    .line 229
    iput v1, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    .line 239
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMenuShowed:Z

    .line 248
    const-string v0, "light-off"

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightMode:Ljava/lang/String;

    .line 252
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsCollapseMenuControl:Z

    .line 255
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoRecord:Z

    .line 257
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsFlymeCaptureIntent:Z

    .line 263
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsGotoGallery:Z

    .line 266
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsVideoRecordPause:Z

    .line 267
    iput-wide v4, p0, Lcom/android/camera/VideoCamera;->mRecordingPauseTime:J

    .line 268
    iput-wide v4, p0, Lcom/android/camera/VideoCamera;->mRecordingPauseStartTime:J

    .line 279
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsStartVideoPlay:Z

    .line 283
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsPreForbidDegree:Z

    .line 285
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMenuLongPress:Z

    .line 289
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mIsCanResumeVideoRecording:Z

    .line 293
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMenuAnimation:Z

    .line 295
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mIsCanNextFocus:Z

    .line 297
    iput-wide v4, p0, Lcom/android/camera/VideoCamera;->mVideoRecordedTimes:J

    .line 308
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsInfoMaxDuration:Z

    .line 310
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsInfoMaxFileSize:Z

    .line 313
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsBackControlDown:Z

    .line 316
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mIsSwitchCameraFinish:Z

    .line 320
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsLockView:Z

    .line 322
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsLastFileEncryptRecord:Z

    .line 324
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsDisableCameraSound:Z

    .line 326
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsNeedRefreshStorageHint:Z

    .line 328
    new-instance v0, Lcom/android/camera/VideoCamera$AutoFocusCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/VideoCamera$AutoFocusCallback;-><init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mAutoFocusCallback:Lcom/android/camera/VideoCamera$AutoFocusCallback;

    .line 348
    new-instance v0, Lcom/android/camera/VideoCamera$1;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoCamera$1;-><init>(Lcom/android/camera/VideoCamera;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCanNextFocusRunnable:Ljava/lang/Runnable;

    .line 354
    new-instance v0, Lcom/android/camera/VideoCamera$2;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoCamera$2;-><init>(Lcom/android/camera/VideoCamera;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mBackControlImgRunnable:Ljava/lang/Runnable;

    .line 361
    new-instance v0, Lcom/android/camera/VideoCamera$3;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoCamera$3;-><init>(Lcom/android/camera/VideoCamera;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mHomePressedRunnable:Ljava/lang/Runnable;

    .line 463
    new-instance v0, Lcom/android/camera/VideoCamera$4;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoCamera$4;-><init>(Lcom/android/camera/VideoCamera;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 475
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 500
    new-instance v0, Lcom/android/camera/VideoCamera$5;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoCamera$5;-><init>(Lcom/android/camera/VideoCamera;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mPowerReceiver:Landroid/content/BroadcastReceiver;

    .line 522
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mSysReceiver:Landroid/content/BroadcastReceiver;

    .line 756
    new-instance v0, Lcom/android/camera/VideoCamera$7;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoCamera$7;-><init>(Lcom/android/camera/VideoCamera;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuFadeOutAniLis:Landroid/view/animation/Animation$AnimationListener;

    .line 1120
    iput v1, p0, Lcom/android/camera/VideoCamera;->mMainSel:I

    .line 1176
    new-instance v0, Lcom/android/camera/VideoCamera$9;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoCamera$9;-><init>(Lcom/android/camera/VideoCamera;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 2467
    new-instance v0, Lcom/android/camera/VideoCamera$13;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoCamera$13;-><init>(Lcom/android/camera/VideoCamera;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mGetThumbnailRuunable:Ljava/lang/Runnable;

    .line 2689
    new-instance v0, Lcom/android/camera/VideoCamera$14;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoCamera$14;-><init>(Lcom/android/camera/VideoCamera;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mFadeOutRotateToast:Ljava/lang/Runnable;

    .line 3783
    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/camera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/VideoCamera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/android/camera/VideoCamera;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/android/camera/VideoCamera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showTapToSnapshotToast()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->switchCamera()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->collapseFlashLightList()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsGotoGallery:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/VideoCamera;)Lcom/android/camera/VideoFocusManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/VideoFocusManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/VideoCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->switchToOtherMode(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->getThumbnail()V

    return-void
.end method

.method static synthetic access$2202(Lcom/android/camera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/camera/VideoCamera;->mIsCanResumeVideoRecording:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateAndShowStorageHint()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/camera/VideoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput p1, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->isMeizuSystemCaptureIntent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsLockViewIntent:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsLockView:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->readVideoPreferences()V

    return-void
.end method

.method static synthetic access$3002(Lcom/android/camera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/camera/VideoCamera;->mIsMenuAnimation:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/camera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/camera/VideoCamera;->mIsCanNextFocus:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/camera/VideoCamera;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSecondLevelFadeIn:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/camera/VideoCamera;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraModeLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/GlowImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/RotateImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/GlowImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBackControl:Lcom/android/camera/ui/GlowImageView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/GlowImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuShowIcon:Lcom/android/camera/ui/GlowImageView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/camera/VideoCamera;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSecondLevelFadeOut:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/camera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$3802(Lcom/android/camera/VideoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput p1, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$3900(Lcom/android/camera/VideoCamera;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/camera/VideoCamera;->setOrientationIndicator(IZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/RotateImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/ControlPanelLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoControlPaneLayout:Lcom/android/camera/ui/ControlPanelLayout;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/camera/VideoCamera;)Lcom/android/camera/VideoCamera$FlashLightAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightAdapter:Lcom/android/camera/VideoCamera$FlashLightAdapter;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/RotateImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/camera/VideoCamera;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/camera/VideoCamera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/camera/VideoCamera;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/camera/VideoCamera;->mFlashLightMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/camera/VideoCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->updateFlashLightIcon(I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/camera/VideoCamera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ShutterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/camera/VideoCamera;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mScreenShot:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/android/camera/VideoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/camera/VideoCamera;->mScreenShot:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/camera/VideoCamera;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRotateToastText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/android/camera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/camera/VideoCamera;->mIsNeedRefreshStorageHint:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->restorePreferences()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopPreview()V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/camera/VideoCamera;[BLandroid/location/Location;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/camera/VideoCamera;->storeImage([BLandroid/location/Location;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoRecordPause:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/android/camera/VideoCamera;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    return v0
.end method

.method private addVideoToMediaStore()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2172
    const/4 v2, 0x0

    .line 2173
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_3

    .line 2174
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "_size"

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2176
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/camera/VideoCamera;->mRecordingStartTime:J

    sub-long/2addr v0, v3

    .line 2177
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_2

    .line 2178
    iget-boolean v3, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v3, :cond_0

    .line 2179
    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoCamera;->getTimeLapseVideoLength(J)J

    move-result-wide v0

    .line 2181
    :cond_0
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v4, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2186
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoNamer:Lcom/android/camera/VideoCamera$VideoNamer;

    invoke-virtual {v0}, Lcom/android/camera/VideoCamera$VideoNamer;->getUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2192
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2194
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2195
    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2198
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2200
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_VIDEO"

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2210
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current video URI: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 2213
    :goto_1
    iput-object v6, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 2214
    return v0

    .line 2183
    :cond_2
    const-string v3, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Video duration <= 0 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2202
    :catch_0
    move-exception v0

    .line 2205
    :try_start_1
    const-string v1, "videocamera"

    const-string v2, "failed to add video to media store"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2208
    const/4 v0, 0x1

    .line 2210
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current video URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current video URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private changeBackControlStyle()V
    .locals 4

    .prologue
    .line 2256
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    const v1, 0x108046f

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 2257
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mBackControlImgRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2258
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mBackControlImgRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2259
    return-void
.end method

.method private checkVideoFile(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2242
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2244
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0xaf000

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 2245
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2246
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check File Could not delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    :cond_0
    const v1, 0x7f0a00c2

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2251
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private cleanupEmptyFile()V
    .locals 5

    .prologue
    .line 1949
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1950
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1951
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1952
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty video file deleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 1956
    :cond_0
    return-void
.end method

.method private clearVideoNamer()V
    .locals 1

    .prologue
    .line 3624
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoNamer:Lcom/android/camera/VideoCamera$VideoNamer;

    if-eqz v0, :cond_0

    .line 3625
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoNamer:Lcom/android/camera/VideoCamera$VideoNamer;

    invoke-virtual {v0}, Lcom/android/camera/VideoCamera$VideoNamer;->finish()V

    .line 3626
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoNamer:Lcom/android/camera/VideoCamera$VideoNamer;

    .line 3628
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1709
    const-string v0, "videocamera"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 1711
    const-string v0, "videocamera"

    const-string v1, "already stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    :goto_0
    return-void

    .line 1714
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1715
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1716
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 1717
    iput-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 1718
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    .line 1719
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/VideoFocusManager;

    invoke-virtual {v0}, Lcom/android/camera/VideoFocusManager;->onCameraReleased()V

    goto :goto_0
.end method

.method private closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 3604
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 3606
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3610
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 3612
    :cond_0
    return-void

    .line 3607
    :catch_0
    move-exception v0

    .line 3608
    const-string v1, "videocamera"

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private collapseFlashLightList()V
    .locals 3

    .prologue
    const-wide/16 v1, 0xc8

    .line 748
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportFlashLightMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightList:Landroid/widget/ListView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 751
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 753
    :cond_0
    return-void
.end method

.method private collapseMenuControl()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 847
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMenuShowed:Z

    if-eqz v1, :cond_0

    .line 848
    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMenuShowed:Z

    .line 849
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->hideMenuLayout()V

    .line 850
    const/4 v0, 0x1

    .line 852
    :cond_0
    return v0
.end method

.method private controlMenuBar()V
    .locals 2

    .prologue
    .line 833
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 834
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMenuShowed:Z

    if-nez v0, :cond_1

    .line 835
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->collapseFlashLightList()V

    .line 836
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_0

    .line 837
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showMenuLayout()V

    .line 838
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMenuShowed:Z

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 841
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->collapseMenuControl()Z

    goto :goto_0
.end method

.method private convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 3597
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3598
    const-string v0, ".mp4"

    .line 3600
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ".3gp"

    goto :goto_0
.end method

.method private convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 3590
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3591
    const-string v0, "video/mp4"

    .line 3593
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "video/3gpp"

    goto :goto_0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 8
    .parameter "dateTaken"

    .prologue
    .line 557
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 558
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v6, 0x7f0a0082

    invoke-virtual {p0, v6}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 561
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 563
    .local v2, fileName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 564
    const-string v6, "V"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 565
    .local v4, index:I
    if-ltz v4, :cond_0

    .line 566
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 567
    .local v3, firLetter:Ljava/lang/String;
    const/4 v6, 0x4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 568
    .local v5, tempResult:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 571
    .end local v3           #firLetter:Ljava/lang/String;
    .end local v4           #index:I
    .end local v5           #tempResult:Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private deleteCurrentVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2219
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2220
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->deleteVideoFile(Ljava/lang/String;)V

    .line 2221
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2222
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 2223
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2224
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2227
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateAndShowStorageHint()V

    .line 2228
    return-void
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 2231
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2233
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2234
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    :cond_0
    return-void
.end method

.method private doMenu()V
    .locals 2

    .prologue
    .line 1356
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMenuLongPress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsStorageHintShow:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIsShowCameraAppView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1358
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->controlMenuBar()V

    .line 1360
    :cond_0
    return-void
.end method

.method private doReturnToCaller(Z)V
    .locals 4
    .parameter

    .prologue
    .line 1930
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1932
    if-eqz p1, :cond_2

    .line 1933
    const/4 v0, -0x1

    .line 1934
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1938
    :goto_0
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    if-eqz v2, :cond_0

    .line 1939
    const-string v2, "Camera_Type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1941
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsFlymeCaptureIntent:Z

    if-eqz v2, :cond_1

    .line 1942
    const-string v2, "isFlymeMms"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1944
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/VideoCamera;->setResultEx(ILandroid/content/Intent;)V

    .line 1945
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->finish()V

    .line 1946
    return-void

    .line 1936
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enableCameraControls(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 864
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraModeLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/MaskedRotateImageView;->setEnabled(Z)V

    .line 869
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 870
    :cond_2
    return-void
.end method

.method private forbidTouchFocus(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3439
    int-to-float v0, p1

    int-to-float v1, p2

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    int-to-float v0, p1

    int-to-float v1, p2

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    int-to-float v0, p1

    int-to-float v1, p2

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mFlashLightList:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3441
    :cond_0
    const/4 v0, 0x1

    .line 3443
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private generateVideoFilename(I)V
    .locals 10
    .parameter

    .prologue
    const/16 v8, 0x2f

    const/4 v1, 0x0

    .line 2106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2107
    invoke-direct {p0, v2, v3}, Lcom/android/camera/VideoCamera;->createName(J)Ljava/lang/String;

    move-result-object v4

    .line 2109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2110
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v6

    .line 2112
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsFlymeCaptureIntent:Z

    if-eqz v0, :cond_2

    .line 2113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/camera/Storage;->VIDEO_DIRECTORY_FLYME_MMS:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2118
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2119
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    iput-object v8, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 2120
    iget-object v8, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "title"

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "_display_name"

    invoke-virtual {v4, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v5, "datetaken"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2123
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "mime_type"

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2124
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "_data"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2125
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "resolution"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "width"

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2129
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "height"

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2130
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    div-int/lit8 v0, v0, 0x5a

    and-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 2131
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "orientation"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2135
    :goto_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 2136
    if-eqz v0, :cond_0

    .line 2137
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "latitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2138
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "longitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2140
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoNamer:Lcom/android/camera/VideoCamera$VideoNamer;

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/VideoCamera$VideoNamer;->prepareUri(Landroid/content/ContentResolver;Landroid/content/ContentValues;)V

    .line 2141
    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 2143
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2146
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2151
    :goto_2
    if-nez v0, :cond_1

    .line 2152
    const-string v1, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fail and retry it."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    const-wide/16 v3, 0x32

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2159
    :goto_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    .line 2163
    :goto_4
    if-nez v0, :cond_1

    .line 2164
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fail !!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 2168
    :cond_1
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New video filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    return-void

    .line 2115
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/camera/Storage;->VIDEO_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2133
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "orientation"

    const/16 v3, 0x5a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 2147
    :catch_0
    move-exception v0

    .line 2148
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto/16 :goto_2

    .line 2155
    :catch_1
    move-exception v1

    .line 2156
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 2160
    :catch_2
    move-exception v1

    .line 2161
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method private getCaptureAnimationRotate()I
    .locals 3

    .prologue
    .line 1210
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mVideoRecordPauseBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateImageView;->getDegree()I

    move-result v0

    .line 1211
    .local v0, rotate:I
    iget v1, p0, Lcom/android/camera/VideoCamera;->mConfiguration_orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v0

    .line 1223
    :goto_0
    return v1

    .line 1213
    :cond_0
    iget v1, p0, Lcom/android/camera/VideoCamera;->mConfiguration_orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 1214
    if-nez v0, :cond_2

    .line 1215
    const/16 v0, 0x10e

    :cond_1
    :goto_1
    move v1, v0

    .line 1221
    goto :goto_0

    .line 1216
    :cond_2
    const/16 v1, 0x5a

    if-ne v0, v1, :cond_3

    .line 1217
    const/4 v0, 0x0

    goto :goto_1

    .line 1218
    :cond_3
    const/16 v1, 0xb4

    if-ne v0, v1, :cond_1

    .line 1219
    const/16 v0, 0x5a

    goto :goto_1

    .line 1223
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDesiredPreviewSize()V
    .locals 6

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1501
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1502
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    .line 1503
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    .line 1521
    :goto_0
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDesiredPreviewWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". mDesiredPreviewHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    return-void

    .line 1505
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 1506
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1507
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v0

    .line 1508
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1510
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1511
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 1512
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v4

    if-le v0, v2, :cond_1

    .line 1513
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1516
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v2, v0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {p0, v1, v2, v3}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1518
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    .line 1519
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    goto :goto_0
.end method

.method private getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    .locals 2
    .parameter "preferences"

    .prologue
    .line 575
    invoke-static {p0}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 576
    .local v0, intentCameraId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 581
    .end local v0           #intentCameraId:I
    :goto_0
    return v0

    .restart local v0       #intentCameraId:I
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0
.end method

.method private getThumbnail()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2496
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    if-eqz v1, :cond_1

    .line 2522
    :cond_0
    :goto_0
    return-void

    .line 2499
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 2501
    const/4 v0, 0x0

    .line 2503
    .local v0, videoFrame:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v2}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2508
    if-eqz v0, :cond_2

    .line 2509
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-static {v1, v0, v3}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/camera/Thumbnail;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    .line 2510
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/MaskedRotateImageView;->setVisibility(I)V

    .line 2511
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v2}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/MaskedRotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2512
    iget v1, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    invoke-static {v1}, Lcom/android/camera/Util;->setVideoThumbRotate(I)V

    .line 2518
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v1, :cond_0

    .line 2519
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->saveThumbnailToFile()V

    goto :goto_0
.end method

.method private getTimeLapseVideoLength(J)J
    .locals 6
    .parameter "deltaMs"

    .prologue
    .line 2887
    long-to-double v2, p1

    iget v4, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 2888
    .local v0, numberOfFrames:D
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-double v2, v2

    div-double v2, v0, v2

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-long v2, v2

    return-wide v2
.end method

.method private gotoCaptureAlert()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2557
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2558
    const/4 v0, 0x0

    .line 2559
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_1

    .line 2560
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v2}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2566
    :cond_0
    :goto_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/camera/VideoCamera;->enableCameraControls(Z)V

    .line 2567
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2568
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showSwitchAndFlashBtn()V

    .line 2569
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->hideVideoRecordingUI()V

    .line 2570
    if-nez v0, :cond_2

    .line 2572
    const v0, 0x7f0a00c2

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2573
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 2574
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2583
    :goto_1
    return-void

    .line 2562
    :cond_1
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2563
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v2}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 2577
    :cond_2
    const-string v2, "temp"

    invoke-static {v2, v0}, Lcom/android/camera/Storage;->saveImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2578
    const-string v0, "android.media.action.CAPTURE_DONE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2579
    const-string v0, "current_uri"

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2580
    const-string v0, "file_format"

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v2}, Lcom/android/camera/VideoCamera;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2581
    const-string v0, "meizu_video_intent"

    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2582
    const/16 v0, 0x3e9

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/VideoCamera;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method private hideMenuAndBackBtn()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 898
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 900
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 902
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBackControl:Lcom/android/camera/ui/GlowImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 903
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 904
    return-void
.end method

.method private hideMenuLayout()V
    .locals 4

    .prologue
    const/16 v3, 0xb4

    const/16 v2, 0x8

    .line 820
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    if-ne v0, v3, :cond_0

    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportLedLight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->setMenuEnabled(Z)V

    .line 823
    :cond_0
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    div-int/lit8 v0, v0, 0x5a

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    if-ne v0, v3, :cond_2

    .line 824
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 825
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSecondLevelFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 830
    :goto_0
    return-void

    .line 827
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 828
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSecondLevelFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private hideSwitchAndFlashBtn()V
    .locals 4

    .prologue
    const-wide/16 v2, 0xc8

    .line 873
    iget v0, p0, Lcom/android/camera/ActivityBase;->mNumberOfCameras:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 874
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 876
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportFlashLightMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    if-eqz v0, :cond_1

    .line 878
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 879
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightList:Landroid/widget/ListView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 884
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->hideSwitchCameraLayout()V

    .line 885
    return-void

    .line 881
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    goto :goto_0
.end method

.method private hideSwitchCameraLayout()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 916
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraModeLayout:Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 917
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtnImg1:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 918
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtnImg2:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 919
    return-void
.end method

.method private hideVideoRecordingUI()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x32

    .line 928
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoRecordPauseBtn:Lcom/android/camera/ui/RotateImageView;

    const v1, 0x7f020026

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 932
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoRecordPauseBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 933
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 934
    invoke-static {}, Lcom/android/camera/Util;->getIsDeviceM030()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoRecordCaptureBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 936
    :cond_1
    return-void
.end method

.method private initMenuBarAnimation()V
    .locals 2

    .prologue
    .line 803
    const v0, 0x7f050004

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mSecondLevelFadeOut:Landroid/view/animation/Animation;

    .line 804
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSecondLevelFadeOut:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mMenuFadeOutAniLis:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 805
    const v0, 0x7f050005

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mSecondLevelFadeIn:Landroid/view/animation/Animation;

    .line 806
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSecondLevelFadeIn:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mMenuFadeOutAniLis:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 807
    return-void
.end method

.method private initializeControlByIntent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3132
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3136
    const v0, 0x7f0d00d3

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewDoneButton:Landroid/widget/ImageView;

    .line 3137
    const v0, 0x7f0d0166

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    .line 3138
    const v0, 0x7f0d00d4

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mDoneText:Landroid/widget/TextView;

    .line 3139
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mDoneText:Landroid/widget/TextView;

    const v1, 0x7f0a0030

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3140
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 3141
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "meizu_video_record_max_size"

    const-wide/32 v2, 0x41000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mMeizuVideoRecordMaxSize:J

    .line 3142
    const v0, 0x7f0d01a7

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mLabelsLinearLayoutMMS:Lcom/android/camera/ui/RotateLayout;

    .line 3143
    const v0, 0x7f0d01a8

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeViewMMS:Landroid/widget/TextView;

    .line 3151
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_1

    .line 3152
    const v0, 0x7f0d0196

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraModeLayout:Landroid/widget/LinearLayout;

    .line 3153
    const v0, 0x7f0d0197

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtnImg1:Lcom/android/camera/ui/RotateImageView;

    .line 3154
    const v0, 0x7f0d0198

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtnImg2:Lcom/android/camera/ui/RotateImageView;

    .line 3155
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3156
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtnImg1:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 3157
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtnImg2:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 3159
    :cond_1
    return-void

    .line 3146
    :cond_2
    const v0, 0x7f0d0174

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/MaskedRotateImageView;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    .line 3147
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/MaskedRotateImageView;->enableFilter(Z)V

    .line 3148
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/MaskedRotateImageView;->setVisibility(I)V

    .line 3149
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/MaskedRotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailViewWidth:I

    goto :goto_0
.end method

.method private initializeFlashLightList()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 3113
    const v0, 0x7f0d008f

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mRotateFlashLightListLayout:Lcom/android/camera/ui/RotateLayout;

    .line 3114
    const v0, 0x7f0d016a

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    .line 3115
    const v0, 0x7f0d0168

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    .line 3116
    const v0, 0x7f0d0090

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightList:Landroid/widget/ListView;

    .line 3117
    new-instance v0, Lcom/android/camera/VideoCamera$FlashLightAdapter;

    const v3, 0x7f0b0031

    sget-object v4, Lcom/android/camera/CameraDeviceManager;->VIDEO_FLASH_LIGHT_ICON:[I

    sget-object v5, Lcom/android/camera/CameraDeviceManager;->VIDEO_FLASH_LIGHT_UNSEL_ICON:[I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/VideoCamera$FlashLightAdapter;-><init>(Lcom/android/camera/VideoCamera;Landroid/content/Context;I[I[I)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightAdapter:Lcom/android/camera/VideoCamera$FlashLightAdapter;

    .line 3119
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mFlashLightAdapter:Lcom/android/camera/VideoCamera$FlashLightAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3120
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mFlashLightItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3121
    iget v0, p0, Lcom/android/camera/ActivityBase;->mNumberOfCameras:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3122
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v6}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 3124
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportFlashLightMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isFrontCamera(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3125
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v6}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 3126
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightList:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3128
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initMenuBarAnimation()V

    .line 3129
    return-void
.end method

.method private initializeFocusManager()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 3098
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    aget-object v0, v0, v1

    .line 3099
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v6, :cond_0

    .line 3100
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 3102
    new-instance v0, Lcom/android/camera/VideoFocusManager;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/VideoFocusManager;-><init>(Lcom/android/camera/ComboPreferences;[Ljava/lang/String;Landroid/view/View;Landroid/hardware/Camera$Parameters;Lcom/android/camera/VideoFocusManager$Listener;ZLandroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/VideoFocusManager;

    .line 3105
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 3106
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 3107
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/VideoFocusManager;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/VideoFocusManager;->setScreenSize(II)V

    .line 3108
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/VideoFocusManager;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v1}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v2}, Lcom/android/camera/PreviewFrameLayout;->getHeight()I

    move-result v2

    const v3, 0x7f0901ae

    invoke-static {p0, v3}, Lcom/android/camera/Util;->getDimenVaule(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/VideoFocusManager;->setPreviewSize(III)V

    .line 3110
    return-void

    .line 3099
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private initializeIndicatorMenu()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 951
    const v0, 0x7f0d00de

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    .line 952
    const v0, 0x7f0d00db

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    .line 953
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getCameraMenuInfo()Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraMenuInfo:Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    .line 954
    new-instance v0, Lcom/android/camera/VideoMainMenuAdapter;

    invoke-static {p0}, Lcom/android/camera/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v2, 0x7f0b002b

    const v3, 0x7f0b0041

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/camera/VideoMainMenuAdapter;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;II)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenuAdapter:Lcom/android/camera/VideoMainMenuAdapter;

    .line 956
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenuAdapter:Lcom/android/camera/VideoMainMenuAdapter;

    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoMainMenuAdapter;->setIsMeizuMMSIntent(Z)V

    .line 958
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenuAdapter:Lcom/android/camera/VideoMainMenuAdapter;

    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsFlymeCaptureIntent:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoMainMenuAdapter;->setIsFlymeMMSIntent(Z)V

    .line 959
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsFlymeCaptureIntent:Z

    if-nez v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenuAdapter:Lcom/android/camera/VideoMainMenuAdapter;

    invoke-virtual {v0, v7}, Lcom/android/camera/VideoMainMenuAdapter;->setCurSel(I)V

    .line 961
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenuAdapter:Lcom/android/camera/VideoMainMenuAdapter;

    const-string v1, "QCIF"

    invoke-virtual {v0, v6, v1}, Lcom/android/camera/VideoMainMenuAdapter;->setItemTip(ILjava/lang/String;)V

    .line 964
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenuAdapter:Lcom/android/camera/VideoMainMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/VideoMainMenuAdapter;->getSelIndex()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mSelIndex:Ljava/util/ArrayList;

    .line 965
    const v0, 0x7f0d00df

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenu_v:Landroid/widget/ListView;

    .line 966
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenu_v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mMainMenuAdapter:Lcom/android/camera/VideoMainMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 967
    const v0, 0x7f0d00dc

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenu_h:Landroid/widget/ListView;

    .line 968
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenu_h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mMainMenuAdapter:Lcom/android/camera/VideoMainMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 969
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenu_v:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 970
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenu_h:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 971
    const v0, 0x7f0d00e0

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mSubMenu_v:Landroid/widget/ListView;

    .line 972
    const v0, 0x7f0d00dd

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mSubMenu_h:Landroid/widget/ListView;

    .line 973
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubMenu_v:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 974
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubMenu_h:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 975
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v0, v1, :cond_3

    .line 977
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsFlymeCaptureIntent:Z

    if-nez v0, :cond_4

    .line 978
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    if-nez v0, :cond_2

    .line 979
    new-instance v0, Lcom/android/camera/SubMenuAdapter;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraMenuInfo:Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    iget v2, v1, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mSceneMenuKeyArrayId:I

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraMenuInfo:Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    iget v3, v1, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mSceneMenuValueArrayId:I

    const-string v4, "pref_camera_scenemode_key"

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSelIndex:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/SubMenuAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    .line 982
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubMenu_v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 983
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubMenu_h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 984
    iput v7, p0, Lcom/android/camera/VideoCamera;->mMainSel:I

    .line 993
    :cond_3
    :goto_0
    return-void

    .line 986
    :cond_4
    new-instance v0, Lcom/android/camera/SubMenuAdapter;

    const v2, 0x7f0b0001

    const v3, 0x7f0b0003

    const-string v4, "pref_video_quality_key"

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSelIndex:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/SubMenuAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mSubVideoSizeAdapter:Lcom/android/camera/SubMenuAdapter;

    .line 988
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubMenu_v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSubVideoSizeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 989
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubMenu_h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSubVideoSizeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 990
    iput v6, p0, Lcom/android/camera/VideoCamera;->mMainSel:I

    goto :goto_0
.end method

.method private initializeMiscControls()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 3162
    const v0, 0x7f0d0159

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PreviewFrameLayout;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    .line 3164
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->setTapUpListener(Landroid/view/View;)V

    .line 3165
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 3166
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 3167
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 3168
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/PreviewFrameLayout;->setScreenSize(II)V

    .line 3169
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Lcom/android/camera/PreviewFrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 3170
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Lcom/android/camera/PreviewFrameLayout;->setOnSizeChangedListener(Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;)V

    .line 3171
    const v0, 0x7f0d0165

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewImage:Landroid/widget/ImageView;

    .line 3173
    const v0, 0x7f0d01a1

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 3174
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020047

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setBackgroundResource(I)V

    .line 3175
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 3176
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->requestFocus()Z

    .line 3178
    const v0, 0x7f0d01a6

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    .line 3181
    const v0, 0x7f0d01a5

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mLabelsLinearLayout:Lcom/android/camera/ui/RotateLayout;

    .line 3183
    const v0, 0x7f0d000d

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageRotater:Lcom/android/camera/ui/RotateLayout;

    .line 3184
    const v0, 0x7f0d000c

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageFrame:Landroid/view/View;

    .line 3185
    const v0, 0x7f0d015b

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCaptureAnimView:Landroid/widget/ImageView;

    .line 3186
    const v0, 0x7f0d00d9

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GlowImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    .line 3187
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/GlowImageView;->setClickable(Z)V

    .line 3188
    :cond_0
    const v0, 0x7f0d00d8

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    .line 3189
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/RotateImageView;->setClickable(Z)V

    .line 3190
    :cond_1
    const v0, 0x7f0d00d7

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GlowImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mBackControl:Lcom/android/camera/ui/GlowImageView;

    .line 3191
    const v0, 0x7f0d00d6

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    .line 3192
    const v0, 0x7f0d00d5

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuBackControl:Landroid/widget/RelativeLayout;

    .line 3193
    const v0, 0x7f0d00da

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GlowImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuShowIcon:Lcom/android/camera/ui/GlowImageView;

    .line 3195
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    invoke-static {v0, v3}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isFrontCamera(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3196
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3197
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/GlowImageView;->setVisibility(I)V

    .line 3198
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 3203
    :cond_3
    const v0, 0x7f0d01a4

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoRecordPauseBtn:Lcom/android/camera/ui/RotateImageView;

    .line 3204
    const v0, 0x7f0d01a3

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoRecordCaptureBtn:Lcom/android/camera/ui/RotateImageView;

    .line 3205
    const v0, 0x7f0d01a0

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ControlPanelLayout;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoControlPaneLayout:Lcom/android/camera/ui/ControlPanelLayout;

    .line 3206
    return-void
.end method

.method private initializeRecorder()V
    .locals 13

    .prologue
    const-wide v6, 0xc0000000L

    const-wide/16 v2, 0x0

    const/4 v12, 0x1

    .line 1960
    const-string v0, "videocamera"

    const-string v1, "initializeRecorder"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 2092
    :goto_0
    return-void

    .line 1964
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 1965
    const-string v0, "videocamera"

    const-string v1, "SurfaceTexture is null. Wait for surface changed."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1969
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1970
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1973
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeVideoFileDescriptor()V

    .line 1974
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-static {v0, v4}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz v1, :cond_12

    .line 1975
    const-string v0, "output_video"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1976
    if-nez v0, :cond_2

    .line 1977
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1979
    :cond_2
    if-eqz v0, :cond_3

    .line 1981
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "rw"

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1983
    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1989
    :cond_3
    :goto_1
    const-string v0, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1991
    :goto_2
    new-instance v4, Landroid/media/MediaRecorder;

    invoke-direct {v4}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1994
    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v4}, Lcom/android/camera/CameraManager$CameraProxy;->unlock()V

    .line 1995
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v5}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1996
    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-nez v4, :cond_4

    .line 1997
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v12}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1999
    :cond_4
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v12}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 2000
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 2001
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v5, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 2002
    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v4, :cond_5

    .line 2003
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide v8, 0x408f400000000000L

    iget v5, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v10, v5

    div-double/2addr v8, v10

    invoke-virtual {v4, v8, v9}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 2006
    :cond_5
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v4}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 2007
    if-eqz v4, :cond_6

    .line 2008
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    double-to-float v4, v9

    invoke-virtual {v5, v8, v4}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 2016
    :cond_6
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_c

    .line 2017
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 2029
    :goto_3
    iget-wide v4, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    const-wide/32 v8, 0x3400000

    sub-long/2addr v4, v8

    .line 2030
    cmp-long v2, v0, v2

    if-lez v2, :cond_11

    cmp-long v2, v0, v4

    if-gez v2, :cond_11

    .line 2034
    :goto_4
    iget v2, p0, Lcom/android/camera/VideoCamera;->mVideoQuality:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_7

    iget v2, p0, Lcom/android/camera/VideoCamera;->mVideoQuality:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_7

    iget v2, p0, Lcom/android/camera/VideoCamera;->mVideoQuality:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_8

    .line 2036
    :cond_7
    cmp-long v2, v0, v6

    if-lez v2, :cond_8

    move-wide v0, v6

    .line 2041
    :cond_8
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    if-eqz v2, :cond_9

    .line 2042
    iget-wide v0, p0, Lcom/android/camera/VideoCamera;->mMeizuVideoRecordMaxSize:J

    .line 2046
    :cond_9
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 2047
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsFlymeCaptureIntent:Z

    if-nez v0, :cond_a

    .line 2048
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v1, 0x186a0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2062
    :cond_a
    :goto_5
    const/16 v0, 0x5a

    .line 2063
    iget v1, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    .line 2064
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    aget-object v1, v1, v2

    .line 2065
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v2

    sget v3, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-ne v2, v3, :cond_f

    .line 2066
    iget v0, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v12, :cond_e

    .line 2067
    iget v0, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v1, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    sub-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    .line 2079
    :cond_b
    :goto_6
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 2080
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensationAtRecordStart:I

    .line 2083
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2090
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 2091
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    goto/16 :goto_0

    .line 1984
    :catch_0
    move-exception v0

    .line 1986
    const-string v4, "videocamera"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2019
    :cond_c
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v4}, Lcom/android/camera/VideoCamera;->generateVideoFilename(I)V

    .line 2021
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    if-nez v4, :cond_d

    .line 2022
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    goto/16 :goto_0

    .line 2025
    :cond_d
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2069
    :cond_e
    iget v0, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v1, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    goto :goto_6

    .line 2071
    :cond_f
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v2

    sget v3, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v2, v3, :cond_b

    .line 2072
    iget v0, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v12, :cond_10

    .line 2073
    iget v0, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v1, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0xb4

    rem-int/lit16 v0, v0, 0x168

    goto :goto_6

    .line 2075
    :cond_10
    iget v0, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v1, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    goto :goto_6

    .line 2084
    :catch_1
    move-exception v0

    .line 2085
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2086
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    .line 2087
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2050
    :catch_2
    move-exception v0

    goto/16 :goto_5

    :cond_11
    move-wide v0, v4

    goto/16 :goto_4

    :cond_12
    move-wide v0, v2

    goto/16 :goto_2
.end method

.method private isLockViewNeedAddFlag()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1914
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getMeizuFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsLockView:Z

    .line 1915
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getMeizuFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    move v0, v1

    .line 1916
    :goto_1
    iget-boolean v3, p0, Lcom/android/camera/VideoCamera;->mIsLockView:Z

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    :goto_2
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsLockViewIntent:Z

    .line 1917
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsLockView:Z

    if-eqz v0, :cond_0

    .line 1918
    const-string v0, "access_control"

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/AccessControlManager;

    .line 1919
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AccessControlManager;->checkAccessControl(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsSecurityAppLock:Z

    .line 1920
    invoke-direct {p0, v2}, Lcom/android/camera/VideoCamera;->setSwipEnabled(Z)V

    .line 1923
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsSecurityAppLock:Z

    if-eqz v0, :cond_1

    .line 1924
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MaskedRotateImageView;->setVisibility(I)V

    .line 1926
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsLockViewIntent:Z

    return v0

    :cond_2
    move v0, v2

    .line 1914
    goto :goto_0

    :cond_3
    move v0, v2

    .line 1915
    goto :goto_1

    :cond_4
    move v1, v2

    .line 1916
    goto :goto_2
.end method

.method private isMeizuCaptureIntent()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1900
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1901
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "isFlymeMms"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v3, v4, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsFlymeCaptureIntent:Z

    .line 1903
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsFlymeCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 1904
    invoke-static {v1}, Lcom/android/camera/Storage;->checkFlymeMmsPathAvailable(Z)V

    .line 1906
    :cond_0
    const-string v0, "android.media.action.MEIZU_CAMERA_VIDEO_APP_MMS_EX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    .line 1901
    goto :goto_0
.end method

.method private isMeizuSystemCaptureIntent()Z
    .locals 3

    .prologue
    .line 1910
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "start_camera_by_combokey"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2951
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 1895
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1896
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 2835
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2836
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2837
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 2829
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2830
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2831
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2832
    return-void
.end method

.method private static millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 17
    .parameter "milliSeconds"
    .parameter "displayCentiSeconds"

    .prologue
    .line 2840
    const-wide/16 v13, 0x3e8

    div-long v10, p0, v13

    .line 2841
    .local v10, seconds:J
    const-wide/16 v13, 0x3c

    div-long v2, v10, v13

    .line 2842
    .local v2, minutes:J
    const-wide/16 v13, 0x3c

    div-long v0, v2, v13

    .line 2843
    .local v0, hours:J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v0

    sub-long v6, v2, v13

    .line 2844
    .local v6, remainderMinutes:J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v2

    sub-long v8, v10, v13

    .line 2846
    .local v8, remainderSeconds:J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 2849
    .local v12, timeStringBuilder:Ljava/lang/StringBuilder;
    const-wide/16 v13, 0x0

    cmp-long v13, v0, v13

    if-lez v13, :cond_1

    .line 2850
    const-wide/16 v13, 0xa

    cmp-long v13, v0, v13

    if-gez v13, :cond_0

    .line 2851
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2853
    :cond_0
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2855
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2859
    :cond_1
    const-wide/16 v13, 0xa

    cmp-long v13, v6, v13

    if-gez v13, :cond_2

    .line 2860
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2862
    :cond_2
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2863
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2866
    const-wide/16 v13, 0xa

    cmp-long v13, v8, v13

    if-gez v13, :cond_3

    .line 2867
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2869
    :cond_3
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2872
    if-eqz p2, :cond_5

    .line 2873
    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2874
    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v10

    sub-long v13, p0, v13

    const-wide/16 v15, 0xa

    div-long v4, v13, v15

    .line 2875
    .local v4, remainderCentiSeconds:J
    const-wide/16 v13, 0xa

    cmp-long v13, v4, v13

    if-gez v13, :cond_4

    .line 2876
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2878
    :cond_4
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2881
    .end local v4           #remainderCentiSeconds:J
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method private onStopVideoRecording()V
    .locals 5

    .prologue
    .line 1370
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()Z

    move-result v0

    .line 1371
    .local v0, recordFail:Z
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_4

    .line 1372
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mQuickCapture:Z

    if-eqz v1, :cond_3

    .line 1373
    if-nez v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->doReturnToCaller(Z)V

    .line 1382
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    if-eqz v1, :cond_1

    .line 1384
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->gotoCaptureAlert()V

    .line 1386
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1387
    return-void

    .line 1373
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1374
    :cond_3
    if-nez v0, :cond_0

    .line 1376
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->gotoCaptureAlert()V

    goto :goto_1

    .line 1378
    :cond_4
    if-nez v0, :cond_0

    .line 1380
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method private onStopVideoRecordingSetCameraSound()V
    .locals 2

    .prologue
    .line 1363
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsDisableCameraSound:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->playSound(I)V

    .line 1366
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onStopVideoRecording()V

    .line 1367
    return-void
.end method

.method private pauseAudioPlayback()V
    .locals 3

    .prologue
    .line 2311
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2312
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2314
    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 2315
    return-void
.end method

.method private pauseTimeToCloseCamera()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 552
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 553
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x2bf20

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 554
    return-void
.end method

.method private pauseVideoRecording()V
    .locals 4

    .prologue
    .line 2324
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 2336
    :goto_0
    return-void

    .line 2327
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsCanResumeVideoRecording:Z

    .line 2328
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2329
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->pause()V

    .line 2330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoRecordPause:Z

    .line 2331
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2332
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoRecordPauseBtn:Lcom/android/camera/ui/RotateImageView;

    const v1, 0x7f020027

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2333
    :catch_0
    move-exception v0

    .line 2334
    const-string v1, "videocamera"

    const-string v2, "Could not start effects recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private readVideoPreferences()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1454
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsFlymeCaptureIntent:Z

    if-nez v2, :cond_2

    .line 1455
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/camera/VideoCamera;->mVideoQuality:I

    .line 1465
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1466
    const-string v3, "android.intent.extra.videoQuality"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1467
    const-string v3, "android.intent.extra.videoQuality"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1469
    if-lez v3, :cond_3

    .line 1470
    iput v0, p0, Lcom/android/camera/VideoCamera;->mVideoQuality:I

    .line 1478
    :cond_0
    :goto_1
    const-string v3, "android.intent.extra.durationLimit"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1479
    const-string v3, "android.intent.extra.durationLimit"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1481
    mul-int/lit16 v2, v2, 0x3e8

    iput v2, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    .line 1487
    :goto_2
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_video_time_lapse_frame_interval_key"

    const v4, 0x7f0a004a

    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1490
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 1492
    iget v2, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    if-eqz v2, :cond_5

    :goto_3
    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    .line 1494
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/VideoCamera;->mVideoQuality:I

    add-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/camera/VideoCamera;->mVideoQuality:I

    .line 1495
    :cond_1
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    iget v1, p0, Lcom/android/camera/VideoCamera;->mVideoQuality:I

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    .line 1496
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->getDesiredPreviewSize()V

    .line 1497
    return-void

    .line 1457
    :cond_2
    iget v2, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0045

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1459
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_video_quality_key"

    invoke-virtual {v3, v4, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1462
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/camera/VideoCamera;->mVideoQuality:I

    goto :goto_0

    .line 1472
    :cond_3
    iput v1, p0, Lcom/android/camera/VideoCamera;->mVideoQuality:I

    goto :goto_1

    .line 1483
    :cond_4
    const v2, 0x36ee80

    iput v2, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    goto :goto_2

    :cond_5
    move v0, v1

    .line 1492
    goto :goto_3
.end method

.method private releaseMediaRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2095
    const-string v0, "videocamera"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 2097
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->cleanupEmptyFile()V

    .line 2098
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 2099
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 2100
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 2102
    :cond_0
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 2103
    return-void
.end method

.method private resetFlashLight(Ljava/lang/String;)V
    .locals 2
    .parameter "flashLightValue"

    .prologue
    .line 2804
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightMode:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightMode:Ljava/lang/String;

    const-string v1, "light-off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2805
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2806
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2808
    :cond_0
    return-void
.end method

.method private resetLedLight()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2814
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportLedLight()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2815
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isFrontCamera(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2816
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->setMenuEnabled(Z)V

    .line 2821
    :cond_1
    :goto_0
    return-void

    .line 2818
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->setMenuEnabled(Z)V

    goto :goto_0
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 2824
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2825
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2826
    return-void
.end method

.method private resizeForPreviewAspectRatio()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1526
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v2

    sget v3, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-ne v2, v3, :cond_2

    .line 1527
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1528
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v2}, Lcom/android/camera/Util;->isFrontCamera(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1529
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v2, v0}, Lcom/android/camera/PreviewFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1530
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v2, v5, v5}, Lcom/android/camera/PreviewFrameLayout;->setScreenSize(II)V

    .line 1531
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v3, v3

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 1533
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 1534
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->notifyScreenNailChanged()V

    .line 1550
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 1536
    .restart local v0       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1537
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v2, v0}, Lcom/android/camera/PreviewFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1538
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1539
    .local v1, p:Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1540
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/PreviewFrameLayout;->setScreenSize(II)V

    .line 1541
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v3, v3

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 1543
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 1544
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->notifyScreenNailChanged()V

    goto :goto_0

    .line 1546
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #p:Landroid/graphics/Point;
    :cond_2
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v2

    sget v3, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v2, v3, :cond_0

    .line 1547
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v3, v3

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    goto :goto_0
.end method

.method private restorePreferences()V
    .locals 2

    .prologue
    .line 3263
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3264
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setCameraParameters()V

    .line 3266
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {p0, v0, v1}, Lcom/android/camera/CameraSettings;->restorePreferences(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;)V

    .line 3268
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->onSharedPreferenceChanged()V

    .line 3269
    return-void
.end method

.method private resumeVideoRecording()V
    .locals 3

    .prologue
    .line 2340
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 2350
    :goto_0
    return-void

    .line 2343
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->resume()V

    .line 2344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoRecordPause:Z

    .line 2345
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoRecordPauseBtn:Lcom/android/camera/ui/RotateImageView;

    const v1, 0x7f020026

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 2346
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2347
    :catch_0
    move-exception v0

    .line 2348
    const-string v1, "videocamera"

    const-string v2, "Could not start effects recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setCameraParameters()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2967
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    iget v2, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 2968
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 2972
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_6

    .line 2973
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightMode:Ljava/lang/String;

    .line 2977
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 2978
    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2979
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2982
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_scenemode_key"

    const v2, 0x7f0a006f

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mSceneMode:Ljava/lang/String;

    .line 2985
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    invoke-static {v0, v3}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2986
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 2990
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_whitebalance_key"

    const v2, 0x7f0a0068

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2993
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    invoke-static {v1, v3}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2996
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 3005
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 3006
    const-string v1, "continuous-video"

    invoke-static {v1, v0}, Lcom/android/camera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3007
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 3010
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 3014
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3015
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3016
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3023
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    .line 3024
    iget v1, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    int-to-double v1, v1

    iget v3, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 3026
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 3027
    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 3028
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 3030
    :cond_5
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video snapshot size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3034
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    .line 3036
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 3038
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3040
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3042
    iget v0, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    iget v1, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoCamera;->updateCameraScreenNailSize(II)V

    .line 3043
    return-void

    .line 2975
    :cond_6
    const-string v0, "light-off"

    goto/16 :goto_0

    .line 2998
    :cond_7
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    .line 2999
    if-nez v0, :cond_2

    .line 3000
    const-string v0, "auto"

    goto/16 :goto_1
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 1664
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mDisplayRotation:I

    .line 1665
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mCameraDisplayOrientation:I

    .line 1666
    return-void
.end method

.method private setIsInterceptHomeKey(Z)V
    .locals 2
    .parameter "isInterceptHomeKey"

    .prologue
    .line 2959
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2960
    .local v1, win:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2961
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    iput-boolean p1, v0, Landroid/view/WindowManager$LayoutParams;->isInterceptHomeKey:Z

    .line 2962
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2963
    return-void
.end method

.method private setOrientationIndicator(IZ)V
    .locals 10
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 1043
    const/16 v1, 0xb4

    .line 1044
    .local v1, forbidDegree:I
    iget v6, p0, Lcom/android/camera/VideoCamera;->mConfiguration_orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 1045
    const/16 v1, 0xb4

    .line 1049
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportLedLight()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1050
    iget v6, p0, Lcom/android/camera/VideoCamera;->mConfiguration_orientation:I

    invoke-static {v6, p1}, Lcom/android/camera/Util;->getLedOrientationIndex(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/camera/VideoCamera;->setLedRotation(I)V

    .line 1051
    if-ne p1, v1, :cond_4

    .line 1052
    iget-boolean v6, p0, Lcom/android/camera/VideoCamera;->mIsMenuShowed:Z

    if-nez v6, :cond_1

    .line 1053
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/camera/VideoCamera;->setMenuEnabled(Z)V

    .line 1061
    :cond_1
    :goto_1
    if-ne p1, v1, :cond_5

    .line 1062
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/camera/VideoCamera;->mIsPreForbidDegree:Z

    .line 1105
    :cond_2
    :goto_2
    return-void

    .line 1046
    :cond_3
    iget v6, p0, Lcom/android/camera/VideoCamera;->mConfiguration_orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 1047
    const/16 v1, 0x10e

    goto :goto_0

    .line 1056
    :cond_4
    iget-boolean v6, p0, Lcom/android/camera/VideoCamera;->mIsPreForbidDegree:Z

    if-eqz v6, :cond_1

    .line 1057
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/camera/VideoCamera;->setMenuEnabled(Z)V

    goto :goto_1

    .line 1065
    :cond_5
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/camera/VideoCamera;->mIsPreForbidDegree:Z

    .line 1067
    const/16 v6, 0x12

    new-array v4, v6, [Lcom/android/camera/ui/Rotatable;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    aput-object v7, v4, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    aput-object v7, v4, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtnImg1:Lcom/android/camera/ui/RotateImageView;

    aput-object v7, v4, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtnImg2:Lcom/android/camera/ui/RotateImageView;

    aput-object v7, v4, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mLabelsLinearLayout:Lcom/android/camera/ui/RotateLayout;

    aput-object v7, v4, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    aput-object v7, v4, v6

    const/4 v6, 0x6

    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    aput-object v7, v4, v6

    const/4 v6, 0x7

    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mVideoRecordPauseBtn:Lcom/android/camera/ui/RotateImageView;

    aput-object v7, v4, v6

    const/16 v6, 0x8

    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mRotateToastLayout:Lcom/android/camera/ui/RotateLayout;

    aput-object v7, v4, v6

    const/16 v6, 0x9

    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    aput-object v7, v4, v6

    const/16 v6, 0xa

    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    aput-object v7, v4, v6

    const/16 v6, 0xb

    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mLabelsLinearLayoutMMS:Lcom/android/camera/ui/RotateLayout;

    aput-object v7, v4, v6

    const/16 v6, 0xc

    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageRotater:Lcom/android/camera/ui/RotateLayout;

    aput-object v7, v4, v6

    const/16 v6, 0xd

    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    aput-object v7, v4, v6

    const/16 v6, 0xe

    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    aput-object v7, v4, v6

    const/16 v6, 0xf

    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mRotateFlashLightListLayout:Lcom/android/camera/ui/RotateLayout;

    aput-object v7, v4, v6

    const/16 v6, 0x10

    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    aput-object v7, v4, v6

    const/16 v6, 0x11

    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    aput-object v7, v4, v6

    .line 1073
    .local v4, indicators:[Lcom/android/camera/ui/Rotatable;
    move-object v0, v4

    .local v0, arr$:[Lcom/android/camera/ui/Rotatable;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v5, :cond_7

    aget-object v3, v0, v2

    .line 1074
    .local v3, indicator:Lcom/android/camera/ui/Rotatable;
    if-eqz v3, :cond_6

    invoke-interface {v3, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 1073
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1077
    .end local v3           #indicator:Lcom/android/camera/ui/Rotatable;
    :cond_7
    iget-boolean v6, p0, Lcom/android/camera/VideoCamera;->mIsMenuShowed:Z

    if-eqz v6, :cond_2

    .line 1078
    iget-boolean v6, p0, Lcom/android/camera/VideoCamera;->mIsPreForbidDegree:Z

    if-eqz v6, :cond_8

    .line 1079
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/camera/VideoCamera;->mIsPreForbidDegree:Z

    goto/16 :goto_2

    .line 1081
    :cond_8
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mVideoControlPaneLayout:Lcom/android/camera/ui/ControlPanelLayout;

    invoke-static {v6}, Lcom/android/camera/Util;->checkViewGone(Landroid/view/View;)Z

    .line 1082
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/camera/VideoCamera$8;

    invoke-direct {v7, p0}, Lcom/android/camera/VideoCamera$8;-><init>(Lcom/android/camera/VideoCamera;)V

    const-wide/16 v8, 0x96

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1088
    iget v6, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    div-int/lit8 v6, v6, 0x5a

    and-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    .line 1089
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v6}, Lcom/android/camera/ui/RotateLayout;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_2

    .line 1092
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    const-wide/16 v7, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 1093
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    const-wide/16 v7, 0x96

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    goto/16 :goto_2

    .line 1096
    :cond_9
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v6}, Lcom/android/camera/ui/RotateLayout;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_2

    .line 1099
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    const-wide/16 v7, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 1100
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    const-wide/16 v7, 0x96

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    goto/16 :goto_2
.end method

.method private setSwipEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 2590
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getLastFileEncrypt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsLastFileEncryptRecord:Z

    if-nez v0, :cond_0

    .line 2595
    :goto_0
    return-void

    .line 2593
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/VideoCamera;->setSwipingEnabled(Z)V

    goto :goto_0
.end method

.method private showMenuAndBackBtn()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x64

    .line 907
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 909
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBackControl:Lcom/android/camera/ui/GlowImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 912
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 913
    return-void
.end method

.method private showMenuLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 810
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    div-int/lit8 v0, v0, 0x5a

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 811
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 812
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSecondLevelFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 817
    :goto_0
    return-void

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 815
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSecondLevelFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private showRecordingUI(Z)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2422
    if-eqz p1, :cond_3

    .line 2423
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/MaskedRotateImageView;->setEnabled(Z)V

    .line 2424
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020048

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setBackgroundResource(I)V

    .line 2425
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    if-eqz v0, :cond_2

    .line 2426
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeViewMMS:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2427
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeViewMMS:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2432
    :goto_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewControl:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewControl:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2433
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoControlPaneLayout:Lcom/android/camera/ui/ControlPanelLayout;

    const v1, 0x7f0201aa

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ControlPanelLayout;->setBackgroundResource(I)V

    .line 2450
    :goto_1
    return-void

    .line 2429
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2430
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2435
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MaskedRotateImageView;->setEnabled(Z)V

    .line 2436
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020047

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setBackgroundResource(I)V

    .line 2437
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    if-eqz v0, :cond_6

    .line 2438
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeViewMMS:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2442
    :goto_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewControl:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewControl:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2443
    :cond_5
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/VideoCamera$12;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoCamera$12;-><init>(Lcom/android/camera/VideoCamera;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 2440
    :cond_6
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private showRotateToast(I)V
    .locals 5
    .parameter "resId"

    .prologue
    const/4 v4, 0x0

    .line 2698
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRotateToastText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2699
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRotateToastText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2700
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mFadeOutRotateToast:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2701
    iput-boolean v4, p0, Lcom/android/camera/VideoCamera;->mIsNeedRefreshStorageHint:Z

    .line 2702
    return-void
.end method

.method private showRotateToast(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 2705
    if-eqz p1, :cond_1

    .line 2706
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRotateToastText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2707
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRotateToastText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2713
    :cond_0
    :goto_0
    return-void

    .line 2709
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsNeedRefreshStorageHint:Z

    if-eqz v0, :cond_0

    .line 2710
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRotateToastText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showSwitchAndFlashBtn()V
    .locals 4

    .prologue
    const-wide/16 v2, 0xc8

    .line 888
    iget v0, p0, Lcom/android/camera/ActivityBase;->mNumberOfCameras:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 889
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 891
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportFlashLightMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    if-eqz v0, :cond_1

    .line 892
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 894
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showSwitchCameraLayout()V

    .line 895
    return-void
.end method

.method private showSwitchCameraLayout()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x64

    .line 922
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraModeLayout:Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 923
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtnImg1:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 924
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtnImg2:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 925
    return-void
.end method

.method private showTapToSnapshotToast()V
    .locals 3

    .prologue
    .line 3615
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    const v1, 0x7f0a00a1

    iget v2, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 3618
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3619
    const-string v1, "pref_video_first_use_hint_shown_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3620
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3621
    return-void
.end method

.method private showVideoRecordingUI()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x32

    .line 939
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/MaskedRotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoRecordPauseBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 945
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 946
    invoke-static {}, Lcom/android/camera/Util;->getIsDeviceM030()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoRecordCaptureBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 948
    :cond_1
    return-void
.end method

.method private startPlayVideoActivity()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1109
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v2}, Lcom/android/camera/VideoCamera;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1110
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    if-eqz v1, :cond_0

    .line 1111
    const-string v1, "meizu_video_record"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1114
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->startActivity(Landroid/content/Intent;)V

    .line 1115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsStartVideoPlay:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1119
    :goto_0
    return-void

    .line 1116
    :catch_0
    move-exception v0

    .line 1117
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t view video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1669
    const-string v0, "videocamera"

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1672
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-ne v0, v2, :cond_0

    .line 1673
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopPreview()V

    .line 1676
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setDisplayOrientation()V

    .line 1677
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1678
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setCaptureMode(I)V

    .line 1679
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setCameraParameters()V

    .line 1682
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 1683
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1689
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    .line 1690
    return-void

    .line 1684
    :catch_0
    move-exception v0

    .line 1685
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeCamera()V

    .line 1686
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview or setPreviewSurfaceTexture failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private startVideoRecording()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2353
    const-string v0, "videocamera"

    const-string v1, "startVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2355
    invoke-direct {p0, v4}, Lcom/android/camera/VideoCamera;->setSwipEnabled(Z)V

    .line 2358
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->cancelAutoFocus()V

    .line 2360
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsStorageHintShow:Z

    if-nez v0, :cond_1

    .line 2361
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateAndShowStorageHint()V

    .line 2363
    :cond_1
    iget-wide v0, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    const-wide/32 v2, 0xaf000

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x3400000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 2364
    const v0, 0x7f0a00c8

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2366
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 2367
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2368
    invoke-direct {p0, v5}, Lcom/android/camera/VideoCamera;->setSwipEnabled(Z)V

    .line 2369
    const-string v0, "videocamera"

    const-string v1, "Storage issue, ignore the start request"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    :goto_0
    return-void

    .line 2373
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2374
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeRecorder()V

    .line 2375
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_3

    .line 2376
    invoke-direct {p0, v5}, Lcom/android/camera/VideoCamera;->setSwipEnabled(Z)V

    .line 2377
    const-string v0, "videocamera"

    const-string v1, "Fail to initialize media recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2381
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->pauseAudioPlayback()V

    .line 2387
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2401
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2403
    invoke-direct {p0, v4}, Lcom/android/camera/VideoCamera;->enableCameraControls(Z)V

    .line 2404
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->hideSwitchAndFlashBtn()V

    .line 2405
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->hideMenuAndBackBtn()V

    .line 2406
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showVideoRecordingUI()V

    .line 2407
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportLedLight()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2408
    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->setMenuEnabled(Z)V

    .line 2411
    :cond_4
    iput-boolean v5, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 2412
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mRecordingStartTime:J

    .line 2413
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mRecordingPauseTime:J

    .line 2414
    invoke-direct {p0, v5}, Lcom/android/camera/VideoCamera;->showRecordingUI(Z)V

    .line 2416
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateRecordingTime()V

    .line 2417
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOn()V

    .line 2418
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 2388
    :catch_0
    move-exception v0

    .line 2389
    const-string v1, "videocamera"

    const-string v2, "Could not start media recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2390
    const v0, 0x7f0a00c4

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->showRotateToast(I)V

    .line 2391
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    .line 2393
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->lock()V

    goto :goto_0
.end method

.method private stopPreview()V
    .locals 1

    .prologue
    .line 1693
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 1694
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    .line 1695
    return-void
.end method

.method private stopVideoRecording()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 2716
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-static {v0, v2}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsInfoMaxDuration:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsInfoMaxFileSize:Z

    if-nez v0, :cond_0

    iget-wide v4, p0, Lcom/android/camera/VideoCamera;->mVideoRecordedTimes:J

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    .line 2719
    const v0, 0x7f0a00c7

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->showRotateToast(I)V

    .line 2797
    :goto_0
    return v3

    .line 2722
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsLastFileEncryptRecord:Z

    .line 2723
    const-string v0, "videocamera"

    const-string v2, "stopVideoRecording"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-static {v0, v2}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2725
    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->setSwipEnabled(Z)V

    .line 2729
    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mIsInfoMaxDuration:Z

    .line 2730
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mIsInfoMaxFileSize:Z

    .line 2731
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_8

    .line 2733
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-static {v0, v2}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2734
    const v0, 0x7f0a00c1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->showRotateToast(I)V

    .line 2736
    :cond_2
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsCanResumeVideoRecording:Z

    .line 2738
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 2739
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 2740
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2742
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2743
    const-string v0, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopVideoRecording: Setting current video filename: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    move v2, v3

    .line 2750
    :goto_1
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 2751
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mIsVideoRecordPause:Z

    .line 2762
    iget-boolean v4, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v4, :cond_4

    .line 2766
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 2767
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->checkVideoFile(Ljava/lang/String;)Z

    move-result v0

    .line 2769
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeCamera()V

    .line 2772
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/camera/VideoCamera;->showRecordingUI(Z)V

    .line 2773
    iget-boolean v3, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-static {v3, v4}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2774
    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->enableCameraControls(Z)V

    .line 2775
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showSwitchAndFlashBtn()V

    .line 2776
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->hideVideoRecordingUI()V

    .line 2777
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportLedLight()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v3}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2778
    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->setMenuEnabled(Z)V

    .line 2781
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showMenuAndBackBtn()V

    .line 2784
    iget v3, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    invoke-direct {p0, v3, v1}, Lcom/android/camera/VideoCamera;->setOrientationIndicator(IZ)V

    .line 2785
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOnAwhile()V

    .line 2786
    if-eqz v0, :cond_6

    .line 2787
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->addVideoToMediaStore()Z

    move-result v0

    if-eqz v0, :cond_6

    move v2, v1

    .line 2790
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    .line 2795
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    .line 2796
    iget-wide v0, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    const-wide/32 v3, 0x300000

    sub-long/2addr v0, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/VideoCamera;->updateStorageHint(J)V

    move v3, v2

    .line 2797
    goto/16 :goto_0

    .line 2745
    :catch_0
    move-exception v0

    move-object v2, v0

    move v0, v3

    .line 2746
    :goto_3
    const-string v4, "videocamera"

    const-string v5, "stop fail"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2747
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/camera/VideoCamera;->deleteVideoFile(Ljava/lang/String;)V

    :cond_7
    move v2, v1

    .line 2748
    goto :goto_1

    .line 2745
    :catch_1
    move-exception v0

    move-object v2, v0

    move v0, v1

    goto :goto_3

    :cond_8
    move v2, v3

    goto :goto_2
.end method

.method private storeImage([BLandroid/location/Location;)V
    .locals 13
    .parameter "data"
    .parameter "loc"

    .prologue
    .line 3561
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 3562
    .local v3, dateTaken:J
    invoke-static {v3, v4}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v2

    .line 3563
    .local v2, title:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v6

    .line 3566
    .local v6, orientation:I
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move-object v5, p2

    move-object v7, p1

    invoke-static/range {v0 .. v9}, Lcom/android/camera/Storage;->addImage(Landroid/content/ContentResolver;ZLjava/lang/String;JLandroid/location/Location;I[BII)Landroid/net/Uri;

    move-result-object v12

    .line 3578
    .local v12, uri:Landroid/net/Uri;
    if-eqz v12, :cond_0

    .line 3579
    invoke-static {p0, v12}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3582
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v0, v0

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v5}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v5

    int-to-double v7, v5

    div-double/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v11, v0

    .line 3584
    .local v11, ratio:I
    invoke-static {v11}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v10

    .line 3585
    .local v10, inSampleSize:I
    invoke-static {p1, v6, v10, v12}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;)Lcom/android/camera/Thumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    .line 3586
    new-instance v0, Lcom/android/camera/VideoCamera$SaveRecordCaptureThumbnailToFileTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/VideoCamera$SaveRecordCaptureThumbnailToFileTask;-><init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/camera/Thumbnail;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    aput-object v7, v1, v5

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoCamera$SaveRecordCaptureThumbnailToFileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3587
    return-void
.end method

.method private switchCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3311
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_0

    .line 3351
    :goto_0
    return-void

    .line 3313
    :cond_0
    const-string v0, "videocamera"

    const-string v1, "Start to switch camera."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3314
    iget v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    iput v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    .line 3315
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    .line 3317
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeCamera()V

    .line 3318
    invoke-virtual {p0, v3}, Lcom/android/camera/VideoCamera;->setIsDropFullScreenChanged(Z)V

    .line 3319
    invoke-direct {p0, v2}, Lcom/android/camera/VideoCamera;->setSwipEnabled(Z)V

    .line 3321
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 3322
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 3323
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 3324
    new-instance v0, Lcom/android/camera/ActivityBase$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$CameraOpenThread;-><init>(Lcom/android/camera/ActivityBase;)V

    .line 3325
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$CameraOpenThread;->start()V

    .line 3327
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$CameraOpenThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3331
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setCameraMode(I)V

    .line 3332
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->readVideoPreferences()V

    .line 3333
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V

    .line 3335
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 3338
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportLedLight()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3339
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3340
    invoke-virtual {p0, v3}, Lcom/android/camera/VideoCamera;->setMenuEnabled(Z)V

    .line 3346
    :cond_1
    :goto_2
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    invoke-direct {p0, v0, v2}, Lcom/android/camera/VideoCamera;->setOrientationIndicator(IZ)V

    .line 3350
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3342
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->setMenuEnabled(Z)V

    goto :goto_2

    .line 3328
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private switchToOtherMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 3067
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3071
    :goto_0
    return-void

    .line 3068
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-static {v0}, Lcom/android/camera/ThumbnailHolder;->keep(Lcom/android/camera/Thumbnail;)V

    .line 3069
    :cond_1
    invoke-static {p1, p0}, Lcom/android/camera/MenuHelper;->gotoMode(ILandroid/app/Activity;)V

    .line 3070
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->finish()V

    goto :goto_0
.end method

.method private switchToOtherMode(IZZZ)Z
    .locals 1
    .parameter "mode"
    .parameter "isMeizu"
    .parameter "isSystemCapture"
    .parameter "isLockView"

    .prologue
    .line 3074
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3085
    :goto_0
    return v0

    .line 3075
    :cond_0
    if-eqz p2, :cond_1

    .line 3076
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/android/camera/MenuHelper;->gotoModeForMeizu(ILandroid/app/Activity;Landroid/content/Intent;)V

    .line 3084
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->finish()V

    .line 3085
    const/4 v0, 0x1

    goto :goto_0

    .line 3077
    :cond_1
    if-eqz p3, :cond_2

    .line 3078
    invoke-static {p1, p0}, Lcom/android/camera/MenuHelper;->gotoModeWithFlag(ILandroid/app/Activity;)V

    goto :goto_1

    .line 3079
    :cond_2
    if-eqz p4, :cond_3

    .line 3080
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/android/camera/MenuHelper;->gotoModeAddFlag(ILandroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_1

    .line 3082
    :cond_3
    invoke-static {p1, p0}, Lcom/android/camera/MenuHelper;->gotoMode(ILandroid/app/Activity;)V

    goto :goto_1
.end method

.method private timeToCloseCamera()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 547
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 548
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 549
    return-void
.end method

.method private timeToHideFlashLightList()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 542
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 543
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 544
    return-void
.end method

.method private updateAndShowStorageHint()V
    .locals 2

    .prologue
    .line 1447
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    .line 1448
    iget-wide v0, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/VideoCamera;->updateStorageHint(J)V

    .line 1449
    return-void
.end method

.method private updateCameraScreenNailSize(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3046
    iget v3, p0, Lcom/android/camera/VideoCamera;->mCameraDisplayOrientation:I

    rem-int/lit16 v3, v3, 0xb4

    if-eqz v3, :cond_0

    .line 3047
    move v2, p1

    .line 3048
    .local v2, tmp:I
    move p1, p2

    .line 3049
    move p2, v2

    .line 3052
    .end local v2           #tmp:I
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v1

    .line 3053
    .local v1, oldWidth:I
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v0

    .line 3055
    .local v0, oldHeight:I
    if-ne v1, p1, :cond_1

    if-eq v0, p2, :cond_2

    .line 3056
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 3057
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->notifyScreenNailChanged()V

    .line 3060
    :cond_2
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v3, :cond_3

    .line 3061
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 3062
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 3064
    :cond_3
    return-void
.end method

.method private updateFlashLightIcon(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 1205
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    sget-object v1, Lcom/android/camera/CameraDeviceManager;->VIDEO_FLASH_LIGHT_ICON:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 1207
    :cond_0
    return-void
.end method

.method private updateRecordingTime()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 2892
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    .line 2948
    :goto_0
    return-void

    .line 2895
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2896
    iget-wide v2, p0, Lcom/android/camera/VideoCamera;->mRecordingStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/camera/VideoCamera;->mRecordingPauseTime:J

    sub-long v2, v0, v2

    .line 2900
    iget v0, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    const v1, 0xea60

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_2

    move v5, v4

    .line 2904
    :goto_1
    if-eqz v5, :cond_7

    .line 2905
    const-wide/16 v0, 0x0

    iget v7, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    int-to-long v7, v7

    sub-long/2addr v7, v2

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v7, 0x3e7

    add-long/2addr v0, v7

    .line 2907
    :goto_2
    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mVideoRecordedTimes:J

    .line 2911
    iget-boolean v7, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-nez v7, :cond_3

    .line 2912
    invoke-static {v0, v1, v6}, Lcom/android/camera/VideoCamera;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v4

    .line 2913
    const-wide/16 v0, 0x3e8

    .line 2922
    :goto_3
    iget-boolean v6, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    if-eqz v6, :cond_4

    .line 2923
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeViewMMS:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2928
    :goto_4
    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeCountsDown:Z

    if-eq v4, v5, :cond_1

    .line 2931
    iput-boolean v5, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeCountsDown:Z

    .line 2933
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v5, :cond_5

    const v4, 0x7f08002d

    :goto_5
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 2937
    iget-boolean v5, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    if-eqz v5, :cond_6

    .line 2938
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeViewMMS:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2945
    :cond_1
    :goto_6
    rem-long/2addr v2, v0

    sub-long/2addr v0, v2

    .line 2946
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    move v5, v6

    .line 2900
    goto :goto_1

    .line 2918
    :cond_3
    invoke-direct {p0, v2, v3}, Lcom/android/camera/VideoCamera;->getTimeLapseVideoLength(J)J

    move-result-wide v0

    invoke-static {v0, v1, v4}, Lcom/android/camera/VideoCamera;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v4

    .line 2919
    iget v0, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-long v0, v0

    goto :goto_3

    .line 2925
    :cond_4
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 2933
    :cond_5
    const v4, 0x7f08002c

    goto :goto_5

    .line 2940
    :cond_6
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    :cond_7
    move-wide v0, v2

    goto :goto_2
.end method


# virtual methods
.method public autoFocus()V
    .locals 2

    .prologue
    .line 3712
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 3716
    :goto_0
    return-void

    .line 3715
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mAutoFocusCallback:Lcom/android/camera/VideoCamera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto :goto_0
.end method

.method public cancelAutoFocus()V
    .locals 0

    .prologue
    .line 3769
    return-void
.end method

.method public checkScreenOrientation()V
    .locals 2

    .prologue
    .line 3531
    iget v0, p0, Lcom/android/camera/VideoCamera;->mConfiguration_orientation:I

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getRequestedOrientation()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3532
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->setRequestedOrientation(I)V

    .line 3534
    :cond_0
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->checkScreenOrientation()V

    .line 3535
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 3426
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3427
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3428
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_1

    .line 3429
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->finish()V

    .line 3435
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 3431
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mHomePressedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 3397
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    if-eqz v1, :cond_0

    .line 3421
    :goto_0
    return v0

    .line 3400
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 3405
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v1, v2, v3}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3406
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 3407
    if-ne v1, v0, :cond_3

    .line 3408
    iput-boolean v4, p0, Lcom/android/camera/VideoCamera;->mIsBackControlDown:Z

    .line 3409
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->changeBackControlStyle()V

    .line 3421
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 3410
    :cond_3
    if-nez v1, :cond_2

    .line 3411
    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsBackControlDown:Z

    .line 3412
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    const v1, 0x108046f

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_1

    .line 3415
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsBackControlDown:Z

    if-eqz v0, :cond_2

    .line 3416
    iput-boolean v4, p0, Lcom/android/camera/VideoCamera;->mIsBackControlDown:Z

    .line 3417
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->changeBackControlStyle()V

    goto :goto_1
.end method

.method public getCameraEV()I
    .locals 1

    .prologue
    .line 3727
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 3728
    const/4 v0, 0x0

    .line 3730
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getCameraEV()I

    move-result v0

    goto :goto_0
.end method

.method public getCameraId()I
    .locals 1

    .prologue
    .line 3761
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    return v0
.end method

.method public getIsCanNextFocus()Z
    .locals 1

    .prologue
    .line 3735
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsCanNextFocus:Z

    return v0
.end method

.method public getIsForbitAutoFocus()Z
    .locals 2

    .prologue
    .line 3746
    const-string v0, "landscape"

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getIsMediaRecorderRecording()Z
    .locals 1

    .prologue
    .line 3773
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    return v0
.end method

.method public getIsMeizuVideoRecord()Z
    .locals 1

    .prologue
    .line 3756
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoRecord:Z

    return v0
.end method

.method protected getStorageSpace()V
    .locals 2

    .prologue
    .line 1441
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->getStorageSpace()V

    .line 1443
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    .line 1444
    return-void
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 2319
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1650
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 1651
    packed-switch p1, :pswitch_data_0

    .line 1661
    :cond_0
    :goto_0
    return-void

    .line 1653
    :pswitch_0
    const/4 v0, -0x1

    if-ne v0, p2, :cond_1

    .line 1654
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->doReturnToCaller(Z)V

    goto :goto_0

    .line 1655
    :cond_1
    if-nez p2, :cond_0

    goto :goto_0

    .line 1651
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method protected onBackClicked()V
    .locals 2

    .prologue
    .line 3539
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mHomePressedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3540
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mHomePressedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3542
    :cond_0
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onBackClicked()V

    .line 3543
    return-void
.end method

.method public onBackControlClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1345
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIsShowCameraAppView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1346
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->onBackPressed()V

    .line 1348
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1799
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_1

    .line 1813
    :cond_0
    :goto_0
    return-void

    .line 1800
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    .line 1801
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onStopVideoRecordingSetCameraSound()V

    goto :goto_0

    .line 1802
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    if-eqz v0, :cond_4

    .line 1803
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoRecord:Z

    if-eqz v0, :cond_3

    .line 1804
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsFlymeCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 1805
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->deleteCurrentVideo()V

    goto :goto_0

    .line 1808
    :cond_3
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onBackPressed()V

    goto :goto_0

    .line 1810
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->collapseMenuControl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1811
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onBackPressed()V

    goto :goto_0
.end method

.method public onCancelBgTraining(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 3090
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageFrame:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3093
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->onSharedPreferenceChanged()V

    .line 3094
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 3210
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3211
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setDisplayOrientation()V

    .line 3212
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mConfiguration_orientation:I

    .line 3214
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 3215
    const v0, 0x7f0d0011

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3216
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3219
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3220
    const v1, 0x7f04006a

    invoke-virtual {v3, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3223
    const v0, 0x7f0d0091

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    .line 3225
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/VideoFocusManager;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoFocusManager;->setFocusAreaIndicator(Landroid/view/View;)V

    .line 3228
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeControlByIntent()V

    .line 3229
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeMiscControls()V

    .line 3230
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeIndicatorMenu()V

    .line 3231
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeFlashLightList()V

    .line 3233
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 3236
    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->showVideoSnapshotUI(Z)V

    .line 3237
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3238
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->updateThumbnailView()V

    .line 3240
    :cond_0
    return-void

    .line 3216
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 603
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 606
    invoke-static {p0}, Lcom/android/camera/Util;->checkIsLowBattery(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 607
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->finish()V

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    const/16 v7, 0x9

    iput v7, v6, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mType:I

    .line 611
    iget-object v6, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    iput v8, v6, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mMimeType:I

    .line 612
    invoke-static {v4}, Lcom/android/camera/Util;->setCurAppMode(I)V

    .line 614
    new-instance v6, Landroid/media/MediaRecorder;

    invoke-direct {v6}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v6, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 616
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsIspSupport()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 620
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6}, Landroid/media/MediaRecorder;->getCameraUpdateIspStatus()I

    move-result v6

    if-eq v6, v8, :cond_2

    .line 621
    const v5, 0x7f0a00bc

    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 622
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->finish()V

    goto :goto_0

    .line 627
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportHDMI()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 628
    const-string v6, "multimedia.hdmi.status"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 632
    .local v2, s:Ljava/lang/String;
    const-string v6, "available"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 633
    const v5, 0x7f0a00c5

    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 634
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->finish()V

    goto :goto_0

    .line 639
    .end local v2           #s:Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->isMeizuSystemCaptureIntent()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 641
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/high16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 645
    :cond_4
    new-instance v1, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 646
    .local v1, iFilter:Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mPowerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v1}, Lcom/android/camera/VideoCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 647
    new-instance v6, Lcom/android/camera/ComboPreferences;

    invoke-direct {v6, p0}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 648
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v6}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 649
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v6}, Lcom/android/camera/VideoCamera;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v6

    iput v6, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    .line 651
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget v7, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-virtual {v6, p0, v7}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 652
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v6}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 654
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CameraHolder;->getNumberOfCameras()I

    move-result v6

    iput v6, p0, Lcom/android/camera/ActivityBase;->mNumberOfCameras:I

    .line 660
    new-instance v0, Lcom/android/camera/ActivityBase$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$CameraOpenThread;-><init>(Lcom/android/camera/ActivityBase;)V

    .line 661
    .local v0, cameraOpenThread:Lcom/android/camera/ActivityBase$CameraOpenThread;
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$CameraOpenThread;->start()V

    .line 663
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    .line 665
    const v6, 0x7f040088

    invoke-virtual {p0, v6}, Lcom/android/camera/VideoCamera;->setContentView(I)V

    .line 668
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->isVideoCaptureIntent()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    .line 669
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->isMeizuCaptureIntent()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    .line 670
    iget-boolean v6, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    iget-boolean v7, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-static {v6, v7}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v6

    if-nez v6, :cond_8

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->createCameraScreenNail(Z)V

    .line 671
    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    iget-boolean v6, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-static {v4, v6}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 672
    invoke-direct {p0, v5}, Lcom/android/camera/VideoCamera;->setSwipEnabled(Z)V

    .line 677
    :cond_5
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$CameraOpenThread;->join()V

    .line 678
    iget-boolean v4, p0, Lcom/android/camera/ActivityBase;->mOpenCameraFail:Z

    if-eqz v4, :cond_9

    .line 679
    const v4, 0x7f0a0022

    invoke-static {p0, v4}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 685
    :catch_0
    move-exception v4

    .line 689
    :cond_6
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/camera/VideoCamera$6;

    invoke-direct {v4, p0}, Lcom/android/camera/VideoCamera$6;-><init>(Lcom/android/camera/VideoCamera;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 697
    .local v3, startPreviewThread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 699
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeControlByIntent()V

    .line 700
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeMiscControls()V

    .line 702
    const v4, 0x7f0d0091

    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/RotateLayout;

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    .line 705
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mTelephoneyManager:Landroid/telephony/TelephonyManager;

    .line 706
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mTelephoneyManager:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v7, 0x20

    invoke-virtual {v4, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 708
    new-instance v4, Lcom/android/camera/RotateDialogController;

    const v6, 0x7f040075

    invoke-direct {v4, p0, v6}, Lcom/android/camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    .line 709
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v6, "android.intent.extra.quickCapture"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/camera/VideoCamera;->mQuickCapture:Z

    .line 710
    const v4, 0x7f0d01a6

    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    .line 711
    new-instance v4, Lcom/android/camera/VideoCamera$MyOrientationEventListener;

    invoke-direct {v4, p0, p0}, Lcom/android/camera/VideoCamera$MyOrientationEventListener;-><init>(Lcom/android/camera/VideoCamera;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mOrientationListener:Lcom/android/camera/VideoCamera$MyOrientationEventListener;

    .line 712
    const v4, 0x7f0d019f

    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/RotateLayout;

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mRotateToastLayout:Lcom/android/camera/ui/RotateLayout;

    .line 713
    const v4, 0x7f0d019e

    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mRotateToastText:Landroid/widget/TextView;

    .line 714
    new-instance v4, Lcom/android/camera/LocationManager;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/camera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 718
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Thread;->join()V

    .line 719
    iget-boolean v4, p0, Lcom/android/camera/ActivityBase;->mOpenCameraFail:Z

    if-eqz v4, :cond_a

    .line 720
    const v4, 0x7f0a0022

    invoke-static {p0, v4}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 726
    :catch_1
    move-exception v4

    .line 731
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 742
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeIndicatorMenu()V

    .line 743
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeFlashLightList()V

    .line 744
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/VideoFocusManager;

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeFocusManager()V

    goto/16 :goto_0

    .end local v3           #startPreviewThread:Ljava/lang/Thread;
    :cond_8
    move v4, v5

    .line 670
    goto/16 :goto_1

    .line 681
    :cond_9
    :try_start_2
    iget-boolean v4, p0, Lcom/android/camera/ActivityBase;->mCameraDisabled:Z

    if-eqz v4, :cond_6

    .line 682
    const v4, 0x7f0a0023

    invoke-static {p0, v4}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 722
    .restart local v3       #startPreviewThread:Ljava/lang/Thread;
    :cond_a
    :try_start_3
    iget-boolean v4, p0, Lcom/android/camera/ActivityBase;->mCameraDisabled:Z

    if-eqz v4, :cond_7

    .line 723
    const v4, 0x7f0a0023

    invoke-static {p0, v4}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPowerReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPowerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mScreenShot:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mScreenShot:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_2

    .line 595
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mTelephoneyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 596
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 598
    :cond_2
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onDestroy()V

    .line 599
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2264
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRecorder error. what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2267
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()Z

    .line 2268
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateAndShowStorageHint()V

    .line 2270
    :cond_0
    return-void
.end method

.method public onFlashLightClicked(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const-wide/16 v1, 0xc8

    .line 1275
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsCollapseMenuControl:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIsShowCameraAppView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1276
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 1277
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightList:Landroid/widget/ListView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 1278
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->timeToHideFlashLightList()V

    .line 1280
    :cond_0
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0a0084

    const/16 v3, 0x11

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2275
    const/16 v0, 0x320

    if-ne p2, v0, :cond_2

    .line 2276
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 2277
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsInfoMaxDuration:Z

    .line 2278
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onStopVideoRecordingSetCameraSound()V

    .line 2281
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsStorageHintShow:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    if-eqz v0, :cond_1

    .line 2283
    invoke-static {p0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2285
    invoke-virtual {v0, v3, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 2286
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2302
    :cond_1
    :goto_0
    return-void

    .line 2288
    :cond_2
    const/16 v0, 0x321

    if-ne p2, v0, :cond_1

    .line 2289
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_3

    .line 2290
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsInfoMaxFileSize:Z

    .line 2291
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onStopVideoRecordingSetCameraSound()V

    .line 2294
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsStorageHintShow:Z

    if-nez v0, :cond_1

    .line 2296
    invoke-static {p0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2298
    invoke-virtual {v0, v3, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 2299
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1124
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenu_v:Landroid/widget/ListView;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenu_h:Landroid/widget/ListView;

    if-ne p1, v0, :cond_7

    .line 1125
    :cond_0
    if-nez p3, :cond_3

    .line 1126
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubMenu_v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSubVideoSizeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1127
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubMenu_h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSubVideoSizeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1143
    :cond_1
    :goto_0
    iput p3, p0, Lcom/android/camera/VideoCamera;->mMainSel:I

    .line 1144
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenuAdapter:Lcom/android/camera/VideoMainMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/android/camera/VideoMainMenuAdapter;->setCurSel(I)V

    .line 1145
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenuAdapter:Lcom/android/camera/VideoMainMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/VideoMainMenuAdapter;->notifyDataSetChanged()V

    .line 1174
    :cond_2
    :goto_1
    return-void

    .line 1128
    :cond_3
    if-ne p3, v5, :cond_5

    .line 1129
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    if-nez v0, :cond_4

    .line 1130
    new-instance v0, Lcom/android/camera/SubMenuAdapter;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraMenuInfo:Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    iget v2, v1, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mSceneMenuKeyArrayId:I

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraMenuInfo:Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    iget v3, v1, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mSceneMenuValueArrayId:I

    const-string v4, "pref_camera_scenemode_key"

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSelIndex:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/SubMenuAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    .line 1133
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubMenu_v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1134
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubMenu_h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 1135
    :cond_5
    if-ne p3, v6, :cond_1

    .line 1136
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubWBAdapter:Lcom/android/camera/SubMenuAdapter;

    if-nez v0, :cond_6

    .line 1137
    new-instance v0, Lcom/android/camera/SubMenuAdapter;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraMenuInfo:Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    iget v2, v1, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mWhiteBalanceKeyArrayId:I

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraMenuInfo:Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    iget v3, v1, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mWhiteBalanceValueArrayId:I

    const-string v4, "pref_camera_whitebalance_key"

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSelIndex:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/SubMenuAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mSubWBAdapter:Lcom/android/camera/SubMenuAdapter;

    .line 1140
    :cond_6
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubMenu_v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSubWBAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1141
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubMenu_h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSubWBAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 1146
    :cond_7
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubMenu_v:Landroid/widget/ListView;

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubMenu_h:Landroid/widget/ListView;

    if-ne p1, v0, :cond_2

    .line 1147
    :cond_8
    iget v0, p0, Lcom/android/camera/VideoCamera;->mMainSel:I

    if-nez v0, :cond_a

    .line 1148
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubVideoSizeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/android/camera/SubMenuAdapter;->setCurSel(I)V

    .line 1149
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mMainMenuAdapter:Lcom/android/camera/VideoMainMenuAdapter;

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubVideoSizeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/android/camera/SubMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/VideoMainMenuAdapter;->setTipsStr(ILjava/lang/String;)V

    .line 1150
    invoke-static {p0}, Lcom/android/camera/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSubVideoSizeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v1}, Lcom/android/camera/SubMenuAdapter;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mSubVideoSizeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v2, p3}, Lcom/android/camera/SubMenuAdapter;->getVaule(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1152
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubVideoSizeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/SubMenuAdapter;->notifyDataSetChanged()V

    .line 1171
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenuAdapter:Lcom/android/camera/VideoMainMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/VideoMainMenuAdapter;->notifyDataSetChanged()V

    .line 1172
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->onSharedPreferenceChanged()V

    goto/16 :goto_1

    .line 1153
    :cond_a
    iget v0, p0, Lcom/android/camera/VideoCamera;->mMainSel:I

    if-ne v0, v5, :cond_c

    .line 1154
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/android/camera/SubMenuAdapter;->setCurSel(I)V

    .line 1155
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mMainMenuAdapter:Lcom/android/camera/VideoMainMenuAdapter;

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/android/camera/SubMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v5, v0}, Lcom/android/camera/VideoMainMenuAdapter;->setTipsStr(ILjava/lang/String;)V

    .line 1156
    if-eqz p3, :cond_b

    .line 1157
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenuAdapter:Lcom/android/camera/VideoMainMenuAdapter;

    invoke-virtual {v0, v5}, Lcom/android/camera/VideoMainMenuAdapter;->setIsAutoScense(Z)V

    .line 1161
    :goto_3
    invoke-static {p0}, Lcom/android/camera/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v1}, Lcom/android/camera/SubMenuAdapter;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v2, p3}, Lcom/android/camera/SubMenuAdapter;->getVaule(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1163
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/SubMenuAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 1159
    :cond_b
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenuAdapter:Lcom/android/camera/VideoMainMenuAdapter;

    invoke-virtual {v0, v2}, Lcom/android/camera/VideoMainMenuAdapter;->setIsAutoScense(Z)V

    goto :goto_3

    .line 1164
    :cond_c
    iget v0, p0, Lcom/android/camera/VideoCamera;->mMainSel:I

    if-ne v0, v6, :cond_9

    .line 1165
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubWBAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/android/camera/SubMenuAdapter;->setCurSel(I)V

    .line 1166
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mMainMenuAdapter:Lcom/android/camera/VideoMainMenuAdapter;

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubWBAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/android/camera/SubMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v6, v0}, Lcom/android/camera/VideoMainMenuAdapter;->setTipsStr(ILjava/lang/String;)V

    .line 1167
    invoke-static {p0}, Lcom/android/camera/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSubWBAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v1}, Lcom/android/camera/SubMenuAdapter;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mSubWBAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v2, p3}, Lcom/android/camera/SubMenuAdapter;->getVaule(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1169
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubWBAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/SubMenuAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1818
    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v1, :cond_1

    .line 1849
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 1822
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 1849
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1824
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 1825
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->performClick()Z

    goto :goto_0

    .line 1830
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 1831
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->performClick()Z

    goto :goto_0

    .line 1836
    :sswitch_3
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v1, :cond_0

    .line 1837
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1838
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    goto :goto_0

    .line 1822
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_2
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_1
        0x52 -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 1854
    sparse-switch p1, :sswitch_data_0

    .line 1891
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 1856
    :sswitch_0
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1, v2}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    goto :goto_0

    .line 1874
    :sswitch_1
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMenuAnimation:Z

    if-nez v1, :cond_0

    .line 1877
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportLedLight()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1878
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1879
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsMenuLongPress:Z

    .line 1885
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportNavigationBar()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1886
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->doMenu()V

    goto :goto_0

    .line 1881
    :cond_2
    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMenuLongPress:Z

    goto :goto_1

    .line 1854
    nop

    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMenuControlClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1352
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->doMenu()V

    .line 1353
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1724
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    .line 1725
    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsSwitchCameraFinish:Z

    .line 1726
    const-string v0, "light-off"

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->resetFlashLight(Ljava/lang/String;)V

    .line 1728
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->collapseMenuControl()Z

    .line 1730
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_7

    .line 1732
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onStopVideoRecordingSetCameraSound()V

    .line 1737
    :goto_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 1738
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 1739
    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1748
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeVideoFileDescriptor()V

    .line 1749
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->clearVideoNamer()V

    .line 1751
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 1752
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1753
    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1755
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSysReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 1756
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSysReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1757
    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mSysReceiver:Landroid/content/BroadcastReceiver;

    .line 1759
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resetScreenOn()V

    .line 1761
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mOrientationListener:Lcom/android/camera/VideoCamera$MyOrientationEventListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mOrientationListener:Lcom/android/camera/VideoCamera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->disable()V

    .line 1762
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1764
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1765
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1766
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1767
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    .line 1768
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    .line 1771
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onPause()V

    .line 1772
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsStartVideoPlay:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsGotoGallery:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1774
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->finish()V

    .line 1779
    :cond_5
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/VideoFocusManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/VideoFocusManager;

    invoke-virtual {v0}, Lcom/android/camera/VideoFocusManager;->removeMessages()V

    .line 1780
    :cond_6
    return-void

    .line 1734
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeCamera()V

    .line 1735
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    goto/16 :goto_0
.end method

.method protected onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 3357
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3358
    return-void
.end method

.method public onProtectiveCurtainClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1391
    return-void
.end method

.method public onRecordCaptureClicked(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1251
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_1

    .line 1271
    :cond_0
    :goto_0
    return-void

    .line 1256
    :cond_1
    const-wide/16 v0, 0x352

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isFastDoubleClick(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1261
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    iget v1, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v0

    .line 1262
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1263
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1264
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1, v0}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 1265
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1267
    const-string v1, "videocamera"

    const-string v2, "Video snapshot start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    new-instance v2, Lcom/android/camera/VideoCamera$JpegPictureCallback;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/VideoCamera$JpegPictureCallback;-><init>(Lcom/android/camera/VideoCamera;Landroid/location/Location;)V

    invoke-virtual {v1, v3, v3, v3, v2}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1269
    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->showVideoSnapshotUI(Z)V

    .line 1270
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->getCaptureAnimationRotate()I

    move-result v1

    invoke-virtual {v0, v1, v4}, Lcom/android/camera/CameraScreenNail;->animateCapture(IZ)V

    goto :goto_0
.end method

.method public onRecordPauseClicked(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1236
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoRecordPause:Z

    if-nez v0, :cond_1

    .line 1237
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->pauseVideoRecording()V

    .line 1238
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mRecordingPauseStartTime:J

    .line 1247
    :cond_0
    :goto_0
    return-void

    .line 1240
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsCanResumeVideoRecording:Z

    if-eqz v0, :cond_0

    .line 1243
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resumeVideoRecording()V

    .line 1244
    iget-wide v0, p0, Lcom/android/camera/VideoCamera;->mRecordingPauseTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/camera/VideoCamera;->mRecordingPauseStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mRecordingPauseTime:J

    .line 1245
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateRecordingTime()V

    goto :goto_0
.end method

.method public onRestorePreferencesClicked()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 3248
    new-instance v4, Lcom/android/camera/VideoCamera$15;

    invoke-direct {v4, p0}, Lcom/android/camera/VideoCamera$15;-><init>(Lcom/android/camera/VideoCamera;)V

    .line 3254
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    const v2, 0x7f0a002d

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v5, 0x104

    invoke-virtual {p0, v5}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 3259
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1554
    iput-boolean v4, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    .line 1555
    iput-boolean v4, p0, Lcom/android/camera/VideoCamera;->mIsStartVideoPlay:Z

    .line 1556
    iput-boolean v4, p0, Lcom/android/camera/VideoCamera;->mIsLastFileEncryptRecord:Z

    .line 1557
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onResume()V

    .line 1558
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mCameraDisabled:Z

    if-eqz v0, :cond_1

    .line 1646
    :cond_0
    :goto_0
    return-void

    .line 1561
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->isLockViewNeedAddFlag()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1562
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1565
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->showVideoSnapshotUI(Z)V

    .line 1569
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mOrientationListener:Lcom/android/camera/VideoCamera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->enable()V

    .line 1570
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mConfiguration_orientation:I

    .line 1571
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-nez v0, :cond_4

    .line 1572
    new-instance v0, Lcom/android/camera/ActivityBase$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$CameraOpenThread;-><init>(Lcom/android/camera/ActivityBase;)V

    .line 1573
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$CameraOpenThread;->start()V

    .line 1575
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$CameraOpenThread;->join()V

    .line 1576
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mOpenCameraFail:Z

    if-eqz v0, :cond_9

    .line 1577
    const v0, 0x7f0a0022

    invoke-static {p0, v0}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1583
    :catch_0
    move-exception v0

    .line 1586
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setCameraMode(I)V

    .line 1587
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->readVideoPreferences()V

    .line 1588
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 1589
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V

    .line 1592
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_5

    .line 1593
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOnAwhile()V

    .line 1599
    :cond_5
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1600
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsGotoGallery:Z

    if-eqz v0, :cond_6

    .line 1601
    iput-boolean v4, p0, Lcom/android/camera/VideoCamera;->mIsGotoGallery:Z

    .line 1605
    :cond_6
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1607
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1608
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1609
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1610
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1611
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1612
    new-instance v1, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;

    invoke-direct {v1, p0, v5}, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;-><init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1613
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/VideoCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1615
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1616
    const-string v1, "android.intent.action.MEIZU_HDMI_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1617
    new-instance v1, Lcom/android/camera/VideoCamera$SysBroadcastReceiver;

    invoke-direct {v1, p0, v5}, Lcom/android/camera/VideoCamera$SysBroadcastReceiver;-><init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mSysReceiver:Landroid/content/BroadcastReceiver;

    .line 1618
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSysReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/VideoCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1619
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    .line 1621
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/VideoCamera$11;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoCamera$11;-><init>(Lcom/android/camera/VideoCamera;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1629
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 1631
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1633
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsSecurityAppLock:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsLockViewIntent:Z

    if-nez v0, :cond_7

    .line 1634
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getLastThumbnail()V

    .line 1637
    :cond_7
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-eqz v0, :cond_8

    .line 1638
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mOnResumeTime:J

    .line 1639
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1642
    :cond_8
    invoke-static {p0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 1644
    new-instance v0, Lcom/android/camera/VideoCamera$VideoNamer;

    invoke-direct {v0}, Lcom/android/camera/VideoCamera$VideoNamer;-><init>()V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoNamer:Lcom/android/camera/VideoCamera$VideoNamer;

    .line 1645
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resetLedLight()V

    goto/16 :goto_0

    .line 1579
    :cond_9
    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mCameraDisabled:Z

    if-eqz v0, :cond_3

    .line 1580
    const v0, 0x7f0a0023

    invoke-static {p0, v0}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1339
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()Z

    .line 1340
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->doReturnToCaller(Z)V

    .line 1341
    return-void
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1334
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->doReturnToCaller(Z)V

    .line 1335
    return-void
.end method

.method public onReviewPlayClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1329
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPlayVideoActivity()V

    .line 1330
    return-void
.end method

.method public onReviewRetakeClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1323
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->deleteCurrentVideo()V

    .line 1325
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 8

    .prologue
    .line 3274
    iget-boolean v3, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v3, :cond_0

    .line 3308
    :goto_0
    return-void

    .line 3275
    :cond_0
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    monitor-enter v4

    .line 3278
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v3, :cond_1

    monitor-exit v4

    goto :goto_0

    .line 3307
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3280
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v5}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v1

    .line 3282
    .local v1, recordLocation:Z
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v3, v1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 3284
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->readVideoPreferences()V

    .line 3286
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 3287
    .local v2, size:Landroid/hardware/Camera$Size;
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    if-ne v3, v5, :cond_2

    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    iget v5, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    if-eq v3, v5, :cond_4

    .line 3289
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/camera/VideoCamera;->setIsDropFullScreenChanged(Z)V

    .line 3290
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->collapseMenuControl()Z

    .line 3291
    const/4 v0, 0x0

    .line 3292
    .local v0, delay:I
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v3

    sget v5, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-ne v3, v5, :cond_3

    .line 3293
    const/16 v0, 0xc8

    .line 3295
    :cond_3
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/camera/VideoCamera$16;

    invoke-direct {v5, p0}, Lcom/android/camera/VideoCamera$16;-><init>(Lcom/android/camera/VideoCamera;)V

    int-to-long v6, v0

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3307
    .end local v0           #delay:I
    :goto_1
    monitor-exit v4

    goto :goto_0

    .line 3305
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setCameraParameters()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onShutterButtonClick()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1395
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    if-eqz v2, :cond_1

    .line 1432
    :cond_0
    :goto_0
    return-void

    .line 1396
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsMenuAnimation:Z

    if-nez v2, :cond_0

    .line 1397
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIsShowCameraAppView()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1398
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    iget-boolean v3, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-static {v2, v3}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1399
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Lcom/android/camera/Util;->isFastDoubleClick(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1408
    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 1409
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "camera_sounds_enabled"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_5

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsDisableCameraSound:Z

    .line 1411
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsDisableCameraSound:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_3

    .line 1412
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->playSound(I)V

    .line 1415
    :cond_3
    if-eqz v2, :cond_6

    .line 1416
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onStopVideoRecordingSetCameraSound()V

    goto :goto_0

    .line 1403
    :cond_4
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Lcom/android/camera/Util;->isFastDoubleClick(J)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_5
    move v0, v1

    .line 1409
    goto :goto_1

    .line 1418
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startVideoRecording()V

    .line 1419
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsDisableCameraSound:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 1420
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->playSound(I)V

    goto :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 1437
    return-void
.end method

.method protected onSingleTapUp(Landroid/view/View;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsCollapseMenuControl:Z

    .line 3371
    int-to-float v0, p2

    int-to-float v1, p3

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMenuBackControl:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMenuShowed:Z

    if-eqz v0, :cond_3

    .line 3372
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 3373
    int-to-float v0, p2

    int-to-float v1, p3

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3374
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->collapseMenuControl()Z

    .line 3393
    :cond_0
    :goto_0
    return-void

    .line 3378
    :cond_1
    int-to-float v0, p2

    int-to-float v1, p3

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3379
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->collapseMenuControl()Z

    goto :goto_0

    .line 3383
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsCollapseMenuControl:Z

    .line 3385
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    int-to-float v0, p2

    int-to-float v1, p3

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mFlashLightList:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3386
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->collapseFlashLightList()V

    goto :goto_0

    .line 3389
    :cond_4
    int-to-float v0, p2

    int-to-float v1, p3

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mVideoControlPaneLayout:Lcom/android/camera/ui/ControlPanelLayout;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/android/camera/VideoCamera;->forbidTouchFocus(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsCollapseMenuControl:Z

    if-nez v0, :cond_0

    const-string v0, "landscape"

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoRecord:Z

    if-nez v0, :cond_0

    .line 3391
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/VideoFocusManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/VideoFocusManager;->onSingleTapUp(II)V

    goto :goto_0
.end method

.method public onSizeChanged(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 3695
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    if-nez v0, :cond_0

    .line 3699
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/VideoCamera$17;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoCamera$17;-><init>(Lcom/android/camera/VideoCamera;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3706
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/VideoFocusManager;

    const v1, 0x7f0901ae

    invoke-static {p0, v1}, Lcom/android/camera/Util;->getDimenVaule(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/camera/VideoFocusManager;->setPreviewSize(III)V

    .line 3708
    return-void
.end method

.method protected onSwitchAnimationEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3363
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->setIsDropFullScreenChanged(Z)V

    .line 3364
    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->setSwipEnabled(Z)V

    .line 3365
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsSwitchCameraFinish:Z

    .line 3366
    return-void
.end method

.method public onSwitchCameraClicked(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const-wide/16 v3, 0x32

    .line 1284
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIsShowCameraAppView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsSwitchCameraFinish:Z

    if-nez v0, :cond_1

    .line 1310
    :cond_0
    :goto_0
    return-void

    .line 1286
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsSwitchCameraFinish:Z

    .line 1288
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->copyTexture()V

    .line 1289
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/camera/ActivityBase;->mNumberOfCameras:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    .line 1291
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    .line 1292
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportFlashLightMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1293
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->collapseFlashLightList()V

    .line 1294
    iget v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    if-ne v0, v2, :cond_3

    .line 1295
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/VideoCamera$10;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoCamera$10;-><init>(Lcom/android/camera/VideoCamera;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1301
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 1302
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 1309
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->collapseMenuControl()Z

    goto :goto_0

    .line 1304
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 1305
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 1306
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    goto :goto_1
.end method

.method public onSwitchCameraModeClicked(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1314
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/Util;->getCanSwitchOtherMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIsShowCameraAppView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1315
    invoke-static {}, Lcom/android/camera/Util;->setCanSwitchOtherMode()V

    .line 1316
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->isMeizuSystemCaptureIntent()Z

    move-result v2

    iget-boolean v3, p0, Lcom/android/camera/VideoCamera;->mIsLockView:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/VideoCamera;->switchToOtherMode(IZZZ)Z

    .line 1319
    :cond_0
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1228
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    if-nez v0, :cond_0

    .line 1230
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->gotoGallery()V

    .line 1232
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 1784
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onUserInteraction()V

    .line 1785
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_1

    .line 1786
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 1787
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOnAwhile()V

    .line 1788
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->timeToCloseCamera()V

    .line 1795
    :cond_0
    :goto_0
    return-void

    .line 1791
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoRecordPause:Z

    if-eqz v0, :cond_0

    .line 1792
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->pauseTimeToCloseCamera()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 857
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMenuLongPress:Z

    if-eqz v0, :cond_0

    .line 858
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMenuLongPress:Z

    .line 860
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onWindowFocusChanged(Z)V

    .line 861
    return-void
.end method

.method public setFocusParameters()V
    .locals 2

    .prologue
    .line 3778
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFocusMode(I)V

    .line 3779
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/VideoFocusManager;

    invoke-virtual {v1}, Lcom/android/camera/VideoFocusManager;->getTouchPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusPos(I)V

    .line 3780
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mAutoFocusCallback:Lcom/android/camera/VideoCamera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 3781
    return-void
.end method

.method showVideoSnapshotUI(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 3461
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isVideoSnapshotSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3462
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewFrameLayout;->showBorder(Z)V

    .line 3463
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 3465
    :cond_0
    return-void

    .line 3463
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected storageHintCancel()V
    .locals 2

    .prologue
    .line 3492
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRotateToastText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3493
    return-void
.end method

.method protected storageHintShow(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 3486
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRotateToastText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3487
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRotateToastText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3488
    return-void
.end method

.method public touchFocus()V
    .locals 2

    .prologue
    .line 3720
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFocusMode(I)V

    .line 3721
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/VideoFocusManager;

    invoke-virtual {v1}, Lcom/android/camera/VideoFocusManager;->getTouchPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusPos(I)V

    .line 3722
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mAutoFocusCallback:Lcom/android/camera/VideoCamera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 3723
    return-void
.end method

.method protected updateCameraAppView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3497
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->updateCameraAppView()V

    .line 3500
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_2

    .line 3501
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOnAwhile()V

    .line 3502
    invoke-direct {p0, v3}, Lcom/android/camera/VideoCamera;->setIsInterceptHomeKey(Z)V

    .line 3513
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 3527
    :cond_1
    :goto_1
    return-void

    .line 3504
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resetScreenOn()V

    .line 3505
    invoke-direct {p0, v4}, Lcom/android/camera/VideoCamera;->setIsInterceptHomeKey(Z)V

    .line 3506
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/VideoFocusManager;

    invoke-virtual {v0}, Lcom/android/camera/VideoFocusManager;->resetTouchFocus()V

    .line 3507
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mFadeOutRotateToast:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3508
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mFadeOutRotateToast:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3509
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRotateToastText:Landroid/widget/TextView;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    goto :goto_0

    .line 3516
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-nez v0, :cond_5

    .line 3517
    const-string v0, "light-off"

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mFlashLightMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3518
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mRestoreFlash:Z

    goto :goto_1

    .line 3521
    :cond_4
    iput-boolean v4, p0, Lcom/android/camera/VideoCamera;->mRestoreFlash:Z

    .line 3522
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setCameraParameters()V

    goto :goto_1

    .line 3523
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mRestoreFlash:Z

    if-eqz v0, :cond_1

    .line 3524
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mRestoreFlash:Z

    .line 3525
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setCameraParameters()V

    goto :goto_1
.end method

.method protected updateStorageState(Ljava/lang/String;)V
    .locals 4
    .parameter "message"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3469
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3470
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    if-eqz v0, :cond_0

    .line 3471
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsStorageHintShow:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/camera/ui/GlowImageView;->setEnabled(Z)V

    .line 3472
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsStorageHintShow:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/camera/ui/GlowImageView;->setClickable(Z)V

    .line 3474
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_1

    .line 3475
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsStorageHintShow:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 3476
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    iget-boolean v3, p0, Lcom/android/camera/ActivityBase;->mIsStorageHintShow:Z

    if-nez v3, :cond_5

    :goto_3
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setClickable(Z)V

    .line 3481
    :cond_1
    :goto_4
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->showRotateToast(Ljava/lang/String;)V

    .line 3482
    return-void

    :cond_2
    move v0, v2

    .line 3471
    goto :goto_0

    :cond_3
    move v0, v2

    .line 3472
    goto :goto_1

    :cond_4
    move v0, v2

    .line 3475
    goto :goto_2

    :cond_5
    move v1, v2

    .line 3476
    goto :goto_3

    .line 3479
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsStorageHintShow:Z

    if-nez v0, :cond_7

    :goto_5
    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->setMenuEnabled(Z)V

    goto :goto_4

    :cond_7
    move v1, v2

    goto :goto_5
.end method
