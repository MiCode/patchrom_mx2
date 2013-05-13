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

.field private mHomePressedRunnable:Ljava/lang/Runnable;

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

.field private mIsImageIntentClicked:Z

.field private mIsLastFileEncryptTakePic:Z

.field private mIsLastTouchFocus:Z

.field private mIsLockView:Z

.field private mIsLockViewIntent:Z

.field private mIsMeizuCaptureIntent:Z

.field private mIsMenuAnimation:Z

.field private mIsMenuLongPress:Z

.field private mIsMenuShowed:Z

.field private mIsMultiSetFlashLightOff:Z

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

.field private mIsResetLed:Z

.field private mIsResetZoomScale:Z

.field private mIsScaleGesture:Z

.field private mIsScreenCameraModeShowThumbnail:Z

.field private mIsSecurityAppLock:Z

.field private mIsSendSmileMsg:Z

.field private mIsSetCameraStatusCallback:Z

.field private mIsSetWinAttributes:Z

.field private mIsShutterBtnLongPressed:Z

.field private mIsShutterLongPressedCancelFocus:Z

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

.field private mPreFlashLightMode:Ljava/lang/String;

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

.field private mRotateToast:Lcom/android/camera/ui/RotateTextToast;

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

    .line 118
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;-><init>()V

    .line 198
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/Camera;->mOrientation:I

    .line 201
    iput v1, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    .line 236
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsBackControlDown:Z

    .line 238
    new-instance v0, Lcom/android/camera/Camera$1;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$1;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 245
    new-instance v0, Lcom/android/camera/Camera$2;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$2;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mBackControlImgRunnable:Ljava/lang/Runnable;

    .line 252
    new-instance v0, Lcom/android/camera/Camera$3;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$3;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mClearHoldFocusRunnable:Ljava/lang/Runnable;

    .line 260
    new-instance v0, Lcom/android/camera/Camera$4;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$4;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mShutterUpRunnable:Ljava/lang/Runnable;

    .line 267
    new-instance v0, Lcom/android/camera/Camera$5;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$5;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mHomePressedRunnable:Ljava/lang/Runnable;

    .line 302
    iput v1, p0, Lcom/android/camera/Camera;->mCameraState:I

    .line 303
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mSnapshotOnIdle:Z

    .line 306
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    .line 310
    new-instance v0, Lcom/android/camera/Camera$ShutterCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$ShutterCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mShutterCallback:Lcom/android/camera/Camera$ShutterCallback;

    .line 311
    new-instance v0, Lcom/android/camera/Camera$PostViewPictureCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$PostViewPictureCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mPostViewPictureCallback:Lcom/android/camera/Camera$PostViewPictureCallback;

    .line 313
    new-instance v0, Lcom/android/camera/Camera$RawPictureCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$RawPictureCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mRawPictureCallback:Lcom/android/camera/Camera$RawPictureCallback;

    .line 315
    new-instance v0, Lcom/android/camera/Camera$AutoFocusCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$AutoFocusCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

    .line 317
    new-instance v0, Lcom/android/camera/Camera$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$AutoFocusMoveCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mAutoFocusMoveCallback:Lcom/android/camera/Camera$AutoFocusMoveCallback;

    .line 319
    new-instance v0, Lcom/android/camera/CameraErrorCallback;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraErrorCallback;-><init>(Lcom/android/camera/CameraErrorCallback$Listener;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 320
    new-instance v0, Lcom/android/camera/Camera$CameraStatusCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$CameraStatusCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraStatusCallback:Lcom/android/camera/Camera$CameraStatusCallback;

    .line 321
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsSetCameraStatusCallback:Z

    .line 345
    new-instance v0, Lcom/android/camera/Camera$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$MainHandler;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    .line 348
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsMenuShowed:Z

    .line 349
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsEnableControl:Z

    .line 360
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsProximityResisterSuccess:Z

    .line 362
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsCall_State_OffHook:Z

    .line 363
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mInitCaptureMode:Z

    .line 370
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsSendSmileMsg:Z

    .line 389
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsMenuLongPress:Z

    .line 393
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsForbitedFlashLight:Z

    .line 395
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsDoingPanorama:Z

    .line 396
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsForbitOrientation:Z

    .line 402
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsDoingMulti:Z

    .line 417
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsGotoGallery:Z

    .line 419
    iput v1, p0, Lcom/android/camera/Camera;->mLastCaptureMode:I

    .line 420
    const-string v0, "capture-normal"

    iput-object v0, p0, Lcom/android/camera/Camera;->mStrCaptureMode:Ljava/lang/String;

    .line 422
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsResetCaptureModeImg:Z

    .line 425
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsCapture:Z

    .line 427
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsFlymeCaptureIntent:Z

    .line 434
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsResetZoomScale:Z

    .line 443
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsPrePanoMode:Z

    .line 448
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsPlaySoundOff:Z

    .line 451
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsPreForbidDegree:Z

    .line 453
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsPowerKeyRegister:Z

    .line 455
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsRedisplayCaptureTip:Z

    .line 457
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsSystemCapture:Z

    .line 458
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsCanClickShutterButton:Z

    .line 460
    iput-object v2, p0, Lcom/android/camera/Camera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 462
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsShutterBtnLongPressed:Z

    .line 463
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsShutterLongPressedFocusFinished:Z

    .line 464
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsShutterLongPressedSnapShot:Z

    .line 465
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsShutterLongPressedCancelFocus:Z

    .line 468
    iput v1, p0, Lcom/android/camera/Camera;->mSmileFaceTime:I

    .line 470
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsHomePressed:Z

    .line 471
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsStopPanroma:Z

    .line 472
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsStopMulti:Z

    .line 473
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsSetWinAttributes:Z

    .line 475
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsContactIntent:Z

    .line 477
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsNotePaperIntent:Z

    .line 479
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsImageIntentClicked:Z

    .line 481
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsPowerPressed:Z

    .line 483
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsMenuAnimation:Z

    .line 485
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsLastTouchFocus:Z

    .line 487
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mRestoreFlash:Z

    .line 489
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsResetLed:Z

    .line 497
    iput v1, p0, Lcom/android/camera/Camera;->mLuckyEggClickedTimes:I

    .line 498
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    .line 500
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/Camera;->mExposureValue:F

    .line 506
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsExposureLeftAni:Z

    .line 511
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsCanNextFocus:Z

    .line 515
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsCanTouchFocus:Z

    .line 526
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsCanProximityTakePicture:Z

    .line 532
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsDropFirstProximityCapture:Z

    .line 537
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsLockView:Z

    .line 539
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsMultiSetFlashLightOn:Z

    .line 540
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsMultiSetFlashLightOff:Z

    .line 541
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsChangeFlashLightStyle:Z

    .line 549
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    .line 552
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsSwitchCameraFinish:Z

    .line 555
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsNormalSnapShot:Z

    .line 558
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsLastFileEncryptTakePic:Z

    .line 797
    new-instance v0, Lcom/android/camera/Camera$6;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$6;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 820
    new-instance v0, Lcom/android/camera/Camera$7;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$7;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 1190
    iput v1, p0, Lcom/android/camera/Camera;->mBeginScaleValue:I

    .line 1191
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsScaleGesture:Z

    .line 1347
    new-instance v0, Lcom/android/camera/Camera$9;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$9;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1366
    new-instance v0, Lcom/android/camera/Camera$10;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$10;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mPowerReceiver:Landroid/content/BroadcastReceiver;

    .line 1394
    new-instance v0, Lcom/android/camera/Camera$11;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$11;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mSysReceiver:Landroid/content/BroadcastReceiver;

    .line 1559
    new-instance v0, Lcom/android/camera/Camera$12;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$12;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mCanNextFocusRunnable:Ljava/lang/Runnable;

    .line 3145
    new-instance v0, Lcom/android/camera/Camera$15;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$15;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mFlashLightItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 3338
    iput v1, p0, Lcom/android/camera/Camera;->mMainSel:I

    .line 4763
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsDropTouchEvent:Z

    .line 5751
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/Camera;)Lcom/android/camera/ui/RotateImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/Camera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/Camera;)Lcom/android/camera/FocusManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeFocusManager()V

    return-void
.end method

