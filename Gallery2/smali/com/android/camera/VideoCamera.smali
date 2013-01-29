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

.field private mFlashLightAdapter:Lcom/android/camera/VideoCamera$FlashLightAdapter;

.field private mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

.field private mFlashLightItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private mFlashLightList:Landroid/widget/ListView;

.field private mFlashLightMode:Ljava/lang/String;

.field private mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

.field private mFocusManager:Lcom/android/camera/VideoFocusManager;

.field private final mGetThumbnailRuunable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mIsBackControlDown:Z

.field private mIsCanNextFocus:Z

.field private mIsCanResumeVideoRecording:Z

.field private mIsCapturePicStopRecord:Z

.field mIsCollapseMenuControl:Z

.field private mIsFlymeCaptureIntent:Z

.field private mIsGotoGallery:Z

.field private mIsInfoMaxDuration:Z

.field private mIsInfoMaxFileSize:Z

.field private mIsLockView:Z

.field private mIsLockViewIntent:Z

.field private mIsMeizuVideoIntent:Z

.field private mIsMeizuVideoRecord:Z

.field private mIsMenuAnimation:Z

.field private mIsMenuLongPress:Z

.field private mIsMenuShowed:Z

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

.field private mRecordingCaptureTime:J

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

.field private mSnapshotInProgress:Z

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

