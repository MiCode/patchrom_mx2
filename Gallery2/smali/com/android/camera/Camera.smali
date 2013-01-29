.class public Lcom/android/camera/Camera;
.super Lcom/android/camera/ActivityBase;
.source "Camera.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/camera/CameraErrorCallback$Listener;
.implements Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
.implements Lcom/android/camera/FocusManager$Listener;
.implements Lcom/android/camera/ModePicker$OnModeChangeListener;
.implements Lcom/android/camera/OtherMenuAdapter$Listener;
.implements Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/camera/ui/CaptureAniView$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Camera$FlashLightAdapter;,
        Lcom/android/camera/Camera$GetFacePositionTask;,
        Lcom/android/camera/Camera$RotateDataTask;,
        Lcom/android/camera/Camera$ShutterBtnLongClick;,
        Lcom/android/camera/Camera$MyOrientationEventListener;,
        Lcom/android/camera/Camera$ImageNamer;,
        Lcom/android/camera/Camera$ImageSaver;,
        Lcom/android/camera/Camera$SaveRequest;,
        Lcom/android/camera/Camera$AutoFocusMoveCallback;,
        Lcom/android/camera/Camera$CameraStatusCallback;,
        Lcom/android/camera/Camera$AutoFocusCallback;,
        Lcom/android/camera/Camera$JpegPictureCallback;,
        Lcom/android/camera/Camera$RawPictureCallback;,
        Lcom/android/camera/Camera$PostViewPictureCallback;,
        Lcom/android/camera/Camera$ShutterCallback;,
        Lcom/android/camera/Camera$ZoomScaleGestureLis;,
        Lcom/android/camera/Camera$ZoomSeekBarListener;,
        Lcom/android/camera/Camera$MainHandler;,
        Lcom/android/camera/Camera$CameraStartUpThread;
    }
.end annotation


# instance fields
.field private mAeLockSupported:Z

.field private final mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Lcom/android/camera/Camera$AutoFocusMoveCallback;

.field public mAutoFocusTime:J

.field private mAwbLockSupported:Z

.field private mBackControl:Lcom/android/camera/ui/GlowImageView;

.field private mBackControlImg:Lcom/android/camera/ui/RotateImageView;

.field private mBackControlImgRunnable:Ljava/lang/Runnable;

.field private mBeginScaleValue:I

.field private mCameraControl:Lcom/android/camera/ui/ControlPanelLayout;

.field private mCameraDisplayOrientation:I

.field private mCameraMenuInfo:Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

.field mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

.field private mCameraState:I

.field private final mCameraStatusCallback:Lcom/android/camera/Camera$CameraStatusCallback;

.field mCanNextFocusRunnable:Ljava/lang/Runnable;

.field private mCaptureModeImg:Lcom/android/camera/ui/RotateImageView;

.field private mCaptureModeTips:Landroid/widget/TextView;

.field public mCaptureStartTime:J

.field private mClearHoldFocusRunnable:Ljava/lang/Runnable;

.field private mConfiguration_orientation:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContinousFocusSupported:Z

.field private mCropValue:Ljava/lang/String;

.field private mDataLength:J

.field private mDidRegister:Z

.field private mDisplayOrientation:I

.field private mDisplayRotation:I

.field private mDoSnapRunnable:Ljava/lang/Runnable;

.field private final mErrorCallback:Lcom/android/camera/CameraErrorCallback;

.field private mExposureAdd:Lcom/android/camera/ui/RotateImageView;

.field private mExposureControlBg:Landroid/widget/ImageView;

.field private mExposureControlLayout:Landroid/widget/LinearLayout;

.field private mExposureLeftMove:Landroid/view/animation/Animation;

.field private mExposureLess:Lcom/android/camera/ui/RotateImageView;

.field private mExposureRightMove:Landroid/view/animation/Animation;

.field private mExposureTextView:Landroid/widget/TextView;

.field private mExposureTextViewLayout:Lcom/android/camera/ui/RotateLayout;

.field private mExposureValue:F

.field private mFirstTimeInitialized:Z

.field private mFlashLightAdapter:Lcom/android/camera/Camera$FlashLightAdapter;

.field private mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

.field private mFlashLightItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private mFlashLightList:Landroid/widget/ListView;

.field private mFlashLightMode:Ljava/lang/String;

.field private mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

.field private mFocusAreaSupported:Z

.field private mFocusManager:Lcom/android/camera/FocusManager;

.field private mFocusStartTime:J

.field private mGetFacePosTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mISO:Ljava/lang/String;

.field private mImageNamer:Lcom/android/camera/Camera$ImageNamer;

.field private mImageSaver:Lcom/android/camera/Camera$ImageSaver;

.field private mInitCaptureMode:Z

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mIsBackControlDown:Z

.field private mIsCall_State_OffHook:Z

.field private mIsCanClickShutterButton:Z

.field private mIsCanNextFocus:Z

.field private mIsCanProximityTakePicture:Z

.field private mIsCanTouchFocus:Z

.field private mIsCapture:Z

.field private mIsChangeFlashLightStyle:Z

.field private mIsContactIntent:Z

.field private mIsDoingMulti:Z

.field private mIsDoingPanorama:Z

.field private mIsDropFirstProximityCapture:Z

.field private mIsDropTouchEvent:Z

.field private mIsEnableControl:Z

.field private mIsExposureEnable:Z

.field private mIsExposureLeftAni:Z

.field private mIsFlymeCaptureIntent:Z

.field private mIsForbitOrientation:Z

.field private mIsForbitedFlashLight:Z

.field private mIsGotoGallery:Z

.field private mIsHomePressed:Z

.field private mIsImageCaptureIntent:Z

.field private mIsImageCaptureIntentTakePic:Z

.field private mIsImageIntentClicked:Z

.field private mIsLastTouchFocus:Z

.field private mIsLockView:Z

.field private mIsLockViewIntent:Z

.field private mIsMeizuCaptureIntent:Z

.field private mIsMeizuCaptureTakePic:Z

.field private mIsMenuAnimation:Z

.field private mIsMenuLongPress:Z

.field private mIsMenuShowed:Z

.field private mIsMultiSetFlashLightOn:Z

.field private mIsNormalSnapShot:Z

.field private mIsNotePaperIntent:Z

.field private mIsPlaySoundOff:Z

.field private mIsPowerKeyRegister:Z

.field private mIsPowerPressed:Z

.field private mIsPreForbidDegree:Z

.field private mIsPrePanoMode:Z

.field private mIsProximityEnable:Z

.field private mIsProximityResisterSuccess:Z

.field private mIsRedisplayCaptureTip:Z

.field private mIsResetCaptureModeImg:Z

.field private mIsResetZoomScale:Z

.field private mIsScaleGesture:Z

.field private mIsScreenCameraModeShowThumbnail:Z

.field private mIsSecurityAppLock:Z

.field private mIsSendSmileMsg:Z

.field private mIsSetCameraStatusCallback:Z

.field private mIsSetWinAttributes:Z

.field private mIsShutterBtnLongPressed:Z

.field private mIsShutterLongPressedFocusFinished:Z

.field private mIsShutterLongPressedSnapShot:Z

.field private mIsStopMulti:Z

.field private mIsStopPanroma:Z

.field private mIsSwitchCameraFinish:Z

.field private mIsSystemCapture:Z

.field public mJpegCallbackFinishTime:J

.field private mJpegImageData:[B

.field private mJpegPictureCallbackTime:J

.field private mJpegRotation:I

.field private mLastCaptureMode:I

.field private mLocationManager:Lcom/android/camera/LocationManager;

.field private mLuckyEggClickedTimes:I

.field private mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

.field private mMainMenu_h:Landroid/widget/ListView;

.field private mMainMenu_v:Landroid/widget/ListView;

.field private mMainSel:I

.field private mMediaProviderClient:Landroid/content/ContentProviderClient;

.field private mMenuBackControl:Landroid/widget/RelativeLayout;

.field private mMenuControl:Lcom/android/camera/ui/GlowImageView;

.field private mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

.field private mMenuDismiss:Landroid/view/animation/Animation;

.field private mMenuPopup:Landroid/view/animation/Animation;

.field private mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

.field private mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

.field private mMenuShowIcon:Lcom/android/camera/ui/GlowImageView;

.field private mMeteringAreaSupported:Z

.field private mOnResumeTime:J

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

.field private mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;

.field private mPanoramaProgressLayout:Lcom/android/camera/ui/RotateLayout;

.field private mPanoramaVaule:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPicSizeStr:Ljava/lang/String;

.field public mPictureDisplayedToJpegCallbackTime:J

.field private final mPostViewPictureCallback:Lcom/android/camera/Camera$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mPowerReceiver:Landroid/content/BroadcastReceiver;

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

.field private mPreviewWidth:I

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensorManager:Landroid/hardware/SensorManager;

.field private mQuickCapture:Z

.field private final mRawPictureCallback:Lcom/android/camera/Camera$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestoreFlash:Z

.field private mReviewDoneButton:Landroid/widget/ImageView;

.field private mReviewDoneLayout:Lcom/android/camera/ui/RotateLayout;

.field private mReviewDoneText:Landroid/widget/TextView;

.field private mRotateDialog:Lcom/android/camera/RotateDialogController;

.field private mRotateFlashLightListLayout:Lcom/android/camera/ui/RotateLayout;

.field private mRoundedCorner:Landroid/widget/ImageView;

.field private mSaveUri:Landroid/net/Uri;

.field private mSceneMode:Ljava/lang/String;

.field private mScreenShot:Landroid/graphics/Bitmap;

.field private mScreenShotImg:Landroid/widget/ImageView;

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

.field private final mShutterCallback:Lcom/android/camera/Camera$ShutterCallback;

.field private mShutterCallbackTime:J

.field public mShutterLag:J

.field public mShutterToPictureDisplayedTime:J

.field private mShutterUpRunnable:Ljava/lang/Runnable;

.field private mSmileFaceTime:I

.field private mSmileRect:Lcom/android/camera/ui/SmileRectView;

.field private mSnapshotOnIdle:Z

.field mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

.field private mStorageSpace:J

.field private mStrCaptureMode:Ljava/lang/String;

.field private mSubCaptureModeAdapter:Lcom/android/camera/SubMenuAdapter;

.field private mSubIsoAdapter:Lcom/android/camera/SubMenuAdapter;

.field private mSubMenu_h:Landroid/widget/ListView;

.field private mSubMenu_v:Landroid/widget/ListView;

.field private mSubOtherAdapter:Lcom/android/camera/OtherMenuAdapter;

.field private mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

.field private mSubWBAdapter:Lcom/android/camera/SubMenuAdapter;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

.field private mSwitchVideoBtnImg1:Lcom/android/camera/ui/RotateImageView;

.field private mSwitchVideoBtnImg2:Lcom/android/camera/ui/RotateImageView;

.field private mSwitchVideoModeLayout:Landroid/widget/LinearLayout;

.field private final mSysReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephoneyManager:Landroid/telephony/TelephonyManager;

.field private mToastLayout:Landroid/widget/RelativeLayout;

.field private mToastRotateLayout:Lcom/android/camera/ui/RotateLayout;

.field private mUpdateSet:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWhiteBalance:Ljava/lang/String;

.field private mZoomAddIcon:Lcom/android/camera/ui/RotateImageView;

.field private mZoomLessIcon:Lcom/android/camera/ui/RotateImageView;

.field private mZoomMax:I

.field private mZoomScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mZoomSeekBar:Landroid/widget/SeekBar;

.field private mZoomSeekBarBg:Landroid/widget/RelativeLayout;

.field private mZoomSeekBarLayout:Lcom/android/camera/ui/RotateLayout;

.field private mZoomValue:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;-><init>()V

    .line 190
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/Camera;->mOrientation:I

    .line 193
    iput v1, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    .line 211
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntentTakePic:Z

    .line 229
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsBackControlDown:Z

    .line 231
    new-instance v0, Lcom/android/camera/Camera$1;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$1;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 238
    new-instance v0, Lcom/android/camera/Camera$2;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$2;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mBackControlImgRunnable:Ljava/lang/Runnable;

    .line 245
    new-instance v0, Lcom/android/camera/Camera$3;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$3;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mClearHoldFocusRunnable:Ljava/lang/Runnable;

    .line 253
    new-instance v0, Lcom/android/camera/Camera$4;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$4;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mShutterUpRunnable:Ljava/lang/Runnable;

    .line 288
    iput v1, p0, Lcom/android/camera/Camera;->mCameraState:I

    .line 289
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mSnapshotOnIdle:Z

    .line 292
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    .line 296
    new-instance v0, Lcom/android/camera/Camera$ShutterCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$ShutterCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mShutterCallback:Lcom/android/camera/Camera$ShutterCallback;

    .line 297
    new-instance v0, Lcom/android/camera/Camera$PostViewPictureCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$PostViewPictureCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mPostViewPictureCallback:Lcom/android/camera/Camera$PostViewPictureCallback;

    .line 299
    new-instance v0, Lcom/android/camera/Camera$RawPictureCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$RawPictureCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mRawPictureCallback:Lcom/android/camera/Camera$RawPictureCallback;

    .line 301
    new-instance v0, Lcom/android/camera/Camera$AutoFocusCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$AutoFocusCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

    .line 303
    new-instance v0, Lcom/android/camera/Camera$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$AutoFocusMoveCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mAutoFocusMoveCallback:Lcom/android/camera/Camera$AutoFocusMoveCallback;

    .line 305
    new-instance v0, Lcom/android/camera/CameraErrorCallback;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraErrorCallback;-><init>(Lcom/android/camera/CameraErrorCallback$Listener;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 306
    new-instance v0, Lcom/android/camera/Camera$CameraStatusCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$CameraStatusCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraStatusCallback:Lcom/android/camera/Camera$CameraStatusCallback;

    .line 307
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsSetCameraStatusCallback:Z

    .line 331
    new-instance v0, Lcom/android/camera/Camera$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$MainHandler;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    .line 334
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsMenuShowed:Z

    .line 335
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsEnableControl:Z

    .line 341
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    .line 346
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsProximityResisterSuccess:Z

    .line 348
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsCall_State_OffHook:Z

    .line 349
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mInitCaptureMode:Z

    .line 356
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsSendSmileMsg:Z

    .line 375
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsMenuLongPress:Z

    .line 379
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsForbitedFlashLight:Z

    .line 381
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsDoingPanorama:Z

    .line 382
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsForbitOrientation:Z

    .line 388
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsDoingMulti:Z

    .line 403
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsGotoGallery:Z

    .line 405
    iput v1, p0, Lcom/android/camera/Camera;->mLastCaptureMode:I

    .line 406
    const-string v0, "capture-normal"

    iput-object v0, p0, Lcom/android/camera/Camera;->mStrCaptureMode:Ljava/lang/String;

    .line 408
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsResetCaptureModeImg:Z

    .line 411
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureTakePic:Z

    .line 412
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsCapture:Z

    .line 414
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsFlymeCaptureIntent:Z

    .line 421
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsResetZoomScale:Z

    .line 430
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsPrePanoMode:Z

    .line 435
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsPlaySoundOff:Z

    .line 438
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsPreForbidDegree:Z

    .line 440
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsPowerKeyRegister:Z

    .line 442
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsRedisplayCaptureTip:Z

    .line 444
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsSystemCapture:Z

    .line 445
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsCanClickShutterButton:Z

    .line 447
    iput-object v2, p0, Lcom/android/camera/Camera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 449
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsShutterBtnLongPressed:Z

    .line 450
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsShutterLongPressedFocusFinished:Z

    .line 451
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsShutterLongPressedSnapShot:Z

    .line 454
    iput v1, p0, Lcom/android/camera/Camera;->mSmileFaceTime:I

    .line 456
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsHomePressed:Z

    .line 457
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsStopPanroma:Z

    .line 458
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsStopMulti:Z

    .line 459
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsSetWinAttributes:Z

    .line 461
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsContactIntent:Z

    .line 463
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsNotePaperIntent:Z

    .line 465
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsImageIntentClicked:Z

    .line 467
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsPowerPressed:Z

    .line 469
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsMenuAnimation:Z

    .line 471
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsLastTouchFocus:Z

    .line 473
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mRestoreFlash:Z

    .line 481
    iput v1, p0, Lcom/android/camera/Camera;->mLuckyEggClickedTimes:I

    .line 482
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    .line 484
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/Camera;->mExposureValue:F

    .line 490
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsExposureLeftAni:Z

    .line 495
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsCanNextFocus:Z

    .line 499
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsCanTouchFocus:Z

    .line 510
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsCanProximityTakePicture:Z

    .line 516
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsDropFirstProximityCapture:Z

    .line 521
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsLockView:Z

    .line 523
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsMultiSetFlashLightOn:Z

    .line 524
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsChangeFlashLightStyle:Z

    .line 532
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    .line 535
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsSwitchCameraFinish:Z

    .line 539
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsNormalSnapShot:Z

    .line 769
    new-instance v0, Lcom/android/camera/Camera$5;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$5;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 792
    new-instance v0, Lcom/android/camera/Camera$6;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$6;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 1093
    iput v1, p0, Lcom/android/camera/Camera;->mBeginScaleValue:I

    .line 1094
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsScaleGesture:Z

    .line 1216
    new-instance v0, Lcom/android/camera/Camera$8;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$8;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1235
    new-instance v0, Lcom/android/camera/Camera$9;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$9;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mPowerReceiver:Landroid/content/BroadcastReceiver;

    .line 1264
    new-instance v0, Lcom/android/camera/Camera$10;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$10;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mSysReceiver:Landroid/content/BroadcastReceiver;

    .line 1428
    new-instance v0, Lcom/android/camera/Camera$11;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$11;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mCanNextFocusRunnable:Ljava/lang/Runnable;

    .line 2917
    new-instance v0, Lcom/android/camera/Camera$15;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$15;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mFlashLightItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 3095
    iput v1, p0, Lcom/android/camera/Camera;->mMainSel:I

    .line 4451
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsDropTouchEvent:Z

    .line 5396
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/Camera;)Lcom/android/camera/ui/RotateImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/Camera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/Camera;)Lcom/android/camera/FocusManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeFocusManager()V

    return-void
.end method