.method static synthetic access$10000(Lcom/android/camera/Camera;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterUpRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$10100(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget v0, p0, Lcom/android/camera/Camera;->mPanoramaVaule:I

    return v0
.end method

.method static synthetic access$10102(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput p1, p0, Lcom/android/camera/Camera;->mPanoramaVaule:I

    return p1
.end method

.method static synthetic access$10200(Lcom/android/camera/Camera;)Lcom/android/camera/ui/PanoraProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;

    return-object v0
.end method

.method static synthetic access$10302(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsDoingPanorama:Z

    return p1
.end method

.method static synthetic access$10400(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsForbitOrientation:Z

    return v0
.end method

.method static synthetic access$10402(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsForbitOrientation:Z

    return p1
.end method

.method static synthetic access$10500(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/camera/Camera;->deleteCurrentPhoto()V

    return-void
.end method

.method static synthetic access$10600(Lcom/android/camera/Camera;)Lcom/android/camera/ui/RotateTextToast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateToast:Lcom/android/camera/ui/RotateTextToast;

    return-object v0
.end method

.method static synthetic access$10602(Lcom/android/camera/Camera;Lcom/android/camera/ui/RotateTextToast;)Lcom/android/camera/ui/RotateTextToast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/camera/Camera;->mRotateToast:Lcom/android/camera/ui/RotateTextToast;

    return-object p1
.end method

.method static synthetic access$10700(Lcom/android/camera/Camera;)Lcom/android/camera/ui/RotateLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/Camera;->mToastRotateLayout:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$10800(Lcom/android/camera/Camera;)Lcom/android/camera/ShutterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    return-object v0
.end method

.method static synthetic access$10900(Lcom/android/camera/Camera;)Lcom/android/camera/ui/RotateImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/camera/Camera;->setCameraMode()V

    return-void
.end method

.method static synthetic access$11000(Lcom/android/camera/Camera;)Lcom/android/camera/ui/RotateImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$11100(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setPanoramaModeUIDirection(I)V

    return-void
.end method

.method static synthetic access$11200(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget v0, p0, Lcom/android/camera/Camera;->mOrientation:I

    return v0
.end method

.method static synthetic access$11202(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput p1, p0, Lcom/android/camera/Camera;->mOrientation:I

    return p1
.end method

.method static synthetic access$11400(Lcom/android/camera/Camera;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$11500(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsFlymeCaptureIntent:Z

    return v0
.end method

.method static synthetic access$11600(Lcom/android/camera/Camera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/Camera;->mPicSizeStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11900(Lcom/android/camera/Camera;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->checkIsForbitPanoramaOrientation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    return-void
.end method

.method static synthetic access$12000(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget v0, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$12002(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput p1, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$12100(Lcom/android/camera/Camera;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/camera/Camera;->setOrientationIndicator(IZ)V

    return-void
.end method

.method static synthetic access$12200(Lcom/android/camera/Camera;)Lcom/android/camera/ui/ControlPanelLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraControl:Lcom/android/camera/ui/ControlPanelLayout;

    return-object v0
.end method

.method static synthetic access$12300(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$FlashLightAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightAdapter:Lcom/android/camera/Camera$FlashLightAdapter;

    return-object v0
.end method

.method static synthetic access$12400(Lcom/android/camera/Camera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12402(Lcom/android/camera/Camera;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$12500(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->updateFlashLightIcon(I)V

    return-void
.end method

.method static synthetic access$12600(Lcom/android/camera/Camera;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->isCaptrueModeNormal(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$12700(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/camera/Camera;->isLandscape()Z

    move-result v0

    return v0
.end method

.method static synthetic access$12800(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/camera/Camera;->cancelFocus()V

    return-void
.end method

.method static synthetic access$12900(Lcom/android/camera/Camera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->firstPrepareCaptureModeUI(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/Camera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$13000(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateFlashLightUI()V

    return-void
.end method

.method static synthetic access$13100(Lcom/android/camera/Camera;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$13202(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsCanTouchFocus:Z

    return p1
.end method

.method static synthetic access$13400(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget v0, p0, Lcom/android/camera/Camera;->mSmileFaceTime:I

    return v0
.end method

.method static synthetic access$13408(Lcom/android/camera/Camera;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 118
    iget v0, p0, Lcom/android/camera/Camera;->mSmileFaceTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/Camera;->mSmileFaceTime:I

    return v0
.end method

.method static synthetic access$13500(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget v0, p0, Lcom/android/camera/Camera;->mConfiguration_orientation:I

    return v0
.end method

.method static synthetic access$13600(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget v0, p0, Lcom/android/camera/Camera;->mPreviewWidth:I

    return v0
.end method

.method static synthetic access$13700(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/camera/Camera;->restorePreferences()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/android/camera/Camera;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-wide p1, p0, Lcom/android/camera/Camera;->mOnResumeTime:J

    return-wide p1
.end method

.method static synthetic access$1602(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsCanClickShutterButton:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget v0, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/camera/Camera;->setDisplayOrientation()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/camera/Camera;->showTapToFocusToast()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageSaver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/camera/Camera;->switchCamera()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeAfterCameraOpen()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setCameraState(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/camera/Camera;->hideZoomSeekBar()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseFlashLightList()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/Camera;)Lcom/android/camera/RotateDialogController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsDoingMulti:Z

    return p1
.end method

.method static synthetic access$3000(Lcom/android/camera/Camera;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/camera/Camera;->setLedEnable(IZ)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/camera/Camera;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsMultiSetFlashLightOn:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsMultiSetFlashLightOn:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/camera/Camera;->cancelGetFacePosTask()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/camera/Camera;)Lcom/android/camera/ui/SmileRectView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/Camera;->mSmileRect:Lcom/android/camera/ui/SmileRectView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsSendSmileMsg:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsSendSmileMsg:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/camera/Camera;->timeToCloseCamera()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsGotoGallery:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/camera/Camera;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/Camera;->mScreenShot:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/camera/Camera;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/Camera;->mScreenShotImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->switchToOtherMode(I)V

    return-void
.end method

.method static synthetic access$4202(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput p1, p0, Lcom/android/camera/Camera;->mLuckyEggClickedTimes:I

    return p1
.end method

.method static synthetic access$4300(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/camera/Camera;->doAttach()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setCameraCaptureModeImg(I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/camera/Camera;->hideCameraCaptureModeImg()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsCall_State_OffHook:Z

    return v0
.end method

.method static synthetic access$4602(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsCall_State_OffHook:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/android/camera/Camera;)Landroid/hardware/Sensor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/Camera;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsProximityEnable:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsMenuLongPress:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mInitCaptureMode:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mInitCaptureMode:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseMenuControl()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    return v0
.end method

.method static synthetic access$5300(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsShutterBtnLongPressed:Z

    return v0
.end method

.method static synthetic access$5302(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsShutterBtnLongPressed:Z

    return p1
.end method

.method static synthetic access$5400(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsPowerPressed:Z

    return v0
.end method

.method static synthetic access$5402(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsPowerPressed:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsCanProximityTakePicture:Z

    return v0
.end method

.method static synthetic access$5600(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsDropFirstProximityCapture:Z

    return v0
.end method

.method static synthetic access$5602(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsDropFirstProximityCapture:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    return v0
.end method

.method static synthetic access$5800(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/camera/Camera;->isZoomBarVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6100(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget v0, p0, Lcom/android/camera/Camera;->mZoomMax:I

    return v0
.end method

.method static synthetic access$6200(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget v0, p0, Lcom/android/camera/Camera;->mZoomValue:I

    return v0
.end method

.method static synthetic access$6202(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput p1, p0, Lcom/android/camera/Camera;->mZoomValue:I

    return p1
.end method

.method static synthetic access$6300(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/camera/Camera;->timeToHideZoomBar()V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget v0, p0, Lcom/android/camera/Camera;->mBeginScaleValue:I

    return v0
.end method

.method static synthetic access$6602(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput p1, p0, Lcom/android/camera/Camera;->mBeginScaleValue:I

    return p1
.end method

.method static synthetic access$6702(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsScaleGesture:Z

    return p1
.end method

.method static synthetic access$6800(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/camera/Camera;->checkStorage()V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    return v0
.end method

.method static synthetic access$7000(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/camera/Camera;->isMeizuSystemCaptureIntent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7100(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsLockViewIntent:Z

    return v0
.end method

.method static synthetic access$7200(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/camera/Camera;->releaseLightScreen()V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsLockView:Z

    return v0
.end method

.method static synthetic access$7400(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/android/camera/Camera;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$7402(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-wide p1, p0, Lcom/android/camera/Camera;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$7500(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$7502(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-wide p1, p0, Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$7600(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/android/camera/Camera;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$7602(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-wide p1, p0, Lcom/android/camera/Camera;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$7702(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsSystemCapture:Z

    return p1
.end method

.method static synthetic access$7800(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsLastTouchFocus:Z

    return v0
.end method

.method static synthetic access$7802(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsLastTouchFocus:Z

    return p1
.end method

.method static synthetic access$7900(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsScreenCameraModeShowThumbnail:Z

    return v0
.end method

.method static synthetic access$7902(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsScreenCameraModeShowThumbnail:Z

    return p1
.end method

.method static synthetic access$8000(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsShutterLongPressedSnapShot:Z

    return v0
.end method

.method static synthetic access$8002(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsShutterLongPressedSnapShot:Z

    return p1
.end method

.method static synthetic access$8100(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsNormalSnapShot:Z

    return v0
.end method

.method static synthetic access$8102(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsNormalSnapShot:Z

    return p1
.end method

.method static synthetic access$8202(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsLastFileEncryptTakePic:Z

    return p1
.end method

.method static synthetic access$8300(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$8302(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-wide p1, p0, Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$8400(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsHomePressed:Z

    return v0
.end method

.method static synthetic access$8402(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsHomePressed:Z

    return p1
.end method

.method static synthetic access$8500(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget v0, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    return v0
.end method

.method static synthetic access$8600(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageNamer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/android/camera/Camera;->mDataLength:J

    return-wide v0
.end method

.method static synthetic access$8702(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-wide p1, p0, Lcom/android/camera/Camera;->mDataLength:J

    return-wide p1
.end method

.method static synthetic access$8800(Lcom/android/camera/Camera;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    return-object v0
.end method

.method static synthetic access$8802(Lcom/android/camera/Camera;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    return-object p1
.end method

.method static synthetic access$8900(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mQuickCapture:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeCapabilities()V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/camera/Camera;->gotoCaptureAlert()V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/camera/Camera;->prepareCaptureModeUI()V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/camera/Camera;->homeKeyCaptureMode()V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    return-void
.end method

.method static synthetic access$9402(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsCanNextFocus:Z

    return p1
.end method

.method static synthetic access$9500(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/android/camera/Camera;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$9600(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsShutterLongPressedCancelFocus:Z

    return v0
.end method

.method static synthetic access$9602(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsShutterLongPressedCancelFocus:Z

    return p1
.end method

.method static synthetic access$9702(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsShutterLongPressedFocusFinished:Z

    return p1
.end method

.method static synthetic access$9800(Lcom/android/camera/Camera;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/Camera;->mClearHoldFocusRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$9900(Lcom/android/camera/Camera;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/Camera;->mDoSnapRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private acquireLightScreen()V
    .locals 3

    .prologue
    .line 2173
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/camera/Camera;->mPowerManager:Landroid/os/PowerManager;

    .line 2174
    iget-object v0, p0, Lcom/android/camera/Camera;->mPowerManager:Landroid/os/PowerManager;

    const v1, 0x1000001a

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2175
    iget-object v0, p0, Lcom/android/camera/Camera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2176
    return-void
.end method

.method private addIdleHandler()V
    .locals 2

    .prologue
    .line 1066
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 1067
    .local v0, queue:Landroid/os/MessageQueue;
    new-instance v1, Lcom/android/camera/Camera$8;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$8;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1074
    return-void
.end method

.method private canTakePicture()Z
    .locals 4

    .prologue
    .line 4387
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

.method private cancelFocus()V
    .locals 1

    .prologue
    .line 4578
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_0

    .line 4581
    :goto_0
    return-void

    .line 4579
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelFocus()V

    .line 4580
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    goto :goto_0
.end method

.method private cancelGetFacePosTask()V
    .locals 2

    .prologue
    .line 5682
    iget-object v0, p0, Lcom/android/camera/Camera;->mGetFacePosTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mGetFacePosTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5683
    iget-object v0, p0, Lcom/android/camera/Camera;->mGetFacePosTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 5685
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

    .line 2740
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_1

    .line 2818
    :cond_0
    :goto_0
    return v0

    .line 2743
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsCameraEVSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2744
    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->disableGetEV()V

    .line 2747
    :cond_2
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 2748
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsSendSmileMsg:Z

    if-eqz v2, :cond_3

    .line 2749
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsSendSmileMsg:Z

    .line 2750
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->closeSmileDetection()V

    .line 2751
    iget-object v1, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2752
    invoke-direct {p0}, Lcom/android/camera/Camera;->cancelGetFacePosTask()V

    .line 2753
    iget-object v1, p0, Lcom/android/camera/Camera;->mSmileRect:Lcom/android/camera/ui/SmileRectView;

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/SmileRectView;->setVisibility(I)V

    .line 2754
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setSwipEnabled(Z)V

    goto :goto_0

    .line 2757
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->setSwipEnabled(Z)V

    .line 2758
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsSendSmileMsg:Z

    .line 2759
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MaskedRotateImageView;->setEnabled(Z)V

    .line 2760
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    const-wide/16 v2, 0x32

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 2761
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    const-wide/16 v2, 0x32

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 2762
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2763
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->openSmileDetection()V

    .line 2764
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2765
    invoke-direct {p0}, Lcom/android/camera/Camera;->cancelGetFacePosTask()V

    .line 2766
    new-instance v0, Lcom/android/camera/Camera$GetFacePositionTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$GetFacePositionTask;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/android/camera/Camera$GetFacePositionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mGetFacePosTask:Landroid/os/AsyncTask;

    .line 2767
    invoke-direct {p0, v1, v1}, Lcom/android/camera/Camera;->setLedEnable(IZ)V

    move v0, v1

    .line 2768
    goto :goto_0

    .line 2770
    :cond_4
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v2

    if-ne v2, v5, :cond_8

    .line 2771
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsDoingPanorama:Z

    if-eqz v2, :cond_5

    .line 2772
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsStopPanroma:Z

    .line 2773
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->stopPanoramaCapture()V

    .line 2774
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setSwipEnabled(Z)V

    goto/16 :goto_0

    .line 2776
    :cond_5
    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v2, :cond_6

    .line 2777
    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 2779
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->setSwipEnabled(Z)V

    .line 2780
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsDoingPanorama:Z

    .line 2781
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsForbitOrientation:Z

    .line 2782
    iget-object v2, p0, Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/PanoraProgressBar;->setVisibility(I)V

    .line 2783
    invoke-direct {p0, v5, v1}, Lcom/android/camera/Camera;->setLedEnable(IZ)V

    .line 2784
    iget-object v1, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2786
    iget-object v1, p0, Lcom/android/camera/Camera;->mRotateToast:Lcom/android/camera/ui/RotateTextToast;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/Camera;->mRotateToast:Lcom/android/camera/ui/RotateTextToast;

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateTextToast;->hide()V

    .line 2787
    :cond_7
    iget-object v1, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v2, 0x7f020058

    invoke-virtual {v1, v2}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 2789
    iget-object v1, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v1}, Lcom/android/camera/Util;->checkViewGone(Landroid/view/View;)Z

    .line 2790
    iget-object v1, p0, Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v1}, Lcom/android/camera/Util;->checkViewGone(Landroid/view/View;)Z

    goto/16 :goto_0

    .line 2793
    :cond_8
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v2

    if-ne v2, v0, :cond_9

    .line 2794
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->setSwipEnabled(Z)V

    .line 2795
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsDoingMulti:Z

    .line 2796
    iget-object v1, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2797
    const-string v1, "on"

    iget-object v2, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2798
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "light-on"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2799
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2800
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsMultiSetFlashLightOn:Z

    goto/16 :goto_0

    .line 2803
    :cond_9
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 2804
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-static {v1, v2}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2814
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setIsInterceptHomeKey(Z)V

    goto/16 :goto_0
.end method

.method private changeBackControlStyle()V
    .locals 4

    .prologue
    .line 4441
    iget-object v0, p0, Lcom/android/camera/Camera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    const v1, 0x108046f

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 4442
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/Camera;->mBackControlImgRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4443
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/Camera;->mBackControlImgRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4444
    return-void
.end method

.method private changeCaptureModeToIndex(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3210
    if-nez p1, :cond_1

    .line 3222
    :cond_0
    :goto_0
    return v0

    .line 3213
    :cond_1
    const-string v1, "capture-normal"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3215
    const-string v1, "capture-multi"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3216
    const/4 v0, 0x1

    goto :goto_0

    .line 3217
    :cond_2
    const-string v1, "capture-panorama"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3218
    const/4 v0, 0x2

    goto :goto_0

    .line 3219
    :cond_3
    const-string v1, "capture-smile"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3220
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private changeFlashListStyle(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 2447
    if-ne v6, p1, :cond_1

    .line 2448
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    const v1, 0x7f02005c

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 2449
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2450
    const v1, 0x7f09013a

    invoke-static {p0, v1}, Lcom/android/camera/Util;->getDimenVaule(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2451
    iget-object v1, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2452
    iput-object v2, p0, Lcom/android/camera/Camera;->mFlashLightAdapter:Lcom/android/camera/Camera$FlashLightAdapter;

    .line 2453
    new-instance v0, Lcom/android/camera/Camera$FlashLightAdapter;

    const v3, 0x7f0b0030

    sget-object v4, Lcom/android/camera/CameraDeviceManager;->CAMERA_FLASH_LIGHT_ICON:[I

    sget-object v5, Lcom/android/camera/CameraDeviceManager;->CAMERA_FLASH_LIGHT_UNSEL_ICON:[I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/Camera$FlashLightAdapter;-><init>(Lcom/android/camera/Camera;Landroid/content/Context;I[I[I)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mFlashLightAdapter:Lcom/android/camera/Camera$FlashLightAdapter;

    .line 2455
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mFlashLightAdapter:Lcom/android/camera/Camera$FlashLightAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2456
    invoke-direct {p0}, Lcom/android/camera/Camera;->forbidUseFlashLight()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2457
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->changeFlashModeToIndex(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->updateFlashLightIcon(I)V

    .line 2473
    :cond_0
    :goto_0
    return-void

    .line 2459
    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 2460
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    const v1, 0x7f02019d

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 2461
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2462
    const v1, 0x7f09013b

    invoke-static {p0, v1}, Lcom/android/camera/Util;->getDimenVaule(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2463
    iget-object v1, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2464
    iput-object v2, p0, Lcom/android/camera/Camera;->mFlashLightAdapter:Lcom/android/camera/Camera$FlashLightAdapter;

    .line 2465
    new-instance v0, Lcom/android/camera/Camera$FlashLightAdapter;

    const v3, 0x7f0b0031

    sget-object v4, Lcom/android/camera/CameraDeviceManager;->VIDEO_FLASH_LIGHT_ICON:[I

    sget-object v5, Lcom/android/camera/CameraDeviceManager;->VIDEO_FLASH_LIGHT_UNSEL_ICON:[I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/Camera$FlashLightAdapter;-><init>(Lcom/android/camera/Camera;Landroid/content/Context;I[I[I)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mFlashLightAdapter:Lcom/android/camera/Camera$FlashLightAdapter;

    .line 2467
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mFlashLightAdapter:Lcom/android/camera/Camera$FlashLightAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2468
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2470
    invoke-direct {p0, v6}, Lcom/android/camera/Camera;->updateFlashLightIcon(I)V

    goto :goto_0
.end method

.method private changeFlashModeToIndex(Ljava/lang/String;)I
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3191
    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_flashmode_key"

    const v4, 0x7f0a0061

    invoke-virtual {p0, v4}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    .line 3193
    iget-object p1, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    .line 3196
    :cond_0
    const-string v2, "auto"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3203
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 3204
    add-int/lit8 v0, v0, -0x1

    .line 3206
    :cond_2
    return v0

    .line 3198
    :cond_3
    const-string v2, "on"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 3199
    goto :goto_0

    .line 3200
    :cond_4
    const-string v2, "off"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3201
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private changeWdrModeToIndex(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3226
    if-nez p1, :cond_1

    .line 3234
    :cond_0
    :goto_0
    return v0

    .line 3229
    :cond_1
    const-string v1, "wdr-off"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3231
    const-string v1, "wdr-on"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3232
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkExposureState()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3444
    iget v2, p0, Lcom/android/camera/Camera;->mExposureValue:F

    const/high16 v3, 0x4000

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 3445
    iget-object v2, p0, Lcom/android/camera/Camera;->mExposureAdd:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 3446
    iget-object v2, p0, Lcom/android/camera/Camera;->mExposureLess:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 3454
    :goto_0
    return v0

    .line 3449
    :cond_0
    iget v2, p0, Lcom/android/camera/Camera;->mExposureValue:F

    const/high16 v3, -0x4000

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 3450
    iget-object v2, p0, Lcom/android/camera/Camera;->mExposureLess:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 3451
    iget-object v2, p0, Lcom/android/camera/Camera;->mExposureAdd:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 3454
    goto :goto_0
.end method

.method private checkIsForbitPanoramaOrientation(I)Z
    .locals 3
    .parameter "orientation"

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 3011
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 3012
    iget v1, p0, Lcom/android/camera/Camera;->mConfiguration_orientation:I

    if-ne v1, v0, :cond_1

    .line 3013
    const/16 v1, 0x5a

    if-ne p1, v1, :cond_2

    .line 3022
    :cond_0
    :goto_0
    return v0

    .line 3016
    :cond_1
    iget v1, p0, Lcom/android/camera/Camera;->mConfiguration_orientation:I

    if-ne v1, v2, :cond_2

    .line 3017
    const/16 v1, 0xb4

    if-eq p1, v1, :cond_0

    .line 3022
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkStorage()V
    .locals 2

    .prologue
    .line 3142
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mStorageSpace:J

    .line 3143
    iget-wide v0, p0, Lcom/android/camera/Camera;->mStorageSpace:J

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/Camera;->updateStorageHint(J)V

    .line 3144
    return-void
.end method

.method private clearCaptureAnimation()V
    .locals 0

    .prologue
    .line 4401
    return-void
.end method

.method private closeCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4936
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 4937
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->setCameraCallBack(Lcom/android/camera/Camera$CameraStatusCallback;)V

    .line 4938
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 4939
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 4940
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 4941
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 4942
    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 4943
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 4944
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onCameraReleased()V

    .line 4945
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4947
    :cond_0
    return-void
.end method

.method private collapseFlashLightList()V
    .locals 4

    .prologue
    const-wide/16 v2, 0xc8

    .line 2905
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

    .line 2907
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 2908
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsExposureLeftAni:Z

    if-eqz v0, :cond_0

    .line 2909
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureControlLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/camera/Camera;->mExposureRightMove:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2910
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureControlBg:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureControlBg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mExposureRightMove:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2912
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 2913
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsResetCaptureModeImg:Z

    if-eqz v0, :cond_1

    .line 2914
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsResetCaptureModeImg:Z

    .line 2915
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 2918
    :cond_1
    return-void
.end method

.method private collapseMenuControl()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2921
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsMenuShowed:Z

    if-eqz v1, :cond_0

    .line 2922
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsMenuShowed:Z

    .line 2923
    invoke-direct {p0}, Lcom/android/camera/Camera;->hideMenuLayout()V

    .line 2924
    const/4 v0, 0x1

    .line 2926
    :cond_0
    return v0
.end method

.method private collapseMenuControlAutoCapture()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 2943
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsMenuShowed:Z

    if-eqz v0, :cond_0

    .line 2944
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsMenuShowed:Z

    .line 2945
    iget v0, p0, Lcom/android/camera/Camera;->mOrientation:I

    div-int/lit8 v0, v0, 0x5a

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2946
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 2951
    :cond_0
    :goto_0
    return-void

    .line 2948
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private collapseMenuControlPanroma()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 2930
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsMenuShowed:Z

    if-eqz v0, :cond_0

    .line 2931
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsMenuShowed:Z

    .line 2932
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2933
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 2934
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/Camera;->mMenuDismiss:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2940
    :cond_0
    :goto_0
    return-void

    .line 2935
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2936
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 2937
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/Camera;->mMenuDismiss:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private controlMenuBar()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 4835
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsMenuShowed:Z

    if-nez v1, :cond_3

    .line 4836
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseFlashLightList()V

    .line 4837
    const/16 v0, 0xb4

    .line 4838
    .local v0, forbidDegree:I
    iget v1, p0, Lcom/android/camera/Camera;->mConfiguration_orientation:I

    if-ne v1, v2, :cond_0

    .line 4839
    const/16 v0, 0x10e

    .line 4841
    :cond_0
    iget v1, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    if-eq v1, v0, :cond_1

    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v1

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/android/camera/Camera;->mOrientation:I

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_2

    .line 4851
    .end local v0           #forbidDegree:I
    :cond_1
    :goto_0
    return-void

    .line 4845
    .restart local v0       #forbidDegree:I
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->showMenuLayout()V

    .line 4846
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsMenuShowed:Z

    .line 4847
    invoke-direct {p0}, Lcom/android/camera/Camera;->hideZoomSeekBar()V

    goto :goto_0

    .line 4849
    .end local v0           #forbidDegree:I
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseMenuControl()Z

    goto :goto_0
.end method

.method private deleteCurrentPhoto()V
    .locals 4

    .prologue
    .line 4404
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageNamer;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 4405
    iget-object v1, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v0}, Lcom/android/camera/Storage;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 4406
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageNamer;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 4407
    invoke-static {v0}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4408
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

    .line 4409
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4410
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4411
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

    .line 4413
    :cond_0
    return-void
.end method

.method private deleteMultiPhoto()V
    .locals 10

    .prologue
    .line 4416
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageNamer;->getMultiUri()[Landroid/net/Uri;

    move-result-object v1

    .line 4417
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageNamer;->getMultiTitle()[Ljava/lang/String;

    move-result-object v2

    .line 4418
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 4419
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 4437
    :cond_0
    :goto_0
    return-void

    .line 4422
    :cond_1
    const/4 v0, 0x0

    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_4

    .line 4423
    aget-object v4, v1, v0

    invoke-static {v4}, Lcom/android/camera/Util;->getUriId(Landroid/net/Uri;)I

    move-result v4

    .line 4424
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 4425
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    if-eq v0, v4, :cond_2

    .line 4426
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4428
    :cond_2
    aget-object v4, v2, v0

    invoke-static {v4}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4429
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4430
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 4431
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_3

    .line 4432
    const-string v5, "camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not delete "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4422
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4436
    :cond_4
    iget-object v0, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id in("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doAttach()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v9, -0x1

    const/4 v3, 0x0

    .line 3725
    iget-object v1, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    .line 3727
    iget-object v0, p0, Lcom/android/camera/Camera;->mCropValue:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 3732
    iget-object v0, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 3735
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v0, v5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    .line 3737
    if-eqz v0, :cond_a

    .line 3738
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 3739
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    move v1, v2

    .line 3742
    :goto_0
    if-eqz v1, :cond_3

    .line 3743
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    if-eqz v1, :cond_1

    .line 3744
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3745
    const-string v2, "Camera_Type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3746
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/camera/Camera;->setResultEx(ILandroid/content/Intent;)V

    .line 3757
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3761
    :goto_2
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 3833
    :goto_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    if-eqz v0, :cond_0

    .line 3834
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageSaver;->finish()V

    .line 3835
    iput-object v4, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    .line 3836
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageNamer;->finish()V

    .line 3837
    iput-object v4, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    .line 3839
    :cond_0
    :goto_4
    return-void

    .line 3747
    :cond_1
    :try_start_2
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsNotePaperIntent:Z

    if-eqz v1, :cond_2

    .line 3748
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3749
    iget-object v2, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3750
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/camera/Camera;->setResultEx(ILandroid/content/Intent;)V

    goto :goto_1

    .line 3758
    :catch_0
    move-exception v1

    goto :goto_2

    .line 3752
    :cond_2
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->setResultEx(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 3761
    :catchall_0
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    :goto_5
    invoke-static {v4}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 3755
    :cond_3
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->setResult(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 3764
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsFlymeCaptureIntent:Z

    if-eqz v0, :cond_6

    .line 3765
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 3767
    iget v2, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_5

    .line 3768
    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    .line 3769
    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    .line 3774
    :goto_6
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageNamer;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 3775
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageNamer;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 3776
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    iget v7, p0, Lcom/android/camera/ActivityBase;->mThumbnailViewWidth:I

    iget v8, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/Camera$ImageSaver;->addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIII)V

    .line 3778
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3779
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3780
    const-string v1, "isFlymeMms"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3781
    invoke-virtual {p0, v9, v0}, Lcom/android/camera/Camera;->setResultEx(ILandroid/content/Intent;)V

    .line 3782
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_3

    .line 3771
    :cond_5
    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    .line 3772
    iget v6, v0, Landroid/hardware/Camera$Size;->width:I

    goto :goto_6

    .line 3784
    :cond_6
    invoke-static {v1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v0

    .line 3785
    const v2, 0xc800

    invoke-static {v1, v2}, Lcom/android/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3786
    invoke-static {v1, v0}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3787
    new-instance v1, Landroid/content/Intent;

    const-string v2, "inline-data"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lcom/android/camera/Camera;->setResultEx(ILandroid/content/Intent;)V

    .line 3789
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    goto/16 :goto_3

    .line 3797
    :cond_7
    :try_start_4
    const-string v0, "crop-temp"

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 3798
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 3799
    const-string v0, "crop-temp"

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5}, Lcom/android/camera/Camera;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    .line 3800
    :try_start_5
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 3801
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 3802
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v1

    .line 3812
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 3815
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3816
    iget-object v3, p0, Lcom/android/camera/Camera;->mCropValue:Ljava/lang/String;

    const-string v5, "circle"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3817
    const-string v3, "circleCrop"

    const-string v5, "true"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3819
    :cond_8
    iget-object v3, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v3, :cond_9

    .line 3820
    const-string v2, "output"

    iget-object v3, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3825
    :goto_7
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3827
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3828
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3830
    const/16 v0, 0x3e8

    invoke-virtual {p0, v2, v0}, Lcom/android/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 3803
    :catch_1
    move-exception v0

    .line 3804
    :goto_8
    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setResultEx(I)V

    .line 3805
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3812
    :goto_9
    invoke-static {v4}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_4

    .line 3807
    :catch_2
    move-exception v0

    .line 3808
    :goto_a
    const/4 v0, 0x0

    :try_start_7
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setResultEx(I)V

    .line 3809
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_9

    .line 3812
    :catchall_1
    move-exception v0

    :goto_b
    invoke-static {v4}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 3822
    :cond_9
    const-string v3, "return-data"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_7

    .line 3812
    :catchall_2
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_b

    .line 3807
    :catch_3
    move-exception v1

    move-object v4, v0

    goto :goto_a

    .line 3803
    :catch_4
    move-exception v1

    move-object v4, v0

    goto :goto_8

    .line 3761
    :catchall_3
    move-exception v0

    goto/16 :goto_5

    .line 3758
    :catch_5
    move-exception v0

    move-object v0, v4

    goto/16 :goto_2

    :cond_a
    move v1, v3

    goto/16 :goto_0
.end method

.method private doCancel()V
    .locals 2

    .prologue
    .line 3842
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/Camera;->setResultEx(ILandroid/content/Intent;)V

    .line 3843
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 3844
    return-void
.end method

.method private doMenu()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1770

    const/4 v5, 0x6

    const/4 v4, 0x1

    const/16 v3, 0x1f

    const/4 v2, 0x0

    .line 3684
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsSendSmileMsg:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    invoke-static {v0, v2}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIsShowCameraAppView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3686
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsEnableControl:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsMenuLongPress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsStorageHintShow:Z

    if-nez v0, :cond_0

    .line 3687
    invoke-direct {p0}, Lcom/android/camera/Camera;->controlMenuBar()V

    .line 3689
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

    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->isCaptrueModeNormal(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3691
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/camera/Camera;->mLuckyEggClickedTimes:I

    if-ge v0, v5, :cond_3

    .line 3692
    iget v0, p0, Lcom/android/camera/Camera;->mLuckyEggClickedTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/Camera;->mLuckyEggClickedTimes:I

    .line 3693
    iget v0, p0, Lcom/android/camera/Camera;->mLuckyEggClickedTimes:I

    if-ne v0, v4, :cond_1

    .line 3694
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3695
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3697
    :cond_1
    iget v0, p0, Lcom/android/camera/Camera;->mLuckyEggClickedTimes:I

    if-ne v0, v5, :cond_2

    .line 3698
    invoke-static {p0}, Lcom/android/camera/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_record_exposure"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3699
    invoke-direct {p0}, Lcom/android/camera/Camera;->showExposureControlBar()V

    .line 3700
    invoke-direct {p0}, Lcom/android/camera/Camera;->checkExposureState()Z

    .line 3701
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    .line 3702
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3703
    iput v2, p0, Lcom/android/camera/Camera;->mLuckyEggClickedTimes:I

    .line 3721
    :cond_2
    :goto_0
    return-void

    .line 3705
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/Camera;->mLuckyEggClickedTimes:I

    if-ge v0, v5, :cond_2

    .line 3706
    iget v0, p0, Lcom/android/camera/Camera;->mLuckyEggClickedTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/Camera;->mLuckyEggClickedTimes:I

    .line 3707
    iget v0, p0, Lcom/android/camera/Camera;->mLuckyEggClickedTimes:I

    if-ne v0, v4, :cond_4

    .line 3708
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3709
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3711
    :cond_4
    iget v0, p0, Lcom/android/camera/Camera;->mLuckyEggClickedTimes:I

    if-ne v0, v5, :cond_2

    .line 3712
    invoke-static {p0}, Lcom/android/camera/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_record_exposure"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3713
    invoke-direct {p0}, Lcom/android/camera/Camera;->hideExposureControlBar()V

    .line 3714
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    .line 3715
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3716
    iput v2, p0, Lcom/android/camera/Camera;->mLuckyEggClickedTimes:I

    goto :goto_0
.end method

.method private enableCameraControls(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 2954
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsSendSmileMsg:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/MaskedRotateImageView;->setEnabled(Z)V

    .line 2955
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 2956
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomLessIcon:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomLessIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 2957
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomAddIcon:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomAddIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 2958
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoModeLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2959
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsDoingPanorama:Z

    if-nez v0, :cond_5

    .line 2960
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 2962
    :cond_5
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    .line 2963
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 2964
    :cond_6
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsForbitedFlashLight:Z

    if-nez v0, :cond_7

    .line 2965
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 2967
    :cond_7
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureAdd:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/camera/Camera;->checkExposureState()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureAdd:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 2968
    :cond_8
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureLess:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/camera/Camera;->checkExposureState()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureLess:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 2969
    :cond_9
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2970
    :cond_a
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsSendSmileMsg:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsStorageHintShow:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/GlowImageView;->setEnabled(Z)V

    .line 2971
    :cond_b
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsSendSmileMsg:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsStorageHintShow:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 2972
    :cond_c
    iget-object v0, p0, Lcom/android/camera/Camera;->mBackControl:Lcom/android/camera/ui/GlowImageView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/camera/Camera;->mBackControl:Lcom/android/camera/ui/GlowImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/GlowImageView;->setEnabled(Z)V

    .line 2973
    :cond_d
    iget-object v0, p0, Lcom/android/camera/Camera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/camera/Camera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 2974
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

    .line 2487
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mInitCaptureMode:Z

    .line 2488
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-eq v0, v6, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsPrePanoMode:Z

    if-eqz v0, :cond_7

    .line 2489
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseMenuControlPanroma()V

    .line 2493
    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsForbitOrientation:Z

    .line 2495
    if-eqz p1, :cond_1

    .line 2496
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_capture_mode_key"

    const v4, 0x7f0a0071

    invoke-virtual {p0, v4}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mStrCaptureMode:Ljava/lang/String;

    .line 2498
    const-string v0, "capture-normal"

    iget-object v3, p0, Lcom/android/camera/Camera;->mStrCaptureMode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2499
    iget-object v0, p0, Lcom/android/camera/Camera;->mStrCaptureMode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->changeCaptureModeToIndex(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/Util;->setCurCaptureMode(I)V

    .line 2500
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    .line 2501
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setCaptureMode(I)V

    .line 2502
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mLastCaptureMode:I

    .line 2506
    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_8

    .line 2507
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    if-eqz v0, :cond_2

    .line 2508
    invoke-direct {p0}, Lcom/android/camera/Camera;->hideExposureControlBar()V

    .line 2510
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mToastLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 2511
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsPrePanoMode:Z

    if-eqz v0, :cond_3

    .line 2512
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2513
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg1:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2514
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg2:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2515
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 2517
    :cond_3
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsPrePanoMode:Z

    .line 2518
    const v0, 0x7f0200d8

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraCaptureModeImg(I)V

    .line 2519
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    const v3, 0x7f0a00b8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2520
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2521
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    const-wide/16 v3, 0x32

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 2522
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    const-wide/16 v3, 0x32

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 2523
    iget v0, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    invoke-direct {p0, v0, v2}, Lcom/android/camera/Camera;->setOrientationIndicator(IZ)V

    .line 2524
    invoke-direct {p0, v7}, Lcom/android/camera/Camera;->setCameraCallBack(Lcom/android/camera/Camera$CameraStatusCallback;)V

    .line 2526
    invoke-direct {p0}, Lcom/android/camera/Camera;->resetZoomScale()V

    .line 2527
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_4

    .line 2530
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->setIsInterceptHomeKey(Z)V

    .line 2531
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsChangeFlashLightStyle:Z

    if-eqz v0, :cond_1d

    .line 2532
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->changeFlashListStyle(I)V

    .line 2533
    invoke-direct {p0}, Lcom/android/camera/Camera;->resetMultiFlashLightOff()V

    .line 2534
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsChangeFlashLightStyle:Z

    move v1, v2

    .line 2654
    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    .line 2655
    invoke-direct {p0}, Lcom/android/camera/Camera;->setOtherParamDefault()V

    .line 2657
    :cond_6
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/Camera$13;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$13;-><init>(Lcom/android/camera/Camera;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2663
    return-void

    .line 2491
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseMenuControl()Z

    goto/16 :goto_0

    .line 2536
    :cond_8
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-nez v0, :cond_10

    .line 2537
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    iget-boolean v3, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-static {v0, v3}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2538
    invoke-direct {p0}, Lcom/android/camera/Camera;->showExposureControlBar()V

    .line 2540
    :cond_9
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsPrePanoMode:Z

    if-eqz v0, :cond_a

    .line 2541
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2542
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg1:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2543
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg2:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2544
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 2546
    :cond_a
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsPrePanoMode:Z

    .line 2547
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsStorageHintShow:Z

    if-nez v0, :cond_b

    .line 2548
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2550
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

    .line 2551
    const v0, 0x7f0200d5

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraCaptureModeImg(I)V

    .line 2557
    :cond_c
    :goto_2
    iget v0, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    invoke-direct {p0, v0, v2}, Lcom/android/camera/Camera;->setOrientationIndicator(IZ)V

    .line 2558
    invoke-direct {p0, v7}, Lcom/android/camera/Camera;->setCameraCallBack(Lcom/android/camera/Camera$CameraStatusCallback;)V

    .line 2559
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsResetZoomScale:Z

    if-eqz v0, :cond_e

    .line 2560
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_d

    .line 2561
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v3, p0, Lcom/android/camera/Camera;->mZoomValue:I

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->startSmoothZoom(I)V

    .line 2563
    :cond_d
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsResetZoomScale:Z

    .line 2565
    :cond_e
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->setIsInterceptHomeKey(Z)V

    .line 2566
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsChangeFlashLightStyle:Z

    if-eqz v0, :cond_5

    .line 2567
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->changeFlashListStyle(I)V

    .line 2568
    invoke-direct {p0}, Lcom/android/camera/Camera;->resetMultiFlashLightOff()V

    .line 2569
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsChangeFlashLightStyle:Z

    goto/16 :goto_1

    .line 2553
    :cond_f
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    .line 2554
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_2

    .line 2571
    :cond_10
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-ne v0, v6, :cond_19

    .line 2572
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    if-eqz v0, :cond_11

    .line 2573
    invoke-direct {p0}, Lcom/android/camera/Camera;->hideExposureControlBar()V

    .line 2575
    :cond_11
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsPrePanoMode:Z

    .line 2576
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 2577
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    .line 2578
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    const v3, 0x7f0a00b9

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2579
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2583
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportComprehensivePano()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2584
    iget v0, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->checkIsForbitPanoramaOrientation(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2586
    iget v0, p0, Lcom/android/camera/Camera;->mConfiguration_orientation:I

    if-ne v0, v2, :cond_16

    move v0, v1

    .line 2591
    :goto_3
    invoke-direct {p0, v0, v2}, Lcom/android/camera/Camera;->setOrientationIndicator(IZ)V

    .line 2602
    :cond_12
    :goto_4
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    .line 2603
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2605
    :cond_13
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_14

    .line 2606
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v3, 0x7f020043

    invoke-virtual {v0, v3}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 2608
    :cond_14
    invoke-direct {p0, v2, v2}, Lcom/android/camera/Camera;->setLedEnable(IZ)V

    .line 2609
    invoke-direct {p0}, Lcom/android/camera/Camera;->resetZoomScale()V

    .line 2610
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setIsInterceptHomeKey(Z)V

    .line 2611
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsChangeFlashLightStyle:Z

    if-eqz v0, :cond_15

    .line 2612
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->changeFlashListStyle(I)V

    .line 2613
    invoke-direct {p0}, Lcom/android/camera/Camera;->resetMultiFlashLightOff()V

    .line 2614
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsChangeFlashLightStyle:Z

    .line 2619
    :cond_15
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2620
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg1:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2621
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg2:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2623
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    goto/16 :goto_1

    .line 2588
    :cond_16
    iget v0, p0, Lcom/android/camera/Camera;->mConfiguration_orientation:I

    if-ne v0, v6, :cond_1e

    .line 2589
    const/16 v0, 0x5a

    goto :goto_3

    .line 2594
    :cond_17
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsForbitOrientation:Z

    .line 2595
    iget v0, p0, Lcom/android/camera/Camera;->mConfiguration_orientation:I

    if-ne v0, v2, :cond_18

    .line 2596
    const/16 v0, 0x10e

    invoke-direct {p0, v0, v2}, Lcom/android/camera/Camera;->setOrientationIndicator(IZ)V

    goto :goto_4

    .line 2598
    :cond_18
    invoke-direct {p0, v1, v2}, Lcom/android/camera/Camera;->setOrientationIndicator(IZ)V

    goto :goto_4

    .line 2624
    :cond_19
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 2625
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    if-eqz v0, :cond_1a

    .line 2626
    invoke-direct {p0}, Lcom/android/camera/Camera;->hideExposureControlBar()V

    .line 2628
    :cond_1a
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsPrePanoMode:Z

    if-eqz v0, :cond_1b

    .line 2629
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2630
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg1:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2631
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg2:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2632
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 2634
    :cond_1b
    iget-object v0, p0, Lcom/android/camera/Camera;->mToastLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 2635
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsPrePanoMode:Z

    .line 2636
    iget v0, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    invoke-direct {p0, v0, v2}, Lcom/android/camera/Camera;->setOrientationIndicator(IZ)V

    .line 2637
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStatusCallback:Lcom/android/camera/Camera$CameraStatusCallback;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraCallBack(Lcom/android/camera/Camera$CameraStatusCallback;)V

    .line 2638
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    const v3, 0x7f0a00be

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2639
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2640
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1c

    .line 2641
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2644
    :cond_1c
    invoke-direct {p0}, Lcom/android/camera/Camera;->resetZoomScale()V

    .line 2645
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setIsInterceptHomeKey(Z)V

    .line 2646
    invoke-direct {p0, v6}, Lcom/android/camera/Camera;->changeFlashListStyle(I)V

    .line 2647
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsChangeFlashLightStyle:Z

    .line 2648
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2649
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2650
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2651
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsMultiSetFlashLightOff:Z

    :cond_1d
    move v1, v2

    goto/16 :goto_1

    :cond_1e
    move v0, v1

    goto/16 :goto_3
.end method

.method private forbidUseFlashLight()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3305
    iget-object v1, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3306
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_scenemode_key"

    const v3, 0x7f0a006f

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    .line 3309
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    const-string v2, "night-shot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->isCaptrueModeNormal(Z)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 3310
    :cond_2
    const/4 v0, 0x1

    .line 3312
    :cond_3
    return v0
.end method

.method private forbidUseFlashLightUI()V
    .locals 2

    .prologue
    .line 3316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsForbitedFlashLight:Z

    .line 3317
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    const v1, 0x7f02009b

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 3318
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 3319
    return-void
.end method

.method private getCameraRotation()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 2130
    iget v2, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    iget v3, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    sub-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v0, v2, 0x168

    .line 2131
    .local v0, cameraRotate:I
    const/16 v1, 0xb4

    .line 2132
    .local v1, forbidDegree:I
    iget v2, p0, Lcom/android/camera/Camera;->mConfiguration_orientation:I

    if-ne v2, v4, :cond_0

    .line 2133
    const/16 v1, 0x10e

    .line 2135
    :cond_0
    if-ne v0, v1, :cond_1

    .line 2136
    iget v2, p0, Lcom/android/camera/Camera;->mConfiguration_orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2137
    iget-object v2, p0, Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v2}, Lcom/android/camera/ui/RotateImageView;->getDegree()I

    move-result v0

    .line 2146
    :cond_1
    :goto_0
    return v0

    .line 2138
    :cond_2
    iget v2, p0, Lcom/android/camera/Camera;->mConfiguration_orientation:I

    if-ne v2, v4, :cond_1

    .line 2139
    iget-object v2, p0, Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v2}, Lcom/android/camera/ui/RotateImageView;->getDegree()I

    move-result v2

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_3

    .line 2140
    const/16 v0, 0x5a

    goto :goto_0

    .line 2141
    :cond_3
    iget-object v2, p0, Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v2}, Lcom/android/camera/ui/RotateImageView;->getDegree()I

    move-result v2

    if-nez v2, :cond_1

    .line 2142
    const/16 v0, 0x10e

    goto :goto_0
.end method

.method private getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    .locals 2
    .parameter "preferences"

    .prologue
    .line 2159
    invoke-static {p0}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 2160
    .local v0, intentCameraId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2165
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
    .line 4391
    const/16 v0, 0x258

    return v0
.end method

.method private gotoCaptureAlert()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 5467
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 5468
    const-string v0, "temp"

    iget-object v3, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    invoke-static {v0, v3}, Lcom/android/camera/Storage;->saveImage(Ljava/lang/String;[B)V

    .line 5469
    const-string v0, "android.media.action.CAPTURE_DONE"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5470
    iget v0, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    .line 5471
    iget v3, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v3}, Lcom/android/camera/Util;->isFrontCamera(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5472
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v3

    sget v4, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v3, v4, :cond_3

    .line 5473
    iget v0, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    const/16 v3, 0xb4

    if-ne v0, v3, :cond_2

    .line 5474
    :cond_0
    iget v0, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    .line 5478
    :goto_0
    const-string v3, "rotate"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5491
    :cond_1
    :goto_1
    new-instance v3, Lcom/android/camera/Camera$RotateDataTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/camera/Camera$RotateDataTask;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lcom/android/camera/Camera$RotateDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 5492
    const/16 v0, 0x3e9

    invoke-virtual {p0, v2, v0}, Lcom/android/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    .line 5493
    return-void

    .line 5476
    :cond_2
    iget v0, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    add-int/lit16 v0, v0, 0xb4

    rem-int/lit16 v0, v0, 0x168

    goto :goto_0

    .line 5479
    :cond_3
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v3

    sget v4, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-ne v3, v4, :cond_1

    .line 5480
    iget v0, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    add-int/lit16 v0, v0, 0xb4

    rem-int/lit16 v0, v0, 0x168

    .line 5481
    const-string v3, "rotate"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 5484
    :cond_4
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v3

    sget v4, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v3, v4, :cond_5

    .line 5485
    const-string v3, "rotate"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 5486
    :cond_5
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v3

    sget v4, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-ne v3, v4, :cond_1

    .line 5488
    const-string v0, "rotate"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move v0, v1

    goto :goto_1
.end method

.method private hideCameraCaptureModeImg()V
    .locals 2

    .prologue
    .line 5913
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeImg:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 5914
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeImg:Lcom/android/camera/ui/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 5916
    :cond_0
    return-void
.end method

.method private hideExposureControlBar()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 4677
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4678
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4679
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureAdd:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 4680
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureLess:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 4681
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureControlBg:Landroid/widget/ImageView;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 4682
    return-void
.end method

.method private hideMenuLayout()V
    .locals 5

    .prologue
    const/16 v4, 0xb4

    const/16 v3, 0x8

    .line 4800
    const/4 v0, 0x0

    .line 4801
    .local v0, orientation:I
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    .line 4802
    invoke-direct {p0}, Lcom/android/camera/Camera;->getCameraRotation()I

    move-result v0

    .line 4814
    :cond_0
    :goto_0
    if-ne v0, v4, :cond_1

    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportLedLight()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4815
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->setMenuEnabled(Z)V

    .line 4817
    :cond_1
    div-int/lit8 v1, v0, 0x5a

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    if-ne v0, v4, :cond_7

    .line 4818
    :cond_2
    iget-object v1, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 4819
    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v1, :cond_6

    .line 4820
    iget-object v1, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    iget-object v2, p0, Lcom/android/camera/Camera;->mMenuDismiss:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4832
    :goto_1
    return-void

    .line 4804
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportComprehensivePano()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4805
    invoke-direct {p0}, Lcom/android/camera/Camera;->getCameraRotation()I

    move-result v1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_4

    .line 4806
    const/4 v0, 0x0

    goto :goto_0

    .line 4807
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/Camera;->getCameraRotation()I

    move-result v1

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_0

    .line 4808
    const/16 v0, 0x5a

    goto :goto_0

    .line 4811
    :cond_5
    const/16 v0, 0x10e

    goto :goto_0

    .line 4822
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/Camera;->onMenuDismissAnimationEnd()V

    goto :goto_1

    .line 4825
    :cond_7
    iget-object v1, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 4826
    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v1, :cond_8

    .line 4827
    iget-object v1, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    iget-object v2, p0, Lcom/android/camera/Camera;->mMenuDismiss:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 4829
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/Camera;->onMenuDismissAnimationEnd()V

    goto :goto_1
.end method

.method private hideZoomSeekBar()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 4666
    invoke-direct {p0}, Lcom/android/camera/Camera;->isZoomBarVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4667
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 4668
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 4669
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomLessIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 4670
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomAddIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 4671
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBarBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4674
    :cond_0
    return-void
.end method

.method private homeKeyCaptureMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2723
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsHomePressed:Z

    if-eqz v0, :cond_0

    .line 2724
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2725
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsHomePressed:Z

    .line 2726
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsStopPanroma:Z

    .line 2727
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 2734
    :cond_0
    :goto_0
    return-void

    .line 2728
    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2729
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsHomePressed:Z

    .line 2730
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsStopMulti:Z

    .line 2731
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0
.end method

.method private initMenuBarAnimation()V
    .locals 1

    .prologue
    .line 4766
    const v0, 0x7f050004

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mMenuDismiss:Landroid/view/animation/Animation;

    .line 4767
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuDismiss:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4768
    const v0, 0x7f050005

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mMenuPopup:Landroid/view/animation/Animation;

    .line 4769
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuPopup:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4770
    return-void
.end method

.method private initializeAfterCameraOpen()V
    .locals 4

    .prologue
    .line 988
    invoke-direct {p0}, Lcom/android/camera/Camera;->setPreviewFrameLayoutAspectRatio()V

    .line 989
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v1, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v1}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v2}, Lcom/android/camera/PreviewFrameLayout;->getHeight()I

    move-result v2

    const v3, 0x7f0901ae

    invoke-static {p0, v3}, Lcom/android/camera/Util;->getDimenVaule(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/FocusManager;->setPreviewSize(III)V

    .line 992
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeZoom()V

    .line 993
    invoke-direct {p0}, Lcom/android/camera/Camera;->showTapToFocusToastIfNeeded()V

    .line 994
    return-void
.end method

.method private initializeCapabilities()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5881
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 5882
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

    .line 5885
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mMeteringAreaSupported:Z

    .line 5886
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mAeLockSupported:Z

    .line 5887
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mAwbLockSupported:Z

    .line 5888
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mContinousFocusSupported:Z

    .line 5890
    return-void

    :cond_0
    move v0, v2

    .line 5882
    goto :goto_0

    :cond_1
    move v1, v2

    .line 5885
    goto :goto_1
.end method

.method private initializeControlByIntent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4218
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4222
    const v0, 0x7f0d00d3

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mReviewDoneButton:Landroid/widget/ImageView;

    .line 4223
    const v0, 0x7f0d00d4

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mReviewDoneText:Landroid/widget/TextView;

    .line 4224
    const v0, 0x7f0d00d2

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mReviewDoneLayout:Lcom/android/camera/ui/RotateLayout;

    .line 4225
    const v0, 0x7f0d0015

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mScreenShotImg:Landroid/widget/ImageView;

    .line 4226
    iget-object v0, p0, Lcom/android/camera/Camera;->mScreenShotImg:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 4227
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsContactIntent:Z

    if-nez v0, :cond_0

    .line 4228
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewDoneText:Landroid/widget/TextView;

    const v1, 0x7f0a0030

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 4230
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsFlymeCaptureIntent:Z

    if-nez v0, :cond_1

    .line 4231
    invoke-direct {p0}, Lcom/android/camera/Camera;->setupCaptureParams()V

    .line 4239
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_2

    .line 4241
    const v0, 0x7f0d0199

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoModeLayout:Landroid/widget/LinearLayout;

    .line 4242
    const v0, 0x7f0d019a

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg1:Lcom/android/camera/ui/RotateImageView;

    .line 4243
    const v0, 0x7f0d019b

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg2:Lcom/android/camera/ui/RotateImageView;

    .line 4244
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4245
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg1:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 4246
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg2:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 4248
    :cond_2
    return-void

    .line 4234
    :cond_3
    const v0, 0x7f0d0174

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/MaskedRotateImageView;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    .line 4235
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/MaskedRotateImageView;->enableFilter(Z)V

    .line 4236
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/MaskedRotateImageView;->setVisibility(I)V

    .line 4237
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

    const v3, 0x7f0901a9

    const/4 v2, 0x0

    .line 1133
    const v0, 0x7f0d0087

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mExposureTextView:Landroid/widget/TextView;

    .line 1134
    const v0, 0x7f0d0085

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mExposureAdd:Lcom/android/camera/ui/RotateImageView;

    .line 1135
    const v0, 0x7f0d0088

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mExposureLess:Lcom/android/camera/ui/RotateImageView;

    .line 1136
    const v0, 0x7f0d0084

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mExposureControlLayout:Landroid/widget/LinearLayout;

    .line 1137
    const v0, 0x7f0d0086

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mExposureTextViewLayout:Lcom/android/camera/ui/RotateLayout;

    .line 1138
    const v0, 0x7f0d0083

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mExposureControlBg:Landroid/widget/ImageView;

    .line 1139
    iget v0, p0, Lcom/android/camera/Camera;->mConfiguration_orientation:I

    if-ne v0, v4, :cond_0

    .line 1140
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-static {p0, v3}, Lcom/android/camera/Util;->getDimenVaule(Landroid/content/Context;I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mExposureLeftMove:Landroid/view/animation/Animation;

    .line 1144
    :goto_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureLeftMove:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1145
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureLeftMove:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1146
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureLeftMove:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 1147
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureLeftMove:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1148
    iget v0, p0, Lcom/android/camera/Camera;->mConfiguration_orientation:I

    if-ne v0, v4, :cond_1

    .line 1149
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-static {p0, v3}, Lcom/android/camera/Util;->getDimenVaule(Landroid/content/Context;I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mExposureRightMove:Landroid/view/animation/Animation;

    .line 1153
    :goto_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureRightMove:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1154
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureRightMove:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1155
    return-void

    .line 1142
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-static {p0, v3}, Lcom/android/camera/Util;->getDimenVaule(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mExposureLeftMove:Landroid/view/animation/Animation;

    goto :goto_0

    .line 1151
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

    .line 1020
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_1

    .line 1054
    :cond_0
    :goto_0
    return-void

    .line 1024
    :cond_1
    new-instance v0, Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-direct {v0, p0, p0}, Lcom/android/camera/Camera$MyOrientationEventListener;-><init>(Lcom/android/camera/Camera;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    .line 1025
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/Camera$MyOrientationEventListener;->enable()V

    .line 1028
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 1030
    iget-object v1, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1032
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepMediaProviderInstance()V

    .line 1033
    invoke-direct {p0}, Lcom/android/camera/Camera;->checkStorage()V

    .line 1036
    const v0, 0x7f0d0013

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 1037
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 1038
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    new-instance v1, Lcom/android/camera/Camera$ShutterBtnLongClick;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/Camera$ShutterBtnLongClick;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1039
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v3}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 1041
    new-instance v0, Lcom/android/camera/Camera$ImageSaver;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$ImageSaver;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    .line 1042
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    invoke-virtual {v0, v4}, Lcom/android/camera/Camera$ImageSaver;->setPriority(I)V

    .line 1043
    new-instance v0, Lcom/android/camera/Camera$ImageNamer;

    invoke-direct {v0}, Lcom/android/camera/Camera$ImageNamer;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    .line 1044
    invoke-direct {p0}, Lcom/android/camera/Camera;->installIntentFilter()V

    .line 1046
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    .line 1047
    invoke-direct {p0}, Lcom/android/camera/Camera;->addIdleHandler()V

    .line 1049
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsSystemCapture:Z

    if-eqz v0, :cond_0

    .line 1050
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsSystemCapture:Z

    .line 1051
    invoke-virtual {p0}, Lcom/android/camera/Camera;->autoFocus()V

    .line 1052
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

    .line 4252
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    aget-object v0, v0, v1

    .line 4253
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v6, :cond_0

    .line 4254
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 4256
    new-instance v0, Lcom/android/camera/FocusManager;

    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/Camera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    iget-object v4, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/FocusManager;-><init>(Lcom/android/camera/ComboPreferences;[Ljava/lang/String;Landroid/view/View;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusManager$Listener;ZLandroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    .line 4259
    return-void

    .line 4253
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private initializeIndicatorFlashlight()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 2825
    const v0, 0x7f0d016a

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    .line 2826
    const v0, 0x7f0d008f

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mRotateFlashLightListLayout:Lcom/android/camera/ui/RotateLayout;

    .line 2827
    const v0, 0x7f0d0168

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    .line 2828
    const v0, 0x7f0d0090

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    .line 2829
    new-instance v0, Lcom/android/camera/Camera$FlashLightAdapter;

    const v3, 0x7f0b0030

    sget-object v4, Lcom/android/camera/CameraDeviceManager;->CAMERA_FLASH_LIGHT_ICON:[I

    sget-object v5, Lcom/android/camera/CameraDeviceManager;->CAMERA_FLASH_LIGHT_UNSEL_ICON:[I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/Camera$FlashLightAdapter;-><init>(Lcom/android/camera/Camera;Landroid/content/Context;I[I[I)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mFlashLightAdapter:Lcom/android/camera/Camera$FlashLightAdapter;

    .line 2831
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mFlashLightAdapter:Lcom/android/camera/Camera$FlashLightAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2832
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mFlashLightItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2833
    iget v0, p0, Lcom/android/camera/ActivityBase;->mNumberOfCameras:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2834
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v6}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2836
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportFlashLightMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2837
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2838
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2840
    :cond_2
    return-void
.end method

.method private initializeIndicatorMenu()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 2846
    const v0, 0x7f0d00de

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    .line 2847
    const v0, 0x7f0d00db

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    .line 2848
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getCameraMenuInfo()Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraMenuInfo:Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    .line 2849
    new-instance v0, Lcom/android/camera/CameraMainMenuAdapter;

    invoke-static {p0}, Lcom/android/camera/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mCameraMenuInfo:Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    iget v2, v2, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mMainMenuKeyArrayId:I

    iget-object v3, p0, Lcom/android/camera/Camera;->mCameraMenuInfo:Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    iget v3, v3, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mMainMenuDefaultValueArrayId:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/camera/CameraMainMenuAdapter;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;II)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    .line 2852
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    if-eqz v0, :cond_7

    .line 2853
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraMainMenuAdapter;->setIsMeizuMMSIntent(Z)V

    .line 2854
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_scenemode_key"

    const v3, 0x7f0a006f

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2857
    if-nez v0, :cond_3

    .line 2858
    iget-object v1, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    invoke-virtual {v1, v7}, Lcom/android/camera/CameraMainMenuAdapter;->setCurSel(I)V

    .line 2862
    :goto_0
    iget-object v1, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    const/4 v2, 0x4

    const-string v3, "3M"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraMainMenuAdapter;->setItemTip(ILjava/lang/String;)V

    move v1, v0

    .line 2864
    :goto_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/CameraMainMenuAdapter;->getSelIndex()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mSelIndex:Ljava/util/ArrayList;

    .line 2865
    const v0, 0x7f0d00df

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mMainMenu_v:Landroid/widget/ListView;

    .line 2866
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainMenu_v:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2867
    const v0, 0x7f0d00dc

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mMainMenu_h:Landroid/widget/ListView;

    .line 2868
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainMenu_h:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2869
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainMenu_v:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2870
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainMenu_h:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2871
    const v0, 0x7f0d00e0

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_v:Landroid/widget/ListView;

    .line 2872
    const v0, 0x7f0d00dd

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_h:Landroid/widget/ListView;

    .line 2873
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_v:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2874
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_h:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2875
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v2, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-eq v0, v2, :cond_0

    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v2, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v0, v2, :cond_2

    .line 2877
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    if-eqz v0, :cond_6

    .line 2878
    if-eqz v1, :cond_4

    .line 2879
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubIsoAdapter:Lcom/android/camera/SubMenuAdapter;

    if-nez v0, :cond_1

    .line 2880
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

    .line 2883
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubIsoAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2884
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubIsoAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2885
    iput v6, p0, Lcom/android/camera/Camera;->mMainSel:I

    .line 2902
    :cond_2
    :goto_2
    return-void

    .line 2860
    :cond_3
    iget-object v1, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    invoke-virtual {v1, v6}, Lcom/android/camera/CameraMainMenuAdapter;->setCurSel(I)V

    goto/16 :goto_0

    .line 2887
    :cond_4
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    if-nez v0, :cond_5

    .line 2888
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

    .line 2891
    :cond_5
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2892
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2893
    iput v7, p0, Lcom/android/camera/Camera;->mMainSel:I

    goto :goto_2

    .line 2896
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

    .line 2898
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubCaptureModeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2899
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubCaptureModeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2

    :cond_7
    move v1, v6

    goto/16 :goto_1
.end method

.method private initializeMiscControls(Z)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 4263
    const v0, 0x7f0d0159

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PreviewFrameLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    .line 4265
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setTapUpListener(Landroid/view/View;)V

    .line 4267
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Lcom/android/camera/PreviewFrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 4268
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Lcom/android/camera/PreviewFrameLayout;->setOnSizeChangedListener(Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;)V

    .line 4269
    const v0, 0x7f0d00d9

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GlowImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    .line 4270
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GlowImageView;->setClickable(Z)V

    .line 4271
    :cond_0
    const v0, 0x7f0d00d8

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    .line 4272
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setClickable(Z)V

    .line 4273
    :cond_1
    const v0, 0x7f0d00d7

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GlowImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mBackControl:Lcom/android/camera/ui/GlowImageView;

    .line 4274
    const v0, 0x7f0d00d6

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    .line 4275
    const v0, 0x7f0d00da

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GlowImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mMenuShowIcon:Lcom/android/camera/ui/GlowImageView;

    .line 4276
    const v0, 0x7f0d00d5

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mMenuBackControl:Landroid/widget/RelativeLayout;

    .line 4278
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isFrontCamera(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4279
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4280
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/GlowImageView;->setVisibility(I)V

    .line 4281
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 4286
    :cond_3
    const v0, 0x7f0d0169

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeImg:Lcom/android/camera/ui/RotateImageView;

    .line 4287
    const v0, 0x7f0d018b

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SmileRectView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mSmileRect:Lcom/android/camera/ui/SmileRectView;

    .line 4288
    const v0, 0x7f0d019c

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mToastRotateLayout:Lcom/android/camera/ui/RotateLayout;

    .line 4289
    const v0, 0x7f0d019d

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mToastLayout:Landroid/widget/RelativeLayout;

    .line 4290
    const v0, 0x7f0d019e

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    .line 4291
    const v0, 0x7f0d00fb

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mPanoramaProgressLayout:Lcom/android/camera/ui/RotateLayout;

    .line 4292
    const v0, 0x7f0d00fc

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PanoraProgressBar;

    iput-object v0, p0, Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;

    .line 4293
    iget-object v0, p0, Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;

    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getPanoraMaxValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PanoraProgressBar;->setMax(I)V

    .line 4295
    invoke-direct {p0}, Lcom/android/camera/Camera;->initMenuBarAnimation()V

    .line 4296
    const v0, 0x7f0d0012

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ControlPanelLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraControl:Lcom/android/camera/ui/ControlPanelLayout;

    .line 4297
    return-void
.end method

.method private initializeSecondTime()V
    .locals 5

    .prologue
    .line 1081
    iget-object v1, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v1}, Lcom/android/camera/Camera$MyOrientationEventListener;->enable()V

    .line 1084
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 1086
    .local v0, recordLocation:Z
    iget-object v1, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1088
    invoke-direct {p0}, Lcom/android/camera/Camera;->installIntentFilter()V

    .line 1089
    new-instance v1, Lcom/android/camera/Camera$ImageSaver;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$ImageSaver;-><init>(Lcom/android/camera/Camera;)V

    iput-object v1, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    .line 1090
    iget-object v1, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera$ImageSaver;->setPriority(I)V

    .line 1091
    new-instance v1, Lcom/android/camera/Camera$ImageNamer;

    invoke-direct {v1}, Lcom/android/camera/Camera$ImageNamer;-><init>()V

    iput-object v1, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    .line 1092
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeZoom()V

    .line 1093
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepMediaProviderInstance()V

    .line 1094
    invoke-direct {p0}, Lcom/android/camera/Camera;->checkStorage()V

    .line 1096
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsSystemCapture:Z

    if-eqz v1, :cond_0

    .line 1097
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsSystemCapture:Z

    .line 1098
    invoke-virtual {p0}, Lcom/android/camera/Camera;->autoFocus()V

    .line 1099
    iget-object v1, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x15

    invoke-direct {p0}, Lcom/android/camera/Camera;->getSystemAutoCaptureDelay()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1101
    :cond_0
    return-void
.end method

.method private initializeZoom()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1158
    const v0, 0x7f0d01ad

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    .line 1159
    const v0, 0x7f0d01aa

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mZoomLessIcon:Lcom/android/camera/ui/RotateImageView;

    .line 1160
    const v0, 0x7f0d01ab

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mZoomAddIcon:Lcom/android/camera/ui/RotateImageView;

    .line 1161
    const v0, 0x7f0d01a9

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBarBg:Landroid/widget/RelativeLayout;

    .line 1162
    const v0, 0x7f0d01ac

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBarLayout:Lcom/android/camera/ui/RotateLayout;

    .line 1164
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 1185
    :cond_0
    :goto_0
    return-void

    .line 1167
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1168
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mZoomMax:I

    .line 1173
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mZoomValue:I

    .line 1176
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/camera/Camera;->mZoomMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1177
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/camera/Camera;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1178
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/android/camera/Camera$ZoomSeekBarListener;

    invoke-direct {v1, p0, v3}, Lcom/android/camera/Camera$ZoomSeekBarListener;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1179
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/android/camera/Camera$ZoomScaleGestureLis;

    invoke-direct {v1, p0, v3}, Lcom/android/camera/Camera$ZoomScaleGestureLis;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    invoke-direct {v0, p0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mZoomScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 1180
    iget v0, p0, Lcom/android/camera/Camera;->mConfiguration_orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1181
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBarLayout:Lcom/android/camera/ui/RotateLayout;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    goto :goto_0

    .line 1183
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBarLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v2, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    goto :goto_0
.end method

.method private installIntentFilter()V
    .locals 2

    .prologue
    .line 3940
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3942
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3943
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3944
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3945
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3946
    iget-object v1, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3948
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3949
    const-string v1, "android.intent.action.MEIZU_HDMI_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3950
    iget-object v1, p0, Lcom/android/camera/Camera;->mSysReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3951
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    .line 3952
    return-void
.end method

.method private isBackKeyIdle()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 5405
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

    .line 5399
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
    .line 3026
    if-nez p1, :cond_1

    .line 3027
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3029
    :goto_0
    return v0

    .line 3027
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3029
    :cond_1
    const-string v0, "capture-normal"

    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_capture_mode_key"

    const v3, 0x7f0a0071

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
    .line 5410
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5411
    const-string v1, "GetIcon"

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Contact"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsContactIntent:Z

    .line 5412
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsNotePaperIntent:Z

    .line 5414
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

    .line 3035
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

    .line 5428
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 5429
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "isCheckLowBattery"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 5430
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

    const/4 v2, 0x0

    .line 5434
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getMeizuFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsLockView:Z

    .line 5435
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getMeizuFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    move v0, v1

    .line 5436
    :goto_1
    iget-boolean v3, p0, Lcom/android/camera/Camera;->mIsLockView:Z

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsLockViewIntent:Z

    .line 5437
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsLockView:Z

    if-eqz v0, :cond_0

    .line 5438
    const-string v0, "access_control"

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/AccessControlManager;

    .line 5439
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/AccessControlManager;->checkAccessControl(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsSecurityAppLock:Z

    .line 5440
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setSwipEnabled(Z)V

    .line 5441
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->setIsInterceptHomeKey(Z)V

    .line 5444
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsSecurityAppLock:Z

    if-eqz v0, :cond_1

    .line 5445
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MaskedRotateImageView;->setVisibility(I)V

    .line 5447
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsLockViewIntent:Z

    return v0

    :cond_2
    move v0, v2

    .line 5434
    goto :goto_0

    :cond_3
    move v0, v2

    .line 5435
    goto :goto_1

    :cond_4
    move v0, v2

    .line 5436
    goto :goto_2
.end method

.method private isMeizuCaptureIntent()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 5418
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 5419
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

    .line 5421
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsFlymeCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 5422
    invoke-static {v1}, Lcom/android/camera/Storage;->checkFlymeMmsPathAvailable(Z)V

    .line 5424
    :cond_0
    const-string v0, "android.media.action.MEIZU_CAMERA_APP_MMS_EX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 5419
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMeizuSystemCaptureIntent()Z
    .locals 3

    .prologue
    .line 5451
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
    .line 5093
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 5094
    const/4 v0, 0x1

    .line 5096
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

    .line 5089
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
    .line 979
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 980
    const/4 v0, 0x1

    .line 982
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keepMediaProviderInstance()V
    .locals 2

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 1014
    :cond_0
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 5829
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5830
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5831
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5832
    return-void
.end method

.method private onMenuDismissAnimationEnd()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const-wide/16 v4, 0x32

    const-wide/16 v2, 0x0

    .line 4741
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsRedisplayCaptureTip:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4742
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsRedisplayCaptureTip:Z

    .line 4743
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 4745
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsDropTouchEvent:Z

    .line 4746
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 4747
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    if-nez v0, :cond_1

    .line 4748
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 4750
    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 4751
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoModeLayout:Landroid/widget/LinearLayout;

    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 4753
    :cond_2
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4754
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 4755
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 4757
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mBackControl:Lcom/android/camera/ui/GlowImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 4758
    iget-object v0, p0, Lcom/android/camera/Camera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 4759
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuShowIcon:Lcom/android/camera/ui/GlowImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 4760
    return-void
.end method

.method private prepareCaptureModeUI()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x32

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2688
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 2689
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 2690
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 2691
    iput v3, p0, Lcom/android/camera/Camera;->mSmileFaceTime:I

    .line 2692
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2693
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setSwipEnabled(Z)V

    .line 2714
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportLedLight()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2715
    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->setMenuEnabled(Z)V

    .line 2717
    :cond_1
    return-void

    .line 2694
    :cond_2
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 2695
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 2696
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 2697
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2698
    iput v2, p0, Lcom/android/camera/Camera;->mPanoramaVaule:I

    .line 2699
    iget-object v0, p0, Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PanoraProgressBar;->setProgress(I)V

    .line 2700
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsStopPanroma:Z

    .line 2701
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setSwipEnabled(Z)V

    goto :goto_0

    .line 2702
    :cond_3
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 2703
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsStopMulti:Z

    .line 2704
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setSwipEnabled(Z)V

    goto :goto_0

    .line 2705
    :cond_4
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 2706
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->setIsInterceptHomeKey(Z)V

    .line 2707
    invoke-static {}, Lcom/android/camera/Util;->getIsCheckBattery()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/camera/Camera;->isMeizuSystemCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/android/camera/Util;->getIsBatteryLow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2708
    const v0, 0x7f0a00c0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2710
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2711
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setSwipEnabled(Z)V

    goto :goto_0
.end method

.method private registerProximitySensorListener()V
    .locals 4

    .prologue
    .line 852
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

    .line 854
    iget-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/Camera;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/camera/Camera;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsProximityResisterSuccess:Z

    .line 856
    :cond_0
    return-void
.end method

.method private releaseLightScreen()V
    .locals 1

    .prologue
    .line 2182
    iget-object v0, p0, Lcom/android/camera/Camera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 2183
    iget-object v0, p0, Lcom/android/camera/Camera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2186
    :cond_0
    return-void
.end method

.method private resetCaptureMode(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2405
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isFrontCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2406
    invoke-static {p0}, Lcom/android/camera/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_capture_mode_key"

    const-string v2, "capture-normal"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2408
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-eqz v0, :cond_4

    .line 2410
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->checkViewGone(Landroid/view/View;)Z

    .line 2411
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/camera/Util;->checkViewGone(Landroid/view/View;)Z

    .line 2412
    iget-object v0, p0, Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;

    invoke-static {v0}, Lcom/android/camera/Util;->checkViewGone(Landroid/view/View;)Z

    .line 2414
    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    invoke-virtual {v0}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    .line 2415
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsRedisplayCaptureTip:Z

    .line 2417
    if-eqz p1, :cond_1

    .line 2418
    invoke-static {p0}, Lcom/android/camera/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_capture_mode_key"

    const-string v2, "capture-normal"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2419
    iget-object v1, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    iget-object v0, p0, Lcom/android/camera/Camera;->mSubCaptureModeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v3}, Lcom/android/camera/SubMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/android/camera/CameraMainMenuAdapter;->setMXTipsStr(ILjava/lang/String;)V

    .line 2420
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubCaptureModeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v3}, Lcom/android/camera/SubMenuAdapter;->setCurSel(I)V

    .line 2421
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/CameraMainMenuAdapter;->notifyDataSetInvalidated()V

    .line 2422
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubCaptureModeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/SubMenuAdapter;->notifyDataSetInvalidated()V

    .line 2424
    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 2425
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 2426
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 2427
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2428
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg1:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2429
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg2:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2430
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->setIsInterceptHomeKey(Z)V

    .line 2434
    :cond_2
    :goto_0
    invoke-static {v3}, Lcom/android/camera/Util;->setCurCaptureMode(I)V

    .line 2435
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_3

    .line 2436
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setCaptureMode(I)V

    .line 2437
    iput v3, p0, Lcom/android/camera/Camera;->mLastCaptureMode:I

    .line 2439
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    .line 2441
    :cond_4
    return-void

    .line 2431
    :cond_5
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 2432
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->setIsInterceptHomeKey(Z)V

    goto :goto_0
.end method

.method private resetLedLight()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2378
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportLedLight()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2379
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2381
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->setMenuEnabled(Z)V

    .line 2386
    :cond_1
    :goto_0
    return-void

    .line 2383
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setMenuEnabled(Z)V

    goto :goto_0
.end method

.method private resetMultiFlashLightOff()V
    .locals 2

    .prologue
    .line 2476
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsMultiSetFlashLightOff:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 2477
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2478
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2479
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsMultiSetFlashLightOff:Z

    .line 2481
    :cond_0
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 5824
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5825
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 5826
    return-void
.end method

.method private resetZoomScale()V
    .locals 2

    .prologue
    .line 2392
    iget v0, p0, Lcom/android/camera/Camera;->mZoomValue:I

    if-eqz v0, :cond_1

    .line 2393
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 2394
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->startSmoothZoom(I)V

    .line 2396
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsResetZoomScale:Z

    .line 2398
    :cond_1
    return-void
.end method

.method private restorePreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5852
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5853
    iput v1, p0, Lcom/android/camera/Camera;->mZoomValue:I

    .line 5854
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V

    .line 5855
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 5857
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {p0, v0, v1}, Lcom/android/camera/CameraSettings;->restorePreferences(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;)V

    .line 5859
    invoke-virtual {p0}, Lcom/android/camera/Camera;->onSharedPreferenceChanged()V

    .line 5860
    return-void
.end method

.method private setCameraCallBack(Lcom/android/camera/Camera$CameraStatusCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 4957
    if-eqz p1, :cond_1

    .line 4958
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsSetCameraStatusCallback:Z

    .line 4962
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 4963
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setCameraCallBack(Landroid/hardware/Camera$CameraStatusCallback;)V

    .line 4965
    :cond_0
    return-void

    .line 4960
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsSetCameraStatusCallback:Z

    goto :goto_0
.end method

.method private setCameraCaptureModeImg(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 5903
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeImg:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 5904
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 5905
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeImg:Lcom/android/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 5907
    :cond_0
    return-void
.end method

.method private setCameraMode()V
    .locals 2

    .prologue
    .line 5919
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 5920
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5921
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setCameraMode(I)V

    .line 5926
    :cond_0
    :goto_0
    return-void

    .line 5923
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
    .line 5363
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 5364
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateCameraParametersInitialize()V

    .line 5367
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 5368
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateCameraParametersZoom()V

    .line 5371
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 5372
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateCameraParametersPreference()V

    .line 5375
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 5376
    return-void
.end method

.method private setCameraParametersWhenIdle(I)V
    .locals 4
    .parameter "additionalUpdateSet"

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 5381
    iget v0, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    .line 5382
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 5385
    iput v1, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    .line 5396
    :cond_0
    :goto_0
    return-void

    .line 5387
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5388
    iget v0, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    .line 5389
    iput v1, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    goto :goto_0

    .line 5391
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5392
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setCameraState(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2044
    iput p1, p0, Lcom/android/camera/Camera;->mCameraState:I

    .line 2045
    packed-switch p1, :pswitch_data_0

    .line 2064
    :cond_0
    :goto_0
    return-void

    .line 2048
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 2049
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->enableFilter(Z)V

    .line 2050
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 2051
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->enableFilter(Z)V

    goto :goto_0

    .line 2056
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->enableCameraControls(Z)V

    .line 2057
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsEnableControl:Z

    goto :goto_0

    .line 2060
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->enableCameraControls(Z)V

    .line 2061
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsEnableControl:Z

    goto :goto_0

    .line 2045
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
    .line 4950
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    .line 4951
    iget v0, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    .line 4952
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    .line 4953
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v1, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->setDisplayOrientation(I)V

    .line 4954
    return-void
.end method

.method private setIsInterceptHomeKey(Z)V
    .locals 3
    .parameter "isInterceptHomeKey"

    .prologue
    .line 2343
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsSetWinAttributes:Z

    if-eq v2, p1, :cond_0

    .line 2345
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2346
    .local v1, win:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2347
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    iput-boolean p1, v0, Landroid/view/WindowManager$LayoutParams;->isInterceptHomeKey:Z

    .line 2348
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2349
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsSetWinAttributes:Z

    .line 2351
    .end local v0           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #win:Landroid/view/Window;
    :cond_0
    return-void
.end method

.method private setLedEnable(IZ)V
    .locals 3
    .parameter "ledType"
    .parameter "enable"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 3242
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportLedLight()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3243
    if-nez p1, :cond_1

    .line 3244
    invoke-virtual {p0, p2}, Lcom/android/camera/Camera;->setMenuEnabled(Z)V

    .line 3271
    :cond_0
    :goto_0
    return-void

    .line 3245
    :cond_1
    if-ne v1, p1, :cond_2

    .line 3246
    invoke-virtual {p0, p2}, Lcom/android/camera/Camera;->setBackEnabled(Z)V

    goto :goto_0

    .line 3247
    :cond_2
    if-ne v2, p1, :cond_0

    .line 3248
    invoke-virtual {p0, p2}, Lcom/android/camera/Camera;->setMenuEnabled(Z)V

    .line 3249
    invoke-virtual {p0, p2}, Lcom/android/camera/Camera;->setBackEnabled(Z)V

    goto :goto_0

    .line 3252
    :cond_3
    if-nez p1, :cond_4

    .line 3253
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 3254
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/GlowImageView;->setEnabled(Z)V

    .line 3255
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    goto :goto_0

    .line 3257
    :cond_4
    if-ne v1, p1, :cond_5

    .line 3258
    iget-object v0, p0, Lcom/android/camera/Camera;->mBackControl:Lcom/android/camera/ui/GlowImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 3259
    iget-object v0, p0, Lcom/android/camera/Camera;->mBackControl:Lcom/android/camera/ui/GlowImageView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/GlowImageView;->setEnabled(Z)V

    .line 3260
    iget-object v0, p0, Lcom/android/camera/Camera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    goto :goto_0

    .line 3262
    :cond_5
    if-ne v2, p1, :cond_0

    .line 3263
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mBackControl:Lcom/android/camera/ui/GlowImageView;

    if-eqz v0, :cond_0

    .line 3264
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/GlowImageView;->setEnabled(Z)V

    .line 3265
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 3266
    iget-object v0, p0, Lcom/android/camera/Camera;->mBackControl:Lcom/android/camera/ui/GlowImageView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/GlowImageView;->setEnabled(Z)V

    .line 3267
    iget-object v0, p0, Lcom/android/camera/Camera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setOrientationIndicator(IZ)V
    .locals 10
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 3042
    const/16 v1, 0xb4

    .line 3043
    .local v1, forbidDegree:I
    iget v6, p0, Lcom/android/camera/Camera;->mConfiguration_orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 3044
    const/16 v1, 0xb4

    .line 3048
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportLedLight()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3049
    iget v6, p0, Lcom/android/camera/Camera;->mConfiguration_orientation:I

    invoke-static {v6, p1}, Lcom/android/camera/Util;->getLedOrientationIndex(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/camera/Camera;->setLedRotation(I)V

    .line 3050
    if-ne p1, v1, :cond_4

    .line 3051
    iget-boolean v6, p0, Lcom/android/camera/Camera;->mIsMenuShowed:Z

    if-nez v6, :cond_1

    .line 3052
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/camera/Camera;->setMenuEnabled(Z)V

    .line 3060
    :cond_1
    :goto_1
    if-ne p1, v1, :cond_5

    .line 3061
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/camera/Camera;->mIsPreForbidDegree:Z

    .line 3123
    :cond_2
    :goto_2
    return-void

    .line 3045
    :cond_3
    iget v6, p0, Lcom/android/camera/Camera;->mConfiguration_orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 3046
    const/16 v1, 0x10e

    goto :goto_0

    .line 3055
    :cond_4
    iget-boolean v6, p0, Lcom/android/camera/Camera;->mIsPreForbidDegree:Z

    if-eqz v6, :cond_1

    .line 3056
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/camera/Camera;->setMenuEnabled(Z)V

    goto :goto_1

    .line 3064
    :cond_5
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/camera/Camera;->mIsPreForbidDegree:Z

    .line 3066
    iget-boolean v6, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/camera/Camera;->mExposureControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_7

    .line 3067
    iget v6, p0, Lcom/android/camera/Camera;->mConfiguration_orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_a

    .line 3068
    const/16 v6, 0x10e

    if-eq p1, v6, :cond_6

    const/16 v6, 0x5a

    if-ne p1, v6, :cond_9

    .line 3069
    :cond_6
    iget-object v6, p0, Lcom/android/camera/Camera;->mExposureControlLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/camera/Camera;->mExposureLeftMove:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3087
    :cond_7
    :goto_3
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

    .line 3093
    .local v4, indicators:[Lcom/android/camera/ui/Rotatable;
    move-object v0, v4

    .local v0, arr$:[Lcom/android/camera/ui/Rotatable;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v5, :cond_d

    aget-object v3, v0, v2

    .line 3094
    .local v3, indicator:Lcom/android/camera/ui/Rotatable;
    if-eqz v3, :cond_8

    invoke-interface {v3, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 3093
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3071
    .end local v0           #arr$:[Lcom/android/camera/ui/Rotatable;
    .end local v2           #i$:I
    .end local v3           #indicator:Lcom/android/camera/ui/Rotatable;
    .end local v4           #indicators:[Lcom/android/camera/ui/Rotatable;
    .end local v5           #len$:I
    :cond_9
    iget-boolean v6, p0, Lcom/android/camera/Camera;->mIsExposureLeftAni:Z

    if-eqz v6, :cond_7

    .line 3072
    iget-object v6, p0, Lcom/android/camera/Camera;->mExposureControlLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/camera/Camera;->mExposureRightMove:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_3

    .line 3075
    :cond_a
    iget v6, p0, Lcom/android/camera/Camera;->mConfiguration_orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    .line 3076
    if-eqz p1, :cond_b

    const/16 v6, 0xb4

    if-ne p1, v6, :cond_c

    .line 3077
    :cond_b
    iget-object v6, p0, Lcom/android/camera/Camera;->mExposureControlLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/camera/Camera;->mExposureLeftMove:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3078
    iget-object v6, p0, Lcom/android/camera/Camera;->mExposureControlBg:Landroid/widget/ImageView;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/camera/Camera;->mExposureControlBg:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/camera/Camera;->mExposureLeftMove:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_3

    .line 3080
    :cond_c
    iget-boolean v6, p0, Lcom/android/camera/Camera;->mIsExposureLeftAni:Z

    if-eqz v6, :cond_7

    .line 3081
    iget-object v6, p0, Lcom/android/camera/Camera;->mExposureControlLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/camera/Camera;->mExposureRightMove:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3082
    iget-object v6, p0, Lcom/android/camera/Camera;->mExposureControlBg:Landroid/widget/ImageView;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/camera/Camera;->mExposureControlBg:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/camera/Camera;->mExposureRightMove:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_3

    .line 3097
    .restart local v0       #arr$:[Lcom/android/camera/ui/Rotatable;
    .restart local v2       #i$:I
    .restart local v4       #indicators:[Lcom/android/camera/ui/Rotatable;
    .restart local v5       #len$:I
    :cond_d
    iget-boolean v6, p0, Lcom/android/camera/Camera;->mIsMenuShowed:Z

    if-eqz v6, :cond_2

    .line 3098
    iget-boolean v6, p0, Lcom/android/camera/Camera;->mIsPreForbidDegree:Z

    if-eqz v6, :cond_e

    .line 3099
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/camera/Camera;->mIsPreForbidDegree:Z

    goto/16 :goto_2

    .line 3101
    :cond_e
    iget-object v6, p0, Lcom/android/camera/Camera;->mCameraControl:Lcom/android/camera/ui/ControlPanelLayout;

    invoke-static {v6}, Lcom/android/camera/Util;->checkViewGone(Landroid/view/View;)Z

    .line 3102
    iget-object v6, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/camera/Camera$14;

    invoke-direct {v7, p0}, Lcom/android/camera/Camera$14;-><init>(Lcom/android/camera/Camera;)V

    const-wide/16 v8, 0x96

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3108
    iget v6, p0, Lcom/android/camera/Camera;->mOrientation:I

    div-int/lit8 v6, v6, 0x5a

    and-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_f

    .line 3109
    iget-object v6, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v6}, Lcom/android/camera/ui/RotateLayout;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_2

    .line 3111
    iget-object v6, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    const-wide/16 v7, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 3112
    iget-object v6, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    const-wide/16 v7, 0x96

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    goto/16 :goto_2

    .line 3115
    :cond_f
    iget-object v6, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v6}, Lcom/android/camera/ui/RotateLayout;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_2

    .line 3117
    iget-object v6, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    const-wide/16 v7, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 3118
    iget-object v6, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    const-wide/16 v7, 0x96

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    goto/16 :goto_2
.end method

.method private setOtherParamDefault()V
    .locals 3

    .prologue
    .line 2670
    iget-object v0, p0, Lcom/android/camera/Camera;->mISO:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mISO:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2671
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "iso-auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setIsoMode(Ljava/lang/String;)V

    .line 2673
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mWhiteBalance:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2674
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 2676
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mWhiteBalance:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera;->mWhiteBalance:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2677
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 2679
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_3

    .line 2680
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2682
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

    .line 5929
    iget v0, p0, Lcom/android/camera/Camera;->mOrientation:I

    div-int/lit8 v0, v0, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 5930
    packed-switch p1, :pswitch_data_0

    .line 5968
    :goto_0
    return-void

    .line 5932
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PanoraProgressBar;->setDirection(I)V

    goto :goto_0

    .line 5936
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PanoraProgressBar;->setDirection(I)V

    goto :goto_0

    .line 5940
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/PanoraProgressBar;->setDirection(I)V

    goto :goto_0

    .line 5944
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/PanoraProgressBar;->setDirection(I)V

    goto :goto_0

    .line 5949
    :cond_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 5951
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/PanoraProgressBar;->setDirection(I)V

    goto :goto_0

    .line 5955
    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/PanoraProgressBar;->setDirection(I)V

    goto :goto_0

    .line 5959
    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PanoraProgressBar;->setDirection(I)V

    goto :goto_0

    .line 5963
    :pswitch_7
    iget-object v0, p0, Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PanoraProgressBar;->setDirection(I)V

    goto :goto_0

    .line 5930
    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 5949
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

    .line 5972
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v3

    sget v4, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v3, v4, :cond_2

    .line 5973
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5974
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v3}, Lcom/android/camera/Util;->isFrontCamera(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5975
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 5976
    iget-object v3, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v3, v0}, Lcom/android/camera/PreviewFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5977
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 5978
    .local v2, size:Landroid/hardware/Camera$Size;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 5979
    .local v1, p:Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 5980
    iget-object v3, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/PreviewFrameLayout;->setScreenSize(II)V

    .line 5981
    iget-object v3, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    int-to-double v4, v4

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 5982
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 5983
    invoke-virtual {p0}, Lcom/android/camera/Camera;->notifyScreenNailChanged()V

    .line 5997
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #p:Landroid/graphics/Point;
    .end local v2           #size:Landroid/hardware/Camera$Size;
    :cond_0
    :goto_0
    return-void

    .line 5985
    .restart local v0       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget-object v3, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v3, v0}, Lcom/android/camera/PreviewFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5986
    iget-object v3, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v3, v6, v6}, Lcom/android/camera/PreviewFrameLayout;->setScreenSize(II)V

    .line 5987
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 5988
    .restart local v2       #size:Landroid/hardware/Camera$Size;
    iget-object v3, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    int-to-double v4, v4

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 5989
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 5990
    invoke-virtual {p0}, Lcom/android/camera/Camera;->notifyScreenNailChanged()V

    goto :goto_0

    .line 5992
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #size:Landroid/hardware/Camera$Size;
    :cond_2
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v3

    sget v4, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-ne v3, v4, :cond_0

    .line 5994
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 5995
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

.method private setSwipEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 5531
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getLastFileEncrypt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsLastFileEncryptTakePic:Z

    if-nez v0, :cond_0

    .line 5536
    :goto_0
    return-void

    .line 5534
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    goto :goto_0
.end method

.method private setupCaptureParams()V
    .locals 2

    .prologue
    .line 5455
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 5456
    if-eqz v1, :cond_0

    .line 5457
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 5458
    const-string v0, "crop"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mCropValue:Ljava/lang/String;

    .line 5460
    :cond_0
    return-void
.end method

.method private showExposureControlBar()V
    .locals 4

    .prologue
    const-wide/16 v2, 0xc8

    .line 4685
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureControlLayout:Landroid/widget/LinearLayout;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 4686
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureAdd:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 4687
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureLess:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 4688
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureControlBg:Landroid/widget/ImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 4689
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/Camera$19;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$19;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4696
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/camera/Camera;->mExposureValue:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4697
    return-void
.end method

.method private showMenuLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4773
    iget-object v1, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/android/camera/Util;->checkViewGone(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4774
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mIsRedisplayCaptureTip:Z

    .line 4776
    :cond_0
    const/4 v0, 0x0

    .line 4777
    .local v0, orientation:I
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 4778
    invoke-direct {p0}, Lcom/android/camera/Camera;->getCameraRotation()I

    move-result v0

    .line 4790
    :cond_1
    :goto_0
    div-int/lit8 v1, v0, 0x5a

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_5

    .line 4791
    iget-object v1, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 4792
    iget-object v1, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_h:Lcom/android/camera/ui/RotateLayout;

    iget-object v2, p0, Lcom/android/camera/Camera;->mMenuPopup:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4797
    :goto_1
    return-void

    .line 4780
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportComprehensivePano()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4781
    invoke-direct {p0}, Lcom/android/camera/Camera;->getCameraRotation()I

    move-result v1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_3

    .line 4782
    const/4 v0, 0x0

    goto :goto_0

    .line 4783
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/Camera;->getCameraRotation()I

    move-result v1

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_1

    .line 4784
    const/16 v0, 0x5a

    goto :goto_0

    .line 4787
    :cond_4
    const/16 v0, 0x10e

    goto :goto_0

    .line 4794
    :cond_5
    iget-object v1, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 4795
    iget-object v1, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    iget-object v2, p0, Lcom/android/camera/Camera;->mMenuPopup:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method private showTapToFocusToast()V
    .locals 3

    .prologue
    .line 5873
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    const v1, 0x7f0a0092

    iget v2, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 5875
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5876
    const-string v1, "pref_camera_first_use_hint_shown_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5877
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5878
    return-void
.end method

.method private showTapToFocusToastIfNeeded()V
    .locals 4

    .prologue
    .line 1058
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_first_use_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1063
    :cond_0
    return-void
.end method

.method private startPreview()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4968
    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v2, :cond_0

    .line 4969
    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 4972
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/Camera;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 4973
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v2

    if-ne v2, v7, :cond_d

    .line 4975
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsSetCameraStatusCallback:Z

    if-nez v2, :cond_2

    .line 4976
    iget-object v2, p0, Lcom/android/camera/Camera;->mCameraStatusCallback:Lcom/android/camera/Camera$CameraStatusCallback;

    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setCameraCallBack(Lcom/android/camera/Camera$CameraStatusCallback;)V

    .line 4984
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 4985
    .local v0, isSet:Z
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    iget-boolean v3, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-static {v2, v3}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsCapture:Z

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 4988
    :cond_3
    const/4 v0, 0x0

    .line 4993
    :cond_4
    iget v2, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 4995
    :cond_5
    if-eqz v0, :cond_6

    .line 4996
    invoke-direct {p0}, Lcom/android/camera/Camera;->setDisplayOrientation()V

    .line 4998
    :cond_6
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v3, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 5000
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mSnapshotOnIdle:Z

    if-nez v2, :cond_7

    .line 5006
    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2, v6}, Lcom/android/camera/FocusManager;->setAeAwbLock(Z)V

    .line 5009
    :cond_7
    iget-object v2, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v2, :cond_8

    .line 5010
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 5011
    .local v1, size:Landroid/hardware/Camera$Size;
    iget v2, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_e

    .line 5012
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 5016
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/Camera;->notifyScreenNailChanged()V

    .line 5017
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 5018
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 5021
    .end local v1           #size:Landroid/hardware/Camera$Size;
    :cond_8
    if-eqz v0, :cond_9

    .line 5022
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 5023
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 5024
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setCaptureMode(I)V

    .line 5027
    :cond_9
    iput-boolean v6, p0, Lcom/android/camera/Camera;->mIsCapture:Z

    .line 5032
    iget-object v2, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5034
    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->onPreviewStarted()V

    .line 5036
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mSnapshotOnIdle:Z

    if-eqz v2, :cond_a

    .line 5037
    iget-object v2, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/Camera;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5039
    :cond_a
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsSystemCapture:Z

    if-nez v2, :cond_b

    .line 5040
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsCameraEVSupport()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 5041
    invoke-static {}, Lcom/android/camera/Util;->getIsBeforeGotoVideo()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 5042
    iput-boolean v6, p0, Lcom/android/camera/Camera;->mIsCanTouchFocus:Z

    .line 5049
    iget-object v2, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/camera/Camera$20;

    invoke-direct {v3, p0}, Lcom/android/camera/Camera$20;-><init>(Lcom/android/camera/Camera;)V

    const-wide/16 v4, 0x514

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5055
    invoke-static {v6}, Lcom/android/camera/Util;->setIsBeforeGotoVideo(Z)V

    .line 5061
    :cond_b
    if-eqz v0, :cond_c

    .line 5062
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    .line 5064
    :cond_c
    iput-boolean v7, p0, Lcom/android/camera/Camera;->mIsCanProximityTakePicture:Z

    .line 5065
    return-void

    .line 4979
    .end local v0           #isSet:Z
    :cond_d
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsSetCameraStatusCallback:Z

    if-eqz v2, :cond_2

    .line 4980
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setCameraCallBack(Lcom/android/camera/Camera$CameraStatusCallback;)V

    goto/16 :goto_0

    .line 5014
    .restart local v0       #isSet:Z
    .restart local v1       #size:Landroid/hardware/Camera$Size;
    :cond_e
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    goto :goto_1
.end method

.method private stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5068
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsCameraEVSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5069
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_0

    .line 5070
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->disableGetEV()V

    .line 5074
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v0, :cond_1

    .line 5075
    const-string v0, "camera"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5079
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 5081
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 5082
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_2

    .line 5083
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onPreviewStopped()V

    .line 5085
    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsCanProximityTakePicture:Z

    .line 5086
    return-void
.end method

.method private switchCamera()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5595
    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v2, :cond_1

    .line 5660
    :cond_0
    :goto_0
    return-void

    .line 5597
    :cond_1
    const-string v2, "camera"

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

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5598
    iget v2, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v2}, Lcom/android/camera/Util;->setPreCameraId(I)V

    .line 5599
    iget v2, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    iput v2, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    .line 5600
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    .line 5603
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCamera()V

    .line 5604
    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 5605
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setIsDropFullScreenChanged(Z)V

    .line 5606
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->setSwipEnabled(Z)V

    .line 5609
    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget v3, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 5610
    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget v3, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 5611
    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 5612
    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_capture_mode_key"

    const v4, 0x7f0a0071

    invoke-virtual {p0, v4}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->changeCaptureModeToIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/Util;->setCurCaptureMode(I)V

    .line 5615
    new-instance v2, Lcom/android/camera/ActivityBase$CameraOpenThread;

    invoke-direct {v2, p0}, Lcom/android/camera/ActivityBase$CameraOpenThread;-><init>(Lcom/android/camera/ActivityBase;)V

    .line 5616
    invoke-virtual {v2}, Lcom/android/camera/ActivityBase$CameraOpenThread;->start()V

    .line 5618
    :try_start_0
    invoke-virtual {v2}, Lcom/android/camera/ActivityBase$CameraOpenThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5622
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->setCameraMode()V

    .line 5623
    iget v2, p0, Lcom/android/camera/Camera;->mLastCaptureMode:I

    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 5624
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v2

    iput v2, p0, Lcom/android/camera/Camera;->mLastCaptureMode:I

    .line 5625
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setCaptureMode(I)V

    .line 5627
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeCapabilities()V

    .line 5628
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    aget-object v2, v2, v3

    .line 5629
    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v2, v0, :cond_5

    .line 5630
    :goto_2
    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2, v0}, Lcom/android/camera/FocusManager;->setMirror(Z)V

    .line 5631
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v2, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Lcom/android/camera/FocusManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 5632
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    .line 5635
    invoke-direct {p0}, Lcom/android/camera/Camera;->setPreviewFrameLayoutAspectRatio()V

    .line 5637
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeZoom()V

    .line 5638
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeExposure()V

    .line 5639
    invoke-direct {p0}, Lcom/android/camera/Camera;->showTapToFocusToastIfNeeded()V

    .line 5643
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5646
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5647
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->isCaptrueModeNormal(Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 5648
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->firstPrepareCaptureModeUI(Z)V

    .line 5656
    :cond_4
    :goto_3
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 5658
    iget v0, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/Camera;->setOrientationIndicator(IZ)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 5629
    goto :goto_2

    .line 5650
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-static {v0, v2}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_7

    .line 5651
    invoke-direct {p0}, Lcom/android/camera/Camera;->showExposureControlBar()V

    .line 5653
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateFlashLightUI()V

    goto :goto_3

    .line 5619
    :catch_0
    move-exception v2

    goto/16 :goto_1
.end method

.method private switchToOtherMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 5496
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5502
    :goto_0
    return-void

    .line 5497
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageSaver;->waitDone()V

    .line 5498
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-static {v0}, Lcom/android/camera/ThumbnailHolder;->keep(Lcom/android/camera/Thumbnail;)V

    .line 5499
    :cond_2
    invoke-static {p1, p0}, Lcom/android/camera/MenuHelper;->gotoMode(ILandroid/app/Activity;)V

    .line 5500
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5501
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
    .line 5511
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5524
    :goto_0
    return-void

    .line 5512
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageSaver;->waitDone()V

    .line 5513
    :cond_1
    if-eqz p2, :cond_2

    .line 5514
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/android/camera/MenuHelper;->gotoModeForMeizu(ILandroid/app/Activity;Landroid/content/Intent;)V

    .line 5522
    :goto_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5523
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0

    .line 5515
    :cond_2
    if-eqz p3, :cond_3

    .line 5516
    invoke-static {p1, p0}, Lcom/android/camera/MenuHelper;->gotoModeWithFlag(ILandroid/app/Activity;)V

    goto :goto_1

    .line 5517
    :cond_3
    if-eqz p4, :cond_4

    .line 5518
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/android/camera/MenuHelper;->gotoModeAddFlag(ILandroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_1

    .line 5520
    :cond_4
    invoke-static {p1, p0}, Lcom/android/camera/MenuHelper;->gotoMode(ILandroid/app/Activity;)V

    goto :goto_1
.end method

.method private timeToCloseCamera()V
    .locals 4

    .prologue
    const/16 v3, 0x12

    .line 878
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 879
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 880
    return-void
.end method

.method private timeToHideFlashLightList()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    .line 873
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 874
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 875
    return-void
.end method

.method private timeToHideZoomBar()V
    .locals 4

    .prologue
    const/16 v3, 0xf

    .line 868
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 869
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1770

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 870
    return-void
.end method

.method private unregisterProximitySensorListener()V
    .locals 2

    .prologue
    .line 861
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsProximityResisterSuccess:Z

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/Camera;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 863
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsProximityResisterSuccess:Z

    .line 865
    :cond_0
    return-void
.end method

.method private updateCameraParametersInitialize()V
    .locals 3

    .prologue
    .line 5103
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 5104
    if-eqz v0, :cond_0

    .line 5105
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 5106
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 5109
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 5113
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5114
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5115
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5117
    :cond_1
    return-void
.end method

.method private updateCameraParametersPreference()V
    .locals 10

    .prologue
    const/16 v5, 0x4c0

    const/16 v9, 0x23

    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 5127
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mAeLockSupported:Z

    if-eqz v0, :cond_0

    .line 5128
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->getAeAwbLock()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 5131
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mAwbLockSupported:Z

    if-eqz v0, :cond_1

    .line 5132
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->getAeAwbLock()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 5135
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFocusAreaSupported:Z

    if-eqz v0, :cond_2

    .line 5136
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->getFocusAreas()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 5139
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_3

    .line 5141
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 5145
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-static {v0, v2}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5146
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsFlymeCaptureIntent:Z

    if-nez v0, :cond_e

    .line 5147
    const-string v0, "2048x1536"

    iput-object v0, p0, Lcom/android/camera/Camera;->mPicSizeStr:Ljava/lang/String;

    .line 5155
    :goto_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mPicSizeStr:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 5156
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {p0, v0}, Lcom/android/camera/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 5162
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 5166
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v2

    sget v4, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v2, v4, :cond_12

    .line 5167
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 5168
    iget v2, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v2}, Lcom/android/camera/Util;->isFrontCamera(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 5169
    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    const/16 v2, 0x500

    if-eq v0, v2, :cond_4

    .line 5170
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0x500

    const/16 v4, 0x2d0

    invoke-virtual {v0, v2, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 5197
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_scenemode_key"

    const v4, 0x7f0a006f

    invoke-virtual {p0, v4}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    .line 5200
    iget-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 5201
    invoke-direct {p0}, Lcom/android/camera/Camera;->isSetOtherParamDefault()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 5202
    iget-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a006f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 5203
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "auto"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    move v0, v3

    .line 5207
    :goto_3
    if-nez v0, :cond_14

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    invoke-static {v2, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v2

    if-nez v2, :cond_14

    .line 5208
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v4, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 5220
    :goto_4
    iget v2, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v2

    .line 5222
    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v2}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 5237
    invoke-static {p0}, Lcom/android/camera/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "pref_camera_record_exposure"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    .line 5238
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportExposure()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v2}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5239
    invoke-static {p0}, Lcom/android/camera/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "pref_camera_exposure_key"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/android/camera/Camera;->mExposureValue:F

    .line 5240
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v2

    sget v4, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-ne v2, v4, :cond_17

    .line 5241
    new-instance v2, Ljava/lang/Float;

    iget v4, p0, Lcom/android/camera/Camera;->mExposureValue:F

    invoke-direct {v2, v4}, Ljava/lang/Float;-><init>(F)V

    .line 5242
    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 5248
    :cond_5
    :goto_5
    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_iso_key"

    const v5, 0x7f0a0070

    invoke-virtual {p0, v5}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/Camera;->mISO:Ljava/lang/String;

    .line 5250
    iget-object v2, p0, Lcom/android/camera/Camera;->mISO:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedIsoModes()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5251
    invoke-direct {p0}, Lcom/android/camera/Camera;->isSetOtherParamDefault()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5252
    iget-object v2, p0, Lcom/android/camera/Camera;->mISO:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0070

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 5253
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "iso-auto"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setIsoMode(Ljava/lang/String;)V

    move v0, v3

    .line 5257
    :cond_6
    if-nez v0, :cond_18

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    invoke-static {v2, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v2

    if-nez v2, :cond_18

    .line 5258
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v4, p0, Lcom/android/camera/Camera;->mISO:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setIsoMode(Ljava/lang/String;)V

    .line 5267
    :cond_7
    :goto_6
    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_recordwdr_key"

    const v5, 0x7f0a003c

    invoke-virtual {p0, v5}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5269
    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedWdrModes()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    invoke-static {v4, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v4

    if-nez v4, :cond_8

    .line 5271
    iget v4, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v4}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 5272
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->isCaptrueModeNormal(Z)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 5273
    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->changeWdrModeToIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/hardware/Camera$Parameters;->setWdrMode(I)V

    .line 5281
    :cond_8
    :goto_7
    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_flashmode_key"

    const v5, 0x7f0a0061

    invoke-virtual {p0, v5}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    .line 5284
    iget-object v2, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 5285
    invoke-direct {p0}, Lcom/android/camera/Camera;->forbidUseFlashLight()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 5286
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "off"

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 5299
    :cond_9
    :goto_8
    const-string v2, "auto"

    iget-object v4, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 5301
    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_whitebalance_key"

    const v5, 0x7f0a0068

    invoke-virtual {p0, v5}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/Camera;->mWhiteBalance:Ljava/lang/String;

    .line 5304
    iget-object v2, p0, Lcom/android/camera/Camera;->mWhiteBalance:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 5305
    invoke-direct {p0}, Lcom/android/camera/Camera;->isSetOtherParamDefault()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 5306
    iget-object v2, p0, Lcom/android/camera/Camera;->mWhiteBalance:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0068

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 5307
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "auto"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    move v0, v3

    .line 5311
    :cond_a
    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    .line 5312
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/Camera;->mWhiteBalance:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 5324
    :cond_b
    :goto_9
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, v8}, Lcom/android/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 5325
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 5326
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->isCaptrueModeNormal(Z)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5327
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5350
    :cond_c
    :goto_a
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mContinousFocusSupported:Z

    if-eqz v0, :cond_d

    .line 5351
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 5352
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mAutoFocusMoveCallback:Lcom/android/camera/Camera$AutoFocusMoveCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 5357
    :cond_d
    :goto_b
    return-void

    .line 5149
    :cond_e
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_picturesize_key"

    invoke-virtual {v0, v2, v8}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mPicSizeStr:Ljava/lang/String;

    goto/16 :goto_0

    .line 5152
    :cond_f
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_picturesize_key"

    invoke-virtual {v0, v2, v8}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mPicSizeStr:Ljava/lang/String;

    goto/16 :goto_0

    .line 5158
    :cond_10
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    .line 5159
    iget-object v2, p0, Lcom/android/camera/Camera;->mPicSizeStr:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v2, v0, v4}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    goto/16 :goto_1

    .line 5173
    :cond_11
    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    if-eq v0, v5, :cond_4

    .line 5174
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "preview-size-values"

    const-string v4, "1920x1088,1280x720,1216x912,720x480,640x480,320x240,176x144"

    invoke-virtual {v0, v2, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5175
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0x390

    invoke-virtual {v0, v5, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    goto/16 :goto_2

    .line 5179
    :cond_12
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    .line 5180
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v4, v4

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v6, v0

    div-double/2addr v4, v6

    invoke-static {p0, v2, v4, v5}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 5182
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 5183
    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 5184
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 5187
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 5188
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5190
    :cond_13
    const-string v2, "camera"

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

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_14
    move v0, v1

    .line 5210
    goto/16 :goto_4

    .line 5213
    :cond_15
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    .line 5214
    iget-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    if-nez v0, :cond_16

    .line 5215
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    :cond_16
    move v0, v1

    goto/16 :goto_4

    .line 5243
    :cond_17
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v2

    sget v4, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v2, v4, :cond_5

    .line 5244
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v4, p0, Lcom/android/camera/Camera;->mExposureValue:F

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(F)V

    goto/16 :goto_5

    :cond_18
    move v0, v1

    .line 5260
    goto/16 :goto_6

    .line 5276
    :cond_19
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setWdrMode(I)V

    goto/16 :goto_7

    .line 5288
    :cond_1a
    iget-object v2, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    .line 5290
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v4

    if-ne v4, v3, :cond_1b

    .line 5291
    const-string v4, "auto"

    iget-object v5, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 5292
    const-string v2, "off"

    .line 5295
    :cond_1b
    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 5317
    :cond_1c
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mWhiteBalance:Ljava/lang/String;

    .line 5318
    iget-object v0, p0, Lcom/android/camera/Camera;->mWhiteBalance:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 5319
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/camera/Camera;->mWhiteBalance:Ljava/lang/String;

    goto/16 :goto_9

    .line 5330
    :cond_1d
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 5331
    const-string v0, "auto"

    iget-object v2, p0, Lcom/android/camera/Camera;->mWhiteBalance:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 5332
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "auto"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 5334
    :cond_1e
    const-string v0, "iso-auto"

    iget-object v2, p0, Lcom/android/camera/Camera;->mISO:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 5335
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "iso-auto"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setIsoMode(Ljava/lang/String;)V

    .line 5338
    :cond_1f
    iget-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    const-string v2, "micro"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->isCaptrueModeNormal(Z)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 5339
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 5340
    const/16 v1, 0x22

    iput v1, v0, Landroid/os/Message;->what:I

    .line 5341
    const v1, 0x7f0200d5

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 5342
    iget-object v1, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_a

    .line 5344
    :cond_20
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    .line 5345
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_a

    .line 5354
    :cond_21
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v8}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto/16 :goto_b

    :cond_22
    move v0, v1

    goto/16 :goto_3
.end method

.method private updateCameraParametersZoom()V
    .locals 2

    .prologue
    .line 5121
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5122
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/Camera;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 5124
    :cond_0
    return-void
.end method

.method private updateFlashLightIcon(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 3290
    if-gez p1, :cond_1

    .line 3302
    :cond_0
    :goto_0
    return-void

    .line 3293
    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 3294
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/CameraDeviceManager;->CAMERA_FLASH_LIGHT_ICON:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 3295
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    sget-object v1, Lcom/android/camera/CameraDeviceManager;->CAMERA_FLASH_LIGHT_ICON:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 3298
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/CameraDeviceManager;->VIDEO_FLASH_LIGHT_ICON:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 3299
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    sget-object v1, Lcom/android/camera/CameraDeviceManager;->VIDEO_FLASH_LIGHT_ICON:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateFlashLightUI()V
    .locals 2

    .prologue
    .line 3275
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportFlashLightMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3276
    iget-object v1, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->changeFlashModeToIndex(Ljava/lang/String;)I

    move-result v0

    .line 3277
    .local v0, index:I
    iget-object v1, p0, Lcom/android/camera/Camera;->mFlashLightAdapter:Lcom/android/camera/Camera$FlashLightAdapter;

    invoke-virtual {v1, v0}, Lcom/android/camera/Camera$FlashLightAdapter;->setCurSel(I)V

    .line 3278
    invoke-direct {p0}, Lcom/android/camera/Camera;->forbidUseFlashLight()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3279
    invoke-direct {p0}, Lcom/android/camera/Camera;->forbidUseFlashLightUI()V

    .line 3284
    .end local v0           #index:I
    :cond_0
    :goto_0
    return-void

    .line 3281
    .restart local v0       #index:I
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->updateFlashLightIcon(I)V

    goto :goto_0
.end method

.method private updateProximityState()V
    .locals 4

    .prologue
    .line 2359
    const/4 v0, 0x0

    .line 2360
    .local v0, isChangeProximityState:Z
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsProximityEnable:Z

    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/RecordGesturePreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 2361
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsProximityEnable:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsProximityEnable:Z

    .line 2362
    const/4 v0, 0x1

    .line 2364
    :cond_0
    if-eqz v0, :cond_1

    .line 2365
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsProximityEnable:Z

    if-eqz v1, :cond_3

    .line 2366
    invoke-direct {p0}, Lcom/android/camera/Camera;->registerProximitySensorListener()V

    .line 2371
    :cond_1
    :goto_1
    return-void

    .line 2361
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 2368
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/Camera;->unregisterProximitySensorListener()V

    goto :goto_1
.end method


# virtual methods
.method public autoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4508
    invoke-direct {p0}, Lcom/android/camera/Camera;->timeToCloseCamera()V

    .line 4509
    invoke-direct {p0}, Lcom/android/camera/Camera;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 4510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mFocusStartTime:J

    .line 4511
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setFocusMode(I)V

    .line 4512
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 4513
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 4514
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsLastTouchFocus:Z

    .line 4516
    :cond_0
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 4568
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_0

    .line 4570
    :goto_0
    return-void

    .line 4569
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    goto :goto_0
.end method

.method public capture()Z
    .locals 11

    .prologue
    const/4 v2, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2069
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v10

    .line 2126
    :goto_0
    return v0

    .line 2073
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 2074
    iput-boolean v9, p0, Lcom/android/camera/Camera;->mIsCapture:Z

    .line 2075
    iput-boolean v9, p0, Lcom/android/camera/Camera;->mIsImageIntentClicked:Z

    .line 2077
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mCaptureStartTime:J

    .line 2078
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J

    .line 2079
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    .line 2081
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_2

    .line 2082
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 2086
    :cond_2
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    iget v1, p0, Lcom/android/camera/Camera;->mOrientation:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    .line 2087
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2088
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 2089
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 2090
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2091
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v8

    .line 2093
    .local v8, size:Landroid/hardware/Camera$Size;
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-ne v0, v9, :cond_4

    .line 2094
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    iget-wide v2, p0, Lcom/android/camera/Camera;->mCaptureStartTime:J

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/Camera$ImageNamer;->getMultiFilePath(J)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setMultiCaptureFile([Ljava/lang/String;)V

    .line 2095
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mShutterCallback:Lcom/android/camera/Camera$ShutterCallback;

    iget-object v2, p0, Lcom/android/camera/Camera;->mRawPictureCallback:Lcom/android/camera/Camera$RawPictureCallback;

    iget-object v3, p0, Lcom/android/camera/Camera;->mPostViewPictureCallback:Lcom/android/camera/Camera$PostViewPictureCallback;

    new-instance v4, Lcom/android/camera/Camera$JpegPictureCallback;

    iget-object v5, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v5}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/camera/Camera$JpegPictureCallback;-><init>(Lcom/android/camera/Camera;Landroid/location/Location;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 2097
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    iget-object v1, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v2, p0, Lcom/android/camera/Camera;->mCaptureStartTime:J

    iget v4, v8, Landroid/hardware/Camera$Size;->width:I

    iget v5, v8, Landroid/hardware/Camera$Size;->height:I

    iget v6, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    iget-boolean v7, p0, Lcom/android/camera/Camera;->mIsFlymeCaptureIntent:Z

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/Camera$ImageNamer;->prepareUri(Landroid/content/ContentResolver;JIIIZ)V

    .line 2108
    :goto_1
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v10}, Lcom/android/camera/Camera;->isCaptrueModeNormal(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2122
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-direct {p0}, Lcom/android/camera/Camera;->getCameraRotation()I

    move-result v1

    invoke-virtual {v0, v1, v10}, Lcom/android/camera/CameraScreenNail;->animateCapture(IZ)V

    :cond_3
    move v0, v9

    .line 2126
    goto/16 :goto_0

    .line 2100
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mShutterCallback:Lcom/android/camera/Camera$ShutterCallback;

    iget-object v2, p0, Lcom/android/camera/Camera;->mRawPictureCallback:Lcom/android/camera/Camera$RawPictureCallback;

    iget-object v3, p0, Lcom/android/camera/Camera;->mPostViewPictureCallback:Lcom/android/camera/Camera$PostViewPictureCallback;

    new-instance v4, Lcom/android/camera/Camera$JpegPictureCallback;

    iget-object v5, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v5}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/camera/Camera$JpegPictureCallback;-><init>(Lcom/android/camera/Camera;Landroid/location/Location;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 2104
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    iget-object v1, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v2, p0, Lcom/android/camera/Camera;->mCaptureStartTime:J

    iget v4, v8, Landroid/hardware/Camera$Size;->width:I

    iget v5, v8, Landroid/hardware/Camera$Size;->height:I

    iget v6, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    iget-boolean v7, p0, Lcom/android/camera/Camera;->mIsFlymeCaptureIntent:Z

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/Camera$ImageNamer;->prepareUri(Landroid/content/ContentResolver;JIIIZ)V

    goto :goto_1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1241
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4

    .line 1242
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1243
    .local v0, keyCode:I
    sparse-switch v0, :sswitch_data_0

    .line 1312
    .end local v0           #keyCode:I
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_1
    :sswitch_0
    return v1

    .line 1245
    .restart local v0       #keyCode:I
    :sswitch_1
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsDoingPanorama:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsStopPanroma:Z

    if-nez v2, :cond_2

    .line 1246
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsHomePressed:Z

    if-nez v2, :cond_1

    .line 1247
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsHomePressed:Z

    .line 1248
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsStopPanroma:Z

    .line 1249
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->stopPanoramaCapture()V

    goto :goto_1

    .line 1252
    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsDoingMulti:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsStopMulti:Z

    if-nez v2, :cond_3

    .line 1253
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsHomePressed:Z

    if-nez v2, :cond_1

    .line 1254
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsHomePressed:Z

    .line 1255
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsStopMulti:Z

    goto :goto_1

    .line 1258
    :cond_3
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsLockView:Z

    if-eqz v2, :cond_1

    .line 1259
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_1

    .line 1268
    .end local v0           #keyCode:I
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1283
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1284
    .restart local v0       #keyCode:I
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 1286
    :sswitch_2
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsHomePressed:Z

    if-nez v2, :cond_5

    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    .line 1288
    :cond_6
    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v2, :cond_7

    .line 1289
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_1

    .line 1291
    :cond_7
    iget-object v2, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/Camera;->mHomePressedRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 1294
    :cond_8
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsHomePressed:Z

    if-nez v2, :cond_1

    .line 1295
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_1

    .line 1304
    :sswitch_3
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mInitCaptureMode:Z

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->isCaptrueModeNormal(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseMenuControl()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    iget-boolean v3, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-static {v2, v3}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsShutterBtnLongPressed:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsPowerPressed:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIsShowCameraAppView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1307
    invoke-virtual {p0}, Lcom/android/camera/Camera;->onShutterButtonClick()V

    goto/16 :goto_1

    .line 1243
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4f -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
    .end sparse-switch

    .line 1284
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_2
        0x4f -> :sswitch_3
        0x7e -> :sswitch_3
        0x7f -> :sswitch_3
    .end sparse-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 1317
    iget v1, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1344
    :goto_0
    return v0

    .line 1319
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/Camera;->mZoomScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/Camera;->mMenuBackControl:Landroid/widget/RelativeLayout;

    invoke-static {v1, v2, v3}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v1}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1322
    iget-object v1, p0, Lcom/android/camera/Camera;->mZoomScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1325
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1327
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/Camera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v1, v2, v3}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1328
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 1329
    if-ne v1, v0, :cond_3

    .line 1330
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mIsBackControlDown:Z

    .line 1331
    invoke-direct {p0}, Lcom/android/camera/Camera;->changeBackControlStyle()V

    .line 1344
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1332
    :cond_3
    if-nez v1, :cond_2

    .line 1333
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsBackControlDown:Z

    .line 1334
    iget-object v0, p0, Lcom/android/camera/Camera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    const v1, 0x108046f

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_1

    .line 1337
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsBackControlDown:Z

    if-eqz v0, :cond_2

    .line 1338
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mIsBackControlDown:Z

    .line 1339
    invoke-direct {p0}, Lcom/android/camera/Camera;->changeBackControlStyle()V

    goto :goto_1
.end method

.method public finishFadeOut()V
    .locals 0

    .prologue
    .line 4458
    return-void
.end method

.method public getCameraEV()I
    .locals 1

    .prologue
    .line 4555
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 4556
    const/4 v0, 0x0

    .line 4558
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
    .line 4540
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    return v0
.end method

.method public getIsCameraIdle()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4550
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
    .line 4462
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsCanNextFocus:Z

    return v0
.end method

.method public getIsCaptrue()Z
    .locals 1

    .prologue
    .line 4467
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsCapture:Z

    return v0
.end method

.method public getIsForbitAutoFocus()Z
    .locals 1

    .prologue
    .line 4535
    invoke-direct {p0}, Lcom/android/camera/Camera;->isLandscape()Z

    move-result v0

    return v0
.end method

.method public getIsShowCameraAppView()Z
    .locals 1

    .prologue
    .line 4574
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    return v0
.end method

.method public getIsShutterBtnLongPressed()Z
    .locals 1

    .prologue
    .line 4472
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsShutterBtnLongPressed:Z

    return v0
.end method

.method public getIsZoomScale()Z
    .locals 1

    .prologue
    .line 4545
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsScaleGesture:Z

    return v0
.end method

.method public getIsZoomSeekBarVisibility()Z
    .locals 1

    .prologue
    .line 4563
    invoke-direct {p0}, Lcom/android/camera/Camera;->isZoomBarVisible()Z

    move-result v0

    return v0
.end method

.method protected getStorageSpace()V
    .locals 2

    .prologue
    .line 3136
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->getStorageSpace()V

    .line 3138
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mStorageSpace:J

    .line 3139
    return-void
.end method

.method public lockFocus()V
    .locals 2

    .prologue
    .line 4520
    invoke-direct {p0}, Lcom/android/camera/Camera;->timeToCloseCamera()V

    .line 4521
    invoke-direct {p0}, Lcom/android/camera/Camera;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    .line 4522
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsLastTouchFocus:Z

    if-nez v0, :cond_0

    .line 4523
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 4525
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mFocusStartTime:J

    .line 4526
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFocusMode(I)V

    .line 4527
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 4528
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 4529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsLastTouchFocus:Z

    .line 4531
    :cond_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 4350
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 4351
    packed-switch p1, :pswitch_data_0

    .line 4384
    :cond_0
    :goto_0
    return-void

    .line 4353
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4354
    if-eqz p3, :cond_1

    .line 4355
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 4356
    if-eqz v1, :cond_1

    .line 4357
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4360
    :cond_1
    invoke-virtual {p0, p2, v0}, Lcom/android/camera/Camera;->setResultEx(ILandroid/content/Intent;)V

    .line 4361
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 4363
    const-string v0, "crop-temp"

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 4364
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 4369
    :pswitch_1
    const/4 v0, -0x1

    if-ne v0, p2, :cond_2

    .line 4370
    invoke-direct {p0}, Lcom/android/camera/Camera;->doAttach()V

    goto :goto_0

    .line 4371
    :cond_2
    if-nez p2, :cond_0

    .line 4373
    iput-object v1, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    .line 4374
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    if-eqz v0, :cond_0

    .line 4375
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageSaver;->finish()V

    .line 4376
    iput-object v1, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    .line 4377
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageNamer;->finish()V

    .line 4378
    iput-object v1, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    goto :goto_0

    .line 4351
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 4725
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuDismiss:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_1

    .line 4726
    invoke-direct {p0}, Lcom/android/camera/Camera;->onMenuDismissAnimationEnd()V

    .line 4732
    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsMenuAnimation:Z

    .line 4733
    return-void

    .line 4727
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuPopup:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_2

    .line 4728
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsDropTouchEvent:Z

    goto :goto_0

    .line 4729
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureRightMove:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_0

    .line 4730
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsExposureLeftAni:Z

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 4738
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 7
    .parameter "animation"

    .prologue
    const-wide/16 v5, 0xc8

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    .line 4701
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuDismiss:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_1

    .line 4702
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mIsDropTouchEvent:Z

    .line 4720
    :cond_0
    :goto_0
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mIsMenuAnimation:Z

    .line 4721
    return-void

    .line 4703
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuPopup:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_4

    .line 4704
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mIsDropTouchEvent:Z

    .line 4705
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v0, v5, v6}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 4706
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    if-nez v0, :cond_2

    .line 4707
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-static {v0, v5, v6}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 4709
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsLockView:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsSecurityAppLock:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 4710
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoModeLayout:Landroid/widget/LinearLayout;

    invoke-static {v0, v5, v6}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 4712
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 4713
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 4714
    iget-object v0, p0, Lcom/android/camera/Camera;->mBackControl:Lcom/android/camera/ui/GlowImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 4715
    iget-object v0, p0, Lcom/android/camera/Camera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 4716
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuShowIcon:Lcom/android/camera/ui/GlowImageView;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    goto :goto_0

    .line 4717
    :cond_4
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureLeftMove:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_0

    .line 4718
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mIsExposureLeftAni:Z

    goto :goto_0
.end method

.method protected onBackClicked()V
    .locals 2

    .prologue
    .line 972
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/Camera;->mHomePressedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/Camera;->mHomePressedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 975
    :cond_0
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onBackClicked()V

    .line 976
    return-void
.end method

.method public onBackControlClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 3608
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIsShowCameraAppView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3609
    invoke-virtual {p0}, Lcom/android/camera/Camera;->onBackPressed()V

    .line 3611
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 4654
    invoke-direct {p0}, Lcom/android/camera/Camera;->isBackKeyIdle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4660
    :cond_0
    :goto_0
    return-void

    .line 4657
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseMenuControl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4658
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4300
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4301
    invoke-direct {p0}, Lcom/android/camera/Camera;->setDisplayOrientation()V

    .line 4302
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/camera/Camera;->mConfiguration_orientation:I

    .line 4304
    const v0, 0x7f0d0011

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 4305
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4308
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 4309
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 4310
    const v4, 0x7f040068

    invoke-virtual {v1, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4311
    const v4, 0x7f04000a

    invoke-virtual {v1, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4314
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeControlByIntent()V

    .line 4315
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeFocusManager()V

    .line 4316
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->initializeMiscControls(Z)V

    .line 4317
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeIndicatorFlashlight()V

    .line 4318
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeIndicatorMenu()V

    .line 4319
    const v0, 0x7f0d0091

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    .line 4321
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->setFocusAreaIndicator(Landroid/view/View;)V

    .line 4324
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->updateThumbnailView()V

    .line 4326
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->setPreviewFrameLayoutAspectRatio()V

    .line 4329
    const v0, 0x7f0d0013

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 4330
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 4331
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    new-instance v1, Lcom/android/camera/Camera$ShutterBtnLongClick;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/android/camera/Camera$ShutterBtnLongClick;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 4332
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 4333
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeZoom()V

    .line 4334
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeExposure()V

    .line 4335
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->isCaptrueModeNormal(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4336
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->firstPrepareCaptureModeUI(Z)V

    .line 4344
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateFlashLightUI()V

    .line 4345
    return-void

    :cond_2
    move v1, v3

    .line 4305
    goto :goto_0

    .line 4338
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4340
    invoke-direct {p0}, Lcom/android/camera/Camera;->showExposureControlBar()V

    .line 4341
    invoke-direct {p0}, Lcom/android/camera/Camera;->checkExposureState()Z

    goto :goto_1
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

    .line 2190
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 2191
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    iput v6, v0, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mType:I

    .line 2192
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    iput v1, v0, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mMimeType:I

    .line 2193
    invoke-static {v2}, Lcom/android/camera/Util;->setCurAppMode(I)V

    .line 2195
    invoke-direct {p0}, Lcom/android/camera/Camera;->isLauncherIntent()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/Camera;->isMeizuSystemCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2196
    invoke-static {}, Lcom/android/camera/Util;->getIsCheckBattery()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/Util;->getIsBeforeGotoVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2207
    :goto_0
    invoke-static {p0}, Lcom/android/camera/Util;->checkIsLowBattery(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2208
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 2337
    :goto_1
    return-void

    .line 2198
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getIsCheckBattery()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/Util;->getIsBeforeSwitchCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2199
    invoke-static {v2}, Lcom/android/camera/Util;->setIsBeforeSwitchCamera(Z)V

    goto :goto_0

    .line 2201
    :cond_1
    invoke-static {v1}, Lcom/android/camera/Util;->setIsCheckBattery(Z)V

    goto :goto_0

    .line 2204
    :cond_2
    invoke-static {v2}, Lcom/android/camera/Util;->setIsCheckBattery(Z)V

    goto :goto_0

    .line 2212
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsIspSupport()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2216
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    .line 2217
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getCameraUpdateIspStatus()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    .line 2218
    const v2, 0x7f0a00bc

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2219
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 2221
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_1

    .line 2224
    :cond_4
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 2229
    :cond_5
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportHDMI()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2230
    const-string v0, "multimedia.hdmi.status"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2234
    const-string v3, "available"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2235
    const v0, 0x7f0a00c5

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2236
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_1

    .line 2241
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/Camera;->isMeizuSystemCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2243
    invoke-direct {p0}, Lcom/android/camera/Camera;->acquireLightScreen()V

    .line 2244
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 2245
    invoke-static {}, Lcom/android/camera/Util;->getPreCameraId()I

    move-result v0

    if-ne v0, v5, :cond_7

    invoke-static {}, Lcom/android/camera/Util;->getIsBeforeGotoVideo()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2246
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->setIsInterceptHomeKey(Z)V

    .line 2247
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsSystemCapture:Z

    .line 2248
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsCanClickShutterButton:Z

    .line 2253
    :cond_7
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2254
    const-string v3, "android.intent.action.KEYGUARD_UNLOCK"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2255
    iget-object v3, p0, Lcom/android/camera/Camera;->mPowerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/android/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2256
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsPowerKeyRegister:Z

    .line 2258
    new-instance v0, Lcom/android/camera/ComboPreferences;

    invoke-direct {v0, p0}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 2259
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 2260
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    .line 2263
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

    .line 2264
    iput v2, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    move v0, v1

    .line 2268
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "CAMERA_TYPE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2269
    const-string v4, "Camera_Front"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2270
    iput v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    .line 2275
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    .line 2279
    new-instance v3, Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-direct {v3, p0, v7}, Lcom/android/camera/Camera$CameraStartUpThread;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v3, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    .line 2280
    iget-object v3, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v3}, Lcom/android/camera/Camera$CameraStartUpThread;->start()V

    .line 2282
    const v3, 0x7f040009

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->setContentView(I)V

    .line 2286
    invoke-direct {p0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    .line 2287
    invoke-direct {p0}, Lcom/android/camera/Camera;->isMeizuCaptureIntent()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    .line 2288
    iget-boolean v3, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    iget-boolean v4, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-static {v3, v4}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v3

    if-nez v3, :cond_b

    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->createCameraScreenNail(Z)V

    .line 2289
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget v3, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-virtual {v1, p0, v3}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 2290
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 2291
    if-eqz v0, :cond_9

    .line 2293
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 2296
    :cond_9
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeIndicatorMenu()V

    .line 2298
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorManager:Landroid/hardware/SensorManager;

    .line 2299
    iget-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mProximitySensor:Landroid/hardware/Sensor;

    .line 2301
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/camera/Camera;->mTelephoneyManager:Landroid/telephony/TelephonyManager;

    .line 2302
    iget-object v0, p0, Lcom/android/camera/Camera;->mTelephoneyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/camera/Camera;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 2304
    const v0, 0x7f0d0091

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    .line 2310
    iget-object v0, p0, Lcom/android/camera/Camera;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 2312
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeControlByIntent()V

    .line 2314
    new-instance v0, Lcom/android/camera/RotateDialogController;

    const v1, 0x7f040075

    invoke-direct {v0, p0, v1}, Lcom/android/camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    .line 2315
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getNumberOfCameras()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ActivityBase;->mNumberOfCameras:I

    .line 2316
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.quickCapture"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mQuickCapture:Z

    .line 2317
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->initializeMiscControls(Z)V

    .line 2318
    new-instance v0, Lcom/android/camera/LocationManager;

    invoke-direct {v0, p0, v7}, Lcom/android/camera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 2320
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->enableCameraControls(Z)V

    .line 2322
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeIndicatorFlashlight()V

    .line 2324
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 2325
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2332
    const v0, 0x7f0d017f

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mRoundedCorner:Landroid/widget/ImageView;

    .line 2333
    iget-object v0, p0, Lcom/android/camera/Camera;->mRoundedCorner:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09015b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-direct {v2, v5, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2336
    const v0, 0x7f0901ac

    invoke-static {p0, v0}, Lcom/android/camera/Util;->getDimenVaule(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mPreviewWidth:I

    goto/16 :goto_1

    .line 2271
    :cond_a
    const-string v4, "Camera_Back"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2272
    iput v2, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    goto/16 :goto_3

    :cond_b
    move v1, v2

    .line 2288
    goto/16 :goto_4

    :cond_c
    move v0, v2

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4063
    iget-object v0, p0, Lcom/android/camera/Camera;->mPowerReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsPowerKeyRegister:Z

    if-eqz v0, :cond_0

    .line 4064
    iget-object v0, p0, Lcom/android/camera/Camera;->mPowerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4065
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsPowerKeyRegister:Z

    .line 4067
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->unregisterProximitySensorListener()V

    .line 4068
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsSetWinAttributes:Z

    .line 4070
    iget-object v0, p0, Lcom/android/camera/Camera;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mTelephoneyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 4071
    iget-object v0, p0, Lcom/android/camera/Camera;->mTelephoneyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/camera/Camera;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 4072
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 4074
    :cond_1
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onDestroy()V

    .line 4075
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

    .line 4627
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    invoke-static {v0, v2}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4649
    :cond_0
    :goto_0
    return-void

    .line 4630
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->isZoomBarVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4631
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 4632
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 4633
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomLessIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 4634
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomAddIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 4635
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBarBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 4638
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

    .line 4641
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/camera/Camera;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 4642
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 4643
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomLessIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 4644
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomAddIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 4645
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomSeekBarBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4646
    invoke-direct {p0}, Lcom/android/camera/Camera;->timeToHideZoomBar()V

    goto :goto_0
.end method

.method public onExposureAddClicked(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x4000

    .line 3459
    iget v0, p0, Lcom/android/camera/Camera;->mExposureValue:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    .line 3473
    :goto_0
    return-void

    .line 3462
    :cond_0
    iget v0, p0, Lcom/android/camera/Camera;->mExposureValue:F

    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getEachExposureValue()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/Camera;->mExposureValue:F

    .line 3463
    iget v0, p0, Lcom/android/camera/Camera;->mExposureValue:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    .line 3464
    iput v2, p0, Lcom/android/camera/Camera;->mExposureValue:F

    .line 3466
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->checkExposureState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3467
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureAdd:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 3468
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureLess:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 3470
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/camera/Camera;->mExposureValue:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3471
    invoke-static {p0}, Lcom/android/camera/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_exposure_key"

    iget v2, p0, Lcom/android/camera/Camera;->mExposureValue:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3472
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

    .line 3477
    iget v0, p0, Lcom/android/camera/Camera;->mExposureValue:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    .line 3491
    :goto_0
    return-void

    .line 3480
    :cond_0
    iget v0, p0, Lcom/android/camera/Camera;->mExposureValue:F

    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getEachExposureValue()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/Camera;->mExposureValue:F

    .line 3481
    iget v0, p0, Lcom/android/camera/Camera;->mExposureValue:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    .line 3482
    iput v2, p0, Lcom/android/camera/Camera;->mExposureValue:F

    .line 3484
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->checkExposureState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3485
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureAdd:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 3486
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureLess:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 3488
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/camera/Camera;->mExposureValue:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3489
    invoke-static {p0}, Lcom/android/camera/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_exposure_key"

    iget v2, p0, Lcom/android/camera/Camera;->mExposureValue:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3490
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V

    goto :goto_0
.end method

.method public onFlashLightClicked(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0xc8

    .line 3554
    invoke-direct {p0}, Lcom/android/camera/Camera;->forbidUseFlashLight()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseMenuControl()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIsShowCameraAppView()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3555
    invoke-direct {p0}, Lcom/android/camera/Camera;->hideZoomSeekBar()V

    .line 3556
    iget-object v2, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v2, v4, v5}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 3557
    iget-object v2, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    invoke-static {v2, v4, v5}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 3558
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/Camera;->mExposureControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 3559
    const/4 v1, 0x0

    .line 3560
    .local v1, isStartAnimation:Z
    iget-object v2, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v2}, Lcom/android/camera/ui/RotateImageView;->getDegree()I

    move-result v0

    .line 3561
    .local v0, degree:I
    iget v2, p0, Lcom/android/camera/Camera;->mConfiguration_orientation:I

    if-ne v2, v6, :cond_4

    .line 3562
    const/16 v2, 0x5a

    if-eq v0, v2, :cond_0

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_1

    .line 3563
    :cond_0
    const/4 v1, 0x1

    .line 3570
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 3571
    iget-object v2, p0, Lcom/android/camera/Camera;->mExposureControlLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/camera/Camera;->mExposureLeftMove:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3572
    iget-object v2, p0, Lcom/android/camera/Camera;->mExposureControlBg:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/Camera;->mExposureControlBg:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/camera/Camera;->mExposureLeftMove:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3575
    .end local v0           #degree:I
    .end local v1           #isStartAnimation:Z
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->timeToHideFlashLightList()V

    .line 3576
    iget-object v2, p0, Lcom/android/camera/Camera;->mCaptureModeImg:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v2}, Lcom/android/camera/ui/RotateImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 3577
    iget-object v2, p0, Lcom/android/camera/Camera;->mCaptureModeImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v2, v4, v5}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 3578
    iput-boolean v6, p0, Lcom/android/camera/Camera;->mIsResetCaptureModeImg:Z

    .line 3581
    :cond_3
    return-void

    .line 3565
    .restart local v0       #degree:I
    .restart local v1       #isStartAnimation:Z
    :cond_4
    iget v2, p0, Lcom/android/camera/Camera;->mConfiguration_orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 3566
    if-eqz v0, :cond_5

    const/16 v2, 0xb4

    if-ne v0, v2, :cond_1

    .line 3567
    :cond_5
    const/4 v1, 0x1

    goto :goto_0
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

    .line 3341
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainMenu_v:Landroid/widget/ListView;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mMainMenu_h:Landroid/widget/ListView;

    if-ne p1, v0, :cond_c

    .line 3342
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v0, v1, :cond_2

    .line 3344
    :cond_1
    if-nez p3, :cond_4

    .line 3345
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubCaptureModeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3346
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubCaptureModeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3379
    :cond_2
    :goto_0
    iput p3, p0, Lcom/android/camera/Camera;->mMainSel:I

    .line 3380
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/android/camera/CameraMainMenuAdapter;->setCurSel(I)V

    .line 3381
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/CameraMainMenuAdapter;->notifyDataSetChanged()V

    .line 3441
    :cond_3
    :goto_1
    return-void

    .line 3347
    :cond_4
    if-ne p3, v5, :cond_6

    .line 3348
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubIsoAdapter:Lcom/android/camera/SubMenuAdapter;

    if-nez v0, :cond_5

    .line 3349
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

    .line 3352
    :cond_5
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubIsoAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3353
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubIsoAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 3354
    :cond_6
    if-ne p3, v6, :cond_8

    .line 3355
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    if-nez v0, :cond_7

    .line 3356
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

    .line 3359
    :cond_7
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3360
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 3361
    :cond_8
    if-ne p3, v7, :cond_a

    .line 3362
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubWBAdapter:Lcom/android/camera/SubMenuAdapter;

    if-nez v0, :cond_9

    .line 3363
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

    .line 3366
    :cond_9
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubWBAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3367
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubWBAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 3368
    :cond_a
    if-ne p3, v2, :cond_2

    .line 3369
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubOtherAdapter:Lcom/android/camera/OtherMenuAdapter;

    if-nez v0, :cond_b

    .line 3370
    new-instance v0, Lcom/android/camera/OtherMenuAdapter;

    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraMenuInfo:Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    iget v1, v1, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mMainOtherMenuKeyArrayId:I

    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/OtherMenuAdapter;-><init>(Landroid/content/Context;ILandroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mSubOtherAdapter:Lcom/android/camera/OtherMenuAdapter;

    .line 3371
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubOtherAdapter:Lcom/android/camera/OtherMenuAdapter;

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/OtherMenuAdapter;->setIsMeizuMMSIntent(Z)V

    .line 3372
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubOtherAdapter:Lcom/android/camera/OtherMenuAdapter;

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsFlymeCaptureIntent:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/OtherMenuAdapter;->setIsFlymeMMSIntent(Z)V

    .line 3373
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubOtherAdapter:Lcom/android/camera/OtherMenuAdapter;

    invoke-virtual {v0, p0}, Lcom/android/camera/OtherMenuAdapter;->setListener(Lcom/android/camera/OtherMenuAdapter$Listener;)V

    .line 3375
    :cond_b
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubOtherAdapter:Lcom/android/camera/OtherMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3376
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSubOtherAdapter:Lcom/android/camera/OtherMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 3382
    :cond_c
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_v:Landroid/widget/ListView;

    if-eq p1, v0, :cond_d

    iget-object v0, p0, Lcom/android/camera/Camera;->mSubMenu_h:Landroid/widget/ListView;

    if-ne p1, v0, :cond_3

    .line 3383
    :cond_d
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-eq v0, v1, :cond_e

    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v0, v1, :cond_f

    .line 3385
    :cond_e
    iget v0, p0, Lcom/android/camera/Camera;->mMainSel:I

    if-nez v0, :cond_10

    .line 3386
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubCaptureModeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/android/camera/SubMenuAdapter;->setCurSel(I)V

    .line 3387
    iget-object v1, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    iget-object v0, p0, Lcom/android/camera/Camera;->mSubCaptureModeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/android/camera/SubMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/android/camera/CameraMainMenuAdapter;->setMXTipsStr(ILjava/lang/String;)V

    .line 3388
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

    .line 3390
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubCaptureModeAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/SubMenuAdapter;->notifyDataSetChanged()V

    .line 3391
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsRedisplayCaptureTip:Z

    .line 3438
    :cond_f
    :goto_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/CameraMainMenuAdapter;->notifyDataSetChanged()V

    .line 3439
    invoke-virtual {p0}, Lcom/android/camera/Camera;->onSharedPreferenceChanged()V

    goto/16 :goto_1

    .line 3392
    :cond_10
    iget v0, p0, Lcom/android/camera/Camera;->mMainSel:I

    if-ne v0, v5, :cond_11

    .line 3393
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubIsoAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/android/camera/SubMenuAdapter;->setCurSel(I)V

    .line 3394
    iget-object v1, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    iget-object v0, p0, Lcom/android/camera/Camera;->mSubIsoAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/android/camera/SubMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v5, v0}, Lcom/android/camera/CameraMainMenuAdapter;->setMXTipsStr(ILjava/lang/String;)V

    .line 3395
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

    .line 3397
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubIsoAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/SubMenuAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 3398
    :cond_11
    iget v0, p0, Lcom/android/camera/Camera;->mMainSel:I

    if-ne v0, v6, :cond_13

    .line 3399
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/android/camera/SubMenuAdapter;->setCurSel(I)V

    .line 3400
    iget-object v1, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    iget-object v0, p0, Lcom/android/camera/Camera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/android/camera/SubMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v6, v0}, Lcom/android/camera/CameraMainMenuAdapter;->setMXTipsStr(ILjava/lang/String;)V

    .line 3401
    if-eqz p3, :cond_12

    .line 3402
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    invoke-virtual {v0, v5}, Lcom/android/camera/CameraMainMenuAdapter;->setIsAutoScense(Z)V

    .line 3406
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

    .line 3408
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubSceneAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/SubMenuAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 3404
    :cond_12
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraMainMenuAdapter;->setIsAutoScense(Z)V

    goto :goto_3

    .line 3409
    :cond_13
    iget v0, p0, Lcom/android/camera/Camera;->mMainSel:I

    if-ne v0, v7, :cond_14

    .line 3410
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubWBAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/android/camera/SubMenuAdapter;->setCurSel(I)V

    .line 3411
    iget-object v1, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    iget-object v0, p0, Lcom/android/camera/Camera;->mSubWBAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/android/camera/SubMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v7, v0}, Lcom/android/camera/CameraMainMenuAdapter;->setMXTipsStr(ILjava/lang/String;)V

    .line 3412
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

    .line 3414
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubWBAdapter:Lcom/android/camera/SubMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/SubMenuAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2

    .line 3415
    :cond_14
    iget v0, p0, Lcom/android/camera/Camera;->mMainSel:I

    if-ne v0, v2, :cond_f

    .line 3416
    if-nez p3, :cond_17

    .line 3417
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3418
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_recordlocation_key"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3435
    :cond_15
    :goto_4
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubOtherAdapter:Lcom/android/camera/OtherMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/OtherMenuAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2

    .line 3420
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

    .line 3422
    :cond_17
    if-ne p3, v5, :cond_19

    .line 3423
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/android/camera/RecordWdrPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3424
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_recordwdr_key"

    const-string v2, "wdr-off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4

    .line 3426
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

    .line 3428
    :cond_19
    if-ne p3, v6, :cond_15

    .line 3429
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/android/camera/RecordGesturePreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3430
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_recordgesture_key"

    const-string v2, "gesture-off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4

    .line 3432
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

    .line 4863
    sparse-switch p1, :sswitch_data_0

    .line 4903
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 4865
    :sswitch_1
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 4866
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 4870
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 4871
    invoke-virtual {p0}, Lcom/android/camera/Camera;->onShutterButtonClick()V

    goto :goto_0

    .line 4877
    :sswitch_3
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 4881
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->onShutterButtonFocus(Z)V

    .line 4882
    iget-object v1, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4883
    iget-object v1, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->requestFocusFromTouch()Z

    .line 4887
    :goto_1
    iget-object v1, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1, v0}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    goto :goto_0

    .line 4885
    :cond_1
    iget-object v1, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->requestFocus()Z

    goto :goto_1

    .line 4897
    :sswitch_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 4898
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    goto :goto_0

    .line 4863
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

    .line 4908
    packed-switch p1, :pswitch_data_0

    .line 4932
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 4910
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    .line 4911
    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 4915
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsMenuAnimation:Z

    if-nez v1, :cond_0

    .line 4918
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportLedLight()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4919
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4920
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsMenuLongPress:Z

    .line 4926
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportNavigationBar()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4927
    invoke-direct {p0}, Lcom/android/camera/Camera;->doMenu()V

    goto :goto_0

    .line 4922
    :cond_2
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsMenuLongPress:Z

    goto :goto_1

    .line 4908
    nop

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onMenuControlClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 3603
    invoke-direct {p0}, Lcom/android/camera/Camera;->doMenu()V

    .line 3604
    return-void
.end method

.method public onModeChanged(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 5539
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->switchToOtherMode(I)V

    .line 5540
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4080
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_0

    .line 4081
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->unregisterAccSensorListener()V

    .line 4084
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    .line 4085
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsCapture:Z

    .line 4086
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsSystemCapture:Z

    .line 4087
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsLastTouchFocus:Z

    .line 4088
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsImageIntentClicked:Z

    .line 4089
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsForbitOrientation:Z

    .line 4090
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsCanClickShutterButton:Z

    .line 4091
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsSwitchCameraFinish:Z

    .line 4092
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsShutterBtnLongPressed:Z

    .line 4093
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsShutterLongPressedSnapShot:Z

    .line 4094
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsNormalSnapShot:Z

    .line 4095
    iput v2, p0, Lcom/android/camera/Camera;->mLuckyEggClickedTimes:I

    .line 4096
    iput v2, p0, Lcom/android/camera/Camera;->mSmileFaceTime:I

    .line 4097
    invoke-direct {p0}, Lcom/android/camera/Camera;->releaseLightScreen()V

    .line 4098
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    const-string v3, "off"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4099
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "off"

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 4100
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4102
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsPlaySoundOff:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_2

    .line 4103
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsPlaySoundOff:Z

    .line 4104
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->playSound(I)V

    .line 4109
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsSendSmileMsg:Z

    if-eqz v0, :cond_11

    .line 4110
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsSendSmileMsg:Z

    .line 4111
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->closeSmileDetection()V

    .line 4112
    invoke-direct {p0}, Lcom/android/camera/Camera;->cancelGetFacePosTask()V

    .line 4113
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x16

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4114
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v6, v7}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 4115
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v6, v7}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 4116
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->resetCaptureMode(Z)V

    .line 4118
    iget-object v0, p0, Lcom/android/camera/Camera;->mSmileRect:Lcom/android/camera/ui/SmileRectView;

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/SmileRectView;->setVisibility(I)V

    .line 4119
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MaskedRotateImageView;->setEnabled(Z)V

    move v0, v1

    .line 4121
    :goto_0
    iget-boolean v3, p0, Lcom/android/camera/Camera;->mIsDoingMulti:Z

    if-eqz v3, :cond_3

    .line 4122
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 4123
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsDoingMulti:Z

    .line 4124
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->resetCaptureMode(Z)V

    .line 4126
    invoke-direct {p0}, Lcom/android/camera/Camera;->deleteMultiPhoto()V

    move v0, v1

    .line 4128
    :cond_3
    iget-boolean v3, p0, Lcom/android/camera/Camera;->mIsDoingPanorama:Z

    if-eqz v3, :cond_4

    .line 4129
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 4130
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPanoramaCapture()V

    .line 4131
    iput v2, p0, Lcom/android/camera/Camera;->mPanoramaVaule:I

    .line 4132
    iget-object v0, p0, Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;

    iget v3, p0, Lcom/android/camera/Camera;->mPanoramaVaule:I

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/PanoraProgressBar;->setProgress(I)V

    .line 4133
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsDoingPanorama:Z

    .line 4134
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsForbitOrientation:Z

    .line 4135
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->resetCaptureMode(Z)V

    move v0, v1

    .line 4138
    :cond_4
    iget-object v3, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v3, :cond_5

    .line 4141
    :cond_5
    iget-object v3, p0, Lcom/android/camera/Camera;->mScreenShot:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_6

    .line 4142
    iget-object v3, p0, Lcom/android/camera/Camera;->mScreenShot:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 4145
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/Camera;->clearCaptureAnimation()V

    .line 4147
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onPause()V

    .line 4150
    invoke-virtual {p0}, Lcom/android/camera/Camera;->waitCameraStartUpThread()V

    .line 4152
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 4153
    if-nez v0, :cond_7

    .line 4154
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsGotoGallery:Z

    if-eqz v0, :cond_10

    .line 4155
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->resetCaptureMode(Z)V

    .line 4161
    :cond_7
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCamera()V

    .line 4162
    iget-object v0, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_8

    .line 4163
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 4164
    iput-object v4, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 4166
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/Camera;->resetScreenOn()V

    .line 4167
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseMenuControl()Z

    .line 4169
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_9

    .line 4170
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/Camera$MyOrientationEventListener;->disable()V

    .line 4171
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_9

    .line 4172
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    if-eqz v0, :cond_9

    .line 4173
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageSaver;->finish()V

    .line 4174
    iput-object v4, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    .line 4175
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageNamer;->finish()V

    .line 4176
    iput-object v4, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    .line 4180
    :cond_9
    invoke-direct {p0}, Lcom/android/camera/Camera;->unregisterProximitySensorListener()V

    .line 4182
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    if-eqz v0, :cond_a

    .line 4183
    iget-object v0, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4184
    iget-object v0, p0, Lcom/android/camera/Camera;->mSysReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4185
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    .line 4187
    :cond_a
    iget-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 4189
    :cond_b
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_c

    .line 4192
    iput-object v4, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    .line 4195
    :cond_c
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    .line 4196
    iget-object v0, p0, Lcom/android/camera/Camera;->mSmileRect:Lcom/android/camera/ui/SmileRectView;

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/SmileRectView;->setVisibility(I)V

    .line 4200
    :cond_d
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4201
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4202
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 4203
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4204
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4205
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4206
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4207
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4209
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    .line 4210
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 4212
    :cond_e
    invoke-static {}, Lcom/android/camera/Util;->getIsCheckBattery()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/android/camera/Camera;->isLauncherIntent()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Lcom/android/camera/Util;->getIsBatteryLow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4213
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 4215
    :cond_f
    return-void

    .line 4157
    :cond_10
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->resetCaptureMode(Z)V

    goto/16 :goto_1

    :cond_11
    move v0, v2

    goto/16 :goto_0
.end method

.method protected onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 5666
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5667
    return-void
.end method

.method public onRestorePreferencesClicked()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 5836
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_0

    .line 5848
    :goto_0
    return-void

    .line 5837
    :cond_0
    new-instance v4, Lcom/android/camera/Camera$21;

    invoke-direct {v4, p0}, Lcom/android/camera/Camera$21;-><init>(Lcom/android/camera/Camera;)V

    .line 5843
    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    const v2, 0x7f0a002d

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

    .line 3956
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    .line 3957
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsScreenCameraModeShowThumbnail:Z

    .line 3958
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsLastFileEncryptTakePic:Z

    .line 3959
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onResume()V

    .line 3961
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsDropFirstProximityCapture:Z

    .line 3962
    iget-object v2, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/camera/Camera$17;

    invoke-direct {v3, p0}, Lcom/android/camera/Camera$17;-><init>(Lcom/android/camera/Camera;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3971
    invoke-direct {p0}, Lcom/android/camera/Camera;->isLockViewNeedAddFlag()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3972
    invoke-direct {p0}, Lcom/android/camera/Camera;->acquireLightScreen()V

    .line 3973
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 3976
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mOpenCameraFail:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mCameraDisabled:Z

    if-eqz v2, :cond_2

    .line 4046
    :cond_1
    :goto_0
    return-void

    .line 3978
    :cond_2
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J

    .line 3979
    iput v0, p0, Lcom/android/camera/Camera;->mZoomValue:I

    .line 3980
    invoke-static {p0}, Lcom/android/camera/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/RecordGesturePreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsProximityEnable:Z

    .line 3981
    invoke-static {p0}, Lcom/android/camera/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_camera_record_exposure"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    .line 3982
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/camera/Camera;->mConfiguration_orientation:I

    .line 3983
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportExposure()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3984
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeExposure()V

    .line 3986
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/Camera;->registerProximitySensorListener()V

    .line 3988
    iget v2, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    if-nez v2, :cond_4

    .line 3990
    new-instance v2, Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-direct {v2, p0, v6}, Lcom/android/camera/Camera$CameraStartUpThread;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v2, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    .line 3991
    iget-object v2, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v2}, Lcom/android/camera/Camera$CameraStartUpThread;->start()V

    .line 3994
    :cond_4
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    iget-boolean v3, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-static {v2, v3}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v2

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsSecurityAppLock:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsLockViewIntent:Z

    if-nez v2, :cond_5

    .line 3995
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getLastThumbnail()V

    .line 3998
    :cond_5
    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v2, :cond_6

    .line 3999
    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2, p0}, Lcom/android/camera/FocusManager;->registerAccSensorListener(Landroid/content/Context;)V

    .line 4004
    :cond_6
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-nez v2, :cond_8

    .line 4005
    iget-object v2, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4009
    :goto_1
    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v2, :cond_7

    .line 4010
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 4014
    :cond_7
    invoke-static {p0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 4016
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsGotoGallery:Z

    .line 4018
    invoke-direct {p0}, Lcom/android/camera/Camera;->resetLedLight()V

    .line 4022
    iget-object v2, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x12

    const-wide/32 v4, 0x1d4c0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4024
    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_capture_mode_key"

    const v4, 0x7f0a0071

    invoke-virtual {p0, v4}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/Camera;->mStrCaptureMode:Ljava/lang/String;

    .line 4026
    const-string v2, "capture-normal"

    iget-object v3, p0, Lcom/android/camera/Camera;->mStrCaptureMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 4027
    iget v2, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v2}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v2, :cond_a

    .line 4029
    iget-object v1, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/Camera$18;

    invoke-direct {v2, p0}, Lcom/android/camera/Camera$18;-><init>(Lcom/android/camera/Camera;)V

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4043
    :goto_2
    if-eqz v0, :cond_1

    .line 4044
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateFlashLightUI()V

    goto/16 :goto_0

    .line 4007
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeSecondTime()V

    goto :goto_1

    .line 4037
    :cond_9
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-static {v0, v2}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_a

    .line 4039
    invoke-direct {p0}, Lcom/android/camera/Camera;->showExposureControlBar()V

    .line 4040
    invoke-direct {p0}, Lcom/android/camera/Camera;->checkExposureState()Z

    :cond_a
    move v0, v1

    goto :goto_2
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 3635
    invoke-direct {p0}, Lcom/android/camera/Camera;->doCancel()V

    .line 3636
    return-void
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 3630
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5545
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_1

    .line 5592
    :cond_0
    :goto_0
    return-void

    .line 5547
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 5549
    iget-object v1, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 5551
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateProximityState()V

    .line 5552
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_capture_mode_key"

    const v2, 0x7f0a0071

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->changeCaptureModeToIndex(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/Util;->setCurCaptureMode(I)V

    .line 5554
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportFlashLightMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5555
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_scenemode_key"

    const v2, 0x7f0a006f

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    .line 5557
    invoke-direct {p0}, Lcom/android/camera/Camera;->forbidUseFlashLight()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5558
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/Camera;->mPreFlashLightMode:Ljava/lang/String;

    .line 5559
    invoke-static {p0}, Lcom/android/camera/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_flashmode_key"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5560
    invoke-direct {p0}, Lcom/android/camera/Camera;->forbidUseFlashLightUI()V

    .line 5577
    :cond_2
    :goto_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V

    .line 5578
    invoke-direct {p0}, Lcom/android/camera/Camera;->setPreviewFrameLayoutAspectRatio()V

    .line 5580
    iget v0, p0, Lcom/android/camera/Camera;->mLastCaptureMode:I

    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 5581
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mLastCaptureMode:I

    .line 5582
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setCaptureMode(I)V

    .line 5584
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsPrePanoMode:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    .line 5585
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 5586
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    .line 5588
    :cond_4
    iget v0, p0, Lcom/android/camera/Camera;->mMainSel:I

    if-nez v0, :cond_0

    .line 5589
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->firstPrepareCaptureModeUI(Z)V

    .line 5590
    invoke-direct {p0}, Lcom/android/camera/Camera;->registerProximitySensorListener()V

    goto/16 :goto_0

    .line 5562
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsForbitedFlashLight:Z

    if-eqz v0, :cond_2

    .line 5563
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsForbitedFlashLight:Z

    .line 5564
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreFlashLightMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    .line 5565
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreFlashLightMode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5566
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    .line 5568
    :cond_6
    invoke-static {p0}, Lcom/android/camera/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_flashmode_key"

    iget-object v2, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5569
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->changeFlashModeToIndex(Ljava/lang/String;)I

    move-result v0

    .line 5570
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->updateFlashLightIcon(I)V

    .line 5571
    iget-object v1, p0, Lcom/android/camera/Camera;->mFlashLightAdapter:Lcom/android/camera/Camera$FlashLightAdapter;

    invoke-virtual {v1, v0}, Lcom/android/camera/Camera$FlashLightAdapter;->setCurSel(I)V

    .line 5572
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

    .line 3872
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

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsMenuShowed:Z

    if-eqz v0, :cond_2

    .line 3936
    :cond_1
    :goto_0
    return-void

    .line 3879
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseFlashLightList()V

    .line 3881
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseMenuControlAutoCapture()V

    .line 3883
    invoke-direct {p0}, Lcom/android/camera/Camera;->hideZoomSeekBar()V

    .line 3886
    iget-wide v0, p0, Lcom/android/camera/Camera;->mStorageSpace:J

    const-wide/32 v2, 0x3400000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 3887
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

    .line 3890
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

    .line 3897
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

    .line 3904
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

    .line 3906
    iput-boolean v5, p0, Lcom/android/camera/Camera;->mIsNormalSnapShot:Z

    goto/16 :goto_0

    .line 3910
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsShutterBtnLongPressed:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3911
    iput-boolean v5, p0, Lcom/android/camera/Camera;->mIsShutterLongPressedSnapShot:Z

    .line 3912
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsShutterLongPressedFocusFinished:Z

    if-eqz v0, :cond_1

    .line 3917
    :cond_7
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mSnapshotOnIdle:Z

    .line 3918
    invoke-direct {p0}, Lcom/android/camera/Camera;->captureModeShutterBtnClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3922
    iget-object v0, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "camera_sounds_enabled"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-ne v0, v6, :cond_a

    .line 3924
    :cond_8
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_9

    .line 3925
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v4}, Lcom/android/camera/CameraManager$CameraProxy;->playSound(I)V

    .line 3926
    iput-boolean v5, p0, Lcom/android/camera/Camera;->mIsPlaySoundOff:Z

    .line 3934
    :cond_9
    :goto_1
    invoke-direct {p0, v4, v4}, Lcom/android/camera/Camera;->setLedEnable(IZ)V

    .line 3935
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->doSnap()V

    goto/16 :goto_0

    .line 3929
    :cond_a
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsPlaySoundOff:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_9

    .line 3930
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mIsPlaySoundOff:Z

    .line 3931
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v5}, Lcom/android/camera/CameraManager$CameraProxy;->playSound(I)V

    goto :goto_1
.end method

.method public onShutterButtonFocus(Z)V
    .locals 3
    .parameter "pressed"

    .prologue
    const/4 v2, 0x0

    .line 3848
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-nez v0, :cond_1

    .line 3868
    :cond_0
    :goto_0
    return-void

    .line 3853
    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/Camera;->canTakePicture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3855
    :cond_2
    if-eqz p1, :cond_3

    .line 3856
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutterDown()V

    goto :goto_0

    .line 3858
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsShutterLongPressedSnapShot:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsNormalSnapShot:Z

    if-nez v0, :cond_0

    .line 3859
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutterUp()V

    .line 3860
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsShutterBtnLongPressed:Z

    if-eqz v0, :cond_0

    .line 3861
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsShutterBtnLongPressed:Z

    .line 3862
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsShutterLongPressedSnapShot:Z

    .line 3863
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->clearHoldFocusIndicator()V

    .line 3864
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
    .line 4586
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

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsShutterLongPressedSnapShot:Z

    if-eqz v0, :cond_1

    .line 4623
    :cond_0
    :goto_0
    return-void

    .line 4593
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->isZoomBarVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4594
    invoke-direct {p0}, Lcom/android/camera/Camera;->timeToHideZoomBar()V

    .line 4597
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 4598
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseFlashLightList()V

    .line 4599
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 4604
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsDropTouchEvent:Z

    if-eqz v0, :cond_4

    int-to-float v0, p2

    int-to-float v1, p3

    iget-object v2, p0, Lcom/android/camera/Camera;->mMenuRotateLayout_v:Lcom/android/camera/ui/RotateLayout;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4608
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

    .line 4613
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsCanTouchFocus:Z

    if-eqz v0, :cond_0

    .line 4616
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/FocusManager;->onSingleTapUp(II)V

    .line 4622
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFocusAreaSupported:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMeteringAreaSupported:Z

    if-nez v0, :cond_0

    goto/16 :goto_0
.end method

.method public onSizeChanged(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 5895
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    const v1, 0x7f0901ae

    invoke-static {p0, v1}, Lcom/android/camera/Util;->getDimenVaule(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/camera/FocusManager;->setPreviewSize(III)V

    .line 5897
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 3127
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onStop()V

    .line 3128
    iget-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 3129
    iget-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 3130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 3132
    :cond_0
    return-void
.end method

.method protected onSwitchAnimationEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5672
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setIsDropFullScreenChanged(Z)V

    .line 5673
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->setSwipEnabled(Z)V

    .line 5674
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsSwitchCameraFinish:Z

    .line 5675
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5676
    return-void
.end method

.method public onSwitchCameraClicked(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const-wide/16 v4, 0x32

    const/4 v3, 0x0

    .line 3495
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

    .line 3550
    :cond_0
    :goto_0
    return-void

    .line 3498
    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 3499
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsSwitchCameraFinish:Z

    .line 3500
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsShutterBtnLongPressed:Z

    .line 3501
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsShutterLongPressedSnapShot:Z

    .line 3503
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->copyTexture()V

    .line 3504
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/camera/ActivityBase;->mNumberOfCameras:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    .line 3505
    invoke-static {v6}, Lcom/android/camera/Util;->setIsBeforeSwitchCamera(Z)V

    .line 3507
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportFlashLightMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3508
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseFlashLightList()V

    .line 3509
    iget v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    if-ne v0, v6, :cond_6

    .line 3510
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/Camera$16;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$16;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3516
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 3517
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 3518
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportLedLight()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3519
    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->setMenuEnabled(Z)V

    .line 3521
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->hideCameraCaptureModeImg()V

    .line 3522
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsStorageHintShow:Z

    if-nez v0, :cond_3

    .line 3523
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 3525
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsExposureEnable:Z

    if-eqz v0, :cond_4

    .line 3526
    invoke-direct {p0}, Lcom/android/camera/Camera;->hideExposureControlBar()V

    .line 3528
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsPrePanoMode:Z

    if-eqz v0, :cond_5

    .line 3529
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3530
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg1:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 3531
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg2:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 3549
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseMenuControl()Z

    goto :goto_0

    .line 3534
    :cond_6
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 3535
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    invoke-static {v0, v3}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3536
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 3537
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 3538
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportLedLight()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3539
    invoke-virtual {p0, v6}, Lcom/android/camera/Camera;->setMenuEnabled(Z)V

    .line 3542
    :cond_7
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsPrePanoMode:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsLockView:Z

    if-nez v0, :cond_5

    .line 3543
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3544
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg1:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v7}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 3545
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitchVideoBtnImg2:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v7}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onSwitchVideoModeClicked(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 3593
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

    .line 3595
    invoke-static {v3}, Lcom/android/camera/Util;->setIsBeforeGotoVideo(Z)V

    .line 3596
    invoke-static {}, Lcom/android/camera/Util;->setCanSwitchOtherMode()V

    .line 3597
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z

    invoke-direct {p0}, Lcom/android/camera/Camera;->isMeizuSystemCaptureIntent()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsLockView:Z

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/android/camera/Camera;->switchToOtherMode(IZZZ)V

    .line 3599
    :cond_0
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 3585
    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIsShowCameraAppView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3586
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageSaver;->waitDone()V

    .line 3587
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->gotoGallery()V

    .line 3589
    :cond_1
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 5816
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onUserInteraction()V

    .line 5817
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 5818
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 5819
    invoke-direct {p0}, Lcom/android/camera/Camera;->timeToCloseCamera()V

    .line 5821
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 4855
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsMenuLongPress:Z

    if-eqz v0, :cond_0

    .line 4856
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsMenuLongPress:Z

    .line 4858
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onWindowFocusChanged(Z)V

    .line 4859
    return-void
.end method

.method public setFocusParameters()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2151
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setFocusMode(I)V

    .line 2152
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getTouchPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusPos(I)V

    .line 2153
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 2154
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 2155
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsLastTouchFocus:Z

    .line 2156
    return-void
.end method

.method public setPicSize(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 4483
    if-eqz p1, :cond_2

    .line 4484
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_picturesize_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4485
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v0, v1, :cond_1

    .line 4487
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/CameraMainMenuAdapter;->setMXTipsStr(ILjava/lang/String;)V

    .line 4489
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainMenuAdapter:Lcom/android/camera/CameraMainMenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/CameraMainMenuAdapter;->notifyDataSetChanged()V

    .line 4490
    invoke-virtual {p0}, Lcom/android/camera/Camera;->onSharedPreferenceChanged()V

    .line 4492
    :cond_2
    return-void
.end method

.method protected storageHintCancel()V
    .locals 2

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 913
    return-void
.end method

.method protected storageHintShow(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 907
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 908
    return-void
.end method

.method public takePictureFail()V
    .locals 1

    .prologue
    .line 4448
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 4449
    invoke-direct {p0}, Lcom/android/camera/Camera;->prepareCaptureModeUI()V

    .line 4450
    invoke-direct {p0}, Lcom/android/camera/Camera;->clearCaptureAnimation()V

    .line 4451
    invoke-direct {p0}, Lcom/android/camera/Camera;->deleteCurrentPhoto()V

    .line 4452
    return-void
.end method

.method public touchFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 4496
    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 4497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mFocusStartTime:J

    .line 4498
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setFocusMode(I)V

    .line 4499
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getTouchPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusPos(I)V

    .line 4500
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 4501
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 4502
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsLastTouchFocus:Z

    .line 4504
    :cond_0
    return-void
.end method

.method protected updateCameraAppView()V
    .locals 5

    .prologue
    const/16 v4, 0x12

    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 917
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->updateCameraAppView()V

    .line 918
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIsShowCameraAppView()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 921
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_7

    .line 922
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 923
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 925
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setIsInterceptHomeKey(Z)V

    .line 937
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportLedLight()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 938
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-nez v0, :cond_a

    .line 939
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 940
    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->setMenuEnabled(Z)V

    .line 942
    :cond_3
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsResetLed:Z

    .line 950
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-nez v0, :cond_c

    .line 952
    const-string v0, "off"

    iget-object v1, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/camera/Camera;->forbidUseFlashLight()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-ne v0, v3, :cond_b

    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 955
    :cond_5
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mRestoreFlash:Z

    .line 968
    :cond_6
    :goto_2
    return-void

    .line 928
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/Camera;->resetScreenOn()V

    .line 929
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-ne v0, v1, :cond_9

    .line 931
    :cond_8
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->setIsInterceptHomeKey(Z)V

    .line 933
    :cond_9
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 934
    invoke-virtual {p0}, Lcom/android/camera/Camera;->cancelAutoFocus()V

    goto :goto_0

    .line 943
    :cond_a
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsResetLed:Z

    if-eqz v0, :cond_4

    .line 944
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsResetLed:Z

    .line 945
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 946
    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->setMenuEnabled(Z)V

    goto :goto_1

    .line 958
    :cond_b
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mRestoreFlash:Z

    .line 959
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 960
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 961
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_2

    .line 962
    :cond_c
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mRestoreFlash:Z

    if-eqz v0, :cond_6

    .line 963
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mRestoreFlash:Z

    .line 964
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 965
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 966
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_2
.end method

.method protected updateStorageState(Ljava/lang/String;)V
    .locals 4
    .parameter "message"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 884
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 885
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsSendSmileMsg:Z

    if-nez v0, :cond_0

    .line 886
    iget-object v3, p0, Lcom/android/camera/Camera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsStorageHintShow:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/camera/ui/GlowImageView;->setEnabled(Z)V

    .line 887
    iget-object v3, p0, Lcom/android/camera/Camera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsStorageHintShow:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/camera/ui/GlowImageView;->setClickable(Z)V

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsSendSmileMsg:Z

    if-nez v0, :cond_1

    .line 890
    iget-object v3, p0, Lcom/android/camera/Camera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsStorageHintShow:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 891
    iget-object v0, p0, Lcom/android/camera/Camera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;

    iget-boolean v3, p0, Lcom/android/camera/ActivityBase;->mIsStorageHintShow:Z

    if-nez v3, :cond_5

    :goto_3
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setClickable(Z)V

    .line 896
    :cond_1
    :goto_4
    if-eqz p1, :cond_8

    .line 897
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 898
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 902
    :goto_5
    return-void

    :cond_2
    move v0, v2

    .line 886
    goto :goto_0

    :cond_3
    move v0, v2

    .line 887
    goto :goto_1

    :cond_4
    move v0, v2

    .line 890
    goto :goto_2

    :cond_5
    move v1, v2

    .line 891
    goto :goto_3

    .line 894
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsStorageHintShow:Z

    if-nez v0, :cond_7

    :goto_6
    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->setMenuEnabled(Z)V

    goto :goto_4

    :cond_7
    move v1, v2

    goto :goto_6

    .line 900
    :cond_8
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5
.end method

.method waitCameraStartUpThread()V
    .locals 1

    .prologue
    .line 4050
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    if-eqz v0, :cond_0

    .line 4051
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/Camera$CameraStartUpThread;->cancel()V

    .line 4052
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/Camera$CameraStartUpThread;->join()V

    .line 4053
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    .line 4054
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4059
    :cond_0
    :goto_0
    return-void

    .line 4056
    :catch_0
    move-exception v0

    goto :goto_0
.end method