.field private mToastLayout:Landroid/widget/RelativeLayout;

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
    const/4 v5, 0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;-><init>()V

    .line 145
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mSnapshotInProgress:Z

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
    iput-wide v3, p0, Lcom/android/camera/VideoCamera;->mRecordingPauseTime:J

    .line 268
    iput-wide v3, p0, Lcom/android/camera/VideoCamera;->mRecordingPauseStartTime:J

    .line 269
    iput-wide v3, p0, Lcom/android/camera/VideoCamera;->mRecordingCaptureTime:J

    .line 281
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsStartVideoPlay:Z

    .line 285
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsPreForbidDegree:Z

    .line 287
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMenuLongPress:Z

    .line 291
    iput-boolean v5, p0, Lcom/android/camera/VideoCamera;->mIsCanResumeVideoRecording:Z

    .line 295
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMenuAnimation:Z

    .line 297
    iput-boolean v5, p0, Lcom/android/camera/VideoCamera;->mIsCanNextFocus:Z

    .line 299
    iput-wide v3, p0, Lcom/android/camera/VideoCamera;->mVideoRecordedTimes:J

    .line 310
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsInfoMaxDuration:Z

    .line 312
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsInfoMaxFileSize:Z

    .line 314
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsCapturePicStopRecord:Z

    .line 317
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsBackControlDown:Z

    .line 320
    iput-boolean v5, p0, Lcom/android/camera/VideoCamera;->mIsSwitchCameraFinish:Z

    .line 324
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsLockView:Z

    .line 326
    new-instance v0, Lcom/android/camera/VideoCamera$AutoFocusCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/VideoCamera$AutoFocusCallback;-><init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mAutoFocusCallback:Lcom/android/camera/VideoCamera$AutoFocusCallback;

    .line 346
    new-instance v0, Lcom/android/camera/VideoCamera$1;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoCamera$1;-><init>(Lcom/android/camera/VideoCamera;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCanNextFocusRunnable:Ljava/lang/Runnable;

    .line 352
    new-instance v0, Lcom/android/camera/VideoCamera$2;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoCamera$2;-><init>(Lcom/android/camera/VideoCamera;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mBackControlImgRunnable:Ljava/lang/Runnable;

    .line 454
    new-instance v0, Lcom/android/camera/VideoCamera$3;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoCamera$3;-><init>(Lcom/android/camera/VideoCamera;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 466
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 491
    new-instance v0, Lcom/android/camera/VideoCamera$4;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoCamera$4;-><init>(Lcom/android/camera/VideoCamera;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mPowerReceiver:Landroid/content/BroadcastReceiver;

    .line 512
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mSysReceiver:Landroid/content/BroadcastReceiver;

    .line 750
    new-instance v0, Lcom/android/camera/VideoCamera$6;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoCamera$6;-><init>(Lcom/android/camera/VideoCamera;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuFadeOutAniLis:Landroid/view/animation/Animation$AnimationListener;

    .line 1121
    iput v1, p0, Lcom/android/camera/VideoCamera;->mMainSel:I

    .line 1177
    new-instance v0, Lcom/android/camera/VideoCamera$8;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoCamera$8;-><init>(Lcom/android/camera/VideoCamera;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 2340
    new-instance v0, Lcom/android/camera/VideoCamera$11;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoCamera$11;-><init>(Lcom/android/camera/VideoCamera;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mGetThumbnailRuunable:Ljava/lang/Runnable;

    .line 3518
    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/camera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/VideoCamera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/android/camera/VideoCamera;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/android/camera/VideoCamera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showTapToSnapshotToast()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->switchCamera()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->collapseFlashLightList()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsGotoGallery:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/VideoCamera;)Lcom/android/camera/VideoFocusManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/VideoFocusManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/VideoCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->switchToOtherMode(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->getThumbnail()V

    return-void
.end method

.method static synthetic access$2202(Lcom/android/camera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/camera/VideoCamera;->mIsCanResumeVideoRecording:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateAndShowStorageHint()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/camera/VideoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->isMeizuSystemCaptureIntent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsLockViewIntent:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsLockView:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->readVideoPreferences()V

    return-void
.end method

.method static synthetic access$3002(Lcom/android/camera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/camera/VideoCamera;->mIsMenuAnimation:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/camera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/camera/VideoCamera;->mIsCanNextFocus:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/camera/VideoCamera;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSecondLevelFadeIn:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/camera/VideoCamera;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraModeLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/GlowImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/RotateImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/GlowImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBackControl:Lcom/android/camera/ui/GlowImageView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/GlowImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuShowIcon:Lcom/android/camera/ui/GlowImageView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/camera/VideoCamera;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSecondLevelFadeOut:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/camera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$3802(Lcom/android/camera/VideoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$3900(Lcom/android/camera/VideoCamera;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/camera/VideoCamera;->setOrientationIndicator(IZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/RotateImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/ControlPanelLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoControlPaneLayout:Lcom/android/camera/ui/ControlPanelLayout;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/camera/VideoCamera;)Lcom/android/camera/VideoCamera$FlashLightAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightAdapter:Lcom/android/camera/VideoCamera$FlashLightAdapter;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/RotateImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/camera/VideoCamera;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/camera/VideoCamera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/camera/VideoCamera;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/camera/VideoCamera;->mFlashLightMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/camera/VideoCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->updateFlashLightIcon(I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/camera/VideoCamera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->enableRecordCaptureControl(Z)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/camera/VideoCamera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ShutterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/camera/VideoCamera;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mScreenShot:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/android/camera/VideoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/camera/VideoCamera;->mScreenShot:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/android/camera/VideoCamera;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRotateToastText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->restorePreferences()V

    return-void
.end method

.method static synthetic access$5402(Lcom/android/camera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/camera/VideoCamera;->mSnapshotInProgress:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/android/camera/VideoCamera;[BLandroid/location/Location;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/camera/VideoCamera;->storeImage([BLandroid/location/Location;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoRecordPause:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/camera/VideoCamera;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    return v0
.end method

.method private addVideoToMediaStore()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2060
    const/4 v2, 0x0

    .line 2061
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_3

    .line 2062
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

    .line 2064
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/camera/VideoCamera;->mRecordingStartTime:J

    sub-long/2addr v0, v3

    .line 2065
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_2

    .line 2066
    iget-boolean v3, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v3, :cond_0

    .line 2067
    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoCamera;->getTimeLapseVideoLength(J)J

    move-result-wide v0

    .line 2069
    :cond_0
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v4, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2074
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoNamer:Lcom/android/camera/VideoCamera$VideoNamer;

    invoke-virtual {v0}, Lcom/android/camera/VideoCamera$VideoNamer;->getUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2080
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2082
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2083
    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2086
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2088
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_VIDEO"

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2098
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

    .line 2101
    :goto_1
    iput-object v6, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 2102
    return v0

    .line 2071
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

    .line 2090
    :catch_0
    move-exception v0

    .line 2093
    :try_start_1
    const-string v1, "videocamera"

    const-string v2, "failed to add video to media store"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2094
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2095
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2096
    const/4 v0, 0x1

    .line 2098
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

.method private alertGetBitmap()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2398
    const/4 v0, 0x0

    .line 2399
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_0

    .line 2400
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v3}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v3, v0

    .line 2406
    :goto_0
    if-eqz v3, :cond_2

    .line 2409
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    .line 2410
    iget v4, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    aget-object v0, v0, v4

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 2411
    :goto_1
    iget v4, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensationAtRecordStart:I

    neg-int v4, v4

    invoke-static {v3, v4, v0}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2413
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2414
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2426
    :goto_2
    return v1

    .line 2402
    :cond_0
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 2403
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v3}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 2410
    goto :goto_1

    .line 2417
    :cond_2
    const v0, 0x7f0a00b8

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2418
    const/16 v3, 0x11

    invoke-virtual {v0, v3, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 2419
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2420
    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->enableCameraControls(Z)V

    .line 2421
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2422
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showSwitchAndFlashBtn()V

    .line 2423
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->hideVideoRecordingUI()V

    move v1, v2

    .line 2424
    goto :goto_2

    :cond_3
    move-object v3, v0

    goto :goto_0
.end method

.method private changeBackControlStyle()V
    .locals 4

    .prologue
    .line 2144
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    const v1, 0x1080456

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 2145
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mBackControlImgRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2146
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mBackControlImgRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2147
    return-void
.end method

.method private checkVideoFile(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2130
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

    .line 2131
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2132
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0xaf000

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 2133
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2134
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

    .line 2136
    :cond_0
    const v1, 0x7f0a00b8

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2139
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private cleanupEmptyFile()V
    .locals 5

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1883
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1884
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1885
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

    .line 1886
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 1889
    :cond_0
    return-void
.end method

.method private clearVideoNamer()V
    .locals 1

    .prologue
    .line 3360
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoNamer:Lcom/android/camera/VideoCamera$VideoNamer;

    if-eqz v0, :cond_0

    .line 3361
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoNamer:Lcom/android/camera/VideoCamera$VideoNamer;

    invoke-virtual {v0}, Lcom/android/camera/VideoCamera$VideoNamer;->finish()V

    .line 3362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoNamer:Lcom/android/camera/VideoCamera$VideoNamer;

    .line 3364
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1643
    const-string v0, "videocamera"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 1645
    const-string v0, "videocamera"

    const-string v1, "already stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    :goto_0
    return-void

    .line 1648
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1649
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1650
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 1651
    iput-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 1652
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    .line 1653
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mSnapshotInProgress:Z

    .line 1654
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/VideoFocusManager;

    invoke-virtual {v0}, Lcom/android/camera/VideoFocusManager;->onCameraReleased()V

    goto :goto_0
.end method

.method private closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 3340
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 3342
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3346
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 3348
    :cond_0
    return-void

    .line 3343
    :catch_0
    move-exception v0

    .line 3344
    const-string v1, "videocamera"

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private collapseFlashLightList()V
    .locals 3

    .prologue
    const-wide/16 v1, 0xc8

    .line 742
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

    .line 744
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightList:Landroid/widget/ListView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 745
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 747
    :cond_0
    return-void
.end method

.method private collapseMenuControl()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 842
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMenuShowed:Z

    if-eqz v1, :cond_0

    .line 843
    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMenuShowed:Z

    .line 844
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->hideMenuLayout()V

    .line 845
    const/4 v0, 0x1

    .line 847
    :cond_0
    return v0
.end method

.method private controlMenuBar()V
    .locals 2

    .prologue
    .line 828
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMenuShowed:Z

    if-nez v0, :cond_1

    .line 830
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->collapseFlashLightList()V

    .line 831
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_0

    .line 832
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showMenuLayout()V

    .line 833
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMenuShowed:Z

    .line 839
    :cond_0
    :goto_0
    return-void

    .line 836
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->collapseMenuControl()Z

    goto :goto_0
.end method

.method private convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 3333
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3334
    const-string v0, ".mp4"

    .line 3336
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
    .line 3326
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3327
    const-string v0, "video/mp4"

    .line 3329
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
    .line 547
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 548
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v6, 0x7f0a0078

    invoke-virtual {p0, v6}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 551
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 553
    .local v2, fileName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 554
    const-string v6, "V"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 555
    .local v4, index:I
    if-ltz v4, :cond_0

    .line 556
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 557
    .local v3, firLetter:Ljava/lang/String;
    const/4 v6, 0x4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 558
    .local v5, tempResult:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 561
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

    .line 2107
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2108
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->deleteVideoFile(Ljava/lang/String;)V

    .line 2109
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2110
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 2111
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2112
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2115
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateAndShowStorageHint()V

    .line 2116
    return-void
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 2119
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

    .line 2120
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2121
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2122
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

    .line 2124
    :cond_0
    return-void
.end method

.method private doReturnToCaller(Z)V
    .locals 4
    .parameter

    .prologue
    .line 1863
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1865
    if-eqz p1, :cond_2

    .line 1866
    const/4 v0, -0x1

    .line 1867
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1871
    :goto_0
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    if-eqz v2, :cond_0

    .line 1872
    const-string v2, "Camera_Type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1874
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsFlymeCaptureIntent:Z

    if-eqz v2, :cond_1

    .line 1875
    const-string v2, "isFlymeMms"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1877
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/VideoCamera;->setResultEx(ILandroid/content/Intent;)V

    .line 1878
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->finish()V

    .line 1879
    return-void

    .line 1869
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enableCameraControls(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 859
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraModeLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/MaskedRotateImageView;->setEnabled(Z)V

    .line 864
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 865
    :cond_2
    return-void
.end method

.method private enableRecordCaptureControl(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoRecordCaptureBtn:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoRecordCaptureBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoRecordCaptureBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 871
    :cond_0
    return-void
.end method

.method private forbitTouchFocus(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3207
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

    .line 3209
    :cond_0
    const/4 v0, 0x1

    .line 3211
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private generateVideoFilename(I)V
    .locals 9
    .parameter

    .prologue
    const/16 v7, 0x2f

    .line 2020
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2021
    invoke-direct {p0, v1, v2}, Lcom/android/camera/VideoCamera;->createName(J)Ljava/lang/String;

    move-result-object v3

    .line 2023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2024
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v5

    .line 2026
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsFlymeCaptureIntent:Z

    if-eqz v0, :cond_1

    .line 2027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/camera/Storage;->VIDEO_DIRECTORY_FLYME_MMS:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2032
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2033
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 2034
    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "title"

    invoke-virtual {v7, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "_display_name"

    invoke-virtual {v3, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v4, "datetaken"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2037
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "mime_type"

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2038
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "_data"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "resolution"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2042
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "width"

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "height"

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2044
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    div-int/lit8 v0, v0, 0x5a

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2045
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "orientation"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2049
    :goto_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 2050
    if-eqz v0, :cond_0

    .line 2051
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "latitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2052
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "longitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2054
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoNamer:Lcom/android/camera/VideoCamera$VideoNamer;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoCamera$VideoNamer;->prepareUri(Landroid/content/ContentResolver;Landroid/content/ContentValues;)V

    .line 2055
    iput-object v6, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 2056
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

    .line 2057
    return-void

    .line 2029
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/camera/Storage;->VIDEO_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2047
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "orientation"

    const/16 v2, 0x5a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method private getDesiredPreviewSize()V
    .locals 6

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1473
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1474
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    .line 1475
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    .line 1493
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

    .line 1495
    return-void

    .line 1477
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 1478
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1479
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v0

    .line 1480
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1482
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1483
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 1484
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v4

    if-le v0, v2, :cond_1

    .line 1485
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1488
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

    .line 1490
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    .line 1491
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    goto :goto_0
.end method

.method private getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    .locals 2
    .parameter "preferences"

    .prologue
    .line 565
    invoke-static {p0}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 566
    .local v0, intentCameraId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 571
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

    .line 2369
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    if-eqz v1, :cond_1

    .line 2395
    :cond_0
    :goto_0
    return-void

    .line 2372
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 2374
    const/4 v0, 0x0

    .line 2376
    .local v0, videoFrame:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v2}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2381
    if-eqz v0, :cond_2

    .line 2382
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-static {v1, v0, v3}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/camera/Thumbnail;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    .line 2383
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/MaskedRotateImageView;->setVisibility(I)V

    .line 2384
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v2}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/MaskedRotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2385
    iget v1, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    invoke-static {v1}, Lcom/android/camera/Util;->setVideoThumbRotate(I)V

    .line 2391
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v1, :cond_0

    .line 2392
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->saveThumbnailToFile()V

    goto :goto_0
.end method

.method private getTimeLapseVideoLength(J)J
    .locals 6
    .parameter "deltaMs"

    .prologue
    .line 2704
    long-to-double v2, p1

    iget v4, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 2705
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

.method private hideAlert()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2483
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2484
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 2485
    invoke-direct {p0, v2}, Lcom/android/camera/VideoCamera;->enableCameraControls(Z)V

    .line 2487
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mDoneText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2488
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewDoneButton:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2489
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2490
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2491
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportFlashLightMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2492
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2494
    :cond_0
    iget v0, p0, Lcom/android/camera/ActivityBase;->mNumberOfCameras:I

    if-le v0, v2, :cond_1

    .line 2495
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2497
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoRecord:Z

    .line 2498
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightMode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->resetFlashLight(Ljava/lang/String;)V

    .line 2499
    return-void
.end method

.method private hideMeizuAlert()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    .line 2502
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2503
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 2504
    invoke-direct {p0, v2}, Lcom/android/camera/VideoCamera;->enableCameraControls(Z)V

    .line 2506
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mDoneText:Landroid/widget/TextView;

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 2507
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewDoneButton:Landroid/widget/ImageView;

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 2508
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 2509
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2510
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showSwitchCameraLayout()V

    .line 2511
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportFlashLightMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2512
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2514
    :cond_0
    iget v0, p0, Lcom/android/camera/ActivityBase;->mNumberOfCameras:I

    if-le v0, v2, :cond_1

    .line 2515
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2517
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoRecord:Z

    .line 2518
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightMode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->resetFlashLight(Ljava/lang/String;)V

    .line 2519
    return-void
.end method

.method private hideMenuAndBackBtn()V
    .locals 3

    .prologue
    const-wide/16 v1, 0xc8

    .line 899
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 901
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBackControl:Lcom/android/camera/ui/GlowImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 904
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 905
    return-void
.end method

.method private hideMenuLayout()V
    .locals 4

    .prologue
    const/16 v3, 0xb4

    const/16 v2, 0x8

    .line 814
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    if-ne v0, v3, :cond_0

    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportLedLight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    :cond_0
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    div-int/lit8 v0, v0, 0x5a

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    if-ne v0, v3, :cond_2

    .line 818
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 819
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSecondLevelFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 825
    :goto_0
    return-void

    .line 821
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 822
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSecondLevelFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private hideSwitchAndFlashBtn()V
    .locals 4

    .prologue
    const-wide/16 v2, 0xc8

    .line 874
    iget v0, p0, Lcom/android/camera/ActivityBase;->mNumberOfCameras:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 875
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 877
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

    .line 879
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 880
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightList:Landroid/widget/ListView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 885
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->hideSwitchCameraLayout()V

    .line 886
    return-void

    .line 882
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    goto :goto_0
.end method

.method private hideSwitchCameraLayout()V
    .locals 3

    .prologue
    const-wide/16 v1, 0xc8

    .line 917
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraModeLayout:Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 918
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtnImg1:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 919
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtnImg2:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 920
    return-void
.end method

.method private hideVideoRecordingUI()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x32

    .line 929
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 932
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoRecordPauseBtn:Lcom/android/camera/ui/RotateImageView;

    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 933
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoRecordPauseBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 934
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 935
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoRecordCaptureBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 937
    :cond_1
    return-void
.end method

.method private initMenuBarAnimation()V
    .locals 2

    .prologue
    .line 797
    const v0, 0x7f050004

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mSecondLevelFadeOut:Landroid/view/animation/Animation;

    .line 798
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSecondLevelFadeOut:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mMenuFadeOutAniLis:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 799
    const v0, 0x7f050005

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mSecondLevelFadeIn:Landroid/view/animation/Animation;

    .line 800
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSecondLevelFadeIn:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mMenuFadeOutAniLis:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 801
    return-void
.end method

.method private initializeControlByIntent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2942
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2946
    const v0, 0x7f0d00d1

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewDoneButton:Landroid/widget/ImageView;

    .line 2947
    const v0, 0x7f0d014b

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    .line 2948
    const v0, 0x7f0d00d2

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mDoneText:Landroid/widget/TextView;

    .line 2949
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mDoneText:Landroid/widget/TextView;

    const v1, 0x7f0a0026

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2950
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 2951
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "meizu_video_record_max_size"

    const-wide/32 v2, 0x41000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mMeizuVideoRecordMaxSize:J

    .line 2952
    const v0, 0x7f0d0189

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mLabelsLinearLayoutMMS:Lcom/android/camera/ui/RotateLayout;

    .line 2953
    const v0, 0x7f0d018a

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeViewMMS:Landroid/widget/TextView;

    .line 2961
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_1

    .line 2962
    const v0, 0x7f0d0178

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraModeLayout:Landroid/widget/LinearLayout;

    .line 2963
    const v0, 0x7f0d0179

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtnImg1:Lcom/android/camera/ui/RotateImageView;

    .line 2964
    const v0, 0x7f0d017a

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtnImg2:Lcom/android/camera/ui/RotateImageView;

    .line 2965
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2966
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtnImg1:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2967
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtnImg2:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2969
    :cond_1
    return-void

    .line 2956
    :cond_2
    const v0, 0x7f0d015a

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/MaskedRotateImageView;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    .line 2957
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/MaskedRotateImageView;->enableFilter(Z)V

    .line 2958
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/MaskedRotateImageView;->setVisibility(I)V

    .line 2959
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

    .line 2923
    const v0, 0x7f0d008a

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mRotateFlashLightListLayout:Lcom/android/camera/ui/RotateLayout;

    .line 2924
    const v0, 0x7f0d014f

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    .line 2925
    const v0, 0x7f0d014d

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    .line 2926
    const v0, 0x7f0d008b

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightList:Landroid/widget/ListView;

    .line 2927
    new-instance v0, Lcom/android/camera/VideoCamera$FlashLightAdapter;

    const v3, 0x7f0b0031

    sget-object v4, Lcom/android/camera/CameraDeviceManager;->VIDEO_FLASH_LIGHT_ICON:[I

    sget-object v5, Lcom/android/camera/CameraDeviceManager;->VIDEO_FLASH_LIGHT_UNSEL_ICON:[I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/VideoCamera$FlashLightAdapter;-><init>(Lcom/android/camera/VideoCamera;Landroid/content/Context;I[I[I)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightAdapter:Lcom/android/camera/VideoCamera$FlashLightAdapter;

    .line 2929
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mFlashLightAdapter:Lcom/android/camera/VideoCamera$FlashLightAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2930
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mFlashLightItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2931
    iget v0, p0, Lcom/android/camera/ActivityBase;->mNumberOfCameras:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2932
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v6}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2934
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportFlashLightMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isFrontCamera(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2935
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v6}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2936
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightList:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2938
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initMenuBarAnimation()V

    .line 2939
    return-void
.end method

.method private initializeFocusManager()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 2909
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    aget-object v0, v0, v1

    .line 2910
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v6, :cond_0

    .line 2911
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 2913
    new-instance v0, Lcom/android/camera/VideoFocusManager;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/VideoFocusManager;-><init>(Lcom/android/camera/ComboPreferences;[Ljava/lang/String;Landroid/view/View;Landroid/hardware/Camera$Parameters;Lcom/android/camera/VideoFocusManager$Listener;ZLandroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/VideoFocusManager;

    .line 2916
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2917
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2918
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/VideoFocusManager;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/VideoFocusManager;->setScreenSize(II)V

    .line 2919
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/VideoFocusManager;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v1}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v2}, Lcom/android/camera/PreviewFrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoFocusManager;->setPreviewSize(II)V

    .line 2920
    return-void

    .line 2910
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private initializeIndicatorMenu()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 952
    const v0, 0x7f0d00dc

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    .line 953
    const v0, 0x7f0d00d9

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    .line 954
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getCameraMenuInfo()Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraMenuInfo:Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    .line 955
    new-instance v0, Lcom/android/camera/VideoMainMenuAdapter;

    invoke-static {p0}, Lcom/android/camera/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v2, 0x7f0b002b

    const v3, 0x7f0b0041

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/camera/VideoMainMenuAdapter;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;II)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenuAdapter:Lcom/android/camera/VideoMainMenuAdapter;

    .line 957
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenuAdapter:Lcom/android/camera/VideoMainMenuAdapter;

    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoMainMenuAdapter;->setIsMeizuMMSIntent(Z)V

    .line 959
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenuAdapter:Lcom/android/camera/VideoMainMenuAdapter;

    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsFlymeCaptureIntent:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoMainMenuAdapter;->setIsFlymeMMSIntent(Z)V

    .line 960
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsFlymeCaptureIntent:Z

    if-nez v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenuAdapter:Lcom/android/camera/VideoMainMenuAdapter;

    invoke-virtual {v0, v7}, Lcom/android/camera/VideoMainMenuAdapter;->setCurSel(I)V

    .line 962
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenuAdapter:Lcom/android/camera/VideoMainMenuAdapter;

    const-string v1, "QCIF"

    invoke-virtual {v0, v6, v1}, Lcom/android/camera/VideoMainMenuAdapter;->setItemTip(ILjava/lang/String;)V

    .line 965
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenuAdapter:Lcom/android/camera/VideoMainMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/VideoMainMenuAdapter;->getSelIndex()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mSelIndex:Ljava/util/ArrayList;

    .line 966
    const v0, 0x7f0d00dd

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenu_v:Landroid/widget/ListView;

    .line 967
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenu_v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mMainMenuAdapter:Lcom/android/camera/VideoMainMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 968
    const v0, 0x7f0d00da

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenu_h:Landroid/widget/ListView;

    .line 969
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenu_h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mMainMenuAdapter:Lcom/android/camera/VideoMainMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 970
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenu_v:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 971
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenu_h:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 972
    const v0, 0x7f0d00de

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mSubMenu_v:Landroid/widget/ListView;

    .line 973
    const v0, 0x7f0d00db

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mSubMenu_h:Landroid/widget/ListView;

    .line 974
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubMenu_v:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 975
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubMenu_h:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 976
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v0, v1, :cond_3

    .line 978
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsFlymeCaptureIntent:Z

    if-nez v0, :cond_4

    .line 979
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    if-nez v0, :cond_2

    .line 980
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

    .line 983
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubMenu_v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 984
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubMenu_h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 985
    iput v7, p0, Lcom/android/camera/VideoCamera;->mMainSel:I

    .line 994
    :cond_3
    :goto_0
    return-void

    .line 987
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

    .line 989
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubMenu_v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSubVideoSizeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 990
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubMenu_h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSubVideoSizeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 991
    iput v6, p0, Lcom/android/camera/VideoCamera;->mMainSel:I

    goto :goto_0
.end method

.method private initializeMiscControls()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 2972
    const v0, 0x7f0d013e

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PreviewFrameLayout;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    .line 2974
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->setTapUpListener(Landroid/view/View;)V

    .line 2975
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 2976
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 2977
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2978
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/PreviewFrameLayout;->setScreenSize(II)V

    .line 2979
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Lcom/android/camera/PreviewFrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2980
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Lcom/android/camera/PreviewFrameLayout;->setOnSizeChangedListener(Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;)V

    .line 2981
    const v0, 0x7f0d014a

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewImage:Landroid/widget/ImageView;

    .line 2983
    const v0, 0x7f0d0183

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 2984
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f02004b

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setBackgroundResource(I)V

    .line 2985
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 2986
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->requestFocus()Z

    .line 2988
    const v0, 0x7f0d0188

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    .line 2991
    const v0, 0x7f0d0187

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mLabelsLinearLayout:Lcom/android/camera/ui/RotateLayout;

    .line 2993
    const v0, 0x7f0d000d

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageRotater:Lcom/android/camera/ui/RotateLayout;

    .line 2994
    const v0, 0x7f0d000c

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageFrame:Landroid/view/View;

    .line 2995
    const v0, 0x7f0d0140

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCaptureAnimView:Landroid/widget/ImageView;

    .line 2996
    const v0, 0x7f0d00d7

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GlowImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    .line 2997
    const v0, 0x7f0d00d6

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    .line 2998
    const v0, 0x7f0d00d5

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GlowImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mBackControl:Lcom/android/camera/ui/GlowImageView;

    .line 2999
    const v0, 0x7f0d00d4

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    .line 3000
    const v0, 0x7f0d00d3

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuBackControl:Landroid/widget/RelativeLayout;

    .line 3001
    const v0, 0x7f0d00d8

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GlowImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuShowIcon:Lcom/android/camera/ui/GlowImageView;

    .line 3003
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isFrontCamera(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3004
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/GlowImageView;->setVisibility(I)V

    .line 3005
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 3007
    :cond_1
    const v0, 0x7f0d0186

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoRecordPauseBtn:Lcom/android/camera/ui/RotateImageView;

    .line 3008
    const v0, 0x7f0d0185

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoRecordCaptureBtn:Lcom/android/camera/ui/RotateImageView;

    .line 3009
    const v0, 0x7f0d0182

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ControlPanelLayout;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoControlPaneLayout:Lcom/android/camera/ui/ControlPanelLayout;

    .line 3010
    return-void
.end method

.method private initializeRecorder()V
    .locals 13

    .prologue
    const-wide v6, 0xc0000000L

    const-wide/16 v2, 0x0

    const/4 v12, 0x1

    .line 1893
    const-string v0, "videocamera"

    const-string v1, "initializeRecorder"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 2006
    :goto_0
    return-void

    .line 1897
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 1898
    const-string v0, "videocamera"

    const-string v1, "SurfaceTexture is null. Wait for surface changed."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1902
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1903
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1906
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeVideoFileDescriptor()V

    .line 1907
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-static {v0, v4}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz v1, :cond_d

    .line 1908
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1909
    if-eqz v0, :cond_2

    .line 1911
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "rw"

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1913
    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1919
    :cond_2
    :goto_1
    const-string v0, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1921
    :goto_2
    new-instance v4, Landroid/media/MediaRecorder;

    invoke-direct {v4}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1924
    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v4}, Lcom/android/camera/CameraManager$CameraProxy;->unlock()V

    .line 1925
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v5}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1926
    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-nez v4, :cond_3

    .line 1927
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v12}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1929
    :cond_3
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v12}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 1930
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1931
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v5, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 1932
    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v4, :cond_4

    .line 1933
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide v8, 0x408f400000000000L

    iget v5, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v10, v5

    div-double/2addr v8, v10

    invoke-virtual {v4, v8, v9}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 1936
    :cond_4
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v4}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 1937
    if-eqz v4, :cond_5

    .line 1938
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    double-to-float v4, v9

    invoke-virtual {v5, v8, v4}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 1946
    :cond_5
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_a

    .line 1947
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 1954
    :goto_3
    iget-wide v4, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    const-wide/32 v8, 0x3400000

    sub-long/2addr v4, v8

    .line 1955
    cmp-long v2, v0, v2

    if-lez v2, :cond_c

    cmp-long v2, v0, v4

    if-gez v2, :cond_c

    .line 1959
    :goto_4
    iget v2, p0, Lcom/android/camera/VideoCamera;->mVideoQuality:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_6

    iget v2, p0, Lcom/android/camera/VideoCamera;->mVideoQuality:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_6

    iget v2, p0, Lcom/android/camera/VideoCamera;->mVideoQuality:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_7

    .line 1961
    :cond_6
    cmp-long v2, v0, v6

    if-lez v2, :cond_7

    move-wide v0, v6

    .line 1966
    :cond_7
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    if-eqz v2, :cond_8

    .line 1967
    iget-wide v0, p0, Lcom/android/camera/VideoCamera;->mMeizuVideoRecordMaxSize:J

    .line 1971
    :cond_8
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1984
    :goto_5
    const/16 v0, 0x5a

    .line 1985
    iget v1, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    .line 1986
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    aget-object v0, v0, v1

    .line 1987
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v12, :cond_b

    .line 1988
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v1, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0xb4

    rem-int/lit16 v0, v0, 0x168

    .line 1993
    :cond_9
    :goto_6
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 1994
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensationAtRecordStart:I

    .line 1997
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2004
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 2005
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    goto/16 :goto_0

    .line 1914
    :catch_0
    move-exception v0

    .line 1916
    const-string v4, "videocamera"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1949
    :cond_a
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v4}, Lcom/android/camera/VideoCamera;->generateVideoFilename(I)V

    .line 1950
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1990
    :cond_b
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v1, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    goto :goto_6

    .line 1998
    :catch_1
    move-exception v0

    .line 1999
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

    .line 2000
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    .line 2001
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1972
    :catch_2
    move-exception v0

    goto/16 :goto_5

    :cond_c
    move-wide v0, v4

    goto/16 :goto_4

    :cond_d
    move-wide v0, v2

    goto/16 :goto_2
.end method

.method private isLockViewNeedAddFlag()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1848
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "LockView"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsLockView:Z

    .line 1849
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "isSecurity"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1850
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsLockView:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsLockViewIntent:Z

    .line 1851
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsLockView:Z

    if-eqz v0, :cond_1

    .line 1852
    const-string v0, "access_control"

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/AccessControlManager;

    .line 1853
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AccessControlManager;->checkAccessControl(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsSecurityAppLock:Z

    .line 1856
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsSecurityAppLock:Z

    if-eqz v0, :cond_2

    .line 1857
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MaskedRotateImageView;->setVisibility(I)V

    .line 1859
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsLockViewIntent:Z

    return v0
.end method

.method private isMeizuCaptureIntent()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1834
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1835
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "isFlymeMms"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v3, v4, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsFlymeCaptureIntent:Z

    .line 1837
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsFlymeCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 1838
    invoke-static {v1}, Lcom/android/camera/Storage;->checkFlymeMmsPathAvailable(Z)V

    .line 1840
    :cond_0
    const-string v0, "android.media.action.MEIZU_CAMERA_VIDEO_APP_MMS_EX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    .line 1835
    goto :goto_0
.end method

.method private isMeizuSystemCaptureIntent()Z
    .locals 3

    .prologue
    .line 1844
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

    .line 2773
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
    .line 1829
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1830
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2653
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2654
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 2646
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2647
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2648
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2649
    return-void
.end method

.method private static millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 17
    .parameter "milliSeconds"
    .parameter "displayCentiSeconds"

    .prologue
    .line 2657
    const-wide/16 v13, 0x3e8

    div-long v10, p0, v13

    .line 2658
    .local v10, seconds:J
    const-wide/16 v13, 0x3c

    div-long v2, v10, v13

    .line 2659
    .local v2, minutes:J
    const-wide/16 v13, 0x3c

    div-long v0, v2, v13

    .line 2660
    .local v0, hours:J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v0

    sub-long v6, v2, v13

    .line 2661
    .local v6, remainderMinutes:J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v2

    sub-long v8, v10, v13

    .line 2663
    .local v8, remainderSeconds:J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 2666
    .local v12, timeStringBuilder:Ljava/lang/StringBuilder;
    const-wide/16 v13, 0x0

    cmp-long v13, v0, v13

    if-lez v13, :cond_1

    .line 2667
    const-wide/16 v13, 0xa

    cmp-long v13, v0, v13

    if-gez v13, :cond_0

    .line 2668
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2670
    :cond_0
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2672
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2676
    :cond_1
    const-wide/16 v13, 0xa

    cmp-long v13, v6, v13

    if-gez v13, :cond_2

    .line 2677
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2679
    :cond_2
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2680
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2683
    const-wide/16 v13, 0xa

    cmp-long v13, v8, v13

    if-gez v13, :cond_3

    .line 2684
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2686
    :cond_3
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2689
    if-eqz p2, :cond_5

    .line 2690
    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2691
    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v10

    sub-long v13, p0, v13

    const-wide/16 v15, 0xa

    div-long v4, v13, v15

    .line 2692
    .local v4, remainderCentiSeconds:J
    const-wide/16 v13, 0xa

    cmp-long v13, v4, v13

    if-gez v13, :cond_4

    .line 2693
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2695
    :cond_4
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2698
    .end local v4           #remainderCentiSeconds:J
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method private onStopVideoRecording()V
    .locals 5

    .prologue
    .line 1357
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()Z

    move-result v0

    .line 1358
    .local v0, recordFail:Z
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_4

    .line 1359
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mQuickCapture:Z

    if-eqz v1, :cond_3

    .line 1360
    if-nez v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->doReturnToCaller(Z)V

    .line 1368
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    if-eqz v1, :cond_1

    .line 1369
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showMeizuAlert()V

    .line 1371
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1372
    return-void

    .line 1360
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1361
    :cond_3
    if-nez v0, :cond_0

    .line 1362
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showAlert()V

    goto :goto_1

    .line 1364
    :cond_4
    if-nez v0, :cond_0

    .line 1366
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method private pauseAudioPlayback()V
    .locals 3

    .prologue
    .line 2191
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2192
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2194
    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 2195
    return-void
.end method

.method private pauseTimeToCloseCamera()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 542
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 543
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x2bf20

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 544
    return-void
.end method

.method private pauseVideoRecording()V
    .locals 4

    .prologue
    .line 2204
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 2216
    :goto_0
    return-void

    .line 2207
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsCanResumeVideoRecording:Z

    .line 2208
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2209
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->pause()V

    .line 2210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoRecordPause:Z

    .line 2211
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2212
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoRecordPauseBtn:Lcom/android/camera/ui/RotateImageView;

    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2213
    :catch_0
    move-exception v0

    .line 2214
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

    .line 1426
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsFlymeCaptureIntent:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v2}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1427
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/camera/VideoCamera;->mVideoQuality:I

    .line 1437
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1438
    const-string v3, "android.intent.extra.videoQuality"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1439
    const-string v3, "android.intent.extra.videoQuality"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1441
    if-lez v3, :cond_3

    .line 1442
    iput v0, p0, Lcom/android/camera/VideoCamera;->mVideoQuality:I

    .line 1450
    :cond_0
    :goto_1
    const-string v3, "android.intent.extra.durationLimit"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1451
    const-string v3, "android.intent.extra.durationLimit"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1453
    mul-int/lit16 v2, v2, 0x3e8

    iput v2, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    .line 1459
    :goto_2
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_video_time_lapse_frame_interval_key"

    const v4, 0x7f0a0040

    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1462
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 1464
    iget v2, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    if-eqz v2, :cond_5

    :goto_3
    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    .line 1466
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/VideoCamera;->mVideoQuality:I

    add-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/camera/VideoCamera;->mVideoQuality:I

    .line 1467
    :cond_1
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    iget v1, p0, Lcom/android/camera/VideoCamera;->mVideoQuality:I

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    .line 1468
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->getDesiredPreviewSize()V

    .line 1469
    return-void

    .line 1429
    :cond_2
    iget v2, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a003b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1431
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_video_quality_key"

    invoke-virtual {v3, v4, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1434
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/camera/VideoCamera;->mVideoQuality:I

    goto :goto_0

    .line 1444
    :cond_3
    iput v1, p0, Lcom/android/camera/VideoCamera;->mVideoQuality:I

    goto :goto_1

    .line 1455
    :cond_4
    const v2, 0x36ee80

    iput v2, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    goto :goto_2

    :cond_5
    move v0, v1

    .line 1464
    goto :goto_3
.end method

.method private releaseMediaRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2009
    const-string v0, "videocamera"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 2011
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->cleanupEmptyFile()V

    .line 2012
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 2013
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 2014
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 2016
    :cond_0
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 2017
    return-void
.end method

.method private resetFlashLight(Ljava/lang/String;)V
    .locals 2
    .parameter "flashLightValue"

    .prologue
    .line 2621
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

    .line 2622
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2623
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2625
    :cond_0
    return-void
.end method

.method private resetLedLight()V
    .locals 2

    .prologue
    .line 2631
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportLedLight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2632
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isFrontCamera(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2638
    :cond_0
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 2641
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2642
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2643
    return-void
.end method

.method private resizeForPreviewAspectRatio()V
    .locals 5

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v1, v1

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 1500
    return-void
.end method

.method private restorePreferences()V
    .locals 2

    .prologue
    .line 3066
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3067
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setCameraParameters()V

    .line 3069
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {p0, v0, v1}, Lcom/android/camera/CameraSettings;->restorePreferences(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;)V

    .line 3071
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->onSharedPreferenceChanged()V

    .line 3072
    return-void
.end method

.method private resumeVideoRecording()V
    .locals 3

    .prologue
    .line 2220
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 2230
    :goto_0
    return-void

    .line 2223
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->resume()V

    .line 2224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoRecordPause:Z

    .line 2225
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoRecordPauseBtn:Lcom/android/camera/ui/RotateImageView;

    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 2226
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2227
    :catch_0
    move-exception v0

    .line 2228
    const-string v1, "videocamera"

    const-string v2, "Could not start effects recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setCameraParameters()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2778
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    iget v2, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 2779
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 2783
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_6

    .line 2784
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightMode:Ljava/lang/String;

    .line 2788
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 2789
    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2790
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2793
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_scenemode_key"

    const v2, 0x7f0a0065

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mSceneMode:Ljava/lang/String;

    .line 2796
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    invoke-static {v0, v3}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2797
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 2801
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_whitebalance_key"

    const v2, 0x7f0a005e

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2804
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

    .line 2807
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 2816
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 2817
    const-string v1, "continuous-video"

    invoke-static {v1, v0}, Lcom/android/camera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2818
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2821
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 2825
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2826
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2827
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2834
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    .line 2835
    iget v1, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    int-to-double v1, v1

    iget v3, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2837
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2838
    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2839
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 2841
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

    .line 2845
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    .line 2847
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 2849
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2851
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2853
    iget v0, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    iget v1, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoCamera;->updateCameraScreenNailSize(II)V

    .line 2854
    return-void

    .line 2786
    :cond_6
    const-string v0, "light-off"

    goto/16 :goto_0

    .line 2809
    :cond_7
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    .line 2810
    if-nez v0, :cond_2

    .line 2811
    const-string v0, "auto"

    goto/16 :goto_1
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 1598
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mDisplayRotation:I

    .line 1599
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mCameraDisplayOrientation:I

    .line 1600
    return-void
.end method

.method private setOrientationIndicator(IZ)V
    .locals 10
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 1042
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportLedLight()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1056
    :cond_0
    const/16 v1, 0xb4

    .line 1057
    .local v1, forbidDegree:I
    iget v6, p0, Lcom/android/camera/VideoCamera;->mConfiguration_orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 1058
    const/16 v1, 0xb4

    .line 1062
    :cond_1
    :goto_0
    if-ne p1, v1, :cond_4

    .line 1063
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/camera/VideoCamera;->mIsPreForbidDegree:Z

    .line 1106
    :cond_2
    :goto_1
    return-void

    .line 1059
    :cond_3
    iget v6, p0, Lcom/android/camera/VideoCamera;->mConfiguration_orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 1060
    const/16 v1, 0x10e

    goto :goto_0

    .line 1066
    :cond_4
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/camera/VideoCamera;->mIsPreForbidDegree:Z

    .line 1068
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

    .line 1074
    .local v4, indicators:[Lcom/android/camera/ui/Rotatable;
    move-object v0, v4

    .local v0, arr$:[Lcom/android/camera/ui/Rotatable;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2
    if-ge v2, v5, :cond_6

    aget-object v3, v0, v2

    .line 1075
    .local v3, indicator:Lcom/android/camera/ui/Rotatable;
    if-eqz v3, :cond_5

    invoke-interface {v3, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 1074
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1078
    .end local v3           #indicator:Lcom/android/camera/ui/Rotatable;
    :cond_6
    iget-boolean v6, p0, Lcom/android/camera/VideoCamera;->mIsMenuShowed:Z

    if-eqz v6, :cond_2

    .line 1079
    iget-boolean v6, p0, Lcom/android/camera/VideoCamera;->mIsPreForbidDegree:Z

    if-eqz v6, :cond_7

    .line 1080
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/camera/VideoCamera;->mIsPreForbidDegree:Z

    goto/16 :goto_1

    .line 1082
    :cond_7
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mVideoControlPaneLayout:Lcom/android/camera/ui/ControlPanelLayout;

    invoke-static {v6}, Lcom/android/camera/Util;->checkViewGone(Landroid/view/View;)Z

    .line 1083
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/camera/VideoCamera$7;

    invoke-direct {v7, p0}, Lcom/android/camera/VideoCamera$7;-><init>(Lcom/android/camera/VideoCamera;)V

    const-wide/16 v8, 0x96

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1089
    iget v6, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    div-int/lit8 v6, v6, 0x5a

    and-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    .line 1090
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v6}, Lcom/android/camera/ui/RotateLayout;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_2

    .line 1093
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    const-wide/16 v7, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 1094
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    const-wide/16 v7, 0x96

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    goto/16 :goto_1

    .line 1097
    :cond_8
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v6}, Lcom/android/camera/ui/RotateLayout;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_2

    .line 1100
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    const-wide/16 v7, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 1101
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    const-wide/16 v7, 0x96

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    goto/16 :goto_1
.end method

.method private showAlert()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x32

    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    .line 2430
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->alertGetBitmap()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2453
    :goto_0
    return-void

    .line 2433
    :cond_0
    const v0, 0x7f0a00b7

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->showRotateToast(I)V

    .line 2435
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2436
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportFlashLightMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2437
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2439
    :cond_1
    iget v0, p0, Lcom/android/camera/ActivityBase;->mNumberOfCameras:I

    if-le v0, v2, :cond_2

    .line 2440
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2442
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoRecordPauseBtn:Lcom/android/camera/ui/RotateImageView;

    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 2443
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoRecordPauseBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v5, v6}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 2444
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    invoke-static {v0, v5, v6}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 2445
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v5, v6}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 2446
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mDoneText:Landroid/widget/TextView;

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 2447
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewDoneButton:Landroid/widget/ImageView;

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 2448
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 2449
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBackControl:Lcom/android/camera/ui/GlowImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/GlowImageView;->setEnabled(Z)V

    .line 2450
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 2451
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsVideoRecord:Z

    .line 2452
    const-string v0, "light-off"

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->resetFlashLight(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showMeizuAlert()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x32

    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    .line 2456
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->alertGetBitmap()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2480
    :goto_0
    return-void

    .line 2459
    :cond_0
    const v0, 0x7f0a00b7

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->showRotateToast(I)V

    .line 2461
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2462
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoRecordPauseBtn:Lcom/android/camera/ui/RotateImageView;

    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 2463
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoRecordPauseBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v5, v6}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 2464
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    invoke-static {v0, v5, v6}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 2465
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v5, v6}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 2466
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->hideSwitchCameraLayout()V

    .line 2467
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportFlashLightMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2468
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2470
    :cond_1
    iget v0, p0, Lcom/android/camera/ActivityBase;->mNumberOfCameras:I

    if-le v0, v2, :cond_2

    .line 2471
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2473
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mDoneText:Landroid/widget/TextView;

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 2474
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewDoneButton:Landroid/widget/ImageView;

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 2475
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 2476
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBackControl:Lcom/android/camera/ui/GlowImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/GlowImageView;->setEnabled(Z)V

    .line 2477
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 2478
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoRecord:Z

    .line 2479
    const-string v0, "light-off"

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->resetFlashLight(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showMenuAndBackBtn()V
    .locals 3

    .prologue
    const-wide/16 v1, 0xc8

    .line 908
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 910
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBackControl:Lcom/android/camera/ui/GlowImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 913
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 914
    return-void
.end method

.method private showMenuLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 804
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    div-int/lit8 v0, v0, 0x5a

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 805
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 806
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSecondLevelFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 811
    :goto_0
    return-void

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 809
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

    .line 2301
    if-eqz p1, :cond_3

    .line 2302
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/MaskedRotateImageView;->setEnabled(Z)V

    .line 2303
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f02004c

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setBackgroundResource(I)V

    .line 2304
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    if-eqz v0, :cond_2

    .line 2305
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeViewMMS:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2306
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeViewMMS:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2311
    :goto_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewControl:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewControl:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2312
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoControlPaneLayout:Lcom/android/camera/ui/ControlPanelLayout;

    const v1, 0x7f0201b1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ControlPanelLayout;->setBackgroundResource(I)V

    .line 2324
    :goto_1
    return-void

    .line 2308
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2309
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2314
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MaskedRotateImageView;->setEnabled(Z)V

    .line 2315
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f02004b

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setBackgroundResource(I)V

    .line 2316
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    if-eqz v0, :cond_6

    .line 2317
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeViewMMS:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2321
    :goto_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewControl:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewControl:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2322
    :cond_5
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoControlPaneLayout:Lcom/android/camera/ui/ControlPanelLayout;

    const v1, 0x7f080045

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ControlPanelLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 2319
    :cond_6
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private showRotateToast(I)V
    .locals 4
    .parameter "resId"

    .prologue
    .line 2522
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRotateToastText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2523
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRotateToastText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2524
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/VideoCamera$12;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoCamera$12;-><init>(Lcom/android/camera/VideoCamera;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2530
    return-void
.end method

.method private showSwitchAndFlashBtn()V
    .locals 4

    .prologue
    const-wide/16 v2, 0xc8

    .line 889
    iget v0, p0, Lcom/android/camera/ActivityBase;->mNumberOfCameras:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 890
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 892
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

    .line 893
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 895
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showSwitchCameraLayout()V

    .line 896
    return-void
.end method

.method private showSwitchCameraLayout()V
    .locals 3

    .prologue
    const-wide/16 v1, 0xc8

    .line 923
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraModeLayout:Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 924
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtnImg1:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 925
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitchCameraBtnImg2:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 926
    return-void
.end method

.method private showTapToSnapshotToast()V
    .locals 3

    .prologue
    .line 3351
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    const v1, 0x7f0a0097

    iget v2, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 3354
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3355
    const-string v1, "pref_video_first_use_hint_shown_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3356
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3357
    return-void
.end method

.method private showVideoRecordingUI()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x32

    .line 940
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/MaskedRotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoRecordPauseBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 946
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 947
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoRecordCaptureBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 949
    :cond_1
    return-void
.end method

.method private startPlayVideoActivity()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1110
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v2}, Lcom/android/camera/VideoCamera;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1111
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    if-eqz v1, :cond_0

    .line 1112
    const-string v1, "meizu_video_record"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1115
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->startActivity(Landroid/content/Intent;)V

    .line 1116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsStartVideoPlay:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1120
    :goto_0
    return-void

    .line 1117
    :catch_0
    move-exception v0

    .line 1118
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

    .line 1603
    const-string v0, "videocamera"

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1606
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-ne v0, v2, :cond_0

    .line 1607
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopPreview()V

    .line 1610
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setDisplayOrientation()V

    .line 1611
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1612
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setCameraParameters()V

    .line 1615
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 1616
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1622
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    .line 1623
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->collapseMenuControl()Z

    .line 1624
    return-void

    .line 1617
    :catch_0
    move-exception v0

    .line 1618
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeCamera()V

    .line 1619
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

    .line 2233
    const-string v0, "videocamera"

    const-string v1, "startVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2235
    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->setSwipingEnabled(Z)V

    .line 2238
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->cancelAutoFocus()V

    .line 2240
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsStorageHintShow:Z

    if-nez v0, :cond_1

    .line 2241
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateAndShowStorageHint()V

    .line 2243
    :cond_1
    iget-wide v0, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    const-wide/32 v2, 0xaf000

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x3400000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 2244
    const v0, 0x7f0a00be

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2246
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 2247
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2248
    invoke-virtual {p0, v5}, Lcom/android/camera/VideoCamera;->setSwipingEnabled(Z)V

    .line 2249
    const-string v0, "videocamera"

    const-string v1, "Storage issue, ignore the start request"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    :goto_0
    return-void

    .line 2253
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2254
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeRecorder()V

    .line 2255
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_3

    .line 2256
    const-string v0, "videocamera"

    const-string v1, "Fail to initialize media recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2260
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->pauseAudioPlayback()V

    .line 2266
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2280
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2282
    invoke-direct {p0, v4}, Lcom/android/camera/VideoCamera;->enableCameraControls(Z)V

    .line 2283
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->hideSwitchAndFlashBtn()V

    .line 2284
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->hideMenuAndBackBtn()V

    .line 2285
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showVideoRecordingUI()V

    .line 2286
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportLedLight()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2290
    :cond_4
    iput-boolean v5, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 2291
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mRecordingStartTime:J

    .line 2292
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mRecordingPauseTime:J

    .line 2293
    invoke-direct {p0, v5}, Lcom/android/camera/VideoCamera;->showRecordingUI(Z)V

    .line 2295
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateRecordingTime()V

    .line 2296
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOn()V

    .line 2297
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 2267
    :catch_0
    move-exception v0

    .line 2268
    const-string v1, "videocamera"

    const-string v2, "Could not start media recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2269
    const v0, 0x7f0a00ba

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->showRotateToast(I)V

    .line 2270
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    .line 2272
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->lock()V

    goto :goto_0
.end method

.method private stopPreview()V
    .locals 1

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 1628
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    .line 1629
    return-void
.end method

.method private stopVideoRecording()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 2533
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

    .line 2536
    const v0, 0x7f0a00bd

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->showRotateToast(I)V

    .line 2614
    :goto_0
    return v3

    .line 2539
    :cond_0
    const-string v0, "videocamera"

    const-string v2, "stopVideoRecording"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-static {v0, v2}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2541
    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->setSwipingEnabled(Z)V

    .line 2545
    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mIsInfoMaxDuration:Z

    .line 2546
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mIsInfoMaxFileSize:Z

    .line 2547
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_8

    .line 2549
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-static {v0, v2}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2550
    const v0, 0x7f0a00b7

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->showRotateToast(I)V

    .line 2552
    :cond_2
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsCanResumeVideoRecording:Z

    .line 2554
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 2555
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 2556
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2558
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2559
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

    .line 2566
    :goto_1
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 2567
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mIsVideoRecordPause:Z

    .line 2578
    iget-boolean v4, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v4, :cond_4

    .line 2582
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 2583
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->checkVideoFile(Ljava/lang/String;)Z

    move-result v0

    .line 2585
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeCamera()V

    .line 2588
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/camera/VideoCamera;->showRecordingUI(Z)V

    .line 2589
    iget-boolean v3, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-static {v3, v4}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2590
    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->enableCameraControls(Z)V

    .line 2591
    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->enableRecordCaptureControl(Z)V

    .line 2592
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showSwitchAndFlashBtn()V

    .line 2593
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->hideVideoRecordingUI()V

    .line 2594
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportLedLight()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v3}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2598
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showMenuAndBackBtn()V

    .line 2601
    iget v3, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    invoke-direct {p0, v3, v1}, Lcom/android/camera/VideoCamera;->setOrientationIndicator(IZ)V

    .line 2602
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOnAwhile()V

    .line 2603
    if-eqz v0, :cond_6

    .line 2604
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->addVideoToMediaStore()Z

    move-result v0

    if-eqz v0, :cond_6

    move v2, v1

    .line 2607
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    .line 2612
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    .line 2613
    iget-wide v0, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    const-wide/32 v3, 0x300000

    sub-long/2addr v0, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/VideoCamera;->updateStorageHint(J)V

    move v3, v2

    .line 2614
    goto/16 :goto_0

    .line 2561
    :catch_0
    move-exception v0

    move-object v2, v0

    move v0, v3

    .line 2562
    :goto_3
    const-string v4, "videocamera"

    const-string v5, "stop fail"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2563
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/camera/VideoCamera;->deleteVideoFile(Ljava/lang/String;)V

    :cond_7
    move v2, v1

    .line 2564
    goto :goto_1

    .line 2561
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
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 3279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 3280
    invoke-static {v3, v4}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v2

    .line 3281
    invoke-static {p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v6

    .line 3282
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 3283
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget v8, v5, Landroid/hardware/Camera$Size;->width:I

    iget v9, v5, Landroid/hardware/Camera$Size;->height:I

    move-object v5, p2

    move-object v7, p1

    invoke-static/range {v0 .. v9}, Lcom/android/camera/Storage;->addImage(Landroid/content/ContentResolver;ZLjava/lang/String;JLandroid/location/Location;I[BII)Landroid/net/Uri;

    move-result-object v0

    .line 3285
    if-eqz v0, :cond_1

    .line 3287
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    int-to-double v2, v2

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v4}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 3289
    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    .line 3290
    invoke-static {p1, v6, v2, v0}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;)Lcom/android/camera/Thumbnail;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    .line 3291
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v2, :cond_0

    .line 3292
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v3}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/MaskedRotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3294
    :cond_0
    invoke-static {p0, v0}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3296
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsCapturePicStopRecord:Z

    if-eqz v0, :cond_3

    .line 3297
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsCapturePicStopRecord:Z

    .line 3300
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_2

    .line 3323
    :goto_0
    return-void

    .line 3303
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->resume()V

    .line 3304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoRecordPause:Z

    .line 3305
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3309
    :goto_1
    iget-wide v2, p0, Lcom/android/camera/VideoCamera;->mRecordingPauseTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/camera/VideoCamera;->mRecordingPauseStartTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/camera/VideoCamera;->mRecordingPauseTime:J

    .line 3310
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/VideoCamera;->mRecordingCaptureTime:J

    .line 3311
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateRecordingTime()V

    .line 3313
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoRecordPause:Z

    if-eqz v0, :cond_4

    .line 3314
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/VideoCamera$14;

    invoke-direct {v2, p0}, Lcom/android/camera/VideoCamera$14;-><init>(Lcom/android/camera/VideoCamera;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3322
    :cond_4
    new-instance v0, Lcom/android/camera/VideoCamera$SaveRecordCaptureThumbnailToFileTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/camera/VideoCamera$SaveRecordCaptureThumbnailToFileTask;-><init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/camera/Thumbnail;

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/android/camera/VideoCamera$SaveRecordCaptureThumbnailToFileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 3306
    :catch_0
    move-exception v0

    .line 3307
    const-string v2, "videocamera"

    const-string v3, "Could not resume record. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private switchCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3103
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_0

    .line 3134
    :goto_0
    return-void

    .line 3105
    :cond_0
    const-string v0, "videocamera"

    const-string v1, "Start to switch camera."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3106
    iget v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    iput v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    .line 3107
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    .line 3109
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeCamera()V

    .line 3110
    invoke-virtual {p0, v3}, Lcom/android/camera/VideoCamera;->setIsDropFullScreenChanged(Z)V

    .line 3111
    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->setSwipingEnabled(Z)V

    .line 3113
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 3114
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 3115
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 3116
    new-instance v0, Lcom/android/camera/ActivityBase$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$CameraOpenThread;-><init>(Lcom/android/camera/ActivityBase;)V

    .line 3117
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$CameraOpenThread;->start()V

    .line 3119
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$CameraOpenThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3123
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setCameraMode(I)V

    .line 3124
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->readVideoPreferences()V

    .line 3125
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V

    .line 3127
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 3129
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    invoke-direct {p0, v0, v2}, Lcom/android/camera/VideoCamera;->setOrientationIndicator(IZ)V

    .line 3133
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3120
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private switchToOtherMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 2878
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2882
    :goto_0
    return-void

    .line 2879
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-static {v0}, Lcom/android/camera/ThumbnailHolder;->keep(Lcom/android/camera/Thumbnail;)V

    .line 2880
    :cond_1
    invoke-static {p1, p0}, Lcom/android/camera/MenuHelper;->gotoMode(ILandroid/app/Activity;)V

    .line 2881
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
    .line 2885
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2896
    :goto_0
    return v0

    .line 2886
    :cond_0
    if-eqz p2, :cond_1

    .line 2887
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/android/camera/MenuHelper;->gotoModeForMeizu(ILandroid/app/Activity;Landroid/content/Intent;)V

    .line 2895
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->finish()V

    .line 2896
    const/4 v0, 0x1

    goto :goto_0

    .line 2888
    :cond_1
    if-eqz p3, :cond_2

    .line 2889
    invoke-static {p1, p0}, Lcom/android/camera/MenuHelper;->gotoModeWithFlag(ILandroid/app/Activity;)V

    goto :goto_1

    .line 2890
    :cond_2
    if-eqz p4, :cond_3

    .line 2891
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/android/camera/MenuHelper;->gotoModeAddFlag(ILandroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_1

    .line 2893
    :cond_3
    invoke-static {p1, p0}, Lcom/android/camera/MenuHelper;->gotoMode(ILandroid/app/Activity;)V

    goto :goto_1
.end method

.method private timeToCloseCamera()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 537
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 538
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 539
    return-void
.end method

.method private timeToHideFlashLightList()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 532
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 533
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 534
    return-void
.end method

.method private updateAndShowStorageHint()V
    .locals 2

    .prologue
    .line 1419
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    .line 1420
    iget-wide v0, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/VideoCamera;->updateStorageHint(J)V

    .line 1421
    return-void
.end method

.method private updateCameraScreenNailSize(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2857
    iget v3, p0, Lcom/android/camera/VideoCamera;->mCameraDisplayOrientation:I

    rem-int/lit16 v3, v3, 0xb4

    if-eqz v3, :cond_0

    .line 2858
    move v2, p1

    .line 2859
    .local v2, tmp:I
    move p1, p2

    .line 2860
    move p2, v2

    .line 2863
    .end local v2           #tmp:I
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v1

    .line 2864
    .local v1, oldWidth:I
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v0

    .line 2866
    .local v0, oldHeight:I
    if-ne v1, p1, :cond_1

    if-eq v0, p2, :cond_2

    .line 2867
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 2868
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->notifyScreenNailChanged()V

    .line 2871
    :cond_2
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v3, :cond_3

    .line 2872
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 2873
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2875
    :cond_3
    return-void
.end method

.method private updateFlashLightIcon(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    sget-object v1, Lcom/android/camera/CameraDeviceManager;->VIDEO_FLASH_LIGHT_ICON:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 1208
    :cond_0
    return-void
.end method

.method private updateRecordingTime()V
    .locals 13

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2709
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    .line 2770
    :goto_0
    return-void

    .line 2712
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2713
    iget-wide v2, p0, Lcom/android/camera/VideoCamera;->mRecordingStartTime:J

    sub-long v2, v0, v2

    iget-wide v9, p0, Lcom/android/camera/VideoCamera;->mRecordingPauseTime:J

    sub-long/2addr v2, v9

    .line 2714
    iget-wide v9, p0, Lcom/android/camera/VideoCamera;->mRecordingCaptureTime:J

    sub-long/2addr v0, v9

    .line 2716
    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoRecordCaptureBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateImageView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2717
    invoke-direct {p0, v7}, Lcom/android/camera/VideoCamera;->enableRecordCaptureControl(Z)V

    .line 2722
    :cond_1
    iget v0, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    const v1, 0xea60

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_3

    move v6, v7

    .line 2726
    :goto_1
    if-eqz v6, :cond_8

    .line 2727
    const-wide/16 v0, 0x0

    iget v9, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    int-to-long v9, v9

    sub-long/2addr v9, v2

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v9, 0x3e7

    add-long/2addr v0, v9

    .line 2729
    :goto_2
    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mVideoRecordedTimes:J

    .line 2733
    iget-boolean v9, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-nez v9, :cond_4

    .line 2734
    invoke-static {v0, v1, v8}, Lcom/android/camera/VideoCamera;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v0

    move-wide v11, v4

    move-object v4, v0

    move-wide v0, v11

    .line 2744
    :goto_3
    iget-boolean v5, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    if-eqz v5, :cond_5

    .line 2745
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeViewMMS:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2750
    :goto_4
    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeCountsDown:Z

    if-eq v4, v6, :cond_2

    .line 2753
    iput-boolean v6, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeCountsDown:Z

    .line 2755
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v6, :cond_6

    const v4, 0x7f080028

    :goto_5
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 2759
    iget-boolean v5, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    if-eqz v5, :cond_7

    .line 2760
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeViewMMS:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2767
    :cond_2
    :goto_6
    rem-long/2addr v2, v0

    sub-long/2addr v0, v2

    .line 2768
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    move v6, v8

    .line 2722
    goto :goto_1

    .line 2740
    :cond_4
    invoke-direct {p0, v2, v3}, Lcom/android/camera/VideoCamera;->getTimeLapseVideoLength(J)J

    move-result-wide v0

    invoke-static {v0, v1, v7}, Lcom/android/camera/VideoCamera;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v4

    .line 2741
    iget v0, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-long v0, v0

    goto :goto_3

    .line 2747
    :cond_5
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 2755
    :cond_6
    const v4, 0x7f080027

    goto :goto_5

    .line 2762
    :cond_7
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    :cond_8
    move-wide v0, v2

    goto :goto_2
.end method


# virtual methods
.method public autoFocus()V
    .locals 2

    .prologue
    .line 3447
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 3451
    :goto_0
    return-void

    .line 3450
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mAutoFocusCallback:Lcom/android/camera/VideoCamera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto :goto_0
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 3501
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 3502
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 3504
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "m"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 3180
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    if-eqz v2, :cond_0

    .line 3203
    :goto_0
    return v1

    .line 3183
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 3188
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3190
    .local v0, action:I
    if-ne v0, v1, :cond_3

    .line 3191
    iput-boolean v5, p0, Lcom/android/camera/VideoCamera;->mIsBackControlDown:Z

    .line 3192
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->changeBackControlStyle()V

    .line 3203
    .end local v0           #action:I
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 3193
    .restart local v0       #action:I
    :cond_3
    if-nez v0, :cond_2

    .line 3194
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsBackControlDown:Z

    goto :goto_1

    .line 3197
    .end local v0           #action:I
    :cond_4
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsBackControlDown:Z

    if-eqz v1, :cond_2

    .line 3198
    iput-boolean v5, p0, Lcom/android/camera/VideoCamera;->mIsBackControlDown:Z

    .line 3199
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->changeBackControlStyle()V

    goto :goto_1
.end method

.method public getCameraEV()I
    .locals 1

    .prologue
    .line 3462
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 3463
    const/4 v0, 0x0

    .line 3465
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
    .line 3496
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    return v0
.end method

.method public getIsCanNextFocus()Z
    .locals 1

    .prologue
    .line 3470
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsCanNextFocus:Z

    return v0
.end method

.method public getIsForbitAutoFocus()Z
    .locals 2

    .prologue
    .line 3481
    const-string v0, "landscape"

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getIsMediaRecorderRecording()Z
    .locals 1

    .prologue
    .line 3508
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    return v0
.end method

.method public getIsMeizuVideoRecord()Z
    .locals 1

    .prologue
    .line 3491
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoRecord:Z

    return v0
.end method

.method protected getStorageSpace()V
    .locals 2

    .prologue
    .line 1413
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->getStorageSpace()V

    .line 1415
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    .line 1416
    return-void
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 2199
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    return v0
.end method

.method public onBackControlClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIsShowCameraAppView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1344
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->onBackPressed()V

    .line 1346
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1731
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_1

    .line 1752
    :cond_0
    :goto_0
    return-void

    .line 1732
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    .line 1733
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onStopVideoRecording()V

    goto :goto_0

    .line 1734
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    if-eqz v0, :cond_5

    .line 1735
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoRecord:Z

    if-eqz v0, :cond_4

    .line 1736
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsFlymeCaptureIntent:Z

    if-eqz v0, :cond_3

    .line 1737
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->deleteCurrentVideo()V

    .line 1739
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->hideMeizuAlert()V

    goto :goto_0

    .line 1741
    :cond_4
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onBackPressed()V

    goto :goto_0

    .line 1743
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_7

    .line 1744
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoRecord:Z

    if-eqz v0, :cond_6

    .line 1745
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->hideAlert()V

    goto :goto_0

    .line 1747
    :cond_6
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onBackPressed()V

    goto :goto_0

    .line 1749
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->collapseMenuControl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1750
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onBackPressed()V

    goto :goto_0
.end method

.method public onCancelBgTraining(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2901
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageFrame:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2904
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->onSharedPreferenceChanged()V

    .line 2905
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 3014
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3015
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setDisplayOrientation()V

    .line 3016
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mConfiguration_orientation:I

    .line 3018
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 3019
    const v0, 0x7f0d0011

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3020
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3023
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3024
    const v1, 0x7f040065

    invoke-virtual {v3, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3027
    const v0, 0x7f0d008c

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    .line 3029
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/VideoFocusManager;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoFocusManager;->setFocusAreaIndicator(Landroid/view/View;)V

    .line 3032
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeControlByIntent()V

    .line 3033
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeMiscControls()V

    .line 3034
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeFlashLightList()V

    .line 3036
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 3039
    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->showVideoSnapshotUI(Z)V

    .line 3040
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3041
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->updateThumbnailView()V

    .line 3043
    :cond_0
    return-void

    .line 3020
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 593
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 596
    invoke-static {p0}, Lcom/android/camera/Util;->checkIsLowBattery(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 597
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->finish()V

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    iget-object v8, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    const/16 v9, 0x9

    iput v9, v8, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mType:I

    .line 601
    iget-object v8, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    iput v10, v8, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mMimeType:I

    .line 602
    invoke-static {v6}, Lcom/android/camera/Util;->setCurAppMode(I)V

    .line 604
    new-instance v8, Landroid/media/MediaRecorder;

    invoke-direct {v8}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v8, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 606
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsIspSupport()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 610
    iget-object v8, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8}, Landroid/media/MediaRecorder;->getCameraUpdateIspStatus()I

    move-result v8

    if-eq v8, v10, :cond_2

    .line 611
    const v7, 0x7f0a00b2

    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 612
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->finish()V

    goto :goto_0

    .line 617
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportHDMI()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 618
    const-string v8, "multimedia.hdmi.status"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 622
    .local v3, s:Ljava/lang/String;
    const-string v8, "available"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 623
    const v7, 0x7f0a00bb

    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 624
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->finish()V

    goto :goto_0

    .line 629
    .end local v3           #s:Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->isMeizuSystemCaptureIntent()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 631
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 632
    .local v5, win:Landroid/view/Window;
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 633
    .local v2, params:Landroid/view/WindowManager$LayoutParams;
    const/high16 v8, 0x8

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 634
    invoke-virtual {v5, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 638
    .end local v2           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v5           #win:Landroid/view/Window;
    :cond_4
    new-instance v1, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 639
    .local v1, iFilter:Landroid/content/IntentFilter;
    iget-object v8, p0, Lcom/android/camera/VideoCamera;->mPowerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v1}, Lcom/android/camera/VideoCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 640
    new-instance v8, Lcom/android/camera/ComboPreferences;

    invoke-direct {v8, p0}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 641
    iget-object v8, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v8}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-static {v8}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 642
    iget-object v8, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v8}, Lcom/android/camera/VideoCamera;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v8

    iput v8, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    .line 644
    iget-object v8, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget v9, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-virtual {v8, p0, v9}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 645
    iget-object v8, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v8}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-static {v8}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 647
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/CameraHolder;->getNumberOfCameras()I

    move-result v8

    iput v8, p0, Lcom/android/camera/ActivityBase;->mNumberOfCameras:I

    .line 653
    new-instance v0, Lcom/android/camera/ActivityBase$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$CameraOpenThread;-><init>(Lcom/android/camera/ActivityBase;)V

    .line 654
    .local v0, cameraOpenThread:Lcom/android/camera/ActivityBase$CameraOpenThread;
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$CameraOpenThread;->start()V

    .line 656
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    .line 658
    const v8, 0x7f040083

    invoke-virtual {p0, v8}, Lcom/android/camera/VideoCamera;->setContentView(I)V

    .line 661
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->isVideoCaptureIntent()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    .line 662
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->isMeizuCaptureIntent()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    .line 663
    iget-boolean v8, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    iget-boolean v9, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-static {v8, v9}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v8

    if-nez v8, :cond_8

    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/camera/VideoCamera;->createCameraScreenNail(Z)V

    .line 664
    iget-boolean v6, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    iget-boolean v8, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-static {v6, v8}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 665
    invoke-virtual {p0, v7}, Lcom/android/camera/VideoCamera;->setSwipingEnabled(Z)V

    .line 670
    :cond_5
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$CameraOpenThread;->join()V

    .line 671
    iget-boolean v6, p0, Lcom/android/camera/ActivityBase;->mOpenCameraFail:Z

    if-eqz v6, :cond_9

    .line 672
    const v6, 0x7f0a0018

    invoke-static {p0, v6}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 678
    :catch_0
    move-exception v6

    .line 682
    :cond_6
    new-instance v4, Ljava/lang/Thread;

    new-instance v6, Lcom/android/camera/VideoCamera$5;

    invoke-direct {v6, p0}, Lcom/android/camera/VideoCamera$5;-><init>(Lcom/android/camera/VideoCamera;)V

    invoke-direct {v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 690
    .local v4, startPreviewThread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 692
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeControlByIntent()V

    .line 693
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeMiscControls()V

    .line 695
    const v6, 0x7f0d008c

    invoke-virtual {p0, v6}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ui/RotateLayout;

    iput-object v6, p0, Lcom/android/camera/VideoCamera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    .line 698
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Lcom/android/camera/VideoCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    iput-object v6, p0, Lcom/android/camera/VideoCamera;->mTelephoneyManager:Landroid/telephony/TelephonyManager;

    .line 699
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mTelephoneyManager:Landroid/telephony/TelephonyManager;

    iget-object v8, p0, Lcom/android/camera/VideoCamera;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v9, 0x20

    invoke-virtual {v6, v8, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 701
    new-instance v6, Lcom/android/camera/RotateDialogController;

    const v8, 0x7f040070

    invoke-direct {v6, p0, v8}, Lcom/android/camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v6, p0, Lcom/android/camera/VideoCamera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    .line 702
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v8, "android.intent.extra.quickCapture"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/camera/VideoCamera;->mQuickCapture:Z

    .line 703
    const v6, 0x7f0d0188

    invoke-virtual {p0, v6}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    .line 704
    new-instance v6, Lcom/android/camera/VideoCamera$MyOrientationEventListener;

    invoke-direct {v6, p0, p0}, Lcom/android/camera/VideoCamera$MyOrientationEventListener;-><init>(Lcom/android/camera/VideoCamera;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/camera/VideoCamera;->mOrientationListener:Lcom/android/camera/VideoCamera$MyOrientationEventListener;

    .line 705
    const v6, 0x7f0d0181

    invoke-virtual {p0, v6}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ui/RotateLayout;

    iput-object v6, p0, Lcom/android/camera/VideoCamera;->mRotateToastLayout:Lcom/android/camera/ui/RotateLayout;

    .line 706
    const v6, 0x7f0d017f

    invoke-virtual {p0, v6}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/android/camera/VideoCamera;->mToastLayout:Landroid/widget/RelativeLayout;

    .line 707
    const v6, 0x7f0d0180

    invoke-virtual {p0, v6}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/camera/VideoCamera;->mRotateToastText:Landroid/widget/TextView;

    .line 708
    new-instance v6, Lcom/android/camera/LocationManager;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/camera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V

    iput-object v6, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 712
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Thread;->join()V

    .line 713
    iget-boolean v6, p0, Lcom/android/camera/ActivityBase;->mOpenCameraFail:Z

    if-eqz v6, :cond_a

    .line 714
    const v6, 0x7f0a0018

    invoke-static {p0, v6}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 720
    :catch_1
    move-exception v6

    .line 725
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 736
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeIndicatorMenu()V

    .line 737
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeFlashLightList()V

    .line 738
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/VideoFocusManager;

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeFocusManager()V

    goto/16 :goto_0

    .end local v4           #startPreviewThread:Ljava/lang/Thread;
    :cond_8
    move v6, v7

    .line 663
    goto/16 :goto_1

    .line 674
    :cond_9
    :try_start_2
    iget-boolean v6, p0, Lcom/android/camera/ActivityBase;->mCameraDisabled:Z

    if-eqz v6, :cond_6

    .line 675
    const v6, 0x7f0a0019

    invoke-static {p0, v6}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 716
    .restart local v4       #startPreviewThread:Ljava/lang/Thread;
    :cond_a
    :try_start_3
    iget-boolean v6, p0, Lcom/android/camera/ActivityBase;->mCameraDisabled:Z

    if-eqz v6, :cond_7

    .line 717
    const v6, 0x7f0a0019

    invoke-static {p0, v6}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPowerReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPowerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mScreenShot:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mScreenShot:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_2

    .line 585
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mTelephoneyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 586
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 588
    :cond_2
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onDestroy()V

    .line 589
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2152
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

    .line 2153
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2155
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()Z

    .line 2156
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateAndShowStorageHint()V

    .line 2158
    :cond_0
    return-void
.end method

.method public onFlashLightClicked(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const-wide/16 v1, 0xc8

    .line 1279
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsCollapseMenuControl:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIsShowCameraAppView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 1281
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightList:Landroid/widget/ListView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 1282
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->timeToHideFlashLightList()V

    .line 1284
    :cond_0
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2163
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 2164
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 2165
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsInfoMaxDuration:Z

    .line 2166
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onStopVideoRecording()V

    .line 2182
    :cond_0
    :goto_0
    return-void

    .line 2168
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 2169
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    .line 2170
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsInfoMaxFileSize:Z

    .line 2171
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onStopVideoRecording()V

    .line 2174
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsStorageHintShow:Z

    if-nez v0, :cond_0

    .line 2176
    const v0, 0x7f0a007a

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2178
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 2179
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

    .line 1125
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenu_v:Landroid/widget/ListView;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenu_h:Landroid/widget/ListView;

    if-ne p1, v0, :cond_7

    .line 1126
    :cond_0
    if-nez p3, :cond_3

    .line 1127
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubMenu_v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSubVideoSizeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1128
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubMenu_h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSubVideoSizeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1144
    :cond_1
    :goto_0
    iput p3, p0, Lcom/android/camera/VideoCamera;->mMainSel:I

    .line 1145
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenuAdapter:Lcom/android/camera/VideoMainMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/android/camera/VideoMainMenuAdapter;->setCurSel(I)V

    .line 1146
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenuAdapter:Lcom/android/camera/VideoMainMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/VideoMainMenuAdapter;->notifyDataSetChanged()V

    .line 1175
    :cond_2
    :goto_1
    return-void

    .line 1129
    :cond_3
    if-ne p3, v5, :cond_5

    .line 1130
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    if-nez v0, :cond_4

    .line 1131
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

    .line 1134
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubMenu_v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1135
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubMenu_h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 1136
    :cond_5
    if-ne p3, v6, :cond_1

    .line 1137
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubWBAdapter:Lcom/android/camera/SubMenuAdapter;

    if-nez v0, :cond_6

    .line 1138
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

    .line 1141
    :cond_6
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubMenu_v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSubWBAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1142
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubMenu_h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSubWBAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 1147
    :cond_7
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubMenu_v:Landroid/widget/ListView;

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubMenu_h:Landroid/widget/ListView;

    if-ne p1, v0, :cond_2

    .line 1148
    :cond_8
    iget v0, p0, Lcom/android/camera/VideoCamera;->mMainSel:I

    if-nez v0, :cond_a

    .line 1149
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubVideoSizeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/android/camera/SubMenuAdapter;->setCurSel(I)V

    .line 1150
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mMainMenuAdapter:Lcom/android/camera/VideoMainMenuAdapter;

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubVideoSizeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/android/camera/SubMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/VideoMainMenuAdapter;->setTipsStr(ILjava/lang/String;)V

    .line 1151
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

    .line 1153
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubVideoSizeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/SubMenuAdapter;->notifyDataSetChanged()V

    .line 1172
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenuAdapter:Lcom/android/camera/VideoMainMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/VideoMainMenuAdapter;->notifyDataSetChanged()V

    .line 1173
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->onSharedPreferenceChanged()V

    goto/16 :goto_1

    .line 1154
    :cond_a
    iget v0, p0, Lcom/android/camera/VideoCamera;->mMainSel:I

    if-ne v0, v5, :cond_c

    .line 1155
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/android/camera/SubMenuAdapter;->setCurSel(I)V

    .line 1156
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mMainMenuAdapter:Lcom/android/camera/VideoMainMenuAdapter;

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/android/camera/SubMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v5, v0}, Lcom/android/camera/VideoMainMenuAdapter;->setTipsStr(ILjava/lang/String;)V

    .line 1157
    if-eqz p3, :cond_b

    .line 1158
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenuAdapter:Lcom/android/camera/VideoMainMenuAdapter;

    invoke-virtual {v0, v5}, Lcom/android/camera/VideoMainMenuAdapter;->setIsAutoScense(Z)V

    .line 1162
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

    .line 1164
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/SubMenuAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 1160
    :cond_b
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMainMenuAdapter:Lcom/android/camera/VideoMainMenuAdapter;

    invoke-virtual {v0, v2}, Lcom/android/camera/VideoMainMenuAdapter;->setIsAutoScense(Z)V

    goto :goto_3

    .line 1165
    :cond_c
    iget v0, p0, Lcom/android/camera/VideoCamera;->mMainSel:I

    if-ne v0, v6, :cond_9

    .line 1166
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubWBAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/android/camera/SubMenuAdapter;->setCurSel(I)V

    .line 1167
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mMainMenuAdapter:Lcom/android/camera/VideoMainMenuAdapter;

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSubWBAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/android/camera/SubMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v6, v0}, Lcom/android/camera/VideoMainMenuAdapter;->setTipsStr(ILjava/lang/String;)V

    .line 1168
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

    .line 1170
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

    .line 1757
    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v1, :cond_1

    .line 1788
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 1761
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 1788
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1763
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 1764
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->performClick()Z

    goto :goto_0

    .line 1769
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 1770
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->performClick()Z

    goto :goto_0

    .line 1775
    :sswitch_3
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v1, :cond_0

    .line 1776
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1777
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    goto :goto_0

    .line 1761
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

    .line 1793
    sparse-switch p1, :sswitch_data_0

    .line 1825
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 1795
    :sswitch_0
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1, v2}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    goto :goto_0

    .line 1813
    :sswitch_1
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMenuAnimation:Z

    if-nez v1, :cond_0

    .line 1816
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1817
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsMenuLongPress:Z

    goto :goto_0

    .line 1819
    :cond_1
    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMenuLongPress:Z

    .line 1820
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->collapseMenuControl()Z

    goto :goto_0

    .line 1793
    nop

    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMenuControlClicked(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1350
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

    .line 1352
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->controlMenuBar()V

    .line 1354
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1659
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    .line 1660
    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsSwitchCameraFinish:Z

    .line 1661
    const-string v0, "light-off"

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->resetFlashLight(Ljava/lang/String;)V

    .line 1663
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->collapseMenuControl()Z

    .line 1665
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_7

    .line 1667
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onStopVideoRecording()V

    .line 1672
    :goto_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 1673
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 1674
    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1683
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeVideoFileDescriptor()V

    .line 1684
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->clearVideoNamer()V

    .line 1686
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 1687
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1688
    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1690
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSysReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 1691
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSysReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1692
    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mSysReceiver:Landroid/content/BroadcastReceiver;

    .line 1694
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resetScreenOn()V

    .line 1696
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mOrientationListener:Lcom/android/camera/VideoCamera$MyOrientationEventListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mOrientationListener:Lcom/android/camera/VideoCamera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->disable()V

    .line 1697
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1699
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1700
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1701
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1702
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    .line 1703
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    .line 1706
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onPause()V

    .line 1707
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsStartVideoPlay:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsGotoGallery:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_5

    .line 1708
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->finish()V

    .line 1713
    :cond_5
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/VideoFocusManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/VideoFocusManager;

    invoke-virtual {v0}, Lcom/android/camera/VideoFocusManager;->removeMessages()V

    .line 1714
    :cond_6
    return-void

    .line 1669
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeCamera()V

    .line 1670
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    goto :goto_0
.end method

.method protected onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 3140
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3141
    return-void
.end method

.method public onProtectiveCurtainClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1376
    return-void
.end method

.method public onRecordCaptureClicked(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1245
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoRecordPause:Z

    if-nez v0, :cond_2

    .line 1247
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_1

    .line 1275
    :cond_0
    :goto_0
    return-void

    .line 1250
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->pause()V

    .line 1251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoRecordPause:Z

    .line 1252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsCapturePicStopRecord:Z

    .line 1253
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mRecordingPauseStartTime:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    :goto_1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mSnapshotInProgress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 1264
    :cond_2
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    iget v1, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v0

    .line 1265
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1266
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1267
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1, v0}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 1268
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1270
    const-string v1, "videocamera"

    const-string v2, "Video snapshot start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    new-instance v2, Lcom/android/camera/VideoCamera$JpegPictureCallback;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/VideoCamera$JpegPictureCallback;-><init>(Lcom/android/camera/VideoCamera;Landroid/location/Location;)V

    invoke-virtual {v1, v4, v4, v4, v2}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1272
    invoke-virtual {p0, v3}, Lcom/android/camera/VideoCamera;->showVideoSnapshotUI(Z)V

    .line 1273
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mSnapshotInProgress:Z

    .line 1274
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->enableRecordCaptureControl(Z)V

    goto :goto_0

    .line 1254
    :catch_0
    move-exception v0

    .line 1255
    const-string v1, "videocamera"

    const-string v2, "Could not pause media record. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onRecordPauseClicked(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 1220
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoRecordPause:Z

    if-nez v0, :cond_1

    .line 1221
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->pauseVideoRecording()V

    .line 1222
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mRecordingPauseStartTime:J

    .line 1223
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoRecordCaptureBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoRecordCaptureBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateImageView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/VideoCamera$9;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoCamera$9;-><init>(Lcom/android/camera/VideoCamera;)V

    const-wide/16 v2, 0x7d0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/VideoCamera;->mRecordingCaptureTime:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1240
    :cond_0
    :goto_0
    return-void

    .line 1233
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsCanResumeVideoRecording:Z

    if-eqz v0, :cond_0

    .line 1236
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resumeVideoRecording()V

    .line 1237
    iget-wide v0, p0, Lcom/android/camera/VideoCamera;->mRecordingPauseTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/camera/VideoCamera;->mRecordingPauseStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mRecordingPauseTime:J

    .line 1238
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateRecordingTime()V

    goto :goto_0
.end method

.method public onRestorePreferencesClicked()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 3051
    new-instance v4, Lcom/android/camera/VideoCamera$13;

    invoke-direct {v4, p0}, Lcom/android/camera/VideoCamera$13;-><init>(Lcom/android/camera/VideoCamera;)V

    .line 3057
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    const v2, 0x7f0a0023

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

    .line 3062
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1504
    iput-boolean v4, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    .line 1505
    iput-boolean v4, p0, Lcom/android/camera/VideoCamera;->mIsStartVideoPlay:Z

    .line 1506
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onResume()V

    .line 1507
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mCameraDisabled:Z

    if-eqz v0, :cond_1

    .line 1595
    :cond_0
    :goto_0
    return-void

    .line 1510
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->isLockViewNeedAddFlag()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1511
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1512
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1513
    const/high16 v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1514
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1517
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->showVideoSnapshotUI(Z)V

    .line 1521
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mOrientationListener:Lcom/android/camera/VideoCamera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->enable()V

    .line 1522
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mConfiguration_orientation:I

    .line 1523
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-nez v0, :cond_4

    .line 1524
    new-instance v0, Lcom/android/camera/ActivityBase$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$CameraOpenThread;-><init>(Lcom/android/camera/ActivityBase;)V

    .line 1525
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$CameraOpenThread;->start()V

    .line 1527
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$CameraOpenThread;->join()V

    .line 1528
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mOpenCameraFail:Z

    if-eqz v0, :cond_8

    .line 1529
    const v0, 0x7f0a0018

    invoke-static {p0, v0}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1535
    :catch_0
    move-exception v0

    .line 1538
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setCameraMode(I)V

    .line 1539
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->readVideoPreferences()V

    .line 1540
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 1541
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V

    .line 1544
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOnAwhile()V

    .line 1548
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1549
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsGotoGallery:Z

    if-eqz v0, :cond_5

    .line 1550
    iput-boolean v4, p0, Lcom/android/camera/VideoCamera;->mIsGotoGallery:Z

    .line 1554
    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1556
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1557
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1558
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1559
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1560
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1561
    new-instance v1, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;

    invoke-direct {v1, p0, v5}, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;-><init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1562
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/VideoCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1564
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1565
    const-string v1, "android.intent.action.MEIZU_HDMI_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1566
    new-instance v1, Lcom/android/camera/VideoCamera$SysBroadcastReceiver;

    invoke-direct {v1, p0, v5}, Lcom/android/camera/VideoCamera$SysBroadcastReceiver;-><init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mSysReceiver:Landroid/content/BroadcastReceiver;

    .line 1567
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSysReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/VideoCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1568
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    .line 1570
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/VideoCamera$10;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoCamera$10;-><init>(Lcom/android/camera/VideoCamera;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1578
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 1580
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1582
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1583
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getLastThumbnail()V

    .line 1586
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-eqz v0, :cond_7

    .line 1587
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mOnResumeTime:J

    .line 1588
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1591
    :cond_7
    invoke-static {p0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 1593
    new-instance v0, Lcom/android/camera/VideoCamera$VideoNamer;

    invoke-direct {v0}, Lcom/android/camera/VideoCamera$VideoNamer;-><init>()V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoNamer:Lcom/android/camera/VideoCamera$VideoNamer;

    .line 1594
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resetLedLight()V

    goto/16 :goto_0

    .line 1531
    :cond_8
    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mCameraDisabled:Z

    if-eqz v0, :cond_3

    .line 1532
    const v0, 0x7f0a0019

    invoke-static {p0, v0}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1337
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()Z

    .line 1338
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->doReturnToCaller(Z)V

    .line 1339
    return-void
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1332
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->doReturnToCaller(Z)V

    .line 1333
    return-void
.end method

.method public onReviewPlayClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1327
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPlayVideoActivity()V

    .line 1328
    return-void
.end method

.method public onReviewRetakeClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1321
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->deleteCurrentVideo()V

    .line 1322
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->hideAlert()V

    .line 1323
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 5

    .prologue
    .line 3077
    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v2, :cond_0

    .line 3100
    :goto_0
    return-void

    .line 3078
    :cond_0
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    monitor-enter v3

    .line 3081
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_1

    monitor-exit v3

    goto :goto_0

    .line 3099
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3083
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v4}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 3085
    .local v0, recordLocation:Z
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v2, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 3087
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->readVideoPreferences()V

    .line 3089
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 3090
    .local v1, size:Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    if-ne v2, v4, :cond_2

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    iget v4, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    if-eq v2, v4, :cond_3

    .line 3092
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->setIsDropFullScreenChanged(Z)V

    .line 3093
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopPreview()V

    .line 3094
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 3095
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V

    .line 3099
    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 3097
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setCameraParameters()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onShutterButtonClick()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1380
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    if-eqz v0, :cond_1

    .line 1404
    :cond_0
    :goto_0
    return-void

    .line 1381
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMenuAnimation:Z

    if-nez v0, :cond_0

    .line 1382
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIsShowCameraAppView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1384
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 1385
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "camera_sounds_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_2

    .line 1387
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v4}, Lcom/android/camera/CameraManager$CameraProxy;->playSound(I)V

    .line 1390
    :cond_2
    if-eqz v0, :cond_4

    .line 1391
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onStopVideoRecording()V

    .line 1395
    :goto_1
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1, v4}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 1400
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-static {v1, v2}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    .line 1401
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1393
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startVideoRecording()V

    goto :goto_1
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 1409
    return-void
.end method

.method protected onSingleTapUp(Landroid/view/View;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsCollapseMenuControl:Z

    .line 3154
    int-to-float v0, p2

    int-to-float v1, p3

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMenuBackControl:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMenuShowed:Z

    if-eqz v0, :cond_3

    .line 3155
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 3156
    int-to-float v0, p2

    int-to-float v1, p3

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3157
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->collapseMenuControl()Z

    .line 3176
    :cond_0
    :goto_0
    return-void

    .line 3161
    :cond_1
    int-to-float v0, p2

    int-to-float v1, p3

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3162
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->collapseMenuControl()Z

    goto :goto_0

    .line 3166
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsCollapseMenuControl:Z

    .line 3168
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

    .line 3169
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->collapseFlashLightList()V

    goto :goto_0

    .line 3172
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

    invoke-direct {p0, p2, p3}, Lcom/android/camera/VideoCamera;->forbitTouchFocus(II)Z

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

    .line 3174
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/VideoFocusManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/VideoFocusManager;->onSingleTapUp(II)V

    goto :goto_0
.end method

.method public onSizeChanged(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3431
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    if-nez v0, :cond_0

    .line 3435
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/VideoCamera$15;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoCamera$15;-><init>(Lcom/android/camera/VideoCamera;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3442
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/VideoFocusManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/VideoFocusManager;->setPreviewSize(II)V

    .line 3443
    return-void
.end method

.method protected onSwitchAnimationEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3146
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->setIsDropFullScreenChanged(Z)V

    .line 3147
    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->setSwipingEnabled(Z)V

    .line 3148
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsSwitchCameraFinish:Z

    .line 3149
    return-void
.end method

.method public onSwitchCameraClicked(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const-wide/16 v2, 0x32

    .line 1288
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

    .line 1308
    :cond_0
    :goto_0
    return-void

    .line 1290
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsSwitchCameraFinish:Z

    .line 1292
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->copyTexture()V

    .line 1293
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/camera/ActivityBase;->mNumberOfCameras:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    .line 1295
    iput-boolean v4, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    .line 1296
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportFlashLightMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1297
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->collapseFlashLightList()V

    .line 1298
    iget v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    if-ne v0, v4, :cond_2

    .line 1299
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 1300
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 1301
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    goto :goto_0

    .line 1303
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 1304
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 1305
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    goto :goto_0
.end method

.method public onSwitchCameraModeClicked(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1312
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/Util;->getCanSwitchOtherMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIsShowCameraAppView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1313
    invoke-static {}, Lcom/android/camera/Util;->setCanSwitchOtherMode()V

    .line 1314
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->isMeizuSystemCaptureIntent()Z

    move-result v2

    iget-boolean v3, p0, Lcom/android/camera/VideoCamera;->mIsLockView:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/VideoCamera;->switchToOtherMode(IZZZ)Z

    .line 1317
    :cond_0
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1212
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    if-nez v0, :cond_0

    .line 1214
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->gotoGallery()V

    .line 1216
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 1718
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onUserInteraction()V

    .line 1719
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_1

    .line 1720
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOnAwhile()V

    .line 1721
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->timeToCloseCamera()V

    .line 1727
    :cond_0
    :goto_0
    return-void

    .line 1723
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoRecordPause:Z

    if-eqz v0, :cond_0

    .line 1724
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->pauseTimeToCloseCamera()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 852
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMenuLongPress:Z

    if-eqz v0, :cond_0

    .line 853
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMenuLongPress:Z

    .line 855
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onWindowFocusChanged(Z)V

    .line 856
    return-void
.end method

.method public setFocusParameters()V
    .locals 2

    .prologue
    .line 3513
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFocusMode(I)V

    .line 3514
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/VideoFocusManager;

    invoke-virtual {v1}, Lcom/android/camera/VideoFocusManager;->getTouchPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusPos(I)V

    .line 3515
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mAutoFocusCallback:Lcom/android/camera/VideoCamera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 3516
    return-void
.end method

.method showVideoSnapshotUI(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 3229
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isVideoSnapshotSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3230
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewFrameLayout;->showBorder(Z)V

    .line 3231
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 3233
    :cond_0
    return-void

    .line 3231
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public touchFocus()V
    .locals 2

    .prologue
    .line 3455
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFocusMode(I)V

    .line 3456
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/VideoFocusManager;

    invoke-virtual {v1}, Lcom/android/camera/VideoFocusManager;->getTouchPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusPos(I)V

    .line 3457
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mAutoFocusCallback:Lcom/android/camera/VideoCamera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 3458
    return-void
.end method

.method protected updateCameraAppView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3237
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->updateCameraAppView()V

    .line 3239
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3260
    :cond_0
    :goto_0
    return-void

    .line 3242
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_2

    .line 3243
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOnAwhile()V

    .line 3249
    :goto_1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-nez v0, :cond_4

    .line 3250
    const-string v0, "light-off"

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mFlashLightMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3251
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mRestoreFlash:Z

    goto :goto_0

    .line 3245
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resetScreenOn()V

    goto :goto_1

    .line 3254
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mRestoreFlash:Z

    .line 3255
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setCameraParameters()V

    goto :goto_0

    .line 3256
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mRestoreFlash:Z

    if-eqz v0, :cond_0

    .line 3257
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mRestoreFlash:Z

    .line 3258
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setCameraParameters()V

    goto :goto_0
.end method