.method static synthetic access$10000(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsForbitOrientation:Z

    return v0
.end method

.method static synthetic access$10002(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsForbitOrientation:Z

    return p1
.end method

.method static synthetic access$10100(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/Camera;->deleteCurrentPhoto()V

    return-void
.end method

.method static synthetic access$10200(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$10202(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$10300(Lcom/android/camera/Camera;)Lcom/android/camera/ShutterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    return-object v0
.end method

.method static synthetic access$10400(Lcom/android/camera/Camera;)Lcom/android/camera/ui/RotateImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$10500(Lcom/android/camera/Camera;)Lcom/android/camera/ui/RotateImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$10600(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setPanoramaModeUIDirection(I)V

    return-void
.end method

.method static synthetic access$10700(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/camera/Camera;->mOrientation:I

    return v0
.end method

.method static synthetic access$10702(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/camera/Camera;->mOrientation:I

    return p1
.end method

.method static synthetic access$10900(Lcom/android/camera/Camera;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/Camera;->setCameraMode()V

    return-void
.end method

.method static synthetic access$11000(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsFlymeCaptureIntent:Z

    return v0
.end method

.method static synthetic access$11100(Lcom/android/camera/Camera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/Camera;->mPicSizeStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11200(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/Camera;->getCameraRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$11500(Lcom/android/camera/Camera;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->checkIsForbitPanoramaOrientation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$11600(Lcom/android/camera/Camera;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/camera/Camera;->setOrientationIndicator(IZ)V

    return-void
.end method

.method static synthetic access$11700(Lcom/android/camera/Camera;)Lcom/android/camera/ui/ControlPanelLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraControl:Lcom/android/camera/ui/ControlPanelLayout;

    return-object v0
.end method

.method static synthetic access$11800(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$FlashLightAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightAdapter:Lcom/android/camera/Camera$FlashLightAdapter;

    return-object v0
.end method

.method static synthetic access$11900(Lcom/android/camera/Camera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11902(Lcom/android/camera/Camera;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    return-void
.end method

.method static synthetic access$12000(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->updateFlashLightIcon(I)V

    return-void
.end method

.method static synthetic access$12100(Lcom/android/camera/Camera;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->isCaptrueModeNormal(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$12200(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/Camera;->isLandscape()Z

    move-result v0

    return v0
.end method

.method static synthetic access$12400(Lcom/android/camera/Camera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->firstPrepareCaptureModeUI(Z)V

    return-void
.end method

.method static synthetic access$12500(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateFlashLightUI()V

    return-void
.end method

.method static synthetic access$12600(Lcom/android/camera/Camera;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$12702(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsCanTouchFocus:Z

    return p1
.end method

.method static synthetic access$12800(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/camera/Camera;->mSmileFaceTime:I

    return v0
.end method

.method static synthetic access$12808(Lcom/android/camera/Camera;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/camera/Camera;->mSmileFaceTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/Camera;->mSmileFaceTime:I

    return v0
.end method

.method static synthetic access$12900(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/camera/Camera;->mPreviewWidth:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/Camera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$13000(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/Camera;->restorePreferences()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/android/camera/Camera;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-wide p1, p0, Lcom/android/camera/Camera;->mOnResumeTime:J

    return-wide p1
.end method

.method static synthetic access$1602(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsCanClickShutterButton:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/Camera;->setDisplayOrientation()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/Camera;->showTapToFocusToast()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageSaver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/Camera;->switchCamera()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeAfterCameraOpen()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setCameraState(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/Camera;->hideZoomSeekBar()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseFlashLightList()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/Camera;)Lcom/android/camera/RotateDialogController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsDoingMulti:Z

    return p1
.end method

.method static synthetic access$3000(Lcom/android/camera/Camera;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/camera/Camera;->setLedEnable(IZ)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/camera/Camera;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsMultiSetFlashLightOn:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsMultiSetFlashLightOn:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/Camera;->cancelGetFacePosTask()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/camera/Camera;)Lcom/android/camera/ui/SmileRectView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/Camera;->mSmileRect:Lcom/android/camera/ui/SmileRectView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsSendSmileMsg:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsSendSmileMsg:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/Camera;->timeToCloseCamera()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsGotoGallery:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/camera/Camera;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/Camera;->mScreenShot:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/camera/Camera;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/Camera;->mScreenShotImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->switchToOtherMode(I)V

    return-void
.end method

.method static synthetic access$4202(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/camera/Camera;->mLuckyEggClickedTimes:I

    return p1
.end method

.method static synthetic access$4300(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/Camera;->doAttach()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsCall_State_OffHook:Z

    return v0
.end method

.method static synthetic access$4402(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsCall_State_OffHook:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/camera/Camera;)Landroid/hardware/Sensor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/Camera;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsProximityEnable:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsMenuLongPress:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mInitCaptureMode:Z

    return v0
.end method

.method static synthetic access$4802(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mInitCaptureMode:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseMenuControl()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    return v0
.end method

.method static synthetic access$5100(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsShutterBtnLongPressed:Z

    return v0
.end method

.method static synthetic access$5102(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsShutterBtnLongPressed:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsPowerPressed:Z

    return v0
.end method

.method static synthetic access$5202(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsPowerPressed:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsCanProximityTakePicture:Z

    return v0
.end method

.method static synthetic access$5400(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsDropFirstProximityCapture:Z

    return v0
.end method

.method static synthetic access$5402(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsDropFirstProximityCapture:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/Camera;->isZoomBarVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/camera/Camera;->mZoomMax:I

    return v0
.end method

.method static synthetic access$5900(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/camera/Camera;->mZoomValue:I

    return v0
.end method

.method static synthetic access$5902(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/camera/Camera;->mZoomValue:I

    return p1
.end method

.method static synthetic access$6000(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/Camera;->timeToHideZoomBar()V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/camera/Camera;->mBeginScaleValue:I

    return v0
.end method

.method static synthetic access$6302(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/camera/Camera;->mBeginScaleValue:I

    return p1
.end method

.method static synthetic access$6402(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsScaleGesture:Z

    return p1
.end method

.method static synthetic access$6500(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/Camera;->checkStorage()V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    return v0
.end method

.method static synthetic access$6700(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/Camera;->isMeizuSystemCaptureIntent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6800(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsLockViewIntent:Z

    return v0
.end method

.method static synthetic access$6900(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/Camera;->releaseLightScreen()V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsLockView:Z

    return v0
.end method

.method static synthetic access$7100(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/android/camera/Camera;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$7102(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-wide p1, p0, Lcom/android/camera/Camera;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$7200(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$7202(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-wide p1, p0, Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$7300(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/android/camera/Camera;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$7302(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-wide p1, p0, Lcom/android/camera/Camera;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$7402(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsSystemCapture:Z

    return p1
.end method

.method static synthetic access$7502(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsLastTouchFocus:Z

    return p1
.end method

.method static synthetic access$7600(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsScreenCameraModeShowThumbnail:Z

    return v0
.end method

.method static synthetic access$7602(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsScreenCameraModeShowThumbnail:Z

    return p1
.end method

.method static synthetic access$7700(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsShutterLongPressedSnapShot:Z

    return v0
.end method

.method static synthetic access$7702(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsShutterLongPressedSnapShot:Z

    return p1
.end method

.method static synthetic access$7800(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsNormalSnapShot:Z

    return v0
.end method

.method static synthetic access$7802(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsNormalSnapShot:Z

    return p1
.end method

.method static synthetic access$7900(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$7902(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-wide p1, p0, Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$8000(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsHomePressed:Z

    return v0
.end method

.method static synthetic access$8100(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    return v0
.end method

.method static synthetic access$8200(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageNamer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/android/camera/Camera;->mDataLength:J

    return-wide v0
.end method

.method static synthetic access$8302(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-wide p1, p0, Lcom/android/camera/Camera;->mDataLength:J

    return-wide p1
.end method

.method static synthetic access$8400(Lcom/android/camera/Camera;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    return-object v0
.end method

.method static synthetic access$8402(Lcom/android/camera/Camera;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    return-object p1
.end method

.method static synthetic access$8500(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mQuickCapture:Z

    return v0
.end method

.method static synthetic access$8600(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/Camera;->showPostCaptureAlert()V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/Camera;->showPostMeizuCaptureAlert()V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/Camera;->prepareCaptureModeUI()V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/Camera;->homeKeyCaptureMode()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeCapabilities()V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    return-void
.end method

.method static synthetic access$9102(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsCanNextFocus:Z

    return p1
.end method

.method static synthetic access$9200(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/android/camera/Camera;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$9302(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsShutterLongPressedFocusFinished:Z

    return p1
.end method

.method static synthetic access$9400(Lcom/android/camera/Camera;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/Camera;->mClearHoldFocusRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/android/camera/Camera;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/Camera;->mDoSnapRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/android/camera/Camera;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterUpRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/camera/Camera;->mPanoramaVaule:I

    return v0
.end method

.method static synthetic access$9702(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/camera/Camera;->mPanoramaVaule:I

    return p1
.end method

.method static synthetic access$9800(Lcom/android/camera/Camera;)Lcom/android/camera/ui/PanoraProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;

    return-object v0
.end method

.method static synthetic access$9902(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsDoingPanorama:Z

    return p1
.end method

.method private acquireLightScreen()V
    .locals 3

    .prologue
    .line 1989
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/camera/Camera;->mPowerManager:Landroid/os/PowerManager;

    .line 1990
    iget-object v0, p0, Lcom/android/camera/Camera;->mPowerManager:Landroid/os/PowerManager;

    const v1, 0x1000001a

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1991
    iget-object v0, p0, Lcom/android/camera/Camera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1992
    return-void
.end method

.method private addIdleHandler()V
    .locals 2

    .prologue
    .line 968
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 969
    .local v0, queue:Landroid/os/MessageQueue;
    new-instance v1, Lcom/android/camera/Camera$7;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$7;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 976
    return-void
.end method

.method private canTakePicture()Z
    .locals 4

    .prologue
    .line 4095
    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/camera/Camera;->mStorageSpace:J

    const-wide/32 v2, 0x3400000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelGetFacePosTask()V
    .locals 2

    .prologue
    .line 5334
    iget-object v0, p0, Lcom/android/camera/Camera;->mGetFacePosTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mGetFacePosTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5335
    iget-object v0, p0, Lcom/android/camera/Camera;->mGetFacePosTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 5337
    :cond_0
    return-void
.end method

.method private captureModeShutterBtnClick()Z
    .locals 7

    .prologue
    const/16 v6, 0x16

    const/4 v5, 0x2

    const/16 v4, 0x8

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2526
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_1

    .line 2602
    :cond_0
    :goto_0
    return v0

    .line 2529
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsCameraEVSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2530
    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->disableGetEV()V

    .line 2533
    :cond_2
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 2534
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsSendSmileMsg:Z

    if-eqz v2, :cond_3

    .line 2535
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsSendSmileMsg:Z

    .line 2536
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->closeSmileDetection()V

    .line 2537
    iget-object v1, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2538
    invoke-direct {p0}, Lcom/android/camera/Camera;->cancelGetFacePosTask()V

    .line 2539
    iget-object v1, p0, Lcom/android/camera/Camera;->mSmileRect:Lcom/android/camera/ui/SmileRectView;

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/SmileRectView;->setVisibility(I)V

    .line 2540
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    goto :goto_0

    .line 2543
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 2544
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsSendSmileMsg:Z

    .line 2545
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MaskedRotateImageView;->setEnabled(Z)V

    .line 2546
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    const-wide/16 v2, 0x32

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 2547
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    const-wide/16 v2, 0x32

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 2548
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2549
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->openSmileDetection()V

    .line 2550
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2551
    invoke-direct {p0}, Lcom/android/camera/Camera;->cancelGetFacePosTask()V

    .line 2552
    new-instance v0, Lcom/android/camera/Camera$GetFacePositionTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$GetFacePositionTask;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/android/camera/Camera$GetFacePositionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mGetFacePosTask:Landroid/os/AsyncTask;

    .line 2553
    invoke-direct {p0, v1, v1}, Lcom/android/camera/Camera;->setLedEnable(IZ)V

    move v0, v1

    .line 2554
    goto :goto_0

    .line 2556
    :cond_4
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v2

    if-ne v2, v5, :cond_7

    .line 2557
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsDoingPanorama:Z

    if-eqz v2, :cond_5

    .line 2558
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsStopPanroma:Z

    .line 2559
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->stopPanoramaCapture()V

    .line 2560
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    goto/16 :goto_0

    .line 2562
    :cond_5
    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v2, :cond_6

    .line 2563
    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 2565
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 2566
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsDoingPanorama:Z

    .line 2567
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsForbitOrientation:Z

    .line 2568
    iget-object v2, p0, Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/PanoraProgressBar;->setVisibility(I)V

    .line 2569
    invoke-direct {p0, v5, v1}, Lcom/android/camera/Camera;->setLedEnable(IZ)V

    .line 2570
    iget-object v1, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2571
    iget-object v1, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v2, 0x7f02005c

    invoke-virtual {v1, v2}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 2573
    iget-object v1, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v1}, Lcom/android/camera/Util;->checkViewGone(Landroid/view/View;)Z

    .line 2574
    iget-object v1, p0, Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v1}, Lcom/android/camera/Util;->checkViewGone(Landroid/view/View;)Z

    goto/16 :goto_0

    .line 2577
    :cond_7
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v2

    if-ne v2, v0, :cond_8

    .line 2578
    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 2579
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsDoingMulti:Z

    .line 2580
    iget-object v1, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2581
    const-string v1, "on"

    iget-object v2, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2582
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "light-on"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2583
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2584
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsMultiSetFlashLightOn:Z

    goto/16 :goto_0

    .line 2587
    :cond_8
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 2588
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-static {v1, v2}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2589
    iget v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v1}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2590
    iget-object v1, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v1}, Lcom/android/camera/Util;->checkViewGone(Landroid/view/View;)Z

    .line 2592
    :cond_9
    iget-object v1, p0, Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v1}, Lcom/android/camera/Util;->checkViewGone(Landroid/view/View;)Z

    goto/16 :goto_0

    .line 2598
    :cond_a
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setIsInterceptHomeKey(Z)V

    goto/16 :goto_0
.end method

.method private changeBackControlStyle()V
    .locals 4

    .prologue
    .line 4125
    iget-object v0, p0, Lcom/android/camera/Camera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    const v1, 0x1080456

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 4126
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/Camera;->mBackControlImgRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4127
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/Camera;->mBackControlImgRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4128
    return-void
.end method

.method private changeCaptureModeToIndex(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2980
    if-nez p1, :cond_1

    .line 2992
    :cond_0
    :goto_0
    return v0

    .line 2983
    :cond_1
    const-string v1, "capture-normal"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2985
    const-string v1, "capture-multi"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2986
    const/4 v0, 0x1

    goto :goto_0

    .line 2987
    :cond_2
    const-string v1, "capture-panorama"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2988
    const/4 v0, 0x2

    goto :goto_0

    .line 2989
    :cond_3
    const-string v1, "capture-smile"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2990
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private changeFlashListStyle(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 2265
    if-ne v6, p1, :cond_1

    .line 2266
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    const v1, 0x7f020060

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 2267
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2268
    const v1, 0x7f09003d

    invoke-static {p0, v1}, Lcom/android/camera/Util;->getDimenVaule(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2269
    iget-object v1, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2270
    iput-object v2, p0, Lcom/android/camera/Camera;->mFlashLightAdapter:Lcom/android/camera/Camera$FlashLightAdapter;

    .line 2271
    new-instance v0, Lcom/android/camera/Camera$FlashLightAdapter;

    const v3, 0x7f0b0030

    sget-object v4, Lcom/android/camera/CameraDeviceManager;->CAMERA_FLASH_LIGHT_ICON:[I

    sget-object v5, Lcom/android/camera/CameraDeviceManager;->CAMERA_FLASH_LIGHT_UNSEL_ICON:[I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/Camera$FlashLightAdapter;-><init>(Lcom/android/camera/Camera;Landroid/content/Context;I[I[I)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mFlashLightAdapter:Lcom/android/camera/Camera$FlashLightAdapter;

    .line 2273
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mFlashLightAdapter:Lcom/android/camera/Camera$FlashLightAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2274
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->changeFlashModeToIndex(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->updateFlashLightIcon(I)V

    .line 2289
    :cond_0
    :goto_0
    return-void

    .line 2275
    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 2276
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    const v1, 0x7f0201a4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 2277
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2278
    const v1, 0x7f09003e

    invoke-static {p0, v1}, Lcom/android/camera/Util;->getDimenVaule(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2279
    iget-object v1, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2280
    iput-object v2, p0, Lcom/android/camera/Camera;->mFlashLightAdapter:Lcom/android/camera/Camera$FlashLightAdapter;

    .line 2281
    new-instance v0, Lcom/android/camera/Camera$FlashLightAdapter;

    const v3, 0x7f0b0031

    sget-object v4, Lcom/android/camera/CameraDeviceManager;->VIDEO_FLASH_LIGHT_ICON:[I

    sget-object v5, Lcom/android/camera/CameraDeviceManager;->VIDEO_FLASH_LIGHT_UNSEL_ICON:[I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/Camera$FlashLightAdapter;-><init>(Lcom/android/camera/Camera;Landroid/content/Context;I[I[I)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mFlashLightAdapter:Lcom/android/camera/Camera$FlashLightAdapter;

    .line 2283
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mFlashLightAdapter:Lcom/android/camera/Camera$FlashLightAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2284
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2286
    invoke-direct {p0, v6}, Lcom/android/camera/Camera;->updateFlashLightIcon(I)V

    goto :goto_0
.end method

.method private changeFlashModeToIndex(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2962
    if-nez p1, :cond_1

    .line 2976
    :cond_0
    :goto_0
    return v0

    .line 2966
    :cond_1
    const-string v2, "auto"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2973
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 2974
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2968
    :cond_3
    const-string v2, "on"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 2969
    goto :goto_1

    .line 2970
    :cond_4
    const-string v2, "off"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2971
    const/4 v0, 0x2

    goto :goto_1
.end method

.method private changeWdrModeToIndex(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2996
    if-nez p1, :cond_1

    .line 3004
    :cond_0
    :goto_0
    return v0

    .line 2999
    :cond_1
    const-string v1, "wdr-off"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3001
    const-string v1, "wdr-on"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3002
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkExposureState()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3201
    iget v2, p0, Lcom/android/camera/Camera;->mExposureValue:F

    const/high16 v3, 0x4000

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 3202
    iget-object v2, p0, Lcom/android/camera/Camera;->mExposureAdd:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 3203
    iget-object v2, p0, Lcom/android/camera/Camera;->mExposureLess:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 3211
    :goto_0
    return v0

    .line 3206
    :cond_0
    iget v2, p0, Lcom/android/camera/Camera;->mExposureValue:F

    const/high16 v3, -0x4000

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 3207
    iget-object v2, p0, Lcom/android/camera/Camera;->mExposureLess:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 3208
    iget-object v2, p0, Lcom/android/camera/Camera;->mExposureAdd:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 3211
    goto :goto_0
.end method

.method private checkIsForbitPanoramaOrientation(I)Z
    .locals 3
    .parameter "orientation"

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 2795
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 2796
    iget v1, p0, Lcom/android/camera/Camera;->mConfiguration_orientation:I

    if-ne v1, v0, :cond_1

    .line 2797
    const/16 v1, 0x5a

    if-ne p1, v1, :cond_2

    .line 2806
    :cond_0
    :goto_0
    return v0

    .line 2800
    :cond_1
    iget v1, p0, Lcom/android/camera/Camera;->mConfiguration_orientation:I

    if-ne v1, v2, :cond_2

    .line 2801
    const/16 v1, 0xb4

    if-eq p1, v1, :cond_0

    .line 2806
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkStorage()V
    .locals 2

    .prologue
    .line 2914
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mStorageSpace:J

    .line 2915
    iget-wide v0, p0, Lcom/android/camera/Camera;->mStorageSpace:J

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/Camera;->updateStorageHint(J)V

    .line 2916
    return-void
.end method

.method private clearCaptureAnimation()V
    .locals 0

    .prologue
    .line 4109
    return-void
.end method

.method private closeCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4620
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 4621
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->setCameraCallBack(Lcom/android/camera/Camera$CameraStatusCallback;)V

    .line 4622
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 4623
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 4624
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 4625
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 4626
    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 4627
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 4628
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onCameraReleased()V

    .line 4629
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4631
    :cond_0
    return-void
.end method

.method private collapseFlashLightList()V
    .locals 4

    .prologue
    const-wide/16 v2, 0xc8

    .line 2689
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportFlashLightMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2691
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 2692
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsExposureLeftAni:Z

    if-eqz v0, :cond_0

    .line 2693
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureControlLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/camera/Camera;->mExposureRightMove:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2695
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 2696
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsResetCaptureModeImg:Z

    if-eqz v0, :cond_1

    .line 2697
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsResetCaptureModeImg:Z

    .line 2698
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 2701
    :cond_1
    return-void
.end method

.method private collapseMenuControl()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2704
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsMenuShowed:Z

    if-eqz v1, :cond_0

    .line 2705
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsMenuShowed:Z

    .line 2706
    invoke-direct {p0}, Lcom/android/camera/Camera;->hideMenuLayout()V

    .line 2707
    const/4 v0, 0x1

    .line 2709
    :cond_0
    return v0
.end method

.method private collapseMenuControlAutoCapture()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 2726
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsMenuShowed:Z

    if-eqz v0, :cond_0

    .line 2727
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsMenuShowed:Z

    .line 2728
    iget v0, p0, Lcom/android/camera/Camera;->mOrientation:I

    div-int/lit8 v0, v0, 0x5a

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2729
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 2734
    :cond_0
    :goto_0
    return-void

    .line 2731
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private collapseMenuControlPanroma()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 2713
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsMenuShowed:Z

    if-eqz v0, :cond_0

    .line 2714
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsMenuShowed:Z

    .line 2715
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2716
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 2717
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/Camera;->mMenuDismiss:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2723
    :cond_0
    :goto_0
    return-void

    .line 2718
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2719
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 2720
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/Camera;->mMenuDismiss:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private controlMenuBar()V
    .locals 2

    .prologue
    .line 4530
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsMenuShowed:Z

    if-nez v0, :cond_1

    .line 4531
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseFlashLightList()V

    .line 4532
    iget v0, p0, Lcom/android/camera/Camera;->mOrientation:I

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_0

    .line 4533
    invoke-direct {p0}, Lcom/android/camera/Camera;->showMenuLayout()V

    .line 4534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsMenuShowed:Z

    .line 4535
    invoke-direct {p0}, Lcom/android/camera/Camera;->hideZoomSeekBar()V

    .line 4540
    :cond_0
    :goto_0
    return-void

    .line 4538
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseMenuControl()Z

    goto :goto_0
.end method

.method private deleteCurrentPhoto()V
    .locals 4

    .prologue
    .line 4112
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageNamer;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 4113
    iget-object v1, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v0}, Lcom/android/camera/Storage;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 4114
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageNamer;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 4115
    invoke-static {v0}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4116
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting photo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4117
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4118
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4119
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4121
    :cond_0
    return-void
.end method

.method private doAttach()V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v9, -0x1

    const/4 v2, 0x0

    .line 3455
    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v1, :cond_0

    .line 3569
    :goto_0
    return-void

    .line 3459
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    .line 3461
    iget-object v3, p0, Lcom/android/camera/Camera;->mCropValue:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 3466
    iget-object v3, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v3, :cond_4

    .line 3469
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v4

    .line 3471
    if-eqz v4, :cond_a

    .line 3472
    invoke-virtual {v4, v1}, Ljava/io/OutputStream;->write([B)V

    .line 3473
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 3476
    :goto_1
    if-eqz v0, :cond_3

    .line 3477
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    if-eqz v0, :cond_1

    .line 3478
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3479
    const-string v1, "Camera_Type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3480
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/Camera;->setResultEx(ILandroid/content/Intent;)V

    .line 3481
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureTakePic:Z

    .line 3494
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3498
    :goto_3
    invoke-static {v4}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 3482
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsNotePaperIntent:Z

    if-eqz v0, :cond_2

    .line 3483
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntentTakePic:Z

    .line 3484
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3485
    iget-object v1, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3486
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/Camera;->setResultEx(ILandroid/content/Intent;)V

    goto :goto_2

    .line 3495
    :catch_0
    move-exception v0

    goto :goto_3

    .line 3488
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntentTakePic:Z

    .line 3489
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setResultEx(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 3498
    :catchall_0
    move-exception v0

    invoke-static {v4}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 3492
    :cond_3
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setResult(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 3501
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsFlymeCaptureIntent:Z

    if-eqz v0, :cond_6

    .line 3502
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 3504
    iget v2, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_5

    .line 3505
    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    .line 3506
    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    .line 3511
    :goto_4
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageNamer;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 3512
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageNamer;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 3513
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    iget v7, p0, Lcom/android/camera/ActivityBase;->mThumbnailViewWidth:I

    iget v8, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/Camera$ImageSaver;->addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIII)V

    .line 3515
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3516
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3517
    const-string v1, "isFlymeMms"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3518
    invoke-virtual {p0, v9, v0}, Lcom/android/camera/Camera;->setResultEx(ILandroid/content/Intent;)V

    .line 3519
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    goto/16 :goto_0

    .line 3508
    :cond_5
    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    .line 3509
    iget v6, v0, Landroid/hardware/Camera$Size;->width:I

    goto :goto_4

    .line 3521
    :cond_6
    invoke-static {v1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v0

    .line 3522
    const v2, 0xc800

    invoke-static {v1, v2}, Lcom/android/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3523
    invoke-static {v1, v0}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3524
    new-instance v1, Landroid/content/Intent;

    const-string v2, "inline-data"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lcom/android/camera/Camera;->setResultEx(ILandroid/content/Intent;)V

    .line 3526
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    goto/16 :goto_0

    .line 3534
    :cond_7
    :try_start_3
    const-string v2, "crop-temp"

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 3535
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3536
    const-string v3, "crop-temp"

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lcom/android/camera/Camera;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 3537
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 3538
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 3539
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    .line 3549
    invoke-static {v4}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 3552
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3553
    iget-object v3, p0, Lcom/android/camera/Camera;->mCropValue:Ljava/lang/String;

    const-string v4, "circle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3554
    const-string v3, "circleCrop"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3556
    :cond_8
    iget-object v3, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v3, :cond_9

    .line 3557
    const-string v0, "output"

    iget-object v3, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3562
    :goto_5
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3564
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3565
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3567
    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3540
    :catch_1
    move-exception v0

    .line 3541
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setResultEx(I)V

    .line 3542
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3549
    :goto_6
    invoke-static {v4}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 3544
    :catch_2
    move-exception v0

    .line 3545
    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setResultEx(I)V

    .line 3546
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6

    .line 3549
    :catchall_1
    move-exception v0

    invoke-static {v4}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 3559
    :cond_9
    const-string v3, "return-data"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_5

    :cond_a
    move v0, v2

    goto/16 :goto_1
.end method

.method private doCancel()V
    .locals 2

    .prologue
    .line 3572
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/Camera;->setResultEx(ILandroid/content/Intent;)V

    .line 3573
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 3574
    return-void
.end method

.method private enableCameraControls(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 2737
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsSendSmileMsg:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/MaskedRotateImageView;->setEnabled(Z)V

    .line 2738
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 2739
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomLessIcon:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomLessIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 2740
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomAddIcon:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomAddIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 2741
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoModeLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2742
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsDoingPanorama:Z

    if-nez v0, :cond_5

    .line 2743
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 2745
    :cond_5
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 2746
    :cond_6
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsForbitedFlashLight:Z

    if-nez v0, :cond_7

    .line 2747
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 2748
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setClickable(Z)V

    .line 2750
    :cond_7
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureAdd:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/camera/Camera;->checkExposureState()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureAdd:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 2751
    :cond_8
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureLess:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/camera/Camera;->checkExposureState()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureLess:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 2752
    :cond_9
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2753
    :cond_a
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsSendSmileMsg:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/GlowImageView;->setEnabled(Z)V

    .line 2754
    :cond_b
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsSendSmileMsg:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 2755
    :cond_c
    iget-object v0, p0, Lcom/android/camera/Camera;->mBackControl:Lcom/android/camera/ui/GlowImageView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/camera/Camera;->mBackControl:Lcom/android/camera/ui/GlowImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/GlowImageView;->setEnabled(Z)V

    .line 2756
    :cond_d
    iget-object v0, p0, Lcom/android/camera/Camera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/camera/Camera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 2757
    :cond_e
    return-void
.end method

.method private firstPrepareCaptureModeUI(Z)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2295
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mInitCaptureMode:Z

    .line 2296
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-eq v0, v6, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsPrePanoMode:Z

    if-eqz v0, :cond_7

    .line 2297
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseMenuControlPanroma()V

    .line 2301
    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsForbitOrientation:Z

    .line 2303
    if-eqz p1, :cond_1

    .line 2304
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_capture_mode_key"

    const v4, 0x7f0a0067

    invoke-virtual {p0, v4}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mStrCaptureMode:Ljava/lang/String;

    .line 2306
    const-string v0, "capture-normal"

    iget-object v3, p0, Lcom/android/camera/Camera;->mStrCaptureMode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2307
    iget-object v0, p0, Lcom/android/camera/Camera;->mStrCaptureMode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->changeCaptureModeToIndex(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/Util;->setCurCaptureMode(I)V

    .line 2308
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    .line 2309
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setCaptureMode(I)V

    .line 2310
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mLastCaptureMode:I

    .line 2314
    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_8

    .line 2315
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    if-eqz v0, :cond_2

    .line 2316
    invoke-direct {p0}, Lcom/android/camera/Camera;->hideExposureControlBar()V

    .line 2318
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mToastLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 2319
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsPrePanoMode:Z

    if-eqz v0, :cond_3

    .line 2320
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2321
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg1:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2322
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg2:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2324
    :cond_3
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsPrePanoMode:Z

    .line 2325
    const v0, 0x7f0200db

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraCaptureModeImg(I)V

    .line 2326
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    const v3, 0x7f0a00ae

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2327
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2328
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    const-wide/16 v3, 0x32

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 2329
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    const-wide/16 v3, 0x32

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 2330
    iget v0, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    invoke-direct {p0, v0, v2}, Lcom/android/camera/Camera;->setOrientationIndicator(IZ)V

    .line 2331
    invoke-direct {p0, v7}, Lcom/android/camera/Camera;->setCameraCallBack(Lcom/android/camera/Camera$CameraStatusCallback;)V

    .line 2333
    invoke-direct {p0}, Lcom/android/camera/Camera;->resetZoomScale()V

    .line 2334
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_4

    .line 2335
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v3, p0, Lcom/android/camera/Camera;->mOrientation:I

    add-int/lit8 v3, v3, 0x5a

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionAngle(I)V

    .line 2337
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->setIsInterceptHomeKey(Z)V

    .line 2338
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsChangeFlashLightStyle:Z

    if-eqz v0, :cond_1b

    .line 2339
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->changeFlashListStyle(I)V

    .line 2340
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsChangeFlashLightStyle:Z

    move v1, v2

    .line 2440
    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    .line 2441
    invoke-direct {p0}, Lcom/android/camera/Camera;->setOtherParamDefault()V

    .line 2443
    :cond_6
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/Camera$13;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$13;-><init>(Lcom/android/camera/Camera;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2449
    return-void

    .line 2299
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseMenuControl()Z

    goto/16 :goto_0

    .line 2342
    :cond_8
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-nez v0, :cond_10

    .line 2343
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    iget-boolean v3, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-static {v0, v3}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2344
    invoke-direct {p0}, Lcom/android/camera/Camera;->showExposureControlBar()V

    .line 2346
    :cond_9
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsPrePanoMode:Z

    if-eqz v0, :cond_a

    .line 2347
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2348
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg1:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2349
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg2:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2351
    :cond_a
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsPrePanoMode:Z

    .line 2352
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    .line 2353
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2355
    :cond_b
    iget-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    const-string v3, "micro"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2356
    const v0, 0x7f0200d8

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraCaptureModeImg(I)V

    .line 2362
    :cond_c
    :goto_2
    iget v0, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    invoke-direct {p0, v0, v2}, Lcom/android/camera/Camera;->setOrientationIndicator(IZ)V

    .line 2363
    invoke-direct {p0, v7}, Lcom/android/camera/Camera;->setCameraCallBack(Lcom/android/camera/Camera$CameraStatusCallback;)V

    .line 2364
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsResetZoomScale:Z

    if-eqz v0, :cond_e

    .line 2365
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_d

    .line 2366
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v3, p0, Lcom/android/camera/Camera;->mZoomValue:I

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->startSmoothZoom(I)V

    .line 2368
    :cond_d
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsResetZoomScale:Z

    .line 2370
    :cond_e
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->setIsInterceptHomeKey(Z)V

    .line 2371
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsChangeFlashLightStyle:Z

    if-eqz v0, :cond_5

    .line 2372
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->changeFlashListStyle(I)V

    .line 2373
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsChangeFlashLightStyle:Z

    goto/16 :goto_1

    .line 2358
    :cond_f
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    .line 2359
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_2

    .line 2375
    :cond_10
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-ne v0, v6, :cond_17

    .line 2376
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    if-eqz v0, :cond_11

    .line 2377
    invoke-direct {p0}, Lcom/android/camera/Camera;->hideExposureControlBar()V

    .line 2379
    :cond_11
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsPrePanoMode:Z

    .line 2380
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 2381
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    .line 2383
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    const v3, 0x7f0a00af

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2384
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2388
    iget v0, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->checkIsForbitPanoramaOrientation(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2390
    iget v0, p0, Lcom/android/camera/Camera;->mConfiguration_orientation:I

    if-ne v0, v2, :cond_16

    move v0, v1

    .line 2395
    :goto_3
    invoke-direct {p0, v0, v2}, Lcom/android/camera/Camera;->setOrientationIndicator(IZ)V

    .line 2397
    :cond_12
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    .line 2398
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2400
    :cond_13
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_14

    .line 2401
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v3, 0x7f02001f

    invoke-virtual {v0, v3}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 2403
    :cond_14
    invoke-direct {p0, v2, v2}, Lcom/android/camera/Camera;->setLedEnable(IZ)V

    .line 2404
    invoke-direct {p0}, Lcom/android/camera/Camera;->resetZoomScale()V

    .line 2405
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setIsInterceptHomeKey(Z)V

    .line 2406
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsChangeFlashLightStyle:Z

    if-eqz v0, :cond_15

    .line 2407
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->changeFlashListStyle(I)V

    .line 2408
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsChangeFlashLightStyle:Z

    .line 2413
    :cond_15
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2414
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg1:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2415
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg2:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 2392
    :cond_16
    iget v0, p0, Lcom/android/camera/Camera;->mConfiguration_orientation:I

    if-ne v0, v6, :cond_1c

    .line 2393
    const/16 v0, 0x5a

    goto :goto_3

    .line 2416
    :cond_17
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 2417
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    if-eqz v0, :cond_18

    .line 2418
    invoke-direct {p0}, Lcom/android/camera/Camera;->hideExposureControlBar()V

    .line 2420
    :cond_18
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsPrePanoMode:Z

    if-eqz v0, :cond_19

    .line 2421
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2422
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg1:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2423
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg2:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2425
    :cond_19
    iget-object v0, p0, Lcom/android/camera/Camera;->mToastLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 2426
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsPrePanoMode:Z

    .line 2427
    iget v0, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    invoke-direct {p0, v0, v2}, Lcom/android/camera/Camera;->setOrientationIndicator(IZ)V

    .line 2428
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStatusCallback:Lcom/android/camera/Camera$CameraStatusCallback;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraCallBack(Lcom/android/camera/Camera$CameraStatusCallback;)V

    .line 2429
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    const v3, 0x7f0a00b4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2430
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2431
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    .line 2432
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2435
    :cond_1a
    invoke-direct {p0}, Lcom/android/camera/Camera;->resetZoomScale()V

    .line 2436
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setIsInterceptHomeKey(Z)V

    .line 2437
    invoke-direct {p0, v6}, Lcom/android/camera/Camera;->changeFlashListStyle(I)V

    .line 2438
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsChangeFlashLightStyle:Z

    :cond_1b
    move v1, v2

    goto/16 :goto_1

    :cond_1c
    move v0, v1

    goto/16 :goto_3
.end method

.method private forbitUseFlashLight()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3068
    iget-object v1, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3074
    :cond_0
    :goto_0
    return v0

    .line 3071
    :cond_1
    iget-object v1, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    const-string v2, "night-shot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3072
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private forbitUseFlashLightUI()V
    .locals 2

    .prologue
    .line 3078
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsForbitedFlashLight:Z

    .line 3079
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    const v1, 0x7f02009c

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 3080
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 3081
    return-void
.end method

.method private getCameraRotation()I
    .locals 2

    .prologue
    .line 1962
    iget v0, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    iget v1, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    .locals 2
    .parameter "preferences"

    .prologue
    .line 1975
    invoke-static {p0}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 1976
    .local v0, intentCameraId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1981
    .end local v0           #intentCameraId:I
    :goto_0
    return v0

    .restart local v0       #intentCameraId:I
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0
.end method

.method private getSystemAutoCaptureDelay()I
    .locals 1

    .prologue
    .line 4099
    const/16 v0, 0x258

    return v0
.end method

.method private hideCameraCaptureModeImg()V
    .locals 2

    .prologue
    .line 5555
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeImg:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 5556
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeImg:Lcom/android/camera/ui/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 5558
    :cond_0
    return-void
.end method

.method private hideCaptureAlert()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x32

    .line 5136
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewDoneButton:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 5137
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewDoneText:Landroid/widget/TextView;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 5138
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 5139
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 5140
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 5141
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraControl:Lcom/android/camera/ui/ControlPanelLayout;

    const v1, 0x7f080044

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ControlPanelLayout;->setBackgroundResource(I)V

    .line 5142
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportFlashLightMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5143
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 5145
    :cond_0
    iget v0, p0, Lcom/android/camera/ActivityBase;->mNumberOfCameras:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 5146
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 5148
    :cond_1
    return-void
.end method

.method private hideExposureControlBar()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 4369
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4370
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4371
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureAdd:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 4372
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureLess:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 4373
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureControlBg:Landroid/widget/ImageView;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 4374
    return-void
.end method

.method private hideMenuLayout()V
    .locals 5

    .prologue
    const/16 v4, 0xb4

    const/16 v3, 0x8

    .line 4510
    const/4 v0, 0x0

    .line 4516
    .local v0, orientation:I
    iget v0, p0, Lcom/android/camera/Camera;->mOrientation:I

    .line 4517
    if-ne v0, v4, :cond_0

    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportLedLight()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4520
    :cond_0
    div-int/lit8 v1, v0, 0x5a

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    if-ne v0, v4, :cond_2

    .line 4521
    :cond_1
    iget-object v1, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 4522
    iget-object v1, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    iget-object v2, p0, Lcom/android/camera/Camera;->mMenuDismiss:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4527
    :goto_0
    return-void

    .line 4524
    :cond_2
    iget-object v1, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 4525
    iget-object v1, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    iget-object v2, p0, Lcom/android/camera/Camera;->mMenuDismiss:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private hidePostCaptureAlert()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5151
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 5152
    invoke-direct {p0}, Lcom/android/camera/Camera;->hideCaptureAlert()V

    .line 5153
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsImageIntentClicked:Z

    .line 5154
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntentTakePic:Z

    .line 5156
    :cond_0
    return-void
.end method

.method private hidePostMeizuCaptureAlert()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5159
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 5160
    invoke-direct {p0}, Lcom/android/camera/Camera;->hideCaptureAlert()V

    .line 5161
    invoke-direct {p0}, Lcom/android/camera/Camera;->showSwitchVideoModeLayout()V

    .line 5162
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsImageIntentClicked:Z

    .line 5163
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureTakePic:Z

    .line 5165
    :cond_0
    return-void
.end method

.method private hideSwitchVideoModeLayout()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x96

    .line 4467
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoModeLayout:Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 4468
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg1:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 4469
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg2:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 4470
    return-void
.end method

.method private hideZoomSeekBar()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 4358
    invoke-direct {p0}, Lcom/android/camera/Camera;->isZoomBarVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4359
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 4360
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 4361
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomLessIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 4362
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomAddIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 4363
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBarBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4366
    :cond_0
    return-void
.end method

.method private homeKeyCaptureMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2509
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsHomePressed:Z

    if-eqz v0, :cond_0

    .line 2510
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2511
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsHomePressed:Z

    .line 2512
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsStopPanroma:Z

    .line 2513
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 2520
    :cond_0
    :goto_0
    return-void

    .line 2514
    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2515
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsHomePressed:Z

    .line 2516
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsStopMulti:Z

    .line 2517
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0
.end method

.method private initMenuBarAnimation()V
    .locals 1

    .prologue
    .line 4454
    const v0, 0x7f050004

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mMenuDismiss:Landroid/view/animation/Animation;

    .line 4455
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuDismiss:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4456
    const v0, 0x7f050005

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mMenuPopup:Landroid/view/animation/Animation;

    .line 4457
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuPopup:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4458
    return-void
.end method

.method private initializeAfterCameraOpen()V
    .locals 3

    .prologue
    .line 891
    invoke-direct {p0}, Lcom/android/camera/Camera;->setPreviewFrameLayoutAspectRatio()V

    .line 892
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v1, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v1}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v2}, Lcom/android/camera/PreviewFrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    .line 894
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeZoom()V

    .line 895
    invoke-direct {p0}, Lcom/android/camera/Camera;->showTapToFocusToastIfNeeded()V

    .line 896
    return-void
.end method

.method private initializeCapabilities()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5524
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 5525
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "auto"

    iget-object v3, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mFocusAreaSupported:Z

    .line 5528
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mMeteringAreaSupported:Z

    .line 5529
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mAeLockSupported:Z

    .line 5530
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mAwbLockSupported:Z

    .line 5531
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mContinousFocusSupported:Z

    .line 5533
    return-void

    :cond_0
    move v0, v2

    .line 5525
    goto :goto_0

    :cond_1
    move v1, v2

    .line 5528
    goto :goto_1
.end method

.method private initializeControlByIntent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3955
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3959
    const v0, 0x7f0d00d1

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mReviewDoneButton:Landroid/widget/ImageView;

    .line 3960
    const v0, 0x7f0d00d2

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mReviewDoneText:Landroid/widget/TextView;

    .line 3961
    const v0, 0x7f0d00d0

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mReviewDoneLayout:Lcom/android/camera/ui/RotateLayout;

    .line 3962
    const v0, 0x7f0d0015

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mScreenShotImg:Landroid/widget/ImageView;

    .line 3963
    iget-object v0, p0, Lcom/android/camera/Camera;->mScreenShotImg:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3964
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsContactIntent:Z

    if-nez v0, :cond_0

    .line 3965
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewDoneText:Landroid/widget/TextView;

    const v1, 0x7f0a0026

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3967
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsFlymeCaptureIntent:Z

    if-nez v0, :cond_1

    .line 3968
    invoke-direct {p0}, Lcom/android/camera/Camera;->setupCaptureParams()V

    .line 3976
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_2

    .line 3978
    const v0, 0x7f0d017b

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoModeLayout:Landroid/widget/LinearLayout;

    .line 3979
    const v0, 0x7f0d017c

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg1:Lcom/android/camera/ui/RotateImageView;

    .line 3980
    const v0, 0x7f0d017d

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg2:Lcom/android/camera/ui/RotateImageView;

    .line 3981
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3982
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg1:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 3983
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg2:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 3985
    :cond_2
    return-void

    .line 3971
    :cond_3
    const v0, 0x7f0d015a

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/MaskedRotateImageView;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    .line 3972
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/MaskedRotateImageView;->enableFilter(Z)V

    .line 3973
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/MaskedRotateImageView;->setVisibility(I)V

    .line 3974
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/MaskedRotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailViewWidth:I

    goto :goto_0
.end method

.method private initializeExposure()V
    .locals 7

    .prologue
    const-wide/16 v5, 0xc8

    const/4 v4, 0x2

    const v3, 0x7f0900ae

    const/4 v2, 0x0

    .line 1036
    const v0, 0x7f0d0082

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mExposureTextView:Landroid/widget/TextView;

    .line 1037
    const v0, 0x7f0d0080

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mExposureAdd:Lcom/android/camera/ui/RotateImageView;

    .line 1038
    const v0, 0x7f0d0083

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mExposureLess:Lcom/android/camera/ui/RotateImageView;

    .line 1039
    const v0, 0x7f0d007f

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mExposureControlLayout:Landroid/widget/LinearLayout;

    .line 1040
    const v0, 0x7f0d0081

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mExposureTextViewLayout:Lcom/android/camera/ui/RotateLayout;

    .line 1041
    const v0, 0x7f0d007e

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mExposureControlBg:Landroid/widget/ImageView;

    .line 1042
    iget v0, p0, Lcom/android/camera/Camera;->mConfiguration_orientation:I

    if-ne v0, v4, :cond_0

    .line 1043
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-static {p0, v3}, Lcom/android/camera/Util;->getDimenVaule(Landroid/content/Context;I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mExposureLeftMove:Landroid/view/animation/Animation;

    .line 1047
    :goto_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureLeftMove:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1048
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureLeftMove:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1049
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureLeftMove:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 1050
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureLeftMove:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1051
    iget v0, p0, Lcom/android/camera/Camera;->mConfiguration_orientation:I

    if-ne v0, v4, :cond_1

    .line 1052
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-static {p0, v3}, Lcom/android/camera/Util;->getDimenVaule(Landroid/content/Context;I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mExposureRightMove:Landroid/view/animation/Animation;

    .line 1056
    :goto_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureRightMove:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1057
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureRightMove:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1058
    return-void

    .line 1045
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-static {p0, v3}, Lcom/android/camera/Util;->getDimenVaule(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mExposureLeftMove:Landroid/view/animation/Animation;

    goto :goto_0

    .line 1054
    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-static {p0, v3}, Lcom/android/camera/Util;->getDimenVaule(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mExposureRightMove:Landroid/view/animation/Animation;

    goto :goto_1
.end method

.method private initializeFirstTime()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 922
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_1

    .line 956
    :cond_0
    :goto_0
    return-void

    .line 926
    :cond_1
    new-instance v0, Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-direct {v0, p0, p0}, Lcom/android/camera/Camera$MyOrientationEventListener;-><init>(Lcom/android/camera/Camera;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    .line 927
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/Camera$MyOrientationEventListener;->enable()V

    .line 930
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 932
    iget-object v1, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 934
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepMediaProviderInstance()V

    .line 935
    invoke-direct {p0}, Lcom/android/camera/Camera;->checkStorage()V

    .line 938
    const v0, 0x7f0d0013

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 939
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 940
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    new-instance v1, Lcom/android/camera/Camera$ShutterBtnLongClick;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/Camera$ShutterBtnLongClick;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 941
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v3}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 943
    new-instance v0, Lcom/android/camera/Camera$ImageSaver;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$ImageSaver;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    .line 944
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    invoke-virtual {v0, v4}, Lcom/android/camera/Camera$ImageSaver;->setPriority(I)V

    .line 945
    new-instance v0, Lcom/android/camera/Camera$ImageNamer;

    invoke-direct {v0}, Lcom/android/camera/Camera$ImageNamer;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    .line 946
    invoke-direct {p0}, Lcom/android/camera/Camera;->installIntentFilter()V

    .line 948
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    .line 949
    invoke-direct {p0}, Lcom/android/camera/Camera;->addIdleHandler()V

    .line 951
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsSystemCapture:Z

    if-eqz v0, :cond_0

    .line 952
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsSystemCapture:Z

    .line 953
    invoke-virtual {p0}, Lcom/android/camera/Camera;->autoFocus()V

    .line 954
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-direct {p0}, Lcom/android/camera/Camera;->getSystemAutoCaptureDelay()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private initializeFocusManager()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 3989
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    aget-object v0, v0, v1

    .line 3990
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v6, :cond_0

    .line 3991
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 3993
    new-instance v0, Lcom/android/camera/FocusManager;

    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/Camera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    iget-object v4, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/FocusManager;-><init>(Lcom/android/camera/ComboPreferences;[Ljava/lang/String;Landroid/view/View;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusManager$Listener;ZLandroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    .line 3996
    return-void

    .line 3990
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private initializeIndicatorFlashlight()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 2609
    const v0, 0x7f0d014f

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    .line 2610
    const v0, 0x7f0d008a

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mRotateFlashLightListLayout:Lcom/android/camera/ui/RotateLayout;

    .line 2611
    const v0, 0x7f0d014d

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    .line 2612
    const v0, 0x7f0d008b

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    .line 2613
    new-instance v0, Lcom/android/camera/Camera$FlashLightAdapter;

    const v3, 0x7f0b0030

    sget-object v4, Lcom/android/camera/CameraDeviceManager;->CAMERA_FLASH_LIGHT_ICON:[I

    sget-object v5, Lcom/android/camera/CameraDeviceManager;->CAMERA_FLASH_LIGHT_UNSEL_ICON:[I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/Camera$FlashLightAdapter;-><init>(Lcom/android/camera/Camera;Landroid/content/Context;I[I[I)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mFlashLightAdapter:Lcom/android/camera/Camera$FlashLightAdapter;

    .line 2615
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mFlashLightAdapter:Lcom/android/camera/Camera$FlashLightAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2616
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mFlashLightItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2617
    iget v0, p0, Lcom/android/camera/ActivityBase;->mNumberOfCameras:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2618
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v6}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2620
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportFlashLightMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2621
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2622
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2624
    :cond_2
    return-void
.end method

.method private initializeIndicatorMenu()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 2630
    const v0, 0x7f0d00dc

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    .line 2631
    const v0, 0x7f0d00d9

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    .line 2632
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getCameraMenuInfo()Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraMenuInfo:Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    .line 2633
    new-instance v0, Lcom/android/camera/CameraMainMenuAdapter;

    invoke-static {p0}, Lcom/android/camera/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mCameraMenuInfo:Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    iget v2, v2, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mMainMenuKeyArrayId:I

    iget-object v3, p0, Lcom/android/camera/Camera;->mCameraMenuInfo:Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    iget v3, v3, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mMainMenuDefaultValueArrayId:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/camera/CameraMainMenuAdapter;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;II)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    .line 2636
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    if-eqz v0, :cond_7

    .line 2637
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraMainMenuAdapter;->setIsMeizuMMSIntent(Z)V

    .line 2638
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_scenemode_key"

    const v3, 0x7f0a0065

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2641
    if-nez v0, :cond_3

    .line 2642
    iget-object v1, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    invoke-virtual {v1, v7}, Lcom/android/camera/CameraMainMenuAdapter;->setCurSel(I)V

    .line 2646
    :goto_0
    iget-object v1, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    const/4 v2, 0x4

    const-string v3, "3M"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraMainMenuAdapter;->setItemTip(ILjava/lang/String;)V

    move v1, v0

    .line 2648
    :goto_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/CameraMainMenuAdapter;->getSelIndex()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mSelIndex:Ljava/util/ArrayList;

    .line 2649
    const v0, 0x7f0d00dd

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mMainMenu_v:Landroid/widget/ListView;

    .line 2650
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainMenu_v:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2651
    const v0, 0x7f0d00da

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mMainMenu_h:Landroid/widget/ListView;

    .line 2652
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainMenu_h:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2653
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainMenu_v:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2654
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainMenu_h:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2655
    const v0, 0x7f0d00de

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_v:Landroid/widget/ListView;

    .line 2656
    const v0, 0x7f0d00db

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_h:Landroid/widget/ListView;

    .line 2657
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_v:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2658
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_h:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2659
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v2, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-eq v0, v2, :cond_0

    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v2, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v0, v2, :cond_2

    .line 2661
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    if-eqz v0, :cond_6

    .line 2662
    if-eqz v1, :cond_4

    .line 2663
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubIsoAdapter:Lcom/android/camera/SubMenuAdapter;

    if-nez v0, :cond_1

    .line 2664
    new-instance v0, Lcom/android/camera/SubMenuAdapter;

    const v2, 0x7f0b0033

    const v3, 0x7f0b003b

    const-string v4, "pref_camera_iso_key"

    iget-object v1, p0, Lcom/android/camera/Camera;->mSelIndex:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/SubMenuAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mSubIsoAdapter:Lcom/android/camera/SubMenuAdapter;

    .line 2667
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubIsoAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2668
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubIsoAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2669
    iput v6, p0, Lcom/android/camera/Camera;->mMainSel:I

    .line 2686
    :cond_2
    :goto_2
    return-void

    .line 2644
    :cond_3
    iget-object v1, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    invoke-virtual {v1, v6}, Lcom/android/camera/CameraMainMenuAdapter;->setCurSel(I)V

    goto/16 :goto_0

    .line 2671
    :cond_4
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    if-nez v0, :cond_5

    .line 2672
    new-instance v0, Lcom/android/camera/SubMenuAdapter;

    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraMenuInfo:Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    iget v2, v1, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mSceneMenuKeyArrayId:I

    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraMenuInfo:Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    iget v3, v1, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mSceneMenuValueArrayId:I

    const-string v4, "pref_camera_scenemode_key"

    iget-object v1, p0, Lcom/android/camera/Camera;->mSelIndex:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/SubMenuAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    .line 2675
    :cond_5
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2676
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2677
    iput v7, p0, Lcom/android/camera/Camera;->mMainSel:I

    goto :goto_2

    .line 2680
    :cond_6
    new-instance v0, Lcom/android/camera/SubMenuAdapter;

    const v2, 0x7f0b0032

    const v3, 0x7f0b003a

    const-string v4, "pref_camera_capture_mode_key"

    iget-object v1, p0, Lcom/android/camera/Camera;->mSelIndex:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/SubMenuAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mSubCaptureModeAdapter:Lcom/android/camera/SubMenuAdapter;

    .line 2682
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubCaptureModeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2683
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubCaptureModeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2

    :cond_7
    move v1, v6

    goto/16 :goto_1
.end method

.method private initializeMiscControls()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 4000
    const v0, 0x7f0d013e

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PreviewFrameLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    .line 4002
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setTapUpListener(Landroid/view/View;)V

    .line 4004
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Lcom/android/camera/PreviewFrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 4005
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Lcom/android/camera/PreviewFrameLayout;->setOnSizeChangedListener(Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;)V

    .line 4006
    const v0, 0x7f0d00d7

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GlowImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    .line 4007
    const v0, 0x7f0d00d6

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    .line 4008
    const v0, 0x7f0d00d5

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GlowImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mBackControl:Lcom/android/camera/ui/GlowImageView;

    .line 4009
    const v0, 0x7f0d00d4

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    .line 4010
    const v0, 0x7f0d00d8

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GlowImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mMenuShowIcon:Lcom/android/camera/ui/GlowImageView;

    .line 4011
    const v0, 0x7f0d00d3

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mMenuBackControl:Landroid/widget/RelativeLayout;

    .line 4013
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isFrontCamera(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4014
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/GlowImageView;->setVisibility(I)V

    .line 4015
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 4017
    :cond_1
    const v0, 0x7f0d014e

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeImg:Lcom/android/camera/ui/RotateImageView;

    .line 4018
    const v0, 0x7f0d016e

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SmileRectView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mSmileRect:Lcom/android/camera/ui/SmileRectView;

    .line 4019
    const v0, 0x7f0d017e

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mToastRotateLayout:Lcom/android/camera/ui/RotateLayout;

    .line 4020
    const v0, 0x7f0d017f

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mToastLayout:Landroid/widget/RelativeLayout;

    .line 4021
    const v0, 0x7f0d0180

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    .line 4022
    const v0, 0x7f0d00f9

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mPanoramaProgressLayout:Lcom/android/camera/ui/RotateLayout;

    .line 4023
    const v0, 0x7f0d00fa

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PanoraProgressBar;

    iput-object v0, p0, Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;

    .line 4024
    iget-object v0, p0, Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PanoraProgressBar;->setMax(I)V

    .line 4026
    invoke-direct {p0}, Lcom/android/camera/Camera;->initMenuBarAnimation()V

    .line 4027
    const v0, 0x7f0d0012

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ControlPanelLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraControl:Lcom/android/camera/ui/ControlPanelLayout;

    .line 4028
    return-void
.end method

.method private initializeSecondTime()V
    .locals 5

    .prologue
    .line 983
    iget-object v1, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v1}, Lcom/android/camera/Camera$MyOrientationEventListener;->enable()V

    .line 986
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 988
    .local v0, recordLocation:Z
    iget-object v1, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 990
    invoke-direct {p0}, Lcom/android/camera/Camera;->installIntentFilter()V

    .line 991
    new-instance v1, Lcom/android/camera/Camera$ImageSaver;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$ImageSaver;-><init>(Lcom/android/camera/Camera;)V

    iput-object v1, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    .line 992
    iget-object v1, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera$ImageSaver;->setPriority(I)V

    .line 993
    new-instance v1, Lcom/android/camera/Camera$ImageNamer;

    invoke-direct {v1}, Lcom/android/camera/Camera$ImageNamer;-><init>()V

    iput-object v1, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    .line 994
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeZoom()V

    .line 995
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepMediaProviderInstance()V

    .line 996
    invoke-direct {p0}, Lcom/android/camera/Camera;->checkStorage()V

    .line 997
    invoke-direct {p0}, Lcom/android/camera/Camera;->hidePostCaptureAlert()V

    .line 999
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsSystemCapture:Z

    if-eqz v1, :cond_0

    .line 1000
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsSystemCapture:Z

    .line 1001
    invoke-virtual {p0}, Lcom/android/camera/Camera;->autoFocus()V

    .line 1002
    iget-object v1, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x15

    invoke-direct {p0}, Lcom/android/camera/Camera;->getSystemAutoCaptureDelay()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1004
    :cond_0
    return-void
.end method

.method private initializeZoom()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1061
    const v0, 0x7f0d018f

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    .line 1062
    const v0, 0x7f0d018c

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mZoomLessIcon:Lcom/android/camera/ui/RotateImageView;

    .line 1063
    const v0, 0x7f0d018d

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mZoomAddIcon:Lcom/android/camera/ui/RotateImageView;

    .line 1064
    const v0, 0x7f0d018b

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBarBg:Landroid/widget/RelativeLayout;

    .line 1065
    const v0, 0x7f0d018e

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBarLayout:Lcom/android/camera/ui/RotateLayout;

    .line 1067
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 1088
    :cond_0
    :goto_0
    return-void

    .line 1070
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1071
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mZoomMax:I

    .line 1076
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mZoomValue:I

    .line 1079
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/camera/Camera;->mZoomMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1080
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/camera/Camera;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1081
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/android/camera/Camera$ZoomSeekBarListener;

    invoke-direct {v1, p0, v3}, Lcom/android/camera/Camera$ZoomSeekBarListener;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1082
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/android/camera/Camera$ZoomScaleGestureLis;

    invoke-direct {v1, p0, v3}, Lcom/android/camera/Camera$ZoomScaleGestureLis;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    invoke-direct {v0, p0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mZoomScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 1083
    iget v0, p0, Lcom/android/camera/Camera;->mConfiguration_orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1084
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBarLayout:Lcom/android/camera/ui/RotateLayout;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    goto :goto_0

    .line 1086
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBarLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v2, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    goto :goto_0
.end method

.method private installIntentFilter()V
    .locals 2

    .prologue
    .line 3670
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3672
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3673
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3674
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3675
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3676
    iget-object v1, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3678
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3679
    const-string v1, "android.intent.action.MEIZU_HDMI_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3680
    iget-object v1, p0, Lcom/android/camera/Camera;->mSysReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3681
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    .line 3682
    return-void
.end method

.method private isBackKeyIdle()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 5053
    iget v1, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCameraIdle()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 5047
    iget v1, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->isFocusCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCaptrueModeNormal(Z)Z
    .locals 4
    .parameter

    .prologue
    .line 2810
    if-nez p1, :cond_1

    .line 2811
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2813
    :goto_0
    return v0

    .line 2811
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2813
    :cond_1
    const-string v0, "capture-normal"

    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_capture_mode_key"

    const v3, 0x7f0a0067

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private isImageCaptureIntent()Z
    .locals 4

    .prologue
    .line 5058
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5059
    const-string v1, "GetIcon"

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Contact"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsContactIntent:Z

    .line 5060
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsNotePaperIntent:Z

    .line 5062
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsNotePaperIntent:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLandscape()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2819
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->isCaptrueModeNormal(Z)Z

    move-result v1

    const-string v2, "landscape"

    iget-object v3, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    and-int/2addr v1, v2

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    invoke-static {v2, v0}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    and-int/2addr v0, v1

    return v0
.end method

.method private isLauncherIntent()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 5076
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 5077
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "isCheckLowBattery"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 5078
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLockViewNeedAddFlag()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 5082
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "LockView"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsLockView:Z

    .line 5083
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "isSecurity"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 5084
    iget-boolean v3, p0, Lcom/android/camera/Camera;->mIsLockView:Z

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsLockViewIntent:Z

    .line 5085
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsLockView:Z

    if-eqz v0, :cond_1

    .line 5086
    const-string v0, "access_control"

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/AccessControlManager;

    .line 5087
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/AccessControlManager;->checkAccessControl(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsSecurityAppLock:Z

    .line 5088
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->setIsInterceptHomeKey(Z)V

    .line 5091
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsSecurityAppLock:Z

    if-eqz v0, :cond_2

    .line 5092
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MaskedRotateImageView;->setVisibility(I)V

    .line 5094
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsLockViewIntent:Z

    return v0
.end method

.method private isMeizuCaptureIntent()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 5066
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 5067
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "isFlymeMms"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsFlymeCaptureIntent:Z

    .line 5069
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsFlymeCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 5070
    invoke-static {v1}, Lcom/android/camera/Storage;->checkFlymeMmsPathAvailable(Z)V

    .line 5072
    :cond_0
    const-string v0, "android.media.action.MEIZU_CAMERA_APP_MMS_EX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 5067
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMeizuSystemCaptureIntent()Z
    .locals 3

    .prologue
    .line 5098
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "start_camera_by_combokey"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isSetOtherParamDefault()Z
    .locals 1

    .prologue
    .line 4776
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4777
    const/4 v0, 0x1

    .line 4779
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    .line 4772
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

.method private isZoomBarVisible()Z
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 883
    const/4 v0, 0x1

    .line 885
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keepMediaProviderInstance()V
    .locals 2

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 916
    :cond_0
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 5472
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5473
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5474
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5475
    return-void
.end method

.method private prepareCaptureModeUI()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x32

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2474
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2475
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 2476
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 2477
    iput v3, p0, Lcom/android/camera/Camera;->mSmileFaceTime:I

    .line 2478
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2479
    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 2503
    :cond_0
    :goto_0
    return-void

    .line 2480
    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2481
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 2482
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 2483
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2484
    iput v2, p0, Lcom/android/camera/Camera;->mPanoramaVaule:I

    .line 2485
    iget-object v0, p0, Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PanoraProgressBar;->setProgress(I)V

    .line 2486
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsStopPanroma:Z

    .line 2487
    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    goto :goto_0

    .line 2488
    :cond_2
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 2489
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsStopMulti:Z

    .line 2490
    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    goto :goto_0

    .line 2491
    :cond_3
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 2492
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->setIsInterceptHomeKey(Z)V

    .line 2493
    invoke-static {}, Lcom/android/camera/Util;->getIsCheckBattery()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/camera/Camera;->isMeizuSystemCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/android/camera/Util;->getIsBatteryLow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2494
    const v0, 0x7f0a00b6

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2496
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsLockViewIntent:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsSecurityAppLock:Z

    if-eqz v0, :cond_0

    .line 2497
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    goto :goto_0
.end method

.method private registerProximitySensorListener()V
    .locals 4

    .prologue
    .line 823
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsProximityResisterSuccess:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsProximityEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->isCaptrueModeNormal(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/Camera;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/camera/Camera;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsProximityResisterSuccess:Z

    .line 827
    :cond_0
    return-void
.end method

.method private releaseLightScreen()V
    .locals 1

    .prologue
    .line 1998
    iget-object v0, p0, Lcom/android/camera/Camera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 1999
    iget-object v0, p0, Lcom/android/camera/Camera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2000
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2002
    :cond_0
    return-void
.end method

.method private resetCaptureMode(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2224
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isFrontCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2225
    invoke-static {p0}, Lcom/android/camera/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_capture_mode_key"

    const-string v2, "capture-normal"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2227
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-eqz v0, :cond_4

    .line 2229
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->checkViewGone(Landroid/view/View;)Z

    .line 2230
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/camera/Util;->checkViewGone(Landroid/view/View;)Z

    .line 2231
    iget-object v0, p0, Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;

    invoke-static {v0}, Lcom/android/camera/Util;->checkViewGone(Landroid/view/View;)Z

    .line 2233
    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    invoke-virtual {v0}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    .line 2234
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsRedisplayCaptureTip:Z

    .line 2236
    if-eqz p1, :cond_1

    .line 2237
    invoke-static {p0}, Lcom/android/camera/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_capture_mode_key"

    const-string v2, "capture-normal"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2238
    iget-object v1, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    iget-object v0, p0, Lcom/android/camera/Camera;->mSubCaptureModeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v3}, Lcom/android/camera/SubMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/android/camera/CameraMainMenuAdapter;->setMXTipsStr(ILjava/lang/String;)V

    .line 2239
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubCaptureModeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v3}, Lcom/android/camera/SubMenuAdapter;->setCurSel(I)V

    .line 2240
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/CameraMainMenuAdapter;->notifyDataSetInvalidated()V

    .line 2241
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubCaptureModeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/SubMenuAdapter;->notifyDataSetInvalidated()V

    .line 2243
    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 2244
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 2245
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2246
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg1:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2247
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg2:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2248
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->setIsInterceptHomeKey(Z)V

    .line 2252
    :cond_2
    :goto_0
    invoke-static {v3}, Lcom/android/camera/Util;->setCurCaptureMode(I)V

    .line 2253
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_3

    .line 2254
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setCaptureMode(I)V

    .line 2255
    iput v3, p0, Lcom/android/camera/Camera;->mLastCaptureMode:I

    .line 2257
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    .line 2259
    :cond_4
    return-void

    .line 2249
    :cond_5
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 2250
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->setIsInterceptHomeKey(Z)V

    goto :goto_0
.end method

.method private resetLedLight()V
    .locals 1

    .prologue
    .line 2197
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportLedLight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2205
    :cond_0
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 5467
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5468
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 5469
    return-void
.end method

.method private resetZoomScale()V
    .locals 2

    .prologue
    .line 2211
    iget v0, p0, Lcom/android/camera/Camera;->mZoomValue:I

    if-eqz v0, :cond_1

    .line 2212
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 2213
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->startSmoothZoom(I)V

    .line 2215
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsResetZoomScale:Z

    .line 2217
    :cond_1
    return-void
.end method

.method private restorePreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5495
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5496
    iput v1, p0, Lcom/android/camera/Camera;->mZoomValue:I

    .line 5497
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V

    .line 5498
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 5500
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {p0, v0, v1}, Lcom/android/camera/CameraSettings;->restorePreferences(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;)V

    .line 5502
    invoke-virtual {p0}, Lcom/android/camera/Camera;->onSharedPreferenceChanged()V

    .line 5503
    return-void
.end method

.method private setCameraCallBack(Lcom/android/camera/Camera$CameraStatusCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 4641
    if-eqz p1, :cond_1

    .line 4642
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsSetCameraStatusCallback:Z

    .line 4646
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 4647
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setCameraCallBack(Landroid/hardware/Camera$CameraStatusCallback;)V

    .line 4649
    :cond_0
    return-void

    .line 4644
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsSetCameraStatusCallback:Z

    goto :goto_0
.end method

.method private setCameraCaptureModeImg(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 5545
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeImg:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 5546
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 5547
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeImg:Lcom/android/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 5549
    :cond_0
    return-void
.end method

.method private setCameraMode()V
    .locals 2

    .prologue
    .line 5561
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 5562
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5563
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setCameraMode(I)V

    .line 5568
    :cond_0
    :goto_0
    return-void

    .line 5565
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setCameraMode(I)V

    goto :goto_0
.end method

.method private setCameraParameters(I)V
    .locals 2
    .parameter "updateSet"

    .prologue
    .line 5011
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 5012
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateCameraParametersInitialize()V

    .line 5015
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 5016
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateCameraParametersZoom()V

    .line 5019
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 5020
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateCameraParametersPreference()V

    .line 5023
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 5024
    return-void
.end method

.method private setCameraParametersWhenIdle(I)V
    .locals 4
    .parameter "additionalUpdateSet"

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 5029
    iget v0, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    .line 5030
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 5033
    iput v1, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    .line 5044
    :cond_0
    :goto_0
    return-void

    .line 5035
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5036
    iget v0, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    .line 5037
    iput v1, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    goto :goto_0

    .line 5039
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5040
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setCameraState(I)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1883
    iput p1, p0, Lcom/android/camera/Camera;->mCameraState:I

    .line 1884
    packed-switch p1, :pswitch_data_0

    .line 1899
    :cond_0
    :goto_0
    return-void

    .line 1887
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setClickable(Z)V

    goto :goto_0

    .line 1891
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->enableCameraControls(Z)V

    .line 1892
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsEnableControl:Z

    goto :goto_0

    .line 1895
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->enableCameraControls(Z)V

    .line 1896
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsEnableControl:Z

    goto :goto_0

    .line 1884
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 4634
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    .line 4635
    iget v0, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    .line 4636
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    .line 4637
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v1, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->setDisplayOrientation(I)V

    .line 4638
    return-void
.end method

.method private setIsInterceptHomeKey(Z)V
    .locals 3
    .parameter "isInterceptHomeKey"

    .prologue
    .line 2162
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsSetWinAttributes:Z

    if-eq v2, p1, :cond_0

    .line 2164
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2165
    .local v1, win:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2166
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    iput-boolean p1, v0, Landroid/view/WindowManager$LayoutParams;->isInterceptHomeKey:Z

    .line 2167
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2168
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsSetWinAttributes:Z

    .line 2170
    .end local v0           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #win:Landroid/view/Window;
    :cond_0
    return-void
.end method

.method private setLedEnable(IZ)V
    .locals 1
    .parameter "ledType"
    .parameter "enable"

    .prologue
    .line 3022
    if-nez p1, :cond_1

    .line 3023
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/GlowImageView;->setEnabled(Z)V

    .line 3024
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 3034
    :cond_0
    :goto_0
    return-void

    .line 3025
    :cond_1
    const/4 v0, 0x1

    if-ne v0, p1, :cond_2

    .line 3026
    iget-object v0, p0, Lcom/android/camera/Camera;->mBackControl:Lcom/android/camera/ui/GlowImageView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/GlowImageView;->setEnabled(Z)V

    .line 3027
    iget-object v0, p0, Lcom/android/camera/Camera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    goto :goto_0

    .line 3028
    :cond_2
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 3029
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/GlowImageView;->setEnabled(Z)V

    .line 3030
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 3031
    iget-object v0, p0, Lcom/android/camera/Camera;->mBackControl:Lcom/android/camera/ui/GlowImageView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/GlowImageView;->setEnabled(Z)V

    .line 3032
    iget-object v0, p0, Lcom/android/camera/Camera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setOrientationIndicator(IZ)V
    .locals 10
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 2824
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportLedLight()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2838
    :cond_0
    const/16 v1, 0xb4

    .line 2839
    .local v1, forbidDegree:I
    iget v6, p0, Lcom/android/camera/Camera;->mConfiguration_orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 2840
    const/16 v1, 0xb4

    .line 2844
    :cond_1
    :goto_0
    if-ne p1, v1, :cond_4

    .line 2845
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/camera/Camera;->mIsPreForbidDegree:Z

    .line 2895
    :cond_2
    :goto_1
    return-void

    .line 2841
    :cond_3
    iget v6, p0, Lcom/android/camera/Camera;->mConfiguration_orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 2842
    const/16 v1, 0x10e

    goto :goto_0

    .line 2848
    :cond_4
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/camera/Camera;->mIsPreForbidDegree:Z

    .line 2850
    iget-boolean v6, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/camera/Camera;->mExposureControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_6

    .line 2851
    const/16 v6, 0x10e

    if-eq p1, v6, :cond_5

    const/16 v6, 0x5a

    if-ne p1, v6, :cond_8

    .line 2852
    :cond_5
    iget-object v6, p0, Lcom/android/camera/Camera;->mExposureControlLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/camera/Camera;->mExposureLeftMove:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2859
    :cond_6
    :goto_2
    const/16 v6, 0x16

    new-array v4, v6, [Lcom/android/camera/ui/Rotatable;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    aput-object v7, v4, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    aput-object v7, v4, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/camera/Camera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    aput-object v7, v4, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg1:Lcom/android/camera/ui/RotateImageView;

    aput-object v7, v4, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg2:Lcom/android/camera/ui/RotateImageView;

    aput-object v7, v4, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/android/camera/Camera;->mReviewDoneLayout:Lcom/android/camera/ui/RotateLayout;

    aput-object v7, v4, v6

    const/4 v6, 0x6

    iget-object v7, p0, Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    aput-object v7, v4, v6

    const/4 v6, 0x7

    iget-object v7, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    aput-object v7, v4, v6

    const/16 v6, 0x8

    iget-object v7, p0, Lcom/android/camera/Camera;->mRotateFlashLightListLayout:Lcom/android/camera/ui/RotateLayout;

    aput-object v7, v4, v6

    const/16 v6, 0x9

    iget-object v7, p0, Lcom/android/camera/Camera;->mZoomLessIcon:Lcom/android/camera/ui/RotateImageView;

    aput-object v7, v4, v6

    const/16 v6, 0xa

    iget-object v7, p0, Lcom/android/camera/Camera;->mZoomAddIcon:Lcom/android/camera/ui/RotateImageView;

    aput-object v7, v4, v6

    const/16 v6, 0xb

    iget-object v7, p0, Lcom/android/camera/Camera;->mCaptureModeImg:Lcom/android/camera/ui/RotateImageView;

    aput-object v7, v4, v6

    const/16 v6, 0xc

    iget-object v7, p0, Lcom/android/camera/Camera;->mToastRotateLayout:Lcom/android/camera/ui/RotateLayout;

    aput-object v7, v4, v6

    const/16 v6, 0xd

    iget-object v7, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    aput-object v7, v4, v6

    const/16 v6, 0xe

    iget-object v7, p0, Lcom/android/camera/Camera;->mPanoramaProgressLayout:Lcom/android/camera/ui/RotateLayout;

    aput-object v7, v4, v6

    const/16 v6, 0xf

    iget-object v7, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    aput-object v7, v4, v6

    const/16 v6, 0x10

    iget-object v7, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    aput-object v7, v4, v6

    const/16 v6, 0x11

    iget-object v7, p0, Lcom/android/camera/Camera;->mExposureLess:Lcom/android/camera/ui/RotateImageView;

    aput-object v7, v4, v6

    const/16 v6, 0x12

    iget-object v7, p0, Lcom/android/camera/Camera;->mExposureAdd:Lcom/android/camera/ui/RotateImageView;

    aput-object v7, v4, v6

    const/16 v6, 0x13

    iget-object v7, p0, Lcom/android/camera/Camera;->mExposureTextViewLayout:Lcom/android/camera/ui/RotateLayout;

    aput-object v7, v4, v6

    const/16 v6, 0x14

    iget-object v7, p0, Lcom/android/camera/Camera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    aput-object v7, v4, v6

    const/16 v6, 0x15

    iget-object v7, p0, Lcom/android/camera/Camera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    aput-object v7, v4, v6

    .line 2865
    .local v4, indicators:[Lcom/android/camera/ui/Rotatable;
    move-object v0, v4

    .local v0, arr$:[Lcom/android/camera/ui/Rotatable;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v5, :cond_9

    aget-object v3, v0, v2

    .line 2866
    .local v3, indicator:Lcom/android/camera/ui/Rotatable;
    if-eqz v3, :cond_7

    invoke-interface {v3, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 2865
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2854
    .end local v0           #arr$:[Lcom/android/camera/ui/Rotatable;
    .end local v2           #i$:I
    .end local v3           #indicator:Lcom/android/camera/ui/Rotatable;
    .end local v4           #indicators:[Lcom/android/camera/ui/Rotatable;
    .end local v5           #len$:I
    :cond_8
    iget-boolean v6, p0, Lcom/android/camera/Camera;->mIsExposureLeftAni:Z

    if-eqz v6, :cond_6

    .line 2855
    iget-object v6, p0, Lcom/android/camera/Camera;->mExposureControlLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/camera/Camera;->mExposureRightMove:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_2

    .line 2869
    .restart local v0       #arr$:[Lcom/android/camera/ui/Rotatable;
    .restart local v2       #i$:I
    .restart local v4       #indicators:[Lcom/android/camera/ui/Rotatable;
    .restart local v5       #len$:I
    :cond_9
    iget-boolean v6, p0, Lcom/android/camera/Camera;->mIsMenuShowed:Z

    if-eqz v6, :cond_2

    .line 2870
    iget-boolean v6, p0, Lcom/android/camera/Camera;->mIsPreForbidDegree:Z

    if-eqz v6, :cond_a

    .line 2871
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/camera/Camera;->mIsPreForbidDegree:Z

    goto/16 :goto_1

    .line 2873
    :cond_a
    iget-object v6, p0, Lcom/android/camera/Camera;->mCameraControl:Lcom/android/camera/ui/ControlPanelLayout;

    invoke-static {v6}, Lcom/android/camera/Util;->checkViewGone(Landroid/view/View;)Z

    .line 2874
    iget-object v6, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/camera/Camera$14;

    invoke-direct {v7, p0}, Lcom/android/camera/Camera$14;-><init>(Lcom/android/camera/Camera;)V

    const-wide/16 v8, 0x96

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2880
    iget v6, p0, Lcom/android/camera/Camera;->mOrientation:I

    div-int/lit8 v6, v6, 0x5a

    and-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b

    .line 2881
    iget-object v6, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v6}, Lcom/android/camera/ui/RotateLayout;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_2

    .line 2883
    iget-object v6, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    const-wide/16 v7, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 2884
    iget-object v6, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    const-wide/16 v7, 0x96

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    goto/16 :goto_1

    .line 2887
    :cond_b
    iget-object v6, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v6}, Lcom/android/camera/ui/RotateLayout;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_2

    .line 2889
    iget-object v6, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    const-wide/16 v7, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 2890
    iget-object v6, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    const-wide/16 v7, 0x96

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    goto/16 :goto_1
.end method

.method private setOtherParamDefault()V
    .locals 3

    .prologue
    .line 2456
    iget-object v0, p0, Lcom/android/camera/Camera;->mISO:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mISO:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2457
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "iso-auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setIsoMode(Ljava/lang/String;)V

    .line 2459
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mWhiteBalance:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2460
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 2462
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mWhiteBalance:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera;->mWhiteBalance:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2463
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 2465
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_3

    .line 2466
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2468
    :cond_3
    return-void
.end method

.method private setPanoramaModeUIDirection(I)V
    .locals 5
    .parameter "direction"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5571
    iget v0, p0, Lcom/android/camera/Camera;->mOrientation:I

    div-int/lit8 v0, v0, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 5572
    packed-switch p1, :pswitch_data_0

    .line 5610
    :goto_0
    return-void

    .line 5574
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PanoraProgressBar;->setDirection(I)V

    goto :goto_0

    .line 5578
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PanoraProgressBar;->setDirection(I)V

    goto :goto_0

    .line 5582
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/PanoraProgressBar;->setDirection(I)V

    goto :goto_0

    .line 5586
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/PanoraProgressBar;->setDirection(I)V

    goto :goto_0

    .line 5591
    :cond_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 5593
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/PanoraProgressBar;->setDirection(I)V

    goto :goto_0

    .line 5597
    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/PanoraProgressBar;->setDirection(I)V

    goto :goto_0

    .line 5601
    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PanoraProgressBar;->setDirection(I)V

    goto :goto_0

    .line 5605
    :pswitch_7
    iget-object v0, p0, Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PanoraProgressBar;->setDirection(I)V

    goto :goto_0

    .line 5572
    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 5591
    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private setPreviewFrameLayoutAspectRatio()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 5614
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v3

    sget v4, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v3, v4, :cond_2

    .line 5615
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5616
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v3}, Lcom/android/camera/Util;->isFrontCamera(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5617
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 5618
    iget-object v3, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v3, v0}, Lcom/android/camera/PreviewFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5619
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 5620
    .local v2, size:Landroid/hardware/Camera$Size;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 5621
    .local v1, p:Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 5622
    iget-object v3, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/PreviewFrameLayout;->setScreenSize(II)V

    .line 5623
    iget-object v3, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    int-to-double v4, v4

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 5624
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 5625
    invoke-virtual {p0}, Lcom/android/camera/Camera;->notifyScreenNailChanged()V

    .line 5639
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #p:Landroid/graphics/Point;
    .end local v2           #size:Landroid/hardware/Camera$Size;
    :cond_0
    :goto_0
    return-void

    .line 5627
    .restart local v0       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget-object v3, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v3, v0}, Lcom/android/camera/PreviewFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5628
    iget-object v3, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v3, v6, v6}, Lcom/android/camera/PreviewFrameLayout;->setScreenSize(II)V

    .line 5629
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 5630
    .restart local v2       #size:Landroid/hardware/Camera$Size;
    iget-object v3, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    int-to-double v4, v4

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 5631
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 5632
    invoke-virtual {p0}, Lcom/android/camera/Camera;->notifyScreenNailChanged()V

    goto :goto_0

    .line 5634
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #size:Landroid/hardware/Camera$Size;
    :cond_2
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v3

    sget v4, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-ne v3, v4, :cond_0

    .line 5636
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 5637
    .restart local v2       #size:Landroid/hardware/Camera$Size;
    iget-object v3, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    int-to-double v4, v4

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    goto :goto_0
.end method

.method private setupCaptureParams()V
    .locals 2

    .prologue
    .line 5102
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 5103
    if-eqz v1, :cond_0

    .line 5104
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 5105
    const-string v0, "crop"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mCropValue:Ljava/lang/String;

    .line 5107
    :cond_0
    return-void
.end method

.method private showCaptureAlert()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 5110
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 5111
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 5112
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 5113
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewDoneButton:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 5114
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewDoneText:Landroid/widget/TextView;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 5115
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraControl:Lcom/android/camera/ui/ControlPanelLayout;

    const v1, 0x7f0201b1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ControlPanelLayout;->setBackgroundResource(I)V

    .line 5116
    iget-object v0, p0, Lcom/android/camera/Camera;->mBackControl:Lcom/android/camera/ui/GlowImageView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/GlowImageView;->setEnabled(Z)V

    .line 5117
    iget-object v0, p0, Lcom/android/camera/Camera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 5118
    return-void
.end method

.method private showExposureControlBar()V
    .locals 4

    .prologue
    const-wide/16 v2, 0xc8

    .line 4377
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureControlLayout:Landroid/widget/LinearLayout;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 4378
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureAdd:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 4379
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureLess:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 4380
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureControlBg:Landroid/widget/ImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 4381
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/Camera$18;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$18;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4388
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/camera/Camera;->mExposureValue:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4389
    return-void
.end method

.method private showMenuLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4490
    iget-object v1, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/android/camera/Util;->checkViewGone(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4491
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsRedisplayCaptureTip:Z

    .line 4493
    :cond_0
    const/4 v0, 0x0

    .line 4499
    .local v0, orientation:I
    iget v0, p0, Lcom/android/camera/Camera;->mOrientation:I

    .line 4500
    div-int/lit8 v1, v0, 0x5a

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_1

    .line 4501
    iget-object v1, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 4502
    iget-object v1, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    iget-object v2, p0, Lcom/android/camera/Camera;->mMenuPopup:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4507
    :goto_0
    return-void

    .line 4504
    :cond_1
    iget-object v1, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 4505
    iget-object v1, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    iget-object v2, p0, Lcom/android/camera/Camera;->mMenuPopup:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private showPostCaptureAlert()V
    .locals 1

    .prologue
    .line 5121
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 5122
    invoke-direct {p0}, Lcom/android/camera/Camera;->showCaptureAlert()V

    .line 5123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntentTakePic:Z

    .line 5125
    :cond_0
    return-void
.end method

.method private showPostMeizuCaptureAlert()V
    .locals 1

    .prologue
    .line 5128
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 5129
    invoke-direct {p0}, Lcom/android/camera/Camera;->hideSwitchVideoModeLayout()V

    .line 5130
    invoke-direct {p0}, Lcom/android/camera/Camera;->showCaptureAlert()V

    .line 5131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureTakePic:Z

    .line 5133
    :cond_0
    return-void
.end method

.method private showSwitchVideoModeLayout()V
    .locals 3

    .prologue
    const-wide/16 v1, 0xc8

    .line 4461
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoModeLayout:Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 4462
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg1:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 4463
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg2:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 4464
    return-void
.end method

.method private showTapToFocusToast()V
    .locals 3

    .prologue
    .line 5516
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    const v1, 0x7f0a0088

    iget v2, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 5518
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5519
    const-string v1, "pref_camera_first_use_hint_shown_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5520
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5521
    return-void
.end method

.method private showTapToFocusToastIfNeeded()V
    .locals 4

    .prologue
    .line 960
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_first_use_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 965
    :cond_0
    return-void
.end method

.method private startPreview()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4652
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_0

    .line 4653
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 4656
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/Camera;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 4657
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-ne v0, v1, :cond_d

    .line 4659
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsSetCameraStatusCallback:Z

    if-nez v0, :cond_2

    .line 4660
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStatusCallback:Lcom/android/camera/Camera$CameraStatusCallback;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraCallBack(Lcom/android/camera/Camera$CameraStatusCallback;)V

    .line 4669
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    iget-boolean v3, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-static {v0, v3}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsCapture:Z

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_f

    :cond_3
    move v0, v2

    .line 4677
    :goto_1
    iget v3, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 4679
    :cond_4
    if-eqz v0, :cond_5

    .line 4680
    invoke-direct {p0}, Lcom/android/camera/Camera;->setDisplayOrientation()V

    .line 4682
    :cond_5
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v4, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 4684
    iget-boolean v3, p0, Lcom/android/camera/Camera;->mSnapshotOnIdle:Z

    if-nez v3, :cond_7

    .line 4687
    const-string v3, "continuous-picture"

    iget-object v4, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v4}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4688
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 4690
    :cond_6
    iget-object v3, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v3, v2}, Lcom/android/camera/FocusManager;->setAeAwbLock(Z)V

    .line 4693
    :cond_7
    iget-object v3, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v3, :cond_8

    .line 4694
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 4695
    iget v4, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    rem-int/lit16 v4, v4, 0xb4

    if-nez v4, :cond_e

    .line 4696
    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5, v3}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 4700
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/Camera;->notifyScreenNailChanged()V

    .line 4701
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 4702
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 4705
    :cond_8
    if-eqz v0, :cond_9

    .line 4706
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 4707
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 4710
    :cond_9
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsCapture:Z

    .line 4715
    iget-object v3, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1c

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4717
    iget-object v3, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v3}, Lcom/android/camera/FocusManager;->onPreviewStarted()V

    .line 4719
    iget-boolean v3, p0, Lcom/android/camera/Camera;->mSnapshotOnIdle:Z

    if-eqz v3, :cond_a

    .line 4720
    iget-object v3, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/Camera;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4722
    :cond_a
    iget-boolean v3, p0, Lcom/android/camera/Camera;->mIsSystemCapture:Z

    if-nez v3, :cond_b

    .line 4723
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsCameraEVSupport()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4724
    invoke-static {}, Lcom/android/camera/Util;->getIsBeforeGotoVideo()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4725
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsCanTouchFocus:Z

    .line 4732
    iget-object v3, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/camera/Camera$19;

    invoke-direct {v4, p0}, Lcom/android/camera/Camera$19;-><init>(Lcom/android/camera/Camera;)V

    const-wide/16 v5, 0x514

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4738
    invoke-static {v2}, Lcom/android/camera/Util;->setIsBeforeGotoVideo(Z)V

    .line 4744
    :cond_b
    if-eqz v0, :cond_c

    .line 4745
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    .line 4747
    :cond_c
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsCanProximityTakePicture:Z

    .line 4748
    return-void

    .line 4663
    :cond_d
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsSetCameraStatusCallback:Z

    if-eqz v0, :cond_2

    .line 4664
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraCallBack(Lcom/android/camera/Camera$CameraStatusCallback;)V

    goto/16 :goto_0

    .line 4698
    :cond_e
    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    iget v3, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5, v3}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    goto :goto_2

    :cond_f
    move v0, v1

    goto/16 :goto_1
.end method

.method private stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4751
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsCameraEVSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4752
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_0

    .line 4753
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->disableGetEV()V

    .line 4757
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v0, :cond_2

    .line 4758
    const-string v0, "camera"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4759
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4760
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 4762
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 4764
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 4765
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_3

    .line 4766
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onPreviewStopped()V

    .line 4768
    :cond_3
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsCanProximityTakePicture:Z

    .line 4769
    return-void
.end method

.method private switchCamera()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5248
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_1

    .line 5313
    :cond_0
    :goto_0
    return-void

    .line 5250
    :cond_1
    const-string v0, "camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start to switch camera. id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5251
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->setPreCameraId(I)V

    .line 5252
    iget v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    iput v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    .line 5253
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    .line 5256
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCamera()V

    .line 5257
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 5258
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->setIsDropFullScreenChanged(Z)V

    .line 5259
    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 5262
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget v3, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-virtual {v0, p0, v3}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 5263
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget v3, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0, v3}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 5264
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 5265
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_capture_mode_key"

    const v4, 0x7f0a0067

    invoke-virtual {p0, v4}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->changeCaptureModeToIndex(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/Util;->setCurCaptureMode(I)V

    .line 5268
    new-instance v0, Lcom/android/camera/ActivityBase$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$CameraOpenThread;-><init>(Lcom/android/camera/ActivityBase;)V

    .line 5269
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$CameraOpenThread;->start()V

    .line 5271
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$CameraOpenThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5275
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->setCameraMode()V

    .line 5276
    iget v0, p0, Lcom/android/camera/Camera;->mLastCaptureMode:I

    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v3

    if-eq v0, v3, :cond_3

    .line 5277
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mLastCaptureMode:I

    .line 5278
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setCaptureMode(I)V

    .line 5280
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeCapabilities()V

    .line 5281
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v3, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    aget-object v0, v0, v3

    .line 5282
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v1, :cond_5

    move v0, v1

    .line 5283
    :goto_2
    iget-object v3, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v3, v0}, Lcom/android/camera/FocusManager;->setMirror(Z)V

    .line 5284
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v3, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Lcom/android/camera/FocusManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 5285
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    .line 5286
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 5289
    invoke-direct {p0}, Lcom/android/camera/Camera;->setPreviewFrameLayoutAspectRatio()V

    .line 5291
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeZoom()V

    .line 5292
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeExposure()V

    .line 5293
    invoke-direct {p0}, Lcom/android/camera/Camera;->showTapToFocusToastIfNeeded()V

    .line 5297
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5300
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5301
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->isCaptrueModeNormal(Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 5302
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->firstPrepareCaptureModeUI(Z)V

    .line 5309
    :cond_4
    :goto_3
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 5311
    iget v0, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    invoke-direct {p0, v0, v2}, Lcom/android/camera/Camera;->setOrientationIndicator(IZ)V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 5282
    goto :goto_2

    .line 5304
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_4

    .line 5305
    invoke-direct {p0}, Lcom/android/camera/Camera;->showExposureControlBar()V

    goto :goto_3

    .line 5272
    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method private switchToOtherMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 5168
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5174
    :goto_0
    return-void

    .line 5169
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageSaver;->waitDone()V

    .line 5170
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-static {v0}, Lcom/android/camera/ThumbnailHolder;->keep(Lcom/android/camera/Thumbnail;)V

    .line 5171
    :cond_2
    invoke-static {p1, p0}, Lcom/android/camera/MenuHelper;->gotoMode(ILandroid/app/Activity;)V

    .line 5172
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5173
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0
.end method

.method private switchToOtherMode(IZZZ)V
    .locals 2
    .parameter "mode"
    .parameter "isKeepIntent"
    .parameter "isSystemCaptrue"
    .parameter "isLockView"

    .prologue
    .line 5182
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5195
    :goto_0
    return-void

    .line 5183
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageSaver;->waitDone()V

    .line 5184
    :cond_1
    if-eqz p2, :cond_2

    .line 5185
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/android/camera/MenuHelper;->gotoModeForMeizu(ILandroid/app/Activity;Landroid/content/Intent;)V

    .line 5193
    :goto_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5194
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0

    .line 5186
    :cond_2
    if-eqz p3, :cond_3

    .line 5187
    invoke-static {p1, p0}, Lcom/android/camera/MenuHelper;->gotoModeWithFlag(ILandroid/app/Activity;)V

    goto :goto_1

    .line 5188
    :cond_3
    if-eqz p4, :cond_4

    .line 5189
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/android/camera/MenuHelper;->gotoModeAddFlag(ILandroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_1

    .line 5191
    :cond_4
    invoke-static {p1, p0}, Lcom/android/camera/MenuHelper;->gotoMode(ILandroid/app/Activity;)V

    goto :goto_1
.end method

.method private timeToCloseCamera()V
    .locals 4

    .prologue
    const/16 v3, 0x12

    .line 849
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 850
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 851
    return-void
.end method

.method private timeToHideFlashLightList()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    .line 844
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 845
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 846
    return-void
.end method

.method private timeToHideZoomBar()V
    .locals 4

    .prologue
    const/16 v3, 0xf

    .line 839
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 840
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1770

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 841
    return-void
.end method

.method private unregisterProximitySensorListener()V
    .locals 2

    .prologue
    .line 832
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsProximityResisterSuccess:Z

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/Camera;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 834
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsProximityResisterSuccess:Z

    .line 836
    :cond_0
    return-void
.end method

.method private updateCameraParametersInitialize()V
    .locals 3

    .prologue
    .line 4786
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 4787
    if-eqz v0, :cond_0

    .line 4788
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4789
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 4792
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 4796
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4797
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4798
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4800
    :cond_1
    return-void
.end method

.method private updateCameraParametersPreference()V
    .locals 11

    .prologue
    const v10, 0x7f0a0065

    const v9, 0x7f0a005e

    const/4 v2, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 4810
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mAeLockSupported:Z

    if-eqz v0, :cond_0

    .line 4811
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v3}, Lcom/android/camera/FocusManager;->getAeAwbLock()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 4814
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mAwbLockSupported:Z

    if-eqz v0, :cond_1

    .line 4815
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v3}, Lcom/android/camera/FocusManager;->getAeAwbLock()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 4818
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFocusAreaSupported:Z

    if-eqz v0, :cond_2

    .line 4819
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v3}, Lcom/android/camera/FocusManager;->getFocusAreas()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 4822
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_3

    .line 4824
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v3}, Lcom/android/camera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 4828
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    iget-boolean v3, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-static {v0, v3}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4829
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsFlymeCaptureIntent:Z

    if-nez v0, :cond_d

    .line 4830
    const-string v0, "2048x1536"

    iput-object v0, p0, Lcom/android/camera/Camera;->mPicSizeStr:Ljava/lang/String;

    .line 4838
    :goto_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mPicSizeStr:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 4839
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {p0, v0}, Lcom/android/camera/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 4845
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 4849
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    .line 4850
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v4, v4

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v6, v0

    div-double/2addr v4, v6

    invoke-static {p0, v3, v4, v5}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 4852
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 4853
    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 4854
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v3

    sget v4, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v3, v4, :cond_10

    iget v3, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v3}, Lcom/android/camera/Util;->isFrontCamera(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 4855
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v4, 0x500

    const/16 v5, 0x2d0

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 4862
    :goto_2
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4863
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4865
    :cond_4
    const-string v3, "camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preview size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4871
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_scenemode_key"

    invoke-virtual {p0, v10}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    .line 4874
    iget-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4875
    invoke-direct {p0}, Lcom/android/camera/Camera;->isSetOtherParamDefault()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4876
    iget-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 4877
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "auto"

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    move v0, v2

    .line 4881
    :goto_3
    if-nez v0, :cond_11

    iget-boolean v3, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    invoke-static {v3, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v3

    if-nez v3, :cond_11

    .line 4882
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v4, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 4894
    :goto_4
    iget v3, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v3

    .line 4896
    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v3}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 4911
    invoke-static {p0}, Lcom/android/camera/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_camera_record_exposure"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    .line 4912
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportExposure()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v3}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4913
    invoke-static {p0}, Lcom/android/camera/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_camera_exposure_key"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/android/camera/Camera;->mExposureValue:F

    .line 4914
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v4, p0, Lcom/android/camera/Camera;->mExposureValue:F

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(F)V

    .line 4917
    :cond_5
    iget-object v3, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_iso_key"

    const v5, 0x7f0a0066

    invoke-virtual {p0, v5}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/Camera;->mISO:Ljava/lang/String;

    .line 4919
    iget-object v3, p0, Lcom/android/camera/Camera;->mISO:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedIsoModes()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4920
    invoke-direct {p0}, Lcom/android/camera/Camera;->isSetOtherParamDefault()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4921
    iget-object v3, p0, Lcom/android/camera/Camera;->mISO:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0066

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 4922
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "iso-auto"

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setIsoMode(Ljava/lang/String;)V

    move v0, v2

    .line 4926
    :cond_6
    if-nez v0, :cond_14

    iget-boolean v3, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    invoke-static {v3, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v3

    if-nez v3, :cond_14

    .line 4927
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v4, p0, Lcom/android/camera/Camera;->mISO:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setIsoMode(Ljava/lang/String;)V

    .line 4936
    :cond_7
    :goto_5
    iget-object v3, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_recordwdr_key"

    const v5, 0x7f0a0032

    invoke-virtual {p0, v5}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4938
    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedWdrModes()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    invoke-static {v4, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v4

    if-nez v4, :cond_8

    .line 4940
    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->changeWdrModeToIndex(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/hardware/Camera$Parameters;->setWdrMode(I)V

    .line 4943
    :cond_8
    iget-object v3, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_flashmode_key"

    const v5, 0x7f0a0057

    invoke-virtual {p0, v5}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    .line 4946
    iget-object v3, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 4947
    invoke-direct {p0}, Lcom/android/camera/Camera;->forbitUseFlashLight()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 4948
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "off"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 4954
    :cond_9
    :goto_6
    const-string v3, "auto"

    iget-object v4, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 4956
    iget-object v3, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_whitebalance_key"

    invoke-virtual {p0, v9}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/Camera;->mWhiteBalance:Ljava/lang/String;

    .line 4959
    iget-object v3, p0, Lcom/android/camera/Camera;->mWhiteBalance:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 4960
    invoke-direct {p0}, Lcom/android/camera/Camera;->isSetOtherParamDefault()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 4961
    iget-object v3, p0, Lcom/android/camera/Camera;->mWhiteBalance:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 4962
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "auto"

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    move v0, v2

    .line 4966
    :cond_a
    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    .line 4967
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/Camera;->mWhiteBalance:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 4979
    :cond_b
    :goto_7
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, v8}, Lcom/android/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 4980
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 4981
    invoke-direct {p0}, Lcom/android/camera/Camera;->hideCameraCaptureModeImg()V

    .line 4998
    :goto_8
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mContinousFocusSupported:Z

    if-eqz v0, :cond_c

    .line 4999
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 5000
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mAutoFocusMoveCallback:Lcom/android/camera/Camera$AutoFocusMoveCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 5005
    :cond_c
    :goto_9
    return-void

    .line 4832
    :cond_d
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_picturesize_key"

    invoke-virtual {v0, v3, v8}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mPicSizeStr:Ljava/lang/String;

    goto/16 :goto_0

    .line 4835
    :cond_e
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_picturesize_key"

    invoke-virtual {v0, v3, v8}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mPicSizeStr:Ljava/lang/String;

    goto/16 :goto_0

    .line 4841
    :cond_f
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    .line 4842
    iget-object v3, p0, Lcom/android/camera/Camera;->mPicSizeStr:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3, v0, v4}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    goto/16 :goto_1

    .line 4857
    :cond_10
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    goto/16 :goto_2

    :cond_11
    move v0, v1

    .line 4884
    goto/16 :goto_4

    .line 4887
    :cond_12
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    .line 4888
    iget-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 4889
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    :cond_13
    move v0, v1

    goto/16 :goto_4

    :cond_14
    move v0, v1

    .line 4929
    goto/16 :goto_5

    .line 4950
    :cond_15
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v4, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 4972
    :cond_16
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mWhiteBalance:Ljava/lang/String;

    .line 4973
    iget-object v0, p0, Lcom/android/camera/Camera;->mWhiteBalance:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 4974
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/camera/Camera;->mWhiteBalance:Ljava/lang/String;

    goto/16 :goto_7

    .line 4983
    :cond_17
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 4984
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/Camera;->mWhiteBalance:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 4985
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 4987
    :cond_18
    const-string v0, "iso-auto"

    iget-object v1, p0, Lcom/android/camera/Camera;->mISO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 4988
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "iso-auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setIsoMode(Ljava/lang/String;)V

    .line 4991
    :cond_19
    iget-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    const-string v1, "micro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4992
    const v0, 0x7f0200d8

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraCaptureModeImg(I)V

    goto/16 :goto_8

    .line 4994
    :cond_1a
    invoke-direct {p0}, Lcom/android/camera/Camera;->hideCameraCaptureModeImg()V

    goto/16 :goto_8

    .line 5002
    :cond_1b
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v8}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto/16 :goto_9

    :cond_1c
    move v0, v1

    goto/16 :goto_3
.end method

.method private updateCameraParametersZoom()V
    .locals 2

    .prologue
    .line 4804
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4805
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/Camera;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 4807
    :cond_0
    return-void
.end method

.method private updateFlashLightIcon(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 3053
    if-gez p1, :cond_1

    .line 3065
    :cond_0
    :goto_0
    return-void

    .line 3056
    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 3057
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/CameraDeviceManager;->CAMERA_FLASH_LIGHT_ICON:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 3058
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    sget-object v1, Lcom/android/camera/CameraDeviceManager;->CAMERA_FLASH_LIGHT_ICON:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 3061
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/CameraDeviceManager;->VIDEO_FLASH_LIGHT_ICON:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 3062
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    sget-object v1, Lcom/android/camera/CameraDeviceManager;->VIDEO_FLASH_LIGHT_ICON:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateFlashLightUI()V
    .locals 2

    .prologue
    .line 3038
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportFlashLightMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3039
    iget-object v1, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->changeFlashModeToIndex(Ljava/lang/String;)I

    move-result v0

    .line 3040
    .local v0, index:I
    iget-object v1, p0, Lcom/android/camera/Camera;->mFlashLightAdapter:Lcom/android/camera/Camera$FlashLightAdapter;

    invoke-virtual {v1, v0}, Lcom/android/camera/Camera$FlashLightAdapter;->setCurSel(I)V

    .line 3041
    invoke-direct {p0}, Lcom/android/camera/Camera;->forbitUseFlashLight()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3042
    invoke-direct {p0}, Lcom/android/camera/Camera;->forbitUseFlashLightUI()V

    .line 3047
    .end local v0           #index:I
    :cond_0
    :goto_0
    return-void

    .line 3044
    .restart local v0       #index:I
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->updateFlashLightIcon(I)V

    goto :goto_0
.end method

.method private updateProximityState()V
    .locals 4

    .prologue
    .line 2178
    const/4 v0, 0x0

    .line 2179
    .local v0, isChangeProximityState:Z
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsProximityEnable:Z

    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/RecordGesturePreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 2180
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsProximityEnable:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsProximityEnable:Z

    .line 2181
    const/4 v0, 0x1

    .line 2183
    :cond_0
    if-eqz v0, :cond_1

    .line 2184
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsProximityEnable:Z

    if-eqz v1, :cond_3

    .line 2185
    invoke-direct {p0}, Lcom/android/camera/Camera;->registerProximitySensorListener()V

    .line 2190
    :cond_1
    :goto_1
    return-void

    .line 2180
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 2187
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/Camera;->unregisterProximitySensorListener()V

    goto :goto_1
.end method


# virtual methods
.method public autoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4197
    invoke-direct {p0}, Lcom/android/camera/Camera;->timeToCloseCamera()V

    .line 4198
    invoke-direct {p0}, Lcom/android/camera/Camera;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 4199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mFocusStartTime:J

    .line 4200
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setFocusMode(I)V

    .line 4201
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 4202
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 4203
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsLastTouchFocus:Z

    .line 4205
    :cond_0
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 4255
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_0

    .line 4258
    :goto_0
    return-void

    .line 4256
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 4257
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    goto :goto_0
.end method

.method public capture()Z
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v8, 0x1

    .line 1904
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eq v0, v10, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v9

    .line 1958
    :goto_0
    return v0

    .line 1908
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mCaptureStartTime:J

    .line 1909
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J

    .line 1910
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    .line 1912
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_2

    .line 1913
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 1917
    :cond_2
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    iget v1, p0, Lcom/android/camera/Camera;->mOrientation:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    .line 1918
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1919
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1920
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 1921
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1922
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 1924
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-ne v0, v8, :cond_6

    .line 1925
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    iget-wide v2, p0, Lcom/android/camera/Camera;->mCaptureStartTime:J

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/Camera$ImageNamer;->getMultiFilePath(J)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setMultiCaptureFile([Ljava/lang/String;)V

    .line 1926
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mShutterCallback:Lcom/android/camera/Camera$ShutterCallback;

    iget-object v2, p0, Lcom/android/camera/Camera;->mRawPictureCallback:Lcom/android/camera/Camera$RawPictureCallback;

    iget-object v3, p0, Lcom/android/camera/Camera;->mPostViewPictureCallback:Lcom/android/camera/Camera$PostViewPictureCallback;

    new-instance v4, Lcom/android/camera/Camera$JpegPictureCallback;

    iget-object v6, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v6}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    invoke-direct {v4, p0, v6}, Lcom/android/camera/Camera$JpegPictureCallback;-><init>(Lcom/android/camera/Camera;Landroid/location/Location;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1928
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    iget-object v1, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v2, p0, Lcom/android/camera/Camera;->mCaptureStartTime:J

    iget v4, v5, Landroid/hardware/Camera$Size;->width:I

    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    iget v6, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    iget-boolean v7, p0, Lcom/android/camera/Camera;->mIsFlymeCaptureIntent:Z

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/Camera$ImageNamer;->prepareUri(Landroid/content/ContentResolver;JIIIZ)V

    .line 1939
    :goto_1
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, v9}, Lcom/android/camera/Camera;->isCaptrueModeNormal(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1942
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-ne v0, v10, :cond_7

    :cond_3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->isOpenFlashCapture()I

    move-result v0

    if-eq v0, v8, :cond_4

    const-string v0, "on"

    iget-object v1, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1944
    :cond_4
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/Camera$12;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$12;-><init>(Lcom/android/camera/Camera;)V

    const-wide/16 v2, 0x384

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1955
    :cond_5
    :goto_2
    invoke-direct {p0, v10}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 1956
    iput-boolean v8, p0, Lcom/android/camera/Camera;->mIsCapture:Z

    .line 1957
    iput-boolean v8, p0, Lcom/android/camera/Camera;->mIsImageIntentClicked:Z

    move v0, v8

    .line 1958
    goto/16 :goto_0

    .line 1931
    :cond_6
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mShutterCallback:Lcom/android/camera/Camera$ShutterCallback;

    iget-object v2, p0, Lcom/android/camera/Camera;->mRawPictureCallback:Lcom/android/camera/Camera$RawPictureCallback;

    iget-object v3, p0, Lcom/android/camera/Camera;->mPostViewPictureCallback:Lcom/android/camera/Camera$PostViewPictureCallback;

    new-instance v4, Lcom/android/camera/Camera$JpegPictureCallback;

    iget-object v6, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v6}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    invoke-direct {v4, p0, v6}, Lcom/android/camera/Camera$JpegPictureCallback;-><init>(Lcom/android/camera/Camera;Landroid/location/Location;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1935
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    iget-object v1, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v2, p0, Lcom/android/camera/Camera;->mCaptureStartTime:J

    iget v4, v5, Landroid/hardware/Camera$Size;->width:I

    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    iget v6, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    iget-boolean v7, p0, Lcom/android/camera/Camera;->mIsFlymeCaptureIntent:Z

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/Camera$ImageNamer;->prepareUri(Landroid/content/ContentResolver;JIIIZ)V

    goto :goto_1

    .line 1951
    :cond_7
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-direct {p0}, Lcom/android/camera/Camera;->getCameraRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    goto :goto_2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1144
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_4

    .line 1145
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 1146
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsDoingPanorama:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsStopPanroma:Z

    if-nez v1, :cond_1

    .line 1147
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsHomePressed:Z

    if-nez v1, :cond_0

    .line 1148
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsHomePressed:Z

    .line 1149
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsStopPanroma:Z

    .line 1150
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->stopPanoramaCapture()V

    .line 1184
    :cond_0
    :goto_0
    return v0

    .line 1153
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsDoingMulti:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsStopMulti:Z

    if-nez v1, :cond_2

    .line 1154
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsHomePressed:Z

    if-nez v1, :cond_0

    .line 1155
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsHomePressed:Z

    .line 1156
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsStopMulti:Z

    goto :goto_0

    .line 1159
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsLockView:Z

    if-eqz v1, :cond_3

    .line 1160
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0

    .line 1161
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->isCaptrueModeNormal(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1164
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0

    .line 1168
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_5

    .line 1184
    :cond_5
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "m"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 1189
    iget v2, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 1213
    :goto_0
    return v1

    .line 1191
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/Camera;->mZoomScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/Camera;->mMenuBackControl:Landroid/widget/RelativeLayout;

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v2}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1194
    iget-object v2, p0, Lcom/android/camera/Camera;->mZoomScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1198
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/Camera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1200
    .local v0, action:I
    if-ne v0, v1, :cond_3

    .line 1201
    iput-boolean v5, p0, Lcom/android/camera/Camera;->mIsBackControlDown:Z

    .line 1202
    invoke-direct {p0}, Lcom/android/camera/Camera;->changeBackControlStyle()V

    .line 1213
    .end local v0           #action:I
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 1203
    .restart local v0       #action:I
    :cond_3
    if-nez v0, :cond_2

    .line 1204
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsBackControlDown:Z

    goto :goto_1

    .line 1207
    .end local v0           #action:I
    :cond_4
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsBackControlDown:Z

    if-eqz v1, :cond_2

    .line 1208
    iput-boolean v5, p0, Lcom/android/camera/Camera;->mIsBackControlDown:Z

    .line 1209
    invoke-direct {p0}, Lcom/android/camera/Camera;->changeBackControlStyle()V

    goto :goto_1
.end method

.method public finishFadeOut()V
    .locals 0

    .prologue
    .line 4142
    return-void
.end method

.method public getCameraEV()I
    .locals 1

    .prologue
    .line 4242
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 4243
    const/4 v0, 0x0

    .line 4245
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
    .line 4227
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    return v0
.end method

.method public getIsCameraIdle()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4237
    iget v1, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsCanNextFocus()Z
    .locals 1

    .prologue
    .line 4146
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsCanNextFocus:Z

    return v0
.end method

.method public getIsCaptrue()Z
    .locals 1

    .prologue
    .line 4151
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsCapture:Z

    return v0
.end method

.method public getIsForbitAutoFocus()Z
    .locals 1

    .prologue
    .line 4222
    invoke-direct {p0}, Lcom/android/camera/Camera;->isLandscape()Z

    move-result v0

    return v0
.end method

.method public getIsShowCaptureAlert()Z
    .locals 1

    .prologue
    .line 4156
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntentTakePic:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureTakePic:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsShutterBtnLongPressed()Z
    .locals 1

    .prologue
    .line 4161
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsShutterBtnLongPressed:Z

    return v0
.end method

.method public getIsZoomScale()Z
    .locals 1

    .prologue
    .line 4232
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsScaleGesture:Z

    return v0
.end method

.method public getIsZoomSeekBarVisibility()Z
    .locals 1

    .prologue
    .line 4250
    invoke-direct {p0}, Lcom/android/camera/Camera;->isZoomBarVisible()Z

    move-result v0

    return v0
.end method

.method protected getStorageSpace()V
    .locals 2

    .prologue
    .line 2908
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->getStorageSpace()V

    .line 2910
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mStorageSpace:J

    .line 2911
    return-void
.end method

.method public lockFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4209
    invoke-direct {p0}, Lcom/android/camera/Camera;->timeToCloseCamera()V

    .line 4210
    invoke-direct {p0}, Lcom/android/camera/Camera;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 4211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mFocusStartTime:J

    .line 4212
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setFocusMode(I)V

    .line 4213
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getDefaultFocusPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusPos(I)V

    .line 4214
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 4215
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 4216
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsLastTouchFocus:Z

    .line 4218
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4073
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 4074
    packed-switch p1, :pswitch_data_0

    .line 4092
    :goto_0
    return-void

    .line 4076
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4077
    if-eqz p3, :cond_0

    .line 4078
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 4079
    if-eqz v1, :cond_0

    .line 4080
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4083
    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/android/camera/Camera;->setResultEx(ILandroid/content/Intent;)V

    .line 4084
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 4086
    const-string v0, "crop-temp"

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 4087
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 4074
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7
    .parameter "animation"

    .prologue
    const-wide/16 v5, 0x32

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 4417
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuDismiss:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_5

    .line 4418
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsRedisplayCaptureTip:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4419
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsRedisplayCaptureTip:Z

    .line 4420
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    invoke-static {v0, v5, v6}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 4422
    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsDropTouchEvent:Z

    .line 4423
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v0, v5, v6}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 4424
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    if-nez v0, :cond_1

    .line 4425
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-static {v0, v5, v6}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 4427
    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 4428
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoModeLayout:Landroid/widget/LinearLayout;

    invoke-static {v0, v5, v6}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 4430
    :cond_2
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4431
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 4432
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 4434
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mBackControl:Lcom/android/camera/ui/GlowImageView;

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 4435
    iget-object v0, p0, Lcom/android/camera/Camera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 4436
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuShowIcon:Lcom/android/camera/ui/GlowImageView;

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 4442
    :cond_4
    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsMenuAnimation:Z

    .line 4443
    return-void

    .line 4437
    :cond_5
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuPopup:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_6

    .line 4438
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsDropTouchEvent:Z

    goto :goto_0

    .line 4439
    :cond_6
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureRightMove:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_4

    .line 4440
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsExposureLeftAni:Z

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 4448
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 7
    .parameter "animation"

    .prologue
    const-wide/16 v5, 0xc8

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    .line 4393
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuDismiss:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_1

    .line 4394
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mIsDropTouchEvent:Z

    .line 4412
    :cond_0
    :goto_0
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mIsMenuAnimation:Z

    .line 4413
    return-void

    .line 4395
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuPopup:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_4

    .line 4396
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mIsDropTouchEvent:Z

    .line 4397
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v0, v5, v6}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 4398
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    if-nez v0, :cond_2

    .line 4399
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-static {v0, v5, v6}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 4401
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsLockView:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsSecurityAppLock:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 4402
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoModeLayout:Landroid/widget/LinearLayout;

    invoke-static {v0, v5, v6}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 4404
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 4405
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 4406
    iget-object v0, p0, Lcom/android/camera/Camera;->mBackControl:Lcom/android/camera/ui/GlowImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 4407
    iget-object v0, p0, Lcom/android/camera/Camera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 4408
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuShowIcon:Lcom/android/camera/ui/GlowImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    goto :goto_0

    .line 4409
    :cond_4
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureLeftMove:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_0

    .line 4410
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mIsExposureLeftAni:Z

    goto :goto_0
.end method

.method public onBackControlClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 3378
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIsShowCameraAppView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3379
    invoke-virtual {p0}, Lcom/android/camera/Camera;->onBackPressed()V

    .line 3381
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 4331
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    if-eqz v0, :cond_2

    .line 4332
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureTakePic:Z

    if-eqz v0, :cond_1

    .line 4333
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    .line 4334
    invoke-direct {p0}, Lcom/android/camera/Camera;->hidePostMeizuCaptureAlert()V

    .line 4352
    :cond_0
    :goto_0
    return-void

    .line 4336
    :cond_1
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onBackPressed()V

    goto :goto_0

    .line 4338
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_4

    .line 4339
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntentTakePic:Z

    if-eqz v0, :cond_3

    .line 4340
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    .line 4341
    invoke-direct {p0}, Lcom/android/camera/Camera;->hidePostCaptureAlert()V

    .line 4342
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    goto :goto_0

    .line 4344
    :cond_3
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onBackPressed()V

    goto :goto_0

    .line 4346
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/Camera;->isBackKeyIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4349
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseMenuControl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4350
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4031
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4032
    invoke-direct {p0}, Lcom/android/camera/Camera;->setDisplayOrientation()V

    .line 4033
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/camera/Camera;->mConfiguration_orientation:I

    .line 4035
    const v0, 0x7f0d0011

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 4036
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4039
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 4040
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 4041
    const v4, 0x7f040063

    invoke-virtual {v1, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4042
    const v4, 0x7f040009

    invoke-virtual {v1, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4045
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeControlByIntent()V

    .line 4046
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeFocusManager()V

    .line 4047
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeMiscControls()V

    .line 4048
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeIndicatorFlashlight()V

    .line 4049
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeIndicatorMenu()V

    .line 4050
    const v0, 0x7f0d008c

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    .line 4052
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->setFocusAreaIndicator(Landroid/view/View;)V

    .line 4055
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->updateThumbnailView()V

    .line 4058
    :cond_0
    const v0, 0x7f0d0013

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 4059
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 4060
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    new-instance v1, Lcom/android/camera/Camera$ShutterBtnLongClick;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/android/camera/Camera$ShutterBtnLongClick;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 4061
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 4062
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeZoom()V

    .line 4063
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeExposure()V

    .line 4064
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->isCaptrueModeNormal(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4065
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->firstPrepareCaptureModeUI(Z)V

    .line 4067
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateFlashLightUI()V

    .line 4068
    return-void

    :cond_2
    move v1, v3

    .line 4036
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2006
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 2007
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    iput v6, v0, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mType:I

    .line 2008
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    iput v1, v0, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mMimeType:I

    .line 2009
    invoke-static {v2}, Lcom/android/camera/Util;->setCurAppMode(I)V

    .line 2011
    invoke-direct {p0}, Lcom/android/camera/Camera;->isLauncherIntent()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/Camera;->isMeizuSystemCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2012
    invoke-static {}, Lcom/android/camera/Util;->getIsCheckBattery()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/Util;->getIsBeforeGotoVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2023
    :goto_0
    invoke-static {p0}, Lcom/android/camera/Util;->checkIsLowBattery(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2024
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 2156
    :goto_1
    return-void

    .line 2014
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getIsCheckBattery()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/Util;->getIsBeforeSwitchCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2015
    invoke-static {v2}, Lcom/android/camera/Util;->setIsBeforeSwitchCamera(Z)V

    goto :goto_0

    .line 2017
    :cond_1
    invoke-static {v1}, Lcom/android/camera/Util;->setIsCheckBattery(Z)V

    goto :goto_0

    .line 2020
    :cond_2
    invoke-static {v2}, Lcom/android/camera/Util;->setIsCheckBattery(Z)V

    goto :goto_0

    .line 2028
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsIspSupport()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2032
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    .line 2033
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getCameraUpdateIspStatus()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    .line 2034
    const v2, 0x7f0a00b2

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2035
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 2037
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_1

    .line 2040
    :cond_4
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 2045
    :cond_5
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportHDMI()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2046
    const-string v0, "multimedia.hdmi.status"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2050
    const-string v3, "available"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2051
    const v0, 0x7f0a00bb

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2052
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_1

    .line 2057
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/Camera;->isMeizuSystemCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2059
    invoke-direct {p0}, Lcom/android/camera/Camera;->acquireLightScreen()V

    .line 2060
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2061
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 2062
    const/high16 v4, 0x8

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2063
    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2064
    invoke-static {}, Lcom/android/camera/Util;->getPreCameraId()I

    move-result v0

    if-ne v0, v5, :cond_7

    invoke-static {}, Lcom/android/camera/Util;->getIsBeforeGotoVideo()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2065
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->setIsInterceptHomeKey(Z)V

    .line 2066
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsSystemCapture:Z

    .line 2067
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsCanClickShutterButton:Z

    .line 2072
    :cond_7
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2073
    const-string v3, "android.intent.action.KEYGUARD_UNLOCK"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2074
    iget-object v3, p0, Lcom/android/camera/Camera;->mPowerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/android/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2075
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsPowerKeyRegister:Z

    .line 2077
    new-instance v0, Lcom/android/camera/ComboPreferences;

    invoke-direct {v0, p0}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 2078
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 2079
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    .line 2082
    invoke-direct {p0}, Lcom/android/camera/Camera;->isMeizuSystemCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/android/camera/Util;->getPreCameraId()I

    move-result v0

    if-ne v0, v5, :cond_c

    .line 2083
    iput v2, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    move v0, v1

    .line 2087
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "CAMERA_TYPE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2088
    const-string v4, "Camera_Front"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2089
    iput v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    .line 2094
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    .line 2098
    new-instance v3, Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-direct {v3, p0, v7}, Lcom/android/camera/Camera$CameraStartUpThread;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v3, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    .line 2099
    iget-object v3, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v3}, Lcom/android/camera/Camera$CameraStartUpThread;->start()V

    .line 2101
    const v3, 0x7f040008

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->setContentView(I)V

    .line 2105
    invoke-direct {p0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    .line 2106
    invoke-direct {p0}, Lcom/android/camera/Camera;->isMeizuCaptureIntent()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    .line 2107
    iget-boolean v3, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    iget-boolean v4, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-static {v3, v4}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v3

    if-nez v3, :cond_b

    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->createCameraScreenNail(Z)V

    .line 2108
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget v3, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-virtual {v1, p0, v3}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 2109
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 2110
    if-eqz v0, :cond_9

    .line 2112
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 2115
    :cond_9
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeIndicatorMenu()V

    .line 2117
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorManager:Landroid/hardware/SensorManager;

    .line 2118
    iget-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mProximitySensor:Landroid/hardware/Sensor;

    .line 2120
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/camera/Camera;->mTelephoneyManager:Landroid/telephony/TelephonyManager;

    .line 2121
    iget-object v0, p0, Lcom/android/camera/Camera;->mTelephoneyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/camera/Camera;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 2123
    const v0, 0x7f0d008c

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    .line 2129
    iget-object v0, p0, Lcom/android/camera/Camera;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 2131
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeControlByIntent()V

    .line 2133
    new-instance v0, Lcom/android/camera/RotateDialogController;

    const v1, 0x7f040070

    invoke-direct {v0, p0, v1}, Lcom/android/camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    .line 2134
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getNumberOfCameras()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ActivityBase;->mNumberOfCameras:I

    .line 2135
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.quickCapture"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mQuickCapture:Z

    .line 2136
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeMiscControls()V

    .line 2137
    new-instance v0, Lcom/android/camera/LocationManager;

    invoke-direct {v0, p0, v7}, Lcom/android/camera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 2139
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->enableCameraControls(Z)V

    .line 2141
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeIndicatorFlashlight()V

    .line 2143
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 2144
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2151
    const v0, 0x7f0d0165

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mRoundedCorner:Landroid/widget/ImageView;

    .line 2152
    iget-object v0, p0, Lcom/android/camera/Camera;->mRoundedCorner:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09005e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-direct {v2, v5, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2155
    const v0, 0x7f0900b1

    invoke-static {p0, v0}, Lcom/android/camera/Util;->getDimenVaule(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mPreviewWidth:I

    goto/16 :goto_1

    .line 2090
    :cond_a
    const-string v4, "Camera_Back"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2091
    iput v2, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    goto/16 :goto_3

    :cond_b
    move v1, v2

    .line 2107
    goto/16 :goto_4

    :cond_c
    move v0, v2

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3797
    iget-object v0, p0, Lcom/android/camera/Camera;->mPowerReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsPowerKeyRegister:Z

    if-eqz v0, :cond_0

    .line 3798
    iget-object v0, p0, Lcom/android/camera/Camera;->mPowerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3799
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsPowerKeyRegister:Z

    .line 3801
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->unregisterProximitySensorListener()V

    .line 3802
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsSetWinAttributes:Z

    .line 3804
    iget-object v0, p0, Lcom/android/camera/Camera;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mTelephoneyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 3805
    iget-object v0, p0, Lcom/android/camera/Camera;->mTelephoneyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/camera/Camera;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 3806
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 3808
    :cond_1
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onDestroy()V

    .line 3809
    return-void
.end method

.method protected onDoubleTap(Landroid/view/View;II)V
    .locals 3
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 4303
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    invoke-static {v0, v2}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIsShowCaptureAlert()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4326
    :cond_0
    :goto_0
    return-void

    .line 4307
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->isZoomBarVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4308
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 4309
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 4310
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomLessIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 4311
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomAddIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 4312
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBarBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 4315
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomLessIcon:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomAddIcon:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseMenuControl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4318
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/camera/Camera;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 4319
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 4320
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomLessIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 4321
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomAddIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 4322
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBarBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4323
    invoke-direct {p0}, Lcom/android/camera/Camera;->timeToHideZoomBar()V

    goto :goto_0
.end method

.method public onExposureAddClicked(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x4000

    .line 3216
    iget v0, p0, Lcom/android/camera/Camera;->mExposureValue:F

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_0

    .line 3230
    :goto_0
    return-void

    .line 3219
    :cond_0
    iget v0, p0, Lcom/android/camera/Camera;->mExposureValue:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/android/camera/Camera;->mExposureValue:F

    .line 3220
    iget v0, p0, Lcom/android/camera/Camera;->mExposureValue:F

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_1

    .line 3221
    iput v4, p0, Lcom/android/camera/Camera;->mExposureValue:F

    .line 3223
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->checkExposureState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3224
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureAdd:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 3225
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureLess:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 3227
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/camera/Camera;->mExposureValue:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3228
    invoke-static {p0}, Lcom/android/camera/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_exposure_key"

    iget v2, p0, Lcom/android/camera/Camera;->mExposureValue:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3229
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V

    goto :goto_0
.end method

.method public onExposureLessClicked(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/high16 v2, -0x4000

    .line 3234
    iget v0, p0, Lcom/android/camera/Camera;->mExposureValue:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    .line 3248
    :goto_0
    return-void

    .line 3237
    :cond_0
    iget v0, p0, Lcom/android/camera/Camera;->mExposureValue:F

    const/high16 v1, 0x3f00

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/Camera;->mExposureValue:F

    .line 3238
    iget v0, p0, Lcom/android/camera/Camera;->mExposureValue:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    .line 3239
    iput v2, p0, Lcom/android/camera/Camera;->mExposureValue:F

    .line 3241
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->checkExposureState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3242
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureAdd:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 3243
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureLess:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 3245
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/camera/Camera;->mExposureValue:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3246
    invoke-static {p0}, Lcom/android/camera/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_exposure_key"

    iget v2, p0, Lcom/android/camera/Camera;->mExposureValue:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3247
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V

    goto :goto_0
.end method

.method public onFlashLightClicked(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const-wide/16 v2, 0xc8

    .line 3302
    invoke-direct {p0}, Lcom/android/camera/Camera;->forbitUseFlashLight()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseMenuControl()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIsShowCameraAppView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3303
    invoke-direct {p0}, Lcom/android/camera/Camera;->hideZoomSeekBar()V

    .line 3304
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 3305
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 3306
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/Camera;->mOrientation:I

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mOrientation:I

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1

    .line 3307
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureControlLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/camera/Camera;->mExposureLeftMove:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3309
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->timeToHideFlashLightList()V

    .line 3310
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 3311
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 3312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsResetCaptureModeImg:Z

    .line 3315
    :cond_2
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 3098
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainMenu_v:Landroid/widget/ListView;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mMainMenu_h:Landroid/widget/ListView;

    if-ne p1, v0, :cond_c

    .line 3099
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v0, v1, :cond_2

    .line 3101
    :cond_1
    if-nez p3, :cond_4

    .line 3102
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubCaptureModeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3103
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubCaptureModeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3136
    :cond_2
    :goto_0
    iput p3, p0, Lcom/android/camera/Camera;->mMainSel:I

    .line 3137
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/android/camera/CameraMainMenuAdapter;->setCurSel(I)V

    .line 3138
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/CameraMainMenuAdapter;->notifyDataSetChanged()V

    .line 3198
    :cond_3
    :goto_1
    return-void

    .line 3104
    :cond_4
    if-ne p3, v5, :cond_6

    .line 3105
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubIsoAdapter:Lcom/android/camera/SubMenuAdapter;

    if-nez v0, :cond_5

    .line 3106
    new-instance v0, Lcom/android/camera/SubMenuAdapter;

    const v2, 0x7f0b0033

    const v3, 0x7f0b003b

    const-string v4, "pref_camera_iso_key"

    iget-object v1, p0, Lcom/android/camera/Camera;->mSelIndex:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/SubMenuAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mSubIsoAdapter:Lcom/android/camera/SubMenuAdapter;

    .line 3109
    :cond_5
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubIsoAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3110
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubIsoAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 3111
    :cond_6
    if-ne p3, v6, :cond_8

    .line 3112
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    if-nez v0, :cond_7

    .line 3113
    new-instance v0, Lcom/android/camera/SubMenuAdapter;

    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraMenuInfo:Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    iget v2, v1, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mSceneMenuKeyArrayId:I

    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraMenuInfo:Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    iget v3, v1, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mSceneMenuValueArrayId:I

    const-string v4, "pref_camera_scenemode_key"

    iget-object v1, p0, Lcom/android/camera/Camera;->mSelIndex:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/SubMenuAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    .line 3116
    :cond_7
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3117
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 3118
    :cond_8
    if-ne p3, v7, :cond_a

    .line 3119
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubWBAdapter:Lcom/android/camera/SubMenuAdapter;

    if-nez v0, :cond_9

    .line 3120
    new-instance v0, Lcom/android/camera/SubMenuAdapter;

    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraMenuInfo:Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    iget v2, v1, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mWhiteBalanceKeyArrayId:I

    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraMenuInfo:Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    iget v3, v1, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mWhiteBalanceValueArrayId:I

    const-string v4, "pref_camera_whitebalance_key"

    iget-object v1, p0, Lcom/android/camera/Camera;->mSelIndex:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/SubMenuAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mSubWBAdapter:Lcom/android/camera/SubMenuAdapter;

    .line 3123
    :cond_9
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubWBAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3124
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubWBAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 3125
    :cond_a
    if-ne p3, v2, :cond_2

    .line 3126
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubOtherAdapter:Lcom/android/camera/OtherMenuAdapter;

    if-nez v0, :cond_b

    .line 3127
    new-instance v0, Lcom/android/camera/OtherMenuAdapter;

    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraMenuInfo:Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    iget v1, v1, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mMainOtherMenuKeyArrayId:I

    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/OtherMenuAdapter;-><init>(Landroid/content/Context;ILandroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mSubOtherAdapter:Lcom/android/camera/OtherMenuAdapter;

    .line 3128
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubOtherAdapter:Lcom/android/camera/OtherMenuAdapter;

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/OtherMenuAdapter;->setIsMeizuMMSIntent(Z)V

    .line 3129
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubOtherAdapter:Lcom/android/camera/OtherMenuAdapter;

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsFlymeCaptureIntent:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/OtherMenuAdapter;->setIsFlymeMMSIntent(Z)V

    .line 3130
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubOtherAdapter:Lcom/android/camera/OtherMenuAdapter;

    invoke-virtual {v0, p0}, Lcom/android/camera/OtherMenuAdapter;->setListener(Lcom/android/camera/OtherMenuAdapter$Listener;)V

    .line 3132
    :cond_b
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubOtherAdapter:Lcom/android/camera/OtherMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3133
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubOtherAdapter:Lcom/android/camera/OtherMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 3139
    :cond_c
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_v:Landroid/widget/ListView;

    if-eq p1, v0, :cond_d

    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_h:Landroid/widget/ListView;

    if-ne p1, v0, :cond_3

    .line 3140
    :cond_d
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-eq v0, v1, :cond_e

    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v0, v1, :cond_f

    .line 3142
    :cond_e
    iget v0, p0, Lcom/android/camera/Camera;->mMainSel:I

    if-nez v0, :cond_10

    .line 3143
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubCaptureModeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/android/camera/SubMenuAdapter;->setCurSel(I)V

    .line 3144
    iget-object v1, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    iget-object v0, p0, Lcom/android/camera/Camera;->mSubCaptureModeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/android/camera/SubMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/android/camera/CameraMainMenuAdapter;->setMXTipsStr(ILjava/lang/String;)V

    .line 3145
    invoke-static {p0}, Lcom/android/camera/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubCaptureModeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v1}, Lcom/android/camera/SubMenuAdapter;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mSubCaptureModeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v2, p3}, Lcom/android/camera/SubMenuAdapter;->getVaule(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3147
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubCaptureModeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/SubMenuAdapter;->notifyDataSetChanged()V

    .line 3148
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsRedisplayCaptureTip:Z

    .line 3195
    :cond_f
    :goto_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/CameraMainMenuAdapter;->notifyDataSetChanged()V

    .line 3196
    invoke-virtual {p0}, Lcom/android/camera/Camera;->onSharedPreferenceChanged()V

    goto/16 :goto_1

    .line 3149
    :cond_10
    iget v0, p0, Lcom/android/camera/Camera;->mMainSel:I

    if-ne v0, v5, :cond_11

    .line 3150
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubIsoAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/android/camera/SubMenuAdapter;->setCurSel(I)V

    .line 3151
    iget-object v1, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    iget-object v0, p0, Lcom/android/camera/Camera;->mSubIsoAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/android/camera/SubMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v5, v0}, Lcom/android/camera/CameraMainMenuAdapter;->setMXTipsStr(ILjava/lang/String;)V

    .line 3152
    invoke-static {p0}, Lcom/android/camera/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubIsoAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v1}, Lcom/android/camera/SubMenuAdapter;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mSubIsoAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v2, p3}, Lcom/android/camera/SubMenuAdapter;->getVaule(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3154
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubIsoAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/SubMenuAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 3155
    :cond_11
    iget v0, p0, Lcom/android/camera/Camera;->mMainSel:I

    if-ne v0, v6, :cond_13

    .line 3156
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/android/camera/SubMenuAdapter;->setCurSel(I)V

    .line 3157
    iget-object v1, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    iget-object v0, p0, Lcom/android/camera/Camera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/android/camera/SubMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v6, v0}, Lcom/android/camera/CameraMainMenuAdapter;->setMXTipsStr(ILjava/lang/String;)V

    .line 3158
    if-eqz p3, :cond_12

    .line 3159
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    invoke-virtual {v0, v5}, Lcom/android/camera/CameraMainMenuAdapter;->setIsAutoScense(Z)V

    .line 3163
    :goto_3
    invoke-static {p0}, Lcom/android/camera/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v1}, Lcom/android/camera/SubMenuAdapter;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v2, p3}, Lcom/android/camera/SubMenuAdapter;->getVaule(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3165
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/SubMenuAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 3161
    :cond_12
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraMainMenuAdapter;->setIsAutoScense(Z)V

    goto :goto_3

    .line 3166
    :cond_13
    iget v0, p0, Lcom/android/camera/Camera;->mMainSel:I

    if-ne v0, v7, :cond_14

    .line 3167
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubWBAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/android/camera/SubMenuAdapter;->setCurSel(I)V

    .line 3168
    iget-object v1, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    iget-object v0, p0, Lcom/android/camera/Camera;->mSubWBAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/android/camera/SubMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v7, v0}, Lcom/android/camera/CameraMainMenuAdapter;->setMXTipsStr(ILjava/lang/String;)V

    .line 3169
    invoke-static {p0}, Lcom/android/camera/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubWBAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v1}, Lcom/android/camera/SubMenuAdapter;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mSubWBAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v2, p3}, Lcom/android/camera/SubMenuAdapter;->getVaule(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3171
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubWBAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/SubMenuAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2

    .line 3172
    :cond_14
    iget v0, p0, Lcom/android/camera/Camera;->mMainSel:I

    if-ne v0, v2, :cond_f

    .line 3173
    if-nez p3, :cond_17

    .line 3174
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3175
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_recordlocation_key"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3192
    :cond_15
    :goto_4
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubOtherAdapter:Lcom/android/camera/OtherMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/OtherMenuAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2

    .line 3177
    :cond_16
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_recordlocation_key"

    const-string v2, "on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4

    .line 3179
    :cond_17
    if-ne p3, v5, :cond_19

    .line 3180
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/android/camera/RecordWdrPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3181
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_recordwdr_key"

    const-string v2, "wdr-off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4

    .line 3183
    :cond_18
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_recordwdr_key"

    const-string v2, "wdr-on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4

    .line 3185
    :cond_19
    if-ne p3, v6, :cond_15

    .line 3186
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/android/camera/RecordGesturePreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3187
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_recordgesture_key"

    const-string v2, "gesture-off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4

    .line 3189
    :cond_1a
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_recordgesture_key"

    const-string v2, "gesture-on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 4552
    sparse-switch p1, :sswitch_data_0

    .line 4592
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 4554
    :sswitch_1
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 4555
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 4559
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 4560
    invoke-virtual {p0}, Lcom/android/camera/Camera;->onShutterButtonClick()V

    goto :goto_0

    .line 4566
    :sswitch_3
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 4570
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->onShutterButtonFocus(Z)V

    .line 4571
    iget-object v1, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4572
    iget-object v1, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->requestFocusFromTouch()Z

    .line 4576
    :goto_1
    iget-object v1, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1, v0}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    goto :goto_0

    .line 4574
    :cond_1
    iget-object v1, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->requestFocus()Z

    goto :goto_1

    .line 4586
    :sswitch_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 4587
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    goto :goto_0

    .line 4552
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_3
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_2
        0x50 -> :sswitch_1
        0x52 -> :sswitch_4
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 4597
    packed-switch p1, :pswitch_data_0

    .line 4616
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 4599
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    .line 4600
    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 4604
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsMenuAnimation:Z

    if-nez v1, :cond_0

    .line 4607
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4608
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsMenuLongPress:Z

    goto :goto_0

    .line 4610
    :cond_1
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsMenuLongPress:Z

    .line 4611
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseMenuControl()Z

    goto :goto_0

    .line 4597
    nop

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onMenuControlClicked(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, 0x1770

    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x1f

    .line 3337
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsSendSmileMsg:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    invoke-static {v0, v3}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIsShowCameraAppView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3339
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsEnableControl:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsMenuLongPress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsStorageHintShow:Z

    if-nez v0, :cond_0

    .line 3340
    invoke-direct {p0}, Lcom/android/camera/Camera;->controlMenuBar()V

    .line 3342
    :cond_0
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/Camera;->isMeizuSystemCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3344
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/camera/Camera;->mLuckyEggClickedTimes:I

    if-ge v0, v5, :cond_3

    .line 3345
    iget v0, p0, Lcom/android/camera/Camera;->mLuckyEggClickedTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/Camera;->mLuckyEggClickedTimes:I

    .line 3346
    iget v0, p0, Lcom/android/camera/Camera;->mLuckyEggClickedTimes:I

    if-ne v0, v4, :cond_1

    .line 3347
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3348
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3350
    :cond_1
    iget v0, p0, Lcom/android/camera/Camera;->mLuckyEggClickedTimes:I

    if-ne v0, v5, :cond_2

    .line 3351
    invoke-static {p0}, Lcom/android/camera/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_record_exposure"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3352
    invoke-direct {p0}, Lcom/android/camera/Camera;->showExposureControlBar()V

    .line 3353
    invoke-direct {p0}, Lcom/android/camera/Camera;->checkExposureState()Z

    .line 3354
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    .line 3355
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3356
    iput v3, p0, Lcom/android/camera/Camera;->mLuckyEggClickedTimes:I

    .line 3374
    :cond_2
    :goto_0
    return-void

    .line 3358
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/Camera;->mLuckyEggClickedTimes:I

    if-ge v0, v5, :cond_2

    .line 3359
    iget v0, p0, Lcom/android/camera/Camera;->mLuckyEggClickedTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/Camera;->mLuckyEggClickedTimes:I

    .line 3360
    iget v0, p0, Lcom/android/camera/Camera;->mLuckyEggClickedTimes:I

    if-ne v0, v4, :cond_4

    .line 3361
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3362
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3364
    :cond_4
    iget v0, p0, Lcom/android/camera/Camera;->mLuckyEggClickedTimes:I

    if-ne v0, v5, :cond_2

    .line 3365
    invoke-static {p0}, Lcom/android/camera/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_record_exposure"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3366
    invoke-direct {p0}, Lcom/android/camera/Camera;->hideExposureControlBar()V

    .line 3367
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    .line 3368
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3369
    iput v3, p0, Lcom/android/camera/Camera;->mLuckyEggClickedTimes:I

    goto :goto_0
.end method

.method public onModeChanged(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 5198
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->switchToOtherMode(I)V

    .line 5199
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3814
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v1, :cond_0

    .line 3815
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->unregisterAccSensorListener()V

    .line 3818
    :cond_0
    iput-boolean v4, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    .line 3819
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsCapture:Z

    .line 3820
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsSystemCapture:Z

    .line 3821
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsShutterBtnLongPressed:Z

    .line 3822
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsLastTouchFocus:Z

    .line 3823
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsImageIntentClicked:Z

    .line 3824
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsForbitOrientation:Z

    .line 3825
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mIsCanClickShutterButton:Z

    .line 3826
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mIsSwitchCameraFinish:Z

    .line 3827
    iput v3, p0, Lcom/android/camera/Camera;->mLuckyEggClickedTimes:I

    .line 3828
    iput v3, p0, Lcom/android/camera/Camera;->mSmileFaceTime:I

    .line 3829
    invoke-direct {p0}, Lcom/android/camera/Camera;->releaseLightScreen()V

    .line 3830
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3831
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "off"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 3832
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3834
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsPlaySoundOff:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_2

    .line 3835
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsPlaySoundOff:Z

    .line 3836
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v4}, Lcom/android/camera/CameraManager$CameraProxy;->playSound(I)V

    .line 3839
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    if-eqz v1, :cond_11

    .line 3840
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureTakePic:Z

    if-eqz v1, :cond_3

    .line 3841
    invoke-direct {p0}, Lcom/android/camera/Camera;->hidePostMeizuCaptureAlert()V

    .line 3849
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 3851
    .local v0, isResetCaptureMode:Z
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsSendSmileMsg:Z

    if-eqz v1, :cond_4

    .line 3852
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsSendSmileMsg:Z

    .line 3853
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->closeSmileDetection()V

    .line 3854
    invoke-direct {p0}, Lcom/android/camera/Camera;->cancelGetFacePosTask()V

    .line 3855
    iget-object v1, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3856
    iget-object v1, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v1, v7, v8}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 3857
    iget-object v1, p0, Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v1, v7, v8}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 3858
    invoke-direct {p0, v4}, Lcom/android/camera/Camera;->resetCaptureMode(Z)V

    .line 3859
    const/4 v0, 0x1

    .line 3860
    iget-object v1, p0, Lcom/android/camera/Camera;->mSmileRect:Lcom/android/camera/ui/SmileRectView;

    invoke-virtual {v1, v6}, Lcom/android/camera/ui/SmileRectView;->setVisibility(I)V

    .line 3861
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/MaskedRotateImageView;->setEnabled(Z)V

    .line 3863
    :cond_4
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsDoingMulti:Z

    if-eqz v1, :cond_5

    .line 3864
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 3865
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsDoingMulti:Z

    .line 3866
    invoke-direct {p0, v4}, Lcom/android/camera/Camera;->resetCaptureMode(Z)V

    .line 3867
    const/4 v0, 0x1

    .line 3869
    :cond_5
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsDoingPanorama:Z

    if-eqz v1, :cond_6

    .line 3870
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 3871
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->stopPanoramaCapture()V

    .line 3872
    iput v3, p0, Lcom/android/camera/Camera;->mPanoramaVaule:I

    .line 3873
    iget-object v1, p0, Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;

    iget v2, p0, Lcom/android/camera/Camera;->mPanoramaVaule:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/PanoraProgressBar;->setProgress(I)V

    .line 3874
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsDoingPanorama:Z

    .line 3875
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsForbitOrientation:Z

    .line 3876
    invoke-direct {p0, v4}, Lcom/android/camera/Camera;->resetCaptureMode(Z)V

    .line 3877
    const/4 v0, 0x1

    .line 3879
    :cond_6
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v1, :cond_7

    .line 3882
    :cond_7
    iget-object v1, p0, Lcom/android/camera/Camera;->mScreenShot:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_8

    .line 3883
    iget-object v1, p0, Lcom/android/camera/Camera;->mScreenShot:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 3886
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/Camera;->clearCaptureAnimation()V

    .line 3888
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onPause()V

    .line 3891
    invoke-virtual {p0}, Lcom/android/camera/Camera;->waitCameraStartUpThread()V

    .line 3893
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 3894
    if-nez v0, :cond_9

    .line 3895
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsGotoGallery:Z

    if-eqz v1, :cond_12

    .line 3896
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->resetCaptureMode(Z)V

    .line 3902
    :cond_9
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCamera()V

    .line 3903
    iget-object v1, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_a

    .line 3904
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 3905
    iput-object v5, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 3907
    :cond_a
    invoke-direct {p0}, Lcom/android/camera/Camera;->resetScreenOn()V

    .line 3908
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseMenuControl()Z

    .line 3910
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_b

    .line 3911
    iget-object v1, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v1}, Lcom/android/camera/Camera$MyOrientationEventListener;->disable()V

    .line 3912
    iget-object v1, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    if-eqz v1, :cond_b

    .line 3913
    iget-object v1, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    invoke-virtual {v1}, Lcom/android/camera/Camera$ImageSaver;->finish()V

    .line 3914
    iput-object v5, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    .line 3915
    iget-object v1, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    invoke-virtual {v1}, Lcom/android/camera/Camera$ImageNamer;->finish()V

    .line 3916
    iput-object v5, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    .line 3919
    :cond_b
    invoke-direct {p0}, Lcom/android/camera/Camera;->unregisterProximitySensorListener()V

    .line 3921
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    if-eqz v1, :cond_c

    .line 3922
    iget-object v1, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3923
    iget-object v1, p0, Lcom/android/camera/Camera;->mSysReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3924
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    .line 3926
    :cond_c
    iget-object v1, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v3}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 3930
    :cond_d
    iput-object v5, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    .line 3932
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_e

    .line 3933
    iget-object v1, p0, Lcom/android/camera/Camera;->mSmileRect:Lcom/android/camera/ui/SmileRectView;

    invoke-virtual {v1, v6}, Lcom/android/camera/ui/SmileRectView;->setVisibility(I)V

    .line 3937
    :cond_e
    iget-object v1, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3938
    iget-object v1, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3939
    iget-object v1, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 3940
    iget-object v1, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3941
    iget-object v1, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3942
    iget-object v1, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3943
    iget-object v1, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3944
    iget-object v1, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3946
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    .line 3947
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 3949
    :cond_f
    invoke-static {}, Lcom/android/camera/Util;->getIsCheckBattery()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-direct {p0}, Lcom/android/camera/Camera;->isLauncherIntent()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {p0}, Lcom/android/camera/Util;->getIsBatteryLow(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3950
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 3952
    :cond_10
    return-void

    .line 3843
    .end local v0           #isResetCaptureMode:Z
    :cond_11
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v1, :cond_3

    .line 3844
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntentTakePic:Z

    if-eqz v1, :cond_3

    .line 3845
    invoke-direct {p0}, Lcom/android/camera/Camera;->hidePostCaptureAlert()V

    goto/16 :goto_0

    .line 3898
    .restart local v0       #isResetCaptureMode:Z
    :cond_12
    invoke-direct {p0, v4}, Lcom/android/camera/Camera;->resetCaptureMode(Z)V

    goto/16 :goto_1
.end method

.method protected onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 5319
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5320
    return-void
.end method

.method public onRestorePreferencesClicked()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 5479
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_0

    .line 5491
    :goto_0
    return-void

    .line 5480
    :cond_0
    new-instance v4, Lcom/android/camera/Camera$20;

    invoke-direct {v4, p0}, Lcom/android/camera/Camera$20;-><init>(Lcom/android/camera/Camera;)V

    .line 5486
    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    const v2, 0x7f0a0023

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v5, 0x104

    invoke-virtual {p0, v5}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3686
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    .line 3687
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsScreenCameraModeShowThumbnail:Z

    .line 3688
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onResume()V

    .line 3690
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsDropFirstProximityCapture:Z

    .line 3691
    iget-object v2, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/camera/Camera$16;

    invoke-direct {v3, p0}, Lcom/android/camera/Camera$16;-><init>(Lcom/android/camera/Camera;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3700
    invoke-direct {p0}, Lcom/android/camera/Camera;->isLockViewNeedAddFlag()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3701
    invoke-direct {p0}, Lcom/android/camera/Camera;->acquireLightScreen()V

    .line 3702
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 3703
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 3704
    const/high16 v4, 0x8

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3705
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3708
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsLockViewIntent:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsSecurityAppLock:Z

    if-eqz v2, :cond_2

    .line 3709
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 3712
    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mOpenCameraFail:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mCameraDisabled:Z

    if-eqz v2, :cond_4

    .line 3780
    :cond_3
    :goto_0
    return-void

    .line 3714
    :cond_4
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J

    .line 3715
    iput v0, p0, Lcom/android/camera/Camera;->mZoomValue:I

    .line 3716
    invoke-static {p0}, Lcom/android/camera/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/RecordGesturePreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsProximityEnable:Z

    .line 3717
    invoke-static {p0}, Lcom/android/camera/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_camera_record_exposure"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    .line 3718
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/camera/Camera;->mConfiguration_orientation:I

    .line 3719
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportExposure()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3720
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeExposure()V

    .line 3722
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/Camera;->registerProximitySensorListener()V

    .line 3724
    iget v2, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    if-nez v2, :cond_6

    .line 3726
    new-instance v2, Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-direct {v2, p0, v6}, Lcom/android/camera/Camera$CameraStartUpThread;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v2, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    .line 3727
    iget-object v2, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v2}, Lcom/android/camera/Camera$CameraStartUpThread;->start()V

    .line 3730
    :cond_6
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    iget-boolean v3, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-static {v2, v3}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v2

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsLockViewIntent:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsSecurityAppLock:Z

    if-nez v2, :cond_7

    .line 3731
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getLastThumbnail()V

    .line 3734
    :cond_7
    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v2, :cond_8

    .line 3735
    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2, p0}, Lcom/android/camera/FocusManager;->registerAccSensorListener(Landroid/content/Context;)V

    .line 3740
    :cond_8
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-nez v2, :cond_9

    .line 3741
    iget-object v2, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3745
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 3748
    invoke-static {p0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 3750
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsGotoGallery:Z

    .line 3752
    invoke-direct {p0}, Lcom/android/camera/Camera;->resetLedLight()V

    .line 3756
    iget-object v2, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x12

    const-wide/32 v4, 0x1d4c0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3758
    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_capture_mode_key"

    const v4, 0x7f0a0067

    invoke-virtual {p0, v4}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/Camera;->mStrCaptureMode:Ljava/lang/String;

    .line 3760
    const-string v2, "capture-normal"

    iget-object v3, p0, Lcom/android/camera/Camera;->mStrCaptureMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 3761
    iget v2, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v2}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    if-nez v2, :cond_b

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v2, :cond_b

    .line 3763
    iget-object v1, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/Camera$17;

    invoke-direct {v2, p0}, Lcom/android/camera/Camera$17;-><init>(Lcom/android/camera/Camera;)V

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3777
    :goto_2
    if-eqz v0, :cond_3

    .line 3778
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateFlashLightUI()V

    goto/16 :goto_0

    .line 3743
    :cond_9
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeSecondTime()V

    goto :goto_1

    .line 3771
    :cond_a
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-static {v0, v2}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    .line 3773
    invoke-direct {p0}, Lcom/android/camera/Camera;->showExposureControlBar()V

    .line 3774
    invoke-direct {p0}, Lcom/android/camera/Camera;->checkExposureState()Z

    :cond_b
    move v0, v1

    goto :goto_2
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 3405
    invoke-direct {p0}, Lcom/android/camera/Camera;->doCancel()V

    .line 3406
    return-void
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 3386
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsNotePaperIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsContactIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    if-eqz v0, :cond_1

    .line 3387
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->doAttach()V

    .line 3400
    :goto_0
    return-void

    .line 3389
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/RotateDialogController;->showWaitingDialog(Ljava/lang/String;)V

    .line 3390
    iget v0, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    .line 3391
    iget v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v1}, Lcom/android/camera/Util;->isFrontCamera(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3392
    iget v0, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_4

    .line 3393
    :cond_2
    iget v0, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    .line 3398
    :cond_3
    :goto_1
    new-instance v1, Lcom/android/camera/Camera$RotateDataTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/Camera$RotateDataTask;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera$RotateDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 3395
    :cond_4
    iget v0, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    add-int/lit16 v0, v0, 0xb4

    rem-int/lit16 v0, v0, 0x168

    goto :goto_1
.end method

.method public onSharedPreferenceChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5204
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_1

    .line 5245
    :cond_0
    :goto_0
    return-void

    .line 5206
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 5208
    iget-object v1, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 5210
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateProximityState()V

    .line 5211
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_capture_mode_key"

    const v2, 0x7f0a0067

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->changeCaptureModeToIndex(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/Util;->setCurCaptureMode(I)V

    .line 5213
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportFlashLightMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5214
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_scenemode_key"

    const v2, 0x7f0a0065

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    .line 5216
    invoke-direct {p0}, Lcom/android/camera/Camera;->forbitUseFlashLight()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5217
    invoke-direct {p0}, Lcom/android/camera/Camera;->forbitUseFlashLightUI()V

    .line 5229
    :cond_2
    :goto_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V

    .line 5230
    invoke-direct {p0}, Lcom/android/camera/Camera;->setPreviewFrameLayoutAspectRatio()V

    .line 5232
    iget v0, p0, Lcom/android/camera/Camera;->mLastCaptureMode:I

    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 5233
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mLastCaptureMode:I

    .line 5234
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setCaptureMode(I)V

    .line 5236
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsPrePanoMode:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    .line 5237
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 5238
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    .line 5240
    :cond_4
    iget v0, p0, Lcom/android/camera/Camera;->mMainSel:I

    if-nez v0, :cond_0

    .line 5241
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->firstPrepareCaptureModeUI(Z)V

    .line 5242
    invoke-direct {p0}, Lcom/android/camera/Camera;->registerProximitySensorListener()V

    goto :goto_0

    .line 5219
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsForbitedFlashLight:Z

    if-eqz v0, :cond_2

    .line 5220
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsForbitedFlashLight:Z

    .line 5221
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->changeFlashModeToIndex(Ljava/lang/String;)I

    move-result v0

    .line 5222
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->updateFlashLightIcon(I)V

    .line 5223
    iget-object v1, p0, Lcom/android/camera/Camera;->mFlashLightAdapter:Lcom/android/camera/Camera$FlashLightAdapter;

    invoke-virtual {v1, v0}, Lcom/android/camera/Camera$FlashLightAdapter;->setCurSel(I)V

    .line 5224
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onShutterButtonClick()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3602
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsDoingMulti:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsCanClickShutterButton:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageIntentClicked:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIsShowCameraAppView()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3666
    :cond_1
    :goto_0
    return-void

    .line 3609
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseFlashLightList()V

    .line 3611
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseMenuControlAutoCapture()V

    .line 3613
    invoke-direct {p0}, Lcom/android/camera/Camera;->hideZoomSeekBar()V

    .line 3616
    iget-wide v0, p0, Lcom/android/camera/Camera;->mStorageSpace:J

    const-wide/32 v2, 0x3400000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 3617
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough space or storage not ready. remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/Camera;->mStorageSpace:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3620
    :cond_3
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterButtonClick: mCameraState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3627
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsDoingPanorama:Z

    if-eqz v0, :cond_1

    .line 3634
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/camera/Camera;->isCaptrueModeNormal(Z)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-ne v0, v6, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsShutterBtnLongPressed:Z

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/android/camera/Camera;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3636
    iput-boolean v5, p0, Lcom/android/camera/Camera;->mIsNormalSnapShot:Z

    goto/16 :goto_0

    .line 3640
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsShutterBtnLongPressed:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3641
    iput-boolean v5, p0, Lcom/android/camera/Camera;->mIsShutterLongPressedSnapShot:Z

    .line 3642
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsShutterLongPressedFocusFinished:Z

    if-eqz v0, :cond_1

    .line 3647
    :cond_7
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mSnapshotOnIdle:Z

    .line 3648
    invoke-direct {p0}, Lcom/android/camera/Camera;->captureModeShutterBtnClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3652
    iget-object v0, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "camera_sounds_enabled"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-ne v0, v6, :cond_a

    .line 3654
    :cond_8
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_9

    .line 3655
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v4}, Lcom/android/camera/CameraManager$CameraProxy;->playSound(I)V

    .line 3656
    iput-boolean v5, p0, Lcom/android/camera/Camera;->mIsPlaySoundOff:Z

    .line 3664
    :cond_9
    :goto_1
    invoke-direct {p0, v4, v4}, Lcom/android/camera/Camera;->setLedEnable(IZ)V

    .line 3665
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->doSnap()V

    goto/16 :goto_0

    .line 3659
    :cond_a
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsPlaySoundOff:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_9

    .line 3660
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mIsPlaySoundOff:Z

    .line 3661
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v5}, Lcom/android/camera/CameraManager$CameraProxy;->playSound(I)V

    goto :goto_1
.end method

.method public onShutterButtonFocus(Z)V
    .locals 3
    .parameter "pressed"

    .prologue
    const/4 v2, 0x0

    .line 3578
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-nez v0, :cond_1

    .line 3598
    :cond_0
    :goto_0
    return-void

    .line 3583
    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/Camera;->canTakePicture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3585
    :cond_2
    if-eqz p1, :cond_3

    .line 3586
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutterDown()V

    goto :goto_0

    .line 3588
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsShutterLongPressedSnapShot:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsNormalSnapShot:Z

    if-nez v0, :cond_0

    .line 3589
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutterUp()V

    .line 3590
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsShutterBtnLongPressed:Z

    if-eqz v0, :cond_0

    .line 3591
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsShutterBtnLongPressed:Z

    .line 3592
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsShutterLongPressedSnapShot:Z

    .line 3593
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->clearHoldFocusIndicator()V

    .line 3594
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    goto :goto_0
.end method

.method protected onSingleTapUp(Landroid/view/View;II)V
    .locals 4
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4263
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIsShowCameraAppView()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4299
    :cond_0
    :goto_0
    return-void

    .line 4269
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->isZoomBarVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4270
    invoke-direct {p0}, Lcom/android/camera/Camera;->timeToHideZoomBar()V

    .line 4273
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 4274
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseFlashLightList()V

    .line 4275
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 4280
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsDropTouchEvent:Z

    if-eqz v0, :cond_4

    int-to-float v0, p2

    int-to-float v1, p3

    iget-object v2, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4284
    :cond_4
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseMenuControl()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/Camera;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    int-to-float v0, p2

    int-to-float v1, p3

    iget-object v2, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    int-to-float v0, p2

    int-to-float v1, p3

    iget-object v2, p0, Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    int-to-float v0, p2

    int-to-float v1, p3

    iget-object v2, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/camera/Camera;->mOrientation:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsShutterBtnLongPressed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    if-eqz v0, :cond_6

    int-to-float v0, p2

    int-to-float v1, p3

    iget-object v2, p0, Lcom/android/camera/Camera;->mExposureControlLayout:Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4289
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsCanTouchFocus:Z

    if-eqz v0, :cond_0

    .line 4292
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/FocusManager;->onSingleTapUp(II)V

    .line 4298
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFocusAreaSupported:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMeteringAreaSupported:Z

    if-nez v0, :cond_0

    goto/16 :goto_0
.end method

.method public onSizeChanged(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 5538
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    .line 5539
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 2899
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onStop()V

    .line 2900
    iget-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 2901
    iget-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 2902
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 2904
    :cond_0
    return-void
.end method

.method protected onSwitchAnimationEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5325
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setIsDropFullScreenChanged(Z)V

    .line 5326
    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 5327
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsSwitchCameraFinish:Z

    .line 5328
    return-void
.end method

.method public onSwitchCameraClicked(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    const-wide/16 v2, 0x32

    .line 3260
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIsShowCameraAppView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsSwitchCameraFinish:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsCapture:Z

    if-eqz v0, :cond_1

    .line 3298
    :cond_0
    :goto_0
    return-void

    .line 3262
    :cond_1
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mIsSwitchCameraFinish:Z

    .line 3264
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->copyTexture()V

    .line 3265
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/camera/ActivityBase;->mNumberOfCameras:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    .line 3267
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 3268
    invoke-static {v6}, Lcom/android/camera/Util;->setIsBeforeSwitchCamera(Z)V

    .line 3270
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportFlashLightMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3271
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseFlashLightList()V

    .line 3272
    iget v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    if-ne v0, v6, :cond_4

    .line 3273
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 3274
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 3275
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 3276
    invoke-direct {p0}, Lcom/android/camera/Camera;->hideCameraCaptureModeImg()V

    .line 3277
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 3278
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    if-eqz v0, :cond_2

    .line 3279
    invoke-direct {p0}, Lcom/android/camera/Camera;->hideExposureControlBar()V

    .line 3281
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsPrePanoMode:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsLockView:Z

    if-nez v0, :cond_3

    .line 3282
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3283
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg1:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 3284
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg2:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 3297
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseMenuControl()Z

    goto :goto_0

    .line 3287
    :cond_4
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 3288
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 3289
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 3290
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsPrePanoMode:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsLockView:Z

    if-nez v0, :cond_3

    .line 3291
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3292
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg1:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 3293
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg2:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onSwitchVideoModeClicked(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 3327
    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsShutterBtnLongPressed:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/Util;->getCanSwitchOtherMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIsShowCameraAppView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3329
    invoke-static {v3}, Lcom/android/camera/Util;->setIsBeforeGotoVideo(Z)V

    .line 3330
    invoke-static {}, Lcom/android/camera/Util;->setCanSwitchOtherMode()V

    .line 3331
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-direct {p0}, Lcom/android/camera/Camera;->isMeizuSystemCaptureIntent()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsLockView:Z

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/android/camera/Camera;->switchToOtherMode(IZZZ)V

    .line 3333
    :cond_0
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 3319
    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIsShowCameraAppView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3320
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageSaver;->waitDone()V

    .line 3321
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->gotoGallery()V

    .line 3323
    :cond_1
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 5461
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onUserInteraction()V

    .line 5462
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 5463
    invoke-direct {p0}, Lcom/android/camera/Camera;->timeToCloseCamera()V

    .line 5464
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 4544
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsMenuLongPress:Z

    if-eqz v0, :cond_0

    .line 4545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsMenuLongPress:Z

    .line 4547
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onWindowFocusChanged(Z)V

    .line 4548
    return-void
.end method

.method public setFocusParameters()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1967
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setFocusMode(I)V

    .line 1968
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getTouchPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusPos(I)V

    .line 1969
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 1970
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 1971
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsLastTouchFocus:Z

    .line 1972
    return-void
.end method

.method public setPicSize(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 4172
    if-eqz p1, :cond_2

    .line 4173
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_picturesize_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4174
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v0, v1, :cond_1

    .line 4176
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/CameraMainMenuAdapter;->setMXTipsStr(ILjava/lang/String;)V

    .line 4178
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/CameraMainMenuAdapter;->notifyDataSetChanged()V

    .line 4179
    invoke-virtual {p0}, Lcom/android/camera/Camera;->onSharedPreferenceChanged()V

    .line 4181
    :cond_2
    return-void
.end method

.method public takePictureFail()V
    .locals 1

    .prologue
    .line 4132
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 4133
    invoke-direct {p0}, Lcom/android/camera/Camera;->prepareCaptureModeUI()V

    .line 4134
    invoke-direct {p0}, Lcom/android/camera/Camera;->clearCaptureAnimation()V

    .line 4135
    invoke-direct {p0}, Lcom/android/camera/Camera;->deleteCurrentPhoto()V

    .line 4136
    return-void
.end method

.method public touchFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 4185
    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 4186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mFocusStartTime:J

    .line 4187
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setFocusMode(I)V

    .line 4188
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getTouchPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusPos(I)V

    .line 4189
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 4190
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 4191
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsLastTouchFocus:Z

    .line 4193
    :cond_0
    return-void
.end method

.method protected updateCameraAppView()V
    .locals 3

    .prologue
    const/16 v1, 0x12

    const/4 v2, 0x0

    .line 855
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->updateCameraAppView()V

    .line 856
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIsShowCameraAppView()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 859
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_2

    .line 860
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 864
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-nez v0, :cond_4

    .line 865
    const-string v0, "off"

    iget-object v1, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 866
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mRestoreFlash:Z

    .line 879
    :cond_1
    :goto_1
    return-void

    .line 862
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->resetScreenOn()V

    goto :goto_0

    .line 869
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mRestoreFlash:Z

    .line 870
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 871
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 872
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_1

    .line 873
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mRestoreFlash:Z

    if-eqz v0, :cond_1

    .line 874
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mRestoreFlash:Z

    .line 875
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 876
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 877
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_1
.end method

.method waitCameraStartUpThread()V
    .locals 1

    .prologue
    .line 3784
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    if-eqz v0, :cond_0

    .line 3785
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/Camera$CameraStartUpThread;->cancel()V

    .line 3786
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/Camera$CameraStartUpThread;->join()V

    .line 3787
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    .line 3788
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3793
    :cond_0
    :goto_0
    return-void

    .line 3790
    :catch_0
    move-exception v0

    goto :goto_0
.end method
