.class public Lcom/android/gallery3d/app/MovieControllerOverlay;
.super Landroid/widget/FrameLayout;
.source "MovieControllerOverlay.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/gallery3d/app/ControllerOverlay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;,
        Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;,
        Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;,
        Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;,
        Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    }
.end annotation


# static fields
.field private static final MIN_WIN_BRIGHNESS:I


# instance fields
.field private errorView:Landroid/widget/TextView;

.field private hidden:Z

.field private hideAnimation:Landroid/view/animation/Animation;

.field private loadingView:Landroid/view/View;

.field private mAlreadyPlayTime:J

.field private mAlreadyPlayTimeText:Landroid/widget/TextView;

.field private mAppBrightness:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioTrackCount:I

.field private mAudioTrackSelect:I

.field private mBackIconListener:Landroid/view/View$OnClickListener;

.field private mBitrateInfo:[Ljava/lang/String;

.field private mChangeBitrateListener:Landroid/view/View$OnClickListener;

.field private mChangeTimeTextListener:Landroid/view/View$OnClickListener;

.field private mChangeTrackListener:Landroid/view/View$OnClickListener;

.field private mControllProgress:Landroid/widget/SeekBar;

.field private mControllShowing:Z

.field private mControllView:Landroid/view/View;

.field private mCurrentVolume:I

.field private mCurrentX:F

.field private mCurrentY:F

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mDlnaBtnListener:Landroid/view/View$OnClickListener;

.field private mDlnaButton:Landroid/widget/ImageButton;

.field private mDlnaDeviceCount:I

.field private mDlnaDeviceSelect:I

.field private mDlnaVolumeProgress:I

.field private mDownDist:F

.field private mDownX:F

.field private mDownY:F

.field private mDragging:Z

.field private mGestureAlreadyPlayTimeText:Landroid/widget/TextView;

.field private mGestureClickCount:I

.field private mGestureControllProgress:Landroid/widget/SeekBar;

.field private mGestureProgressLayout:Landroid/widget/RelativeLayout;

.field private mGestureRemainPlayTimeText:Landroid/widget/TextView;

.field private mGestureSpeedTime:I

.field private mGestureZoomMode:Z

.field private mGuestureListenr:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mHorizontalBackButton:Lcom/meizu/widget/GlowImageButton;

.field private mHorizontalMenuButton:Lcom/meizu/widget/GlowImageButton;

.field private mIsAudioTrackListShow:Z

.field private mIsAutoVerScreen:Z

.field private mIsBitrateListShow:Z

.field private mIsCanGesture:Z

.field private mIsCompleteMode:Z

.field private mIsConfigChange:Z

.field private mIsDlnaListShow:Z

.field private mIsDlnaMode:Z

.field private mIsHdmiOn:Z

.field private mIsNativeCompleteMode:I

.field private mIsOnLineCompleteMode:I

.field private mIsOnLineVideo:Z

.field private mIsPreNext:Z

.field private mIsQueueplay:Z

.field private mIsRepeatplay:Z

.field private mIsScaleMode:Z

.field private mIsScreenHorizontal:Z

.field private mIsSetBright:Z

.field private mIsSetSeek:Z

.field private mIsSetVol:Z

.field private mIsTimeTextListShow:Z

.field private mIsZoomClick:Z

.field private mLastDownTime:J

.field private mLastListSize:I

.field private mLetvLogo:Landroid/widget/ImageView;

.field private mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

.field private mLightBarLayout:Landroid/widget/LinearLayout;

.field private mLightButton:Landroid/widget/ImageButton;

.field private mLightButtonListener:Landroid/view/View$OnClickListener;

.field private mLightProgress:I

.field private mLightSeekListener:Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;

.field private mMaxVolume:I

.field private mMaxZoomValue:D

.field private mMenuIconListener:Landroid/view/View$OnClickListener;

.field private mMinZoomValue:D

.field private mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

.field private mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

.field private mNextButton:Landroid/widget/ImageButton;

.field private mOldLevel:D

.field private mOldLightProgress:I

.field private mOldVolumeProgress:I

.field private mOldX:F

.field private mOldY:F

.field private mOnLineBitrateButton:Landroid/widget/ImageButton;

.field private mOnLineBitrateCount:I

.field private mOnLineBitrateSelect:I

.field private mOnTouchDownPosition:I

.field private mOnTouchDownThumbAlpha:I

.field private mOnTouchDownTime:J

.field private mOnTouchUpTime:J

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

.field private mPopMenuInfo:[Ljava/lang/String;

.field private mPopMenuShowing:Z

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mPreButton:Landroid/widget/ImageButton;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mPrevNextListener:Landroid/view/View$OnClickListener;

.field private mRecZoom:D

.field private mRemainPlayTimeText:Landroid/widget/TextView;

.field private mRightBottomlayout:Landroid/widget/LinearLayout;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSeekBarPosition:I

.field private mSelectList:Landroid/widget/ListView;

.field private mSelectListAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;

.field private mSelectTitle:Landroid/widget/TextView;

.field private mSelectView:Landroid/widget/RelativeLayout;

.field private mSysBrightness:I

.field private mThumbAlpha:I

.field private mTimeTextButton:Landroid/widget/ImageButton;

.field private mTimeTextCount:I

.field private mTimeTextSelect:I

.field private mTitle_view:Landroid/widget/TextView;

.field private mTopPartLayout:Landroid/widget/RelativeLayout;

.field private mTotalTime:J

.field private mTrackButton:Landroid/widget/ImageButton;

.field private mVelocity:Landroid/view/VelocityTracker;

.field private mVerticalBackButton:Lcom/meizu/widget/GlowImageButton;

.field private mVerticalBackMenu:Landroid/widget/RelativeLayout;

.field private mVerticalMenuButton:Lcom/meizu/widget/GlowImageButton;

.field private mVideoControll:Landroid/widget/RelativeLayout;

.field private mVideoRotation:I

.field private mVolumSeekListener:Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;

.field private mVolumeButton:Landroid/widget/ImageButton;

.field private mVolumeButtonListener:Landroid/view/View$OnClickListener;

.field private mVolumeLayout:Landroid/widget/LinearLayout;

.field private mVolumeProgress:I

.field private mVolumeTouchSeek:Lcom/android/gallery3d/seekbar/VerSeekBar;

.field private mZoomCount:I

.field private mZoomIcon:Landroid/widget/TextView;

.field private mZoomIndex:I

.field private mZoomLevel:D

.field private mZoomLevelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomScale:F

.field private mZoomScaleMidPoint:Landroid/graphics/PointF;

.field private mZoomScaleMode:I

.field private mainView:Landroid/view/View;

.field private state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_DIM:I

    sput v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->MIN_WIN_BRIGHNESS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 9
    .parameter "context"
    .parameter "completeMode"
    .parameter "isOnlineVideo"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/high16 v4, -0x4080

    const/4 v3, 0x0

    .line 311
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 221
    iput-wide v7, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    .line 222
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLastListSize:I

    .line 223
    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAudioTrackCount:I

    .line 224
    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextCount:I

    .line 225
    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAudioTrackSelect:I

    .line 226
    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateCount:I

    .line 227
    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextSelect:I

    .line 228
    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaDeviceSelect:I

    .line 229
    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateSelect:I

    .line 230
    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomScaleMode:I

    .line 231
    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIndex:I

    .line 232
    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxVolume:I

    .line 233
    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    .line 234
    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomCount:I

    .line 235
    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureClickCount:I

    .line 236
    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    .line 237
    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSysBrightness:I

    .line 238
    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoRotation:I

    .line 239
    const/16 v1, 0x320

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayWidth:I

    .line 240
    const/16 v1, 0x500

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayHeight:I

    .line 241
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayHeight:I

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenWidth:I

    .line 242
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayWidth:I

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenHeight:I

    .line 243
    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    .line 244
    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    .line 245
    iput v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldVolumeProgress:I

    .line 246
    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightProgress:I

    .line 247
    iput v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldLightProgress:I

    .line 248
    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaDeviceCount:I

    .line 249
    const/16 v1, 0x5a

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureSpeedTime:I

    .line 250
    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    .line 251
    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnTouchDownPosition:I

    .line 252
    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnTouchDownThumbAlpha:I

    .line 253
    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mThumbAlpha:I

    .line 254
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRecZoom:D

    .line 255
    const-wide/high16 v1, 0x3ff0

    iput-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    .line 256
    const-wide/high16 v1, -0x4010

    iput-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldLevel:D

    .line 257
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxZoomValue:D

    .line 258
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMinZoomValue:D

    .line 259
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomScale:F

    .line 260
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDownDist:F

    .line 261
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDownX:F

    .line 262
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDownY:F

    .line 263
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldY:F

    .line 264
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldX:F

    .line 265
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentY:F

    .line 266
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentX:F

    .line 267
    iput-wide v7, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTotalTime:J

    .line 268
    iput-wide v7, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLastDownTime:J

    .line 269
    iput-wide v7, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnTouchDownTime:J

    .line 270
    iput-wide v7, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnTouchUpTime:J

    .line 271
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDragging:Z

    .line 272
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    .line 273
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopMenuShowing:Z

    .line 274
    iput-boolean v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    .line 275
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAudioTrackListShow:Z

    .line 276
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsTimeTextListShow:Z

    .line 277
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsBitrateListShow:Z

    .line 278
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaListShow:Z

    .line 280
    iput v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsNativeCompleteMode:I

    .line 281
    iput v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsOnLineCompleteMode:I

    .line 282
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCompleteMode:Z

    .line 283
    iput-boolean v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAutoVerScreen:Z

    .line 284
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsRepeatplay:Z

    .line 285
    iput-boolean v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsQueueplay:Z

    .line 287
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureZoomMode:Z

    .line 288
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetSeek:Z

    .line 289
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetVol:Z

    .line 290
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetBright:Z

    .line 291
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsZoomClick:Z

    .line 292
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    .line 293
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsPreNext:Z

    .line 294
    iput-boolean v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCanGesture:Z

    .line 295
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScaleMode:Z

    .line 296
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsHdmiOn:Z

    .line 297
    iput-boolean v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsConfigChange:Z

    .line 298
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsOnLineVideo:Z

    .line 304
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomScaleMidPoint:Landroid/graphics/PointF;

    .line 305
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;

    .line 309
    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->LISTCYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    .line 562
    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$1;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    .line 838
    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay$2;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$2;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 859
    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay$3;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$3;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPrevNextListener:Landroid/view/View$OnClickListener;

    .line 885
    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay$4;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$4;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mChangeTrackListener:Landroid/view/View$OnClickListener;

    .line 904
    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay$5;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$5;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaBtnListener:Landroid/view/View$OnClickListener;

    .line 922
    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay$6;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$6;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mChangeBitrateListener:Landroid/view/View$OnClickListener;

    .line 941
    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay$7;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$7;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mChangeTimeTextListener:Landroid/view/View$OnClickListener;

    .line 959
    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay$8;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$8;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMenuIconListener:Landroid/view/View$OnClickListener;

    .line 1073
    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay$9;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$9;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mBackIconListener:Landroid/view/View$OnClickListener;

    .line 1082
    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay$10;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$10;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightButtonListener:Landroid/view/View$OnClickListener;

    .line 1093
    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay$11;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$11;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButtonListener:Landroid/view/View$OnClickListener;

    .line 1114
    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay$12;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$12;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumSeekListener:Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;

    .line 1142
    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay$13;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$13;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightSeekListener:Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;

    .line 312
    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->LOADING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 313
    iput-boolean p3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsOnLineVideo:Z

    .line 314
    iput-boolean p2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCompleteMode:Z

    .line 315
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 316
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    const/16 v1, 0x202

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setSystemUiVisibility(I)V

    .line 319
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->initScreenSize(Landroid/content/Context;)V

    .line 320
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->initSharePreferences()V

    .line 321
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->initWindowView(Landroid/content/Context;)V

    .line 322
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->initWidget()V

    .line 323
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/MovieControllerOverlay;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mThumbAlpha:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mThumbAlpha:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/View;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopMenuShowing:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopMenuShowing:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideControllAni(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAudioTrackListShow:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAudioTrackListShow:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/app/MovieControllerOverlay;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setAudioTrackType(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsTimeTextListShow:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsTimeTextListShow:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/app/MovieControllerOverlay;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setTimeTextType(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaListShow:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaListShow:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/ControllerOverlay$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsBitrateListShow:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsBitrateListShow:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/gallery3d/app/MovieControllerOverlay;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mBitrateInfo:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hide()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/gallery3d/app/MovieControllerOverlay;IIII)Landroid/view/animation/TranslateAnimation;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->translateAni(IIII)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCanGesture:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/android/gallery3d/app/MovieControllerOverlay;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureClickCount:I

    return v0
.end method

.method static synthetic access$3902(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureClickCount:I

    return p1
.end method

.method static synthetic access$3908(Lcom/android/gallery3d/app/MovieControllerOverlay;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureClickCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureClickCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/gallery3d/app/MovieControllerOverlay;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIndex:I

    return v0
.end method

.method static synthetic access$4200(Lcom/android/gallery3d/app/MovieControllerOverlay;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    return-wide v0
.end method

.method static synthetic access$4202(Lcom/android/gallery3d/app/MovieControllerOverlay;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    return-wide p1
.end method

.method static synthetic access$4300(Lcom/android/gallery3d/app/MovieControllerOverlay;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRecZoom:D

    return-wide v0
.end method

.method static synthetic access$4302(Lcom/android/gallery3d/app/MovieControllerOverlay;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRecZoom:D

    return-wide p1
.end method

.method static synthetic access$4400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetSeek:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->changeVideoProgress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetVol:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->changeVolume(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetBright:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsHdmiOn:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setProgress()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$5000(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->changeBrigtness(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTrackButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mNextButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPauseButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDragging:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/PopupMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopupMenu:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopupMenu:Landroid/widget/PopupMenu;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/gallery3d/app/MovieControllerOverlay;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopMenuInfo:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setMenuItemCheck()V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCompleteMode:Z

    return v0
.end method

.method static synthetic access$6402(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCompleteMode:Z

    return p1
.end method

.method static synthetic access$6500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsOnLineVideo:Z

    return v0
.end method

.method static synthetic access$6602(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsOnLineCompleteMode:I

    return p1
.end method

.method static synthetic access$6702(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsNativeCompleteMode:I

    return p1
.end method

.method static synthetic access$6800(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAutoVerScreen:Z

    return v0
.end method

.method static synthetic access$6802(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAutoVerScreen:Z

    return p1
.end method

.method static synthetic access$6900(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setScreenSensor()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsRepeatplay:Z

    return v0
.end method

.method static synthetic access$7002(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsRepeatplay:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/gallery3d/app/MovieControllerOverlay;Lcom/android/gallery3d/app/MovieControllerOverlay$State;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setPlayMode()V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsQueueplay:Z

    return v0
.end method

.method static synthetic access$7202(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsQueueplay:Z

    return p1
.end method

.method static synthetic access$7300(Lcom/android/gallery3d/app/MovieControllerOverlay;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightProgress:I

    return v0
.end method

.method static synthetic access$7302(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightProgress:I

    return p1
.end method

.method static synthetic access$7400(Lcom/android/gallery3d/app/MovieControllerOverlay;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSysBrightness:I

    return v0
.end method

.method static synthetic access$7500()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->MIN_WIN_BRIGHNESS:I

    return v0
.end method

.method static synthetic access$7600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/seekbar/VerSeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/gallery3d/app/MovieControllerOverlay;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    return v0
.end method

.method static synthetic access$7702(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    return p1
.end method

.method static synthetic access$7800(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/seekbar/VerSeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeTouchSeek:Lcom/android/gallery3d/seekbar/VerSeekBar;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    return v0
.end method

.method static synthetic access$8000(Lcom/android/gallery3d/app/MovieControllerOverlay;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    return v0
.end method

.method static synthetic access$8002(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    return p1
.end method

.method static synthetic access$8100(Lcom/android/gallery3d/app/MovieControllerOverlay;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setVolumeLevel(I)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/gallery3d/app/MovieControllerOverlay;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    return v0
.end method

.method static synthetic access$8202(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    return p1
.end method

.method static synthetic access$8300(Lcom/android/gallery3d/app/MovieControllerOverlay;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxVolume:I

    return v0
.end method

.method static synthetic access$8400(Lcom/android/gallery3d/app/MovieControllerOverlay;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    return v0
.end method

.method static synthetic access$8402(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    return p1
.end method

.method static synthetic access$8600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsZoomClick:Z

    return v0
.end method

.method static synthetic access$8702(Lcom/android/gallery3d/app/MovieControllerOverlay;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDownX:F

    return p1
.end method

.method static synthetic access$8802(Lcom/android/gallery3d/app/MovieControllerOverlay;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDownY:F

    return p1
.end method

.method static synthetic access$8902(Lcom/android/gallery3d/app/MovieControllerOverlay;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLastDownTime:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    return v0
.end method

.method static synthetic access$9100(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setZoomChange()V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/view/VelocityTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVelocity:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$9302(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureSpeedTime:I

    return p1
.end method

.method private calculateTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/high16 v7, 0x430b

    .line 453
    const-string v1, ""

    .line 456
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 457
    const/high16 v0, 0x4170

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 458
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v3, v0

    .line 459
    const-wide v5, 0x4071700000000000L

    cmpg-double v0, v3, v5

    if-gtz v0, :cond_0

    .line 479
    :goto_0
    return-object p1

    .line 462
    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-ge v0, v3, :cond_1

    .line 463
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 464
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    const-string v5, ".."

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    sub-float v5, v7, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 469
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 470
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_4

    .line 471
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 472
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 473
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    cmpg-float v4, v4, v7

    if-gtz v4, :cond_3

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object p1, v0

    .line 479
    goto :goto_0

    .line 467
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 462
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 471
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_3
.end method

.method private changeBrigtness(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/16 v6, 0x2710

    const/4 v5, 0x0

    .line 2331
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 2332
    .local v2, y:I
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenHeight:I

    iget v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayWidth:I

    if-ne v3, v4, :cond_4

    .line 2333
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenHeight:I

    add-int/lit8 v1, v3, -0x50

    .line 2334
    .local v1, setProgressRange:I
    add-int/lit8 v2, v2, -0x28

    .line 2339
    :goto_0
    if-gez v2, :cond_0

    .line 2340
    const/4 v2, 0x0

    .line 2342
    :cond_0
    if-le v2, v1, :cond_1

    .line 2343
    move v2, v1

    .line 2345
    :cond_1
    sub-int v3, v1, v2

    mul-int/lit16 v3, v3, 0x2710

    div-int/2addr v3, v1

    int-to-double v3, v3

    invoke-static {v3, v4, v5}, Lcom/android/gallery3d/app/MovieActivityUtils;->roundingLevel(DI)D

    move-result-wide v3

    double-to-int v0, v3

    .line 2346
    .local v0, progress:I
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldLightProgress:I

    if-eq v0, v3, :cond_2

    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldLightProgress:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 2347
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldLightProgress:I

    if-le v0, v3, :cond_5

    .line 2348
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightProgress:I

    iget v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldLightProgress:I

    sub-int v4, v0, v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightProgress:I

    .line 2349
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightProgress:I

    if-lt v3, v6, :cond_2

    .line 2350
    iput v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightProgress:I

    .line 2359
    :cond_2
    :goto_1
    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldLightProgress:I

    .line 2360
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setLightBarProgress()V

    .line 2361
    iget-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    if-eqz v3, :cond_3

    .line 2362
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideControllAni(Z)V

    .line 2364
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->updateLightUI()V

    .line 2365
    return-void

    .line 2336
    .end local v0           #progress:I
    .end local v1           #setProgressRange:I
    :cond_4
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenHeight:I

    add-int/lit16 v1, v3, -0xdc

    .line 2337
    .restart local v1       #setProgressRange:I
    add-int/lit8 v2, v2, -0x6e

    goto :goto_0

    .line 2353
    .restart local v0       #progress:I
    :cond_5
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightProgress:I

    iget v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldLightProgress:I

    sub-int/2addr v4, v0

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightProgress:I

    .line 2354
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightProgress:I

    if-gtz v3, :cond_2

    .line 2355
    iput v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightProgress:I

    goto :goto_1
.end method

.method private changeVideoProgress(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x4

    const/high16 v3, 0x4170

    const/4 v2, 0x0

    .line 2423
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    if-eqz v0, :cond_0

    .line 2424
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->onSeekbarProgressTouch(Landroid/widget/SeekBar;Landroid/view/MotionEvent;)V

    .line 2455
    :goto_0
    return-void

    .line 2426
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 2427
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 2428
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eq v0, v1, :cond_1

    .line 2429
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onShown()V

    .line 2431
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v0, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->showSystemTitle(Z)V

    .line 2432
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2433
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureAlreadyPlayTimeText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2434
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureRemainPlayTimeText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2435
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2436
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2437
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 2439
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2440
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2441
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2442
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->hideViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    .line 2444
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2445
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2446
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2447
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2448
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2450
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2451
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 2453
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->onSeekbarProgressTouch(Landroid/widget/SeekBar;Landroid/view/MotionEvent;)V

    goto/16 :goto_0
.end method

.method private changeVolume(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x2710

    .line 2370
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 2371
    .local v2, y:I
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenHeight:I

    iget v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayWidth:I

    if-ne v3, v4, :cond_4

    .line 2372
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenHeight:I

    add-int/lit8 v1, v3, -0x50

    .line 2373
    .local v1, setProgressRange:I
    add-int/lit8 v2, v2, -0x28

    .line 2378
    :goto_0
    if-gez v2, :cond_0

    .line 2379
    const/4 v2, 0x0

    .line 2381
    :cond_0
    if-le v2, v1, :cond_1

    .line 2382
    move v2, v1

    .line 2384
    :cond_1
    sub-int v3, v1, v2

    mul-int/lit16 v3, v3, 0x2710

    div-int/2addr v3, v1

    int-to-double v3, v3

    invoke-static {v3, v4, v6}, Lcom/android/gallery3d/app/MovieActivityUtils;->roundingLevel(DI)D

    move-result-wide v3

    double-to-int v0, v3

    .line 2385
    .local v0, progress:I
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldVolumeProgress:I

    if-eq v0, v3, :cond_2

    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldVolumeProgress:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 2386
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldVolumeProgress:I

    if-le v0, v3, :cond_6

    .line 2387
    iget-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-eqz v3, :cond_5

    .line 2388
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    iget v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldVolumeProgress:I

    sub-int v4, v0, v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    .line 2389
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    if-lt v3, v5, :cond_2

    .line 2390
    iput v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    .line 2413
    :cond_2
    :goto_1
    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldVolumeProgress:I

    .line 2414
    iget-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    if-eqz v3, :cond_3

    .line 2415
    invoke-direct {p0, v7}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideControllAni(Z)V

    .line 2417
    :cond_3
    invoke-direct {p0, v7}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setVolumBarProgress(Z)V

    .line 2418
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->updateVolumeUI()V

    .line 2419
    return-void

    .line 2375
    .end local v0           #progress:I
    .end local v1           #setProgressRange:I
    :cond_4
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenHeight:I

    add-int/lit16 v1, v3, -0xdc

    .line 2376
    .restart local v1       #setProgressRange:I
    add-int/lit8 v2, v2, -0x6e

    goto :goto_0

    .line 2393
    .restart local v0       #progress:I
    :cond_5
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    iget v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldVolumeProgress:I

    sub-int v4, v0, v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    .line 2394
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    if-lt v3, v5, :cond_2

    .line 2395
    iput v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    goto :goto_1

    .line 2399
    :cond_6
    iget-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-eqz v3, :cond_7

    .line 2400
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    iget v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldVolumeProgress:I

    sub-int/2addr v4, v0

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    .line 2401
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    if-gtz v3, :cond_2

    .line 2402
    iput v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    goto :goto_1

    .line 2405
    :cond_7
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    iget v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldVolumeProgress:I

    sub-int/2addr v4, v0

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    .line 2406
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    if-gtz v3, :cond_2

    .line 2407
    iput v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    goto :goto_1
.end method

.method private enableMediaControl(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 2204
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 2205
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 2207
    :cond_0
    return-void
.end method

.method private hide()V
    .locals 2

    .prologue
    .line 1406
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 1407
    .local v0, wasHidden:Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 1408
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eq v0, v1, :cond_0

    .line 1409
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onHidden()V

    .line 1411
    :cond_0
    return-void
.end method

.method private hideControllAni(Z)V
    .locals 4
    .parameter "showAni"

    .prologue
    const/16 v1, 0x3f9

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 1868
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoControll:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    if-eqz v0, :cond_1

    .line 1869
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->turnOffLed()V

    .line 1870
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->enableMediaControl(Z)V

    .line 1871
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->showSystemTitle(Z)V

    .line 1872
    if-eqz p1, :cond_3

    .line 1873
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    if-nez v0, :cond_0

    .line 1874
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->hideViewTranslateAniDown(Landroid/content/Context;Landroid/view/View;)V

    .line 1876
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->hideViewTranslateAniUp(Landroid/content/Context;Landroid/view/View;)V

    .line 1877
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoControll:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->hideViewTranslateAniDown(Landroid/content/Context;Landroid/view/View;)V

    .line 1878
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideSelectItemAni()V

    .line 1883
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoControll:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1884
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1885
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    if-eqz v0, :cond_4

    .line 1886
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1890
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRightBottomlayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1891
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRightBottomlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1894
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsHdmiOn:Z

    if-eqz v0, :cond_2

    .line 1895
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    if-eqz v0, :cond_2

    .line 1896
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    sget v1, Lcom/android/gallery3d/app/MovieControllerOverlay;->MIN_WIN_BRIGHNESS:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->setWinBrightness(I)V

    .line 1899
    :cond_2
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    .line 1900
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hide()V

    .line 1901
    return-void

    .line 1880
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1881
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1888
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private hideSelectItemAni()V
    .locals 4

    .prologue
    const/16 v3, 0x3f9

    const/16 v2, 0x8

    .line 1904
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1905
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTrackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 1906
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTrackButton:Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->hideViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    .line 1908
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 1909
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextButton:Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->hideViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    .line 1911
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 1912
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->hideViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    .line 1914
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 1915
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateButton:Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->hideViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    .line 1917
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1918
    return-void
.end method

.method private initBottomPartWidget()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 1661
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoControll:Landroid/widget/RelativeLayout;

    .line 1662
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    .line 1663
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRightBottomlayout:Landroid/widget/LinearLayout;

    .line 1664
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPauseButton:Landroid/widget/ImageButton;

    .line 1665
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mNextButton:Landroid/widget/ImageButton;

    .line 1666
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreButton:Landroid/widget/ImageButton;

    .line 1667
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCompleteMode:Z

    if-eqz v0, :cond_0

    .line 1668
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1669
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1674
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1675
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mNextButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPrevNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1676
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPrevNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1677
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/GlowImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalMenuButton:Lcom/meizu/widget/GlowImageButton;

    .line 1678
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalMenuButton:Lcom/meizu/widget/GlowImageButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMenuIconListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/GlowImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1680
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/GlowImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackButton:Lcom/meizu/widget/GlowImageButton;

    .line 1681
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackButton:Lcom/meizu/widget/GlowImageButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mBackIconListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/GlowImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1683
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    if-eqz v0, :cond_1

    .line 1684
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1690
    :goto_1
    return-void

    .line 1671
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1672
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1686
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1687
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    .line 1688
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalMenuButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method private initLeftWidget()V
    .locals 2

    .prologue
    .line 1720
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;

    .line 1721
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButton:Landroid/widget/ImageButton;

    .line 1722
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1723
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/seekbar/VerSeekBar;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeTouchSeek:Lcom/android/gallery3d/seekbar/VerSeekBar;

    .line 1724
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeTouchSeek:Lcom/android/gallery3d/seekbar/VerSeekBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumSeekListener:Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setOnSeekBarChangeListener(Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;)V

    .line 1725
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeTouchSeek:Lcom/android/gallery3d/seekbar/VerSeekBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setMax(I)V

    .line 1726
    return-void
.end method

.method private initRightWidget()V
    .locals 2

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d000e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    .line 1712
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightButton:Landroid/widget/ImageButton;

    .line 1713
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/seekbar/VerSeekBar;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

    .line 1714
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightSeekListener:Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setOnSeekBarChangeListener(Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;)V

    .line 1715
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setMax(I)V

    .line 1716
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1717
    return-void
.end method

.method private initScreenSize(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 380
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 381
    .local v0, outSize:Landroid/graphics/Point;
    check-cast p1, Lcom/android/gallery3d/app/MovieActivity;

    .end local p1
    invoke-virtual {p1}, Lcom/android/gallery3d/app/MovieActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 382
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    :goto_0
    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayWidth:I

    .line 383
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_1

    iget v1, v0, Landroid/graphics/Point;->x:I

    :goto_1
    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayHeight:I

    .line 384
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayWidth:I

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenWidth:I

    .line 385
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayHeight:I

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenHeight:I

    .line 386
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    .line 387
    return-void

    .line 382
    :cond_0
    iget v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 383
    :cond_1
    iget v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 386
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private initSelectView()V
    .locals 2

    .prologue
    .line 1693
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectTitle:Landroid/widget/TextView;

    .line 1694
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTitle_view:Landroid/widget/TextView;

    .line 1695
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectList:Landroid/widget/ListView;

    .line 1696
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;

    .line 1697
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTrackButton:Landroid/widget/ImageButton;

    .line 1698
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextButton:Landroid/widget/ImageButton;

    .line 1699
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateButton:Landroid/widget/ImageButton;

    .line 1700
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    .line 1702
    new-instance v0, Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectListAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;

    .line 1703
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTrackButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mChangeTrackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1704
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mChangeTimeTextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1705
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mChangeBitrateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1706
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1707
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1708
    return-void
.end method

.method private initSharePreferences()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 417
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    const-string v1, "com.meizu.videoplayer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreferences:Landroid/content/SharedPreferences;

    .line 418
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 419
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAutoVerScreen:Z

    .line 420
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsRepeatplay:Z

    .line 421
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsQueueplay:Z

    .line 443
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "screen-sensor"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAutoVerScreen:Z

    .line 424
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsOnLineVideo:Z

    if-eqz v0, :cond_3

    .line 425
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "online-complete-mode"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsOnLineCompleteMode:I

    .line 426
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsOnLineCompleteMode:I

    if-nez v0, :cond_2

    .line 427
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCompleteMode:Z

    .line 439
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "queue-mode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsQueueplay:Z

    .line 440
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "replay-mode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsRepeatplay:Z

    goto :goto_0

    .line 428
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsOnLineCompleteMode:I

    if-ne v0, v3, :cond_1

    .line 429
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCompleteMode:Z

    goto :goto_1

    .line 432
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "native-complete-mode"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsNativeCompleteMode:I

    .line 433
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsNativeCompleteMode:I

    if-nez v0, :cond_4

    .line 434
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCompleteMode:Z

    goto :goto_1

    .line 435
    :cond_4
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsNativeCompleteMode:I

    if-ne v0, v3, :cond_1

    .line 436
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCompleteMode:Z

    goto :goto_1
.end method

.method private initTopPartWidget()V
    .locals 5

    .prologue
    const/16 v4, 0x2710

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1616
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    .line 1617
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    .line 1618
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTimeText:Landroid/widget/TextView;

    .line 1619
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRemainPlayTimeText:Landroid/widget/TextView;

    .line 1620
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;

    .line 1621
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1622
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1624
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureAlreadyPlayTimeText:Landroid/widget/TextView;

    .line 1625
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureRemainPlayTimeText:Landroid/widget/TextView;

    .line 1626
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    .line 1627
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1628
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1630
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/GlowImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHorizontalMenuButton:Lcom/meizu/widget/GlowImageButton;

    .line 1631
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHorizontalMenuButton:Lcom/meizu/widget/GlowImageButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMenuIconListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/GlowImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1633
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/GlowImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHorizontalBackButton:Lcom/meizu/widget/GlowImageButton;

    .line 1634
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHorizontalBackButton:Lcom/meizu/widget/GlowImageButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mBackIconListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/GlowImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1636
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    if-eqz v0, :cond_0

    .line 1637
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHorizontalBackButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    .line 1638
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHorizontalMenuButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    .line 1643
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    .line 1644
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay$14;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$14;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1652
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;

    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay$15;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$15;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1659
    return-void

    .line 1640
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHorizontalBackButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v0, v3}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    .line 1641
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHorizontalMenuButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v0, v3}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private initTouchParams()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/high16 v1, -0x4080

    const/4 v0, 0x0

    .line 2587
    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldY:F

    .line 2588
    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldX:F

    .line 2589
    iput v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldLightProgress:I

    .line 2590
    iput v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldVolumeProgress:I

    .line 2591
    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomCount:I

    .line 2592
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsZoomClick:Z

    .line 2593
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetSeek:Z

    .line 2594
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetVol:Z

    .line 2595
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetBright:Z

    .line 2596
    return-void
.end method

.method private initWidget()V
    .locals 4

    .prologue
    .line 1478
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->initTopPartWidget()V

    .line 1479
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->initBottomPartWidget()V

    .line 1480
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->initLeftWidget()V

    .line 1481
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->initRightWidget()V

    .line 1482
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->initSelectView()V

    .line 1483
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;Lcom/android/gallery3d/app/MovieControllerOverlay$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGuestureListenr:Landroid/view/GestureDetector;

    .line 1484
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopMenuInfo:[Ljava/lang/String;

    .line 1485
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mBitrateInfo:[Ljava/lang/String;

    .line 1486
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVelocity:Landroid/view/VelocityTracker;

    .line 1487
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAudioManager:Landroid/media/AudioManager;

    .line 1488
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 1489
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1490
    return-void
.end method

.method private initWindowView(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v5, -0x2

    const/4 v6, -0x1

    .line 390
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 391
    .local v0, controlInflate:Landroid/view/LayoutInflater;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 392
    .local v3, wrapContent:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 393
    .local v1, matchParent:Landroid/widget/FrameLayout$LayoutParams;
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 394
    .local v2, spinnerInflate:Landroid/view/LayoutInflater;
    const v4, 0x7f04003b

    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/view/View;

    .line 395
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/view/View;

    const v5, 0x7f0d00cf

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLetvLogo:Landroid/widget/ImageView;

    .line 396
    iget-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsOnLineVideo:Z

    if-eqz v4, :cond_0

    .line 397
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLetvLogo:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 401
    :goto_0
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    .line 402
    const v4, 0x7f050012

    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideAnimation:Landroid/view/animation/Animation;

    .line 403
    const v4, 0x7f040039

    invoke-virtual {v0, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    .line 404
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 405
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    const/high16 v5, -0x3400

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 406
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 407
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 408
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-virtual {p0, v4, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/view/View;

    invoke-virtual {p0, v4, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hide()V

    .line 414
    return-void

    .line 399
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLetvLogo:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private initZoomParams()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2574
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsPreNext:Z

    if-eqz v0, :cond_1

    .line 2575
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->getZoomLevelList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;

    .line 2576
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2577
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxZoomValue:D

    .line 2578
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMinZoomValue:D

    .line 2582
    :goto_0
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsPreNext:Z

    .line 2584
    :cond_1
    return-void

    .line 2580
    :cond_2
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMinZoomValue:D

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxZoomValue:D

    goto :goto_0
.end method

.method private isViewVisiable(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 1794
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutCenteredView(Landroid/view/View;IIII)V
    .locals 6
    .parameter "view"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2799
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 2800
    .local v3, cw:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 2801
    .local v0, ch:I
    sub-int v4, p4, p2

    sub-int/2addr v4, v3

    div-int/lit8 v1, v4, 0x2

    .line 2802
    .local v1, cl:I
    sub-int v4, p5, p3

    sub-int/2addr v4, v0

    div-int/lit8 v2, v4, 0x2

    .line 2803
    .local v2, ct:I
    add-int v4, v1, v3

    add-int v5, v2, v0

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 2804
    return-void
.end method

.method private maybeStartHiding()V
    .locals 4

    .prologue
    .line 1783
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding(Z)V

    .line 1784
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1785
    return-void
.end method

.method private midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "point"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x4000

    .line 2463
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float v0, v2, v3

    .line 2464
    .local v0, x:F
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float v1, v2, v3

    .line 2465
    .local v1, y:F
    div-float v2, v0, v4

    div-float v3, v1, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 2466
    return-void
.end method

.method private resetLayoutSize()V
    .locals 14

    .prologue
    const/high16 v13, 0x4108

    const/high16 v10, 0x43c4

    const v9, 0x438b8000

    const/high16 v11, 0x41b4

    const/4 v12, 0x0

    .line 326
    iget-object v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v0, v8

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 328
    .local v0, gestureProgressLp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v3, v8

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 329
    .local v3, progressLp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTitle_view:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v4, v8

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 331
    .local v4, titleLp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v6, v8

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 332
    .local v6, volumeLp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeTouchSeek:Lcom/android/gallery3d/seekbar/VerSeekBar;

    invoke-virtual {v8}, Lcom/android/gallery3d/seekbar/VerSeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    move-object v7, v8

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 334
    .local v7, volumeSeekbarLp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v1, v8

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 335
    .local v1, lightLp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

    invoke-virtual {v8}, Lcom/android/gallery3d/seekbar/VerSeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    move-object v2, v8

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 337
    .local v2, lightSeekbarLp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoControll:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v5, v8

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 340
    .local v5, videoControllLp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    if-eqz v8, :cond_0

    .line 341
    iget-object v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    invoke-static {v8, v10}, Lcom/android/gallery3d/app/MovieActivityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 342
    iget-object v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    invoke-static {v8, v10}, Lcom/android/gallery3d/app/MovieActivityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 343
    iget-object v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    invoke-static {v8, v10}, Lcom/android/gallery3d/app/MovieActivityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 345
    iget-object v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    invoke-static {v8, v11}, Lcom/android/gallery3d/app/MovieActivityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    const/high16 v10, 0x4252

    invoke-static {v9, v10}, Lcom/android/gallery3d/app/MovieActivityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v6, v8, v9, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 346
    iget-object v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    invoke-static {v8, v13}, Lcom/android/gallery3d/app/MovieActivityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v7, v12, v8, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 348
    iget-object v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    const/high16 v9, 0x4252

    invoke-static {v8, v9}, Lcom/android/gallery3d/app/MovieActivityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    invoke-static {v9, v11}, Lcom/android/gallery3d/app/MovieActivityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v1, v12, v8, v9, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 349
    iget-object v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    invoke-static {v8, v13}, Lcom/android/gallery3d/app/MovieActivityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v2, v12, v8, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 351
    iget-object v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    const/high16 v9, 0x434a

    invoke-static {v8, v9}, Lcom/android/gallery3d/app/MovieActivityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    const/high16 v10, 0x434a

    invoke-static {v9, v10}, Lcom/android/gallery3d/app/MovieActivityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v9

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    const/high16 v11, 0x41a0

    invoke-static {v10, v11}, Lcom/android/gallery3d/app/MovieActivityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v5, v8, v12, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 370
    :goto_0
    iget-object v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v8, v0}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    iget-object v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTitle_view:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    iget-object v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v8, v3}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    iget-object v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    iget-object v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeTouchSeek:Lcom/android/gallery3d/seekbar/VerSeekBar;

    invoke-virtual {v8, v7}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    iget-object v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    iget-object v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

    invoke-virtual {v8, v2}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    iget-object v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoControll:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    return-void

    .line 355
    :cond_0
    iget-object v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/android/gallery3d/app/MovieActivityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 356
    iget-object v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/android/gallery3d/app/MovieActivityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 357
    iget-object v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/android/gallery3d/app/MovieActivityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 359
    iget-object v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    invoke-static {v8, v11}, Lcom/android/gallery3d/app/MovieActivityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    const/high16 v10, 0x4302

    invoke-static {v9, v10}, Lcom/android/gallery3d/app/MovieActivityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v6, v8, v9, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 360
    iget-object v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    const/high16 v9, 0x4120

    invoke-static {v8, v9}, Lcom/android/gallery3d/app/MovieActivityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v7, v12, v8, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 362
    iget-object v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    const/high16 v9, 0x4302

    invoke-static {v8, v9}, Lcom/android/gallery3d/app/MovieActivityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    invoke-static {v9, v11}, Lcom/android/gallery3d/app/MovieActivityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v1, v12, v8, v9, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 363
    iget-object v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    const/high16 v9, 0x4120

    invoke-static {v8, v9}, Lcom/android/gallery3d/app/MovieActivityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v2, v12, v8, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 365
    iget-object v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    const/high16 v9, 0x42a5

    invoke-static {v8, v9}, Lcom/android/gallery3d/app/MovieActivityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    const/high16 v10, 0x42a5

    invoke-static {v9, v10}, Lcom/android/gallery3d/app/MovieActivityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v9

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    const/high16 v11, 0x4288

    invoke-static {v10, v11}, Lcom/android/gallery3d/app/MovieActivityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v5, v8, v12, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_0
.end method

.method private resetScreenLight()V
    .locals 3

    .prologue
    .line 1744
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->getAppScreenBrightness(Landroid/content/SharedPreferences;)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    .line 1745
    invoke-static {}, Lcom/android/gallery3d/app/MovieActivityUtils;->getCurScreenBrightness()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSysBrightness:I

    .line 1746
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    iget v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSysBrightness:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    if-gez v1, :cond_1

    .line 1747
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSysBrightness:I

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    .line 1749
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSysBrightness:I

    sget v2, Lcom/android/gallery3d/app/MovieControllerOverlay;->MIN_WIN_BRIGHNESS:I

    sub-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x2710

    sget v2, Lcom/android/gallery3d/app/MovieControllerOverlay;->MIN_WIN_BRIGHNESS:I

    rsub-int v2, v2, 0xff

    div-int v0, v1, v2

    .line 1750
    .local v0, sysProgress:I
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    sget v2, Lcom/android/gallery3d/app/MovieControllerOverlay;->MIN_WIN_BRIGHNESS:I

    sub-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x2710

    sget v2, Lcom/android/gallery3d/app/MovieControllerOverlay;->MIN_WIN_BRIGHNESS:I

    rsub-int v2, v2, 0xff

    div-int/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightProgress:I

    .line 1751
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setBreakPointLevel(I)V

    .line 1752
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setLightBarProgress()V

    .line 1753
    return-void
.end method

.method private setAudioTrackType(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2283
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAudioTrackCount:I

    if-ge v0, v1, :cond_1

    .line 2284
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v1, v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->getAudioTrackName(I)Ljava/lang/String;

    move-result-object v1

    .line 2285
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    const v3, 0x7f0a01b1

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/MovieActivityUtils;->getStringFromRes(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2283
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2289
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2293
    :cond_1
    return-void
.end method

.method private setLightBarProgress()V
    .locals 3

    .prologue
    .line 2151
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightProgress:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setProgress(I)V

    .line 2152
    sget v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->MIN_WIN_BRIGHNESS:I

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightProgress:I

    sget v2, Lcom/android/gallery3d/app/MovieControllerOverlay;->MIN_WIN_BRIGHNESS:I

    rsub-int v2, v2, 0xff

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0x2710

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    .line 2153
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    if-eqz v0, :cond_0

    .line 2154
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->setWinBrightness(I)V

    .line 2156
    :cond_0
    return-void
.end method

.method private setMenuItemCheck()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1030
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 1031
    .local v2, pmenu:Landroid/widget/PopupMenu;
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/Menu;->size()I

    move-result v3

    .line 1032
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_4

    .line 1033
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1034
    .local v1, item:Landroid/view/MenuItem;
    packed-switch v0, :pswitch_data_0

    .line 1032
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1036
    :pswitch_0
    iget-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCompleteMode:Z

    if-eqz v4, :cond_0

    .line 1037
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1039
    :cond_0
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1044
    :pswitch_1
    iget-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAutoVerScreen:Z

    if-eqz v4, :cond_1

    .line 1045
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1047
    :cond_1
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1052
    :pswitch_2
    iget-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsRepeatplay:Z

    if-eqz v4, :cond_2

    .line 1053
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1055
    :cond_2
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1060
    :pswitch_3
    iget-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsQueueplay:Z

    if-eqz v4, :cond_3

    .line 1061
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1063
    :cond_3
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1071
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_4
    return-void

    .line 1034
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private setPlayMode()V
    .locals 2

    .prologue
    .line 1168
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsQueueplay:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsRepeatplay:Z

    if-eqz v0, :cond_2

    .line 1169
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->ALLCYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    .line 1181
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    if-eqz v0, :cond_1

    .line 1182
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setPlayMode(Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;)V

    .line 1184
    :cond_1
    return-void

    .line 1171
    :cond_2
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsQueueplay:Z

    if-eqz v0, :cond_3

    .line 1172
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->LISTCYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    .line 1174
    :cond_3
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsRepeatplay:Z

    if-eqz v0, :cond_4

    .line 1175
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->SINGLECYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    .line 1177
    :cond_4
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsRepeatplay:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsQueueplay:Z

    if-nez v0, :cond_0

    .line 1178
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->NOMODE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    goto :goto_0
.end method

.method private setProgress()J
    .locals 15

    .prologue
    const-wide/16 v9, 0x0

    .line 2159
    iget-boolean v11, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDragging:Z

    if-eqz v11, :cond_1

    move-wide v6, v9

    .line 2200
    :cond_0
    :goto_0
    return-wide v6

    .line 2162
    :cond_1
    const-wide/16 v6, 0x0

    .line 2164
    .local v6, position:J
    iget-wide v11, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTotalTime:J

    cmp-long v11, v11, v9

    if-nez v11, :cond_2

    .line 2165
    iget-object v11, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v11}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->getVideoDuration()J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTotalTime:J

    .line 2167
    :cond_2
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTotalTime:J

    .line 2168
    .local v0, duration:J
    iget-boolean v11, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-eqz v11, :cond_8

    .line 2169
    iget-object v11, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v11}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->getDlnaClientPos()I

    move-result v11

    int-to-long v6, v11

    .line 2170
    cmp-long v11, v6, v9

    if-nez v11, :cond_3

    iget-wide v11, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    cmp-long v11, v11, v9

    if-eqz v11, :cond_3

    .line 2171
    iget-wide v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    .line 2176
    :cond_3
    :goto_1
    iget-object v11, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;

    if-eqz v11, :cond_5

    .line 2177
    cmp-long v9, v0, v9

    if-lez v9, :cond_4

    .line 2179
    const-wide v9, 0x40c3880000000000L

    long-to-double v11, v6

    long-to-double v13, v0

    div-double/2addr v11, v13

    mul-double/2addr v9, v11

    double-to-long v4, v9

    .line 2180
    .local v4, pos:J
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;

    long-to-int v10, v4

    invoke-virtual {v9, v10}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2181
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    long-to-int v10, v4

    invoke-virtual {v9, v10}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2183
    .end local v4           #pos:J
    :cond_4
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v9}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->getBufferPercentage()I

    move-result v3

    .line 2184
    .local v3, percent:I
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;

    mul-int/lit8 v10, v3, 0xa

    invoke-virtual {v9, v10}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 2187
    .end local v3           #percent:I
    :cond_5
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRemainPlayTimeText:Landroid/widget/TextView;

    if-eqz v9, :cond_7

    .line 2188
    sub-long v9, v0, v6

    long-to-int v2, v9

    .line 2189
    .local v2, iTime:I
    if-gez v2, :cond_6

    .line 2190
    const/4 v2, 0x0

    .line 2192
    :cond_6
    int-to-long v9, v2

    invoke-direct {p0, v9, v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->stringForTime(J)Ljava/lang/String;

    move-result-object v8

    .line 2193
    .local v8, str:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureRemainPlayTimeText:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2194
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRemainPlayTimeText:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2196
    .end local v2           #iTime:I
    .end local v8           #str:Ljava/lang/String;
    :cond_7
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTimeText:Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 2197
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureAlreadyPlayTimeText:Landroid/widget/TextView;

    invoke-direct {p0, v6, v7}, Lcom/android/gallery3d/app/MovieControllerOverlay;->stringForTime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2198
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTimeText:Landroid/widget/TextView;

    invoke-direct {p0, v6, v7}, Lcom/android/gallery3d/app/MovieControllerOverlay;->stringForTime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2174
    :cond_8
    iget-wide v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    goto :goto_1
.end method

.method private setScreenSensor()V
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->getHdmiState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    sget-object v1, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;->VIDEO_ORIENTATION_LANDSCAPE:Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->lockScreenSensor(Lcom/android/gallery3d/app/MovieActivity$SensorRotation;)V

    .line 487
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    sget v1, Lcom/android/gallery3d/app/MovieControllerOverlay;->MIN_WIN_BRIGHNESS:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->setWinBrightness(I)V

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoRotation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoRotation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_3

    .line 489
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    sget-object v1, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;->VIDEO_ORIENTATION_PORTRAIT:Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->lockScreenSensor(Lcom/android/gallery3d/app/MovieActivity$SensorRotation;)V

    .line 490
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->setWinBrightness(I)V

    goto :goto_0

    .line 492
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->setWinBrightness(I)V

    .line 493
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAutoVerScreen:Z

    if-eqz v0, :cond_4

    .line 494
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    sget-object v1, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;->VIDEO_ORIENTATION_SENSOR:Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->lockScreenSensor(Lcom/android/gallery3d/app/MovieActivity$SensorRotation;)V

    goto :goto_0

    .line 496
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    sget-object v1, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;->VIDEO_ORIENTATION_LANDSCAPE:Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->lockScreenSensor(Lcom/android/gallery3d/app/MovieActivity$SensorRotation;)V

    goto :goto_0
.end method

.method private setTextSize(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureAlreadyPlayTimeText:Landroid/widget/TextView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 447
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureRemainPlayTimeText:Landroid/widget/TextView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 448
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTimeText:Landroid/widget/TextView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 449
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRemainPlayTimeText:Landroid/widget/TextView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 450
    return-void
.end method

.method private setTimeTextType(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2257
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->getTimeTextCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 2258
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v1, v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->getTimeTextName(I)Ljava/lang/String;

    move-result-object v1

    .line 2259
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "und"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2260
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    const v3, 0x7f0a01b0

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/MovieActivityUtils;->getStringFromRes(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2262
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2257
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2264
    :cond_1
    const-string v2, "chs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2265
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    const v2, 0x7f0a01b2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/MovieActivityUtils;->getStringFromRes(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2267
    :cond_2
    const-string v2, "cht"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2268
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    const v2, 0x7f0a01b3

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/MovieActivityUtils;->getStringFromRes(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2270
    :cond_3
    const-string v2, "eng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2271
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    const v2, 0x7f0a01b4

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/MovieActivityUtils;->getStringFromRes(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2274
    :cond_4
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2278
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0151

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->getStringFromRes(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2279
    return-void
.end method

.method private setVolumBarProgress(Z)V
    .locals 2
    .parameter "isSetProgress"

    .prologue
    .line 2136
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-eqz v0, :cond_0

    .line 2137
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeTouchSeek:Lcom/android/gallery3d/seekbar/VerSeekBar;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setProgress(I)V

    .line 2138
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setDlnaVol(I)V

    .line 2148
    :goto_0
    return-void

    .line 2140
    :cond_0
    if-eqz p1, :cond_1

    .line 2141
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxVolume:I

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x2710

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    .line 2145
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeTouchSeek:Lcom/android/gallery3d/seekbar/VerSeekBar;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setProgress(I)V

    .line 2146
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setVolumeLevel(I)V

    goto :goto_0

    .line 2143
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    mul-int/lit16 v0, v0, 0x2710

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxVolume:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    goto :goto_1
.end method

.method private setVolumeLevel(I)V
    .locals 3
    .parameter "iLevel"

    .prologue
    .line 2296
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/16 v2, 0x10

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2298
    return-void
.end method

.method private setZoomChange()V
    .locals 9

    .prologue
    const/16 v8, 0x3f6

    const/16 v7, 0x3f0

    const/4 v6, 0x0

    .line 2223
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->initZoomParams()V

    .line 2224
    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureZoomMode:Z

    if-eqz v1, :cond_0

    .line 2225
    iput-boolean v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureZoomMode:Z

    .line 2226
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2227
    iget-wide v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpg-double v1, v2, v4

    if-gez v1, :cond_4

    .line 2228
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIndex:I

    .line 2236
    .end local v0           #i:I
    :cond_0
    :goto_1
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIndex:I

    .line 2237
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIndex:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 2238
    iput v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIndex:I

    .line 2240
    :cond_1
    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    if-nez v1, :cond_3

    .line 2241
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 2242
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2243
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 2244
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 2245
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/MovieActivityUtils;->showViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    .line 2247
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 2248
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v8, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2250
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 2251
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2252
    invoke-direct {p0, v6}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setZoomIcon(Z)V

    .line 2253
    return-void

    .line 2230
    .restart local v0       #i:I
    :cond_4
    iget-wide v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-nez v1, :cond_5

    .line 2231
    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIndex:I

    goto :goto_1

    .line 2226
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private setZoomIcon(Z)V
    .locals 8
    .parameter "stepLess"

    .prologue
    .line 1756
    const-wide/16 v1, 0x0

    .line 1757
    .local v1, value:D
    if-nez p1, :cond_0

    .line 1758
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 1778
    :goto_0
    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/app/MovieActivityUtils;->roundingLevel(DI)D

    move-result-wide v1

    .line 1779
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1780
    return-void

    .line 1760
    :cond_0
    const/4 v0, 0x0

    .line 1761
    .local v0, index:I
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1762
    iget-wide v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v3, v4, v6

    if-gez v3, :cond_2

    .line 1766
    :cond_1
    if-nez v0, :cond_4

    .line 1767
    iget-wide v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    iget-wide v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMinZoomValue:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    .line 1768
    iget-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMinZoomValue:D

    goto :goto_0

    .line 1761
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1770
    :cond_3
    const-wide v1, 0x3feccccccccccccdL

    goto :goto_0

    .line 1772
    :cond_4
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 1773
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_0

    .line 1775
    :cond_5
    iget-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxZoomValue:D

    goto :goto_0
.end method

.method private showControllAni()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1798
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1799
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1800
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoControll:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    if-nez v0, :cond_0

    .line 1801
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->turnOnLed()V

    .line 1802
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->updateTopPartUI(Z)V

    .line 1803
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->updateGestureProgress(Z)V

    .line 1804
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->enableMediaControl(Z)V

    .line 1805
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->showSystemTitle(Z)V

    .line 1806
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1807
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoControll:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1808
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    if-eqz v0, :cond_2

    .line 1809
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1817
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoControll:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->showViewTranslateAniUp(Landroid/content/Context;Landroid/view/View;)V

    .line 1818
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->showViewTranslateAniDown(Landroid/content/Context;Landroid/view/View;)V

    .line 1819
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showSelectItemAni()V

    .line 1821
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsHdmiOn:Z

    if-eqz v0, :cond_1

    .line 1822
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    if-eqz v0, :cond_1

    .line 1823
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->setWinBrightness(I)V

    .line 1827
    :cond_1
    return-void

    .line 1811
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1812
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    .line 1813
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalMenuButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    .line 1814
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->showViewTranslateAniUp(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method

.method private showMainView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 2320
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mainView:Landroid/view/View;

    .line 2321
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mainView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2323
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mainView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/view/View;

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2325
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mainView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    if-ne v3, v4, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2327
    return-void

    :cond_0
    move v0, v2

    .line 2321
    goto :goto_0

    :cond_1
    move v0, v2

    .line 2323
    goto :goto_1

    :cond_2
    move v1, v2

    .line 2325
    goto :goto_2
.end method

.method private showSelectItemAni()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1830
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-eqz v0, :cond_4

    .line 1831
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTrackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1832
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1833
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaDeviceCount:I

    if-lez v0, :cond_3

    .line 1834
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1848
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateCount:I

    if-le v0, v4, :cond_1

    .line 1849
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1850
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateButton:Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->showViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    .line 1852
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaDeviceCount:I

    if-lez v0, :cond_7

    .line 1853
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsHdmiOn:Z

    if-nez v0, :cond_2

    .line 1854
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-eqz v0, :cond_6

    .line 1855
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1859
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1860
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->showViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    .line 1865
    :cond_2
    :goto_2
    return-void

    .line 1836
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1839
    :cond_4
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAudioTrackCount:I

    if-le v0, v4, :cond_5

    .line 1840
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTrackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1841
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTrackButton:Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->showViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    .line 1843
    :cond_5
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextCount:I

    if-lez v0, :cond_0

    .line 1844
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1845
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextButton:Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->showViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 1857
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    const v1, 0x7f02006b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 1863
    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2
.end method

.method private spacing(Landroid/view/MotionEvent;)F
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2457
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 2458
    .local v0, x:F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 2459
    .local v1, y:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method

.method private stringForTime(J)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2210
    long-to-int v0, p1

    div-int/lit16 v0, v0, 0x3e8

    .line 2211
    rem-int/lit8 v1, v0, 0x3c

    .line 2212
    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    .line 2213
    div-int/lit16 v0, v0, 0xe10

    .line 2214
    if-lez v0, :cond_0

    .line 2215
    const-string v3, "%d:%02d:%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2218
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%02d:%02d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private translateAni(IIII)Landroid/view/animation/TranslateAnimation;
    .locals 5
    .parameter "fromX"
    .parameter "toX"
    .parameter "fromY"
    .parameter "toY"

    .prologue
    .line 1788
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1789
    .local v0, tran_ani:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1790
    return-object v0
.end method

.method private updateGestureProgress(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x4170

    const/4 v2, 0x4

    .line 2047
    if-eqz p1, :cond_5

    .line 2048
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2049
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureAlreadyPlayTimeText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2050
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureRemainPlayTimeText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2051
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2052
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2053
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 2055
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2056
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2057
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2058
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->hideViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    .line 2060
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2061
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2062
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2063
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2064
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2066
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setProgress()J

    .line 2067
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2068
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 2074
    :cond_4
    :goto_0
    return-void

    .line 2071
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2072
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateLightUI()V
    .locals 5

    .prologue
    const/16 v4, 0x3f3

    const/4 v3, 0x4

    const/16 v2, 0x8

    .line 1922
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1923
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1924
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3fb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1925
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1926
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 1927
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1928
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoControll:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1929
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1930
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1931
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1932
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTrackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1934
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1935
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1937
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1938
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1939
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1940
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->hideViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    .line 1942
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1943
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1944
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1945
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1947
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1948
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1950
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1951
    return-void
.end method

.method private updateTopPartUI(Z)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x3f3

    const/16 v4, 0x3f2

    const/16 v3, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 1998
    if-eqz p1, :cond_9

    .line 1999
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2000
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 2002
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2003
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2004
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2005
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->hideViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    .line 2007
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2008
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2009
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2010
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2011
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2012
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 2020
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2021
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-eqz v0, :cond_7

    .line 2022
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    if-eqz v0, :cond_6

    .line 2023
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200dd

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 2044
    :cond_4
    :goto_1
    return-void

    .line 2013
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2014
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2015
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2016
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2017
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2018
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0

    .line 2025
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200de

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 2028
    :cond_7
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    if-eqz v0, :cond_8

    .line 2029
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200dd

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 2031
    :cond_8
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200de

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 2036
    :cond_9
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2037
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2038
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsConfigChange:Z

    if-eqz v0, :cond_4

    .line 2039
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsConfigChange:Z

    goto :goto_1
.end method

.method private updateViews()V
    .locals 1

    .prologue
    .line 2814
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eqz v0, :cond_0

    .line 2818
    :goto_0
    return-void

    .line 2817
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->requestLayout()V

    goto :goto_0
.end method

.method private updateVolumeUI()V
    .locals 7

    .prologue
    const v6, 0x7f0200de

    const v5, 0x7f0200dd

    const/16 v4, 0x3fb

    const/4 v3, 0x4

    const/16 v2, 0x8

    .line 1953
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1954
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1955
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1956
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1957
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 1958
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1959
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoControll:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1960
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1961
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1962
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1963
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTrackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1965
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1966
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1968
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-eqz v0, :cond_7

    .line 1969
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    if-eqz v0, :cond_6

    .line 1970
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1981
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1982
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1983
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1984
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->hideViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    .line 1986
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1987
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1988
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1989
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1991
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1992
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3fa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1994
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1995
    return-void

    .line 1972
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 1975
    :cond_7
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    if-eqz v0, :cond_8

    .line 1976
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 1978
    :cond_8
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private zoomScaleEvent(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/16 v6, 0x3f6

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2468
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->initZoomParams()V

    .line 2469
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 2510
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2471
    :pswitch_1
    iput v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomScaleMode:I

    goto :goto_0

    .line 2476
    :pswitch_2
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomScaleMode:I

    .line 2477
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomCount:I

    .line 2478
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScaleMode:Z

    if-eqz v0, :cond_0

    .line 2479
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    iget-wide v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxZoomValue:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 2480
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    iget-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setVideoZoomDamp(D)V

    .line 2481
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxZoomValue:D

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    .line 2482
    invoke-direct {p0, v5}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setZoomIcon(Z)V

    .line 2484
    :cond_1
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    iget-wide v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMinZoomValue:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_2

    .line 2485
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    iget-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setVideoZoomDamp(D)V

    .line 2486
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMinZoomValue:D

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    .line 2487
    invoke-direct {p0, v5}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setZoomIcon(Z)V

    .line 2489
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2490
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2491
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScaleMode:Z

    .line 2492
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldLevel:D

    goto :goto_0

    .line 2498
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->spacing(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDownDist:F

    .line 2499
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDownDist:F

    const/high16 v1, 0x4120

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2500
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomScaleMidPoint:Landroid/graphics/PointF;

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 2501
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomScaleMode:I

    goto :goto_0

    .line 2506
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->onMoveEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 2469
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public cancelHiding(Z)V
    .locals 4
    .parameter "cancel"

    .prologue
    const/16 v3, 0x3e9

    .line 1372
    if-eqz p1, :cond_0

    .line 1373
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1378
    :goto_0
    return-void

    .line 1375
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public checkHdmiState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2825
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    if-eqz v0, :cond_0

    .line 2826
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->getHdmiState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsHdmiOn:Z

    .line 2828
    :cond_0
    const-string v0, "hdmi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hdmi  insert is --->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsHdmiOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsHdmiOn:Z

    if-eqz v0, :cond_2

    .line 2830
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2831
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    sget-object v1, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;->VIDEO_ORIENTATION_LANDSCAPE:Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->lockScreenSensor(Lcom/android/gallery3d/app/MovieActivity$SensorRotation;)V

    .line 2833
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->setWinBrightness(I)V

    .line 2834
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    sget-object v1, Landroid/widget/VideoView$ZoomType;->ZOOM_HDMI:Landroid/widget/VideoView$ZoomType;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setVideoZoomType(Landroid/widget/VideoView$ZoomType;)V

    .line 2835
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-nez v0, :cond_1

    .line 2836
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2837
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaListShow:Z

    if-eqz v0, :cond_1

    .line 2838
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideSelectList(Z)V

    .line 2857
    :cond_1
    :goto_0
    return-void

    .line 2842
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2843
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setScreenSensor()V

    .line 2844
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    if-eqz v0, :cond_3

    .line 2845
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    sget-object v1, Landroid/widget/VideoView$ZoomType;->ZOOM_LEVEL:Landroid/widget/VideoView$ZoomType;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setVideoZoomType(Landroid/widget/VideoView$ZoomType;)V

    .line 2846
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    iget-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    invoke-interface {v0, v1, v2, v3}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setVideoZoomLevel(DZ)V

    .line 2850
    :goto_1
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaDeviceCount:I

    if-lez v0, :cond_1

    .line 2851
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    if-eqz v0, :cond_1

    .line 2852
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 2848
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    sget-object v1, Landroid/widget/VideoView$ZoomType;->ZOOM_VERTICAL:Landroid/widget/VideoView$ZoomType;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setVideoZoomType(Landroid/widget/VideoView$ZoomType;)V

    goto :goto_1
.end method

.method public finishLoading()V
    .locals 2

    .prologue
    .line 1261
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 1262
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f0201a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1263
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 1264
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->showSystemTitle(Z)V

    .line 1265
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1266
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1268
    return-void
.end method

.method public getSelectListShow()Z
    .locals 1

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 1258
    return-object p0
.end method

.method public hideDlnaButton()V
    .locals 2

    .prologue
    .line 1199
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaListShow:Z

    if-eqz v0, :cond_0

    .line 1200
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectList:Landroid/widget/ListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1202
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1203
    return-void
.end method

.method public hidePopMenu(Z)V
    .locals 2
    .parameter "isFromPlayer"

    .prologue
    const/4 v1, 0x0

    .line 1380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCanGesture:Z

    .line 1381
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1382
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsTimeTextListShow:Z

    .line 1383
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAudioTrackListShow:Z

    .line 1384
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaListShow:Z

    .line 1385
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopMenuShowing:Z

    .line 1386
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 1387
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->maybeStartHiding()V

    .line 1389
    :cond_0
    return-void
.end method

.method public hideSelectList(Z)V
    .locals 3
    .parameter "isFromPlayer"

    .prologue
    const/4 v2, 0x0

    .line 1391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCanGesture:Z

    .line 1392
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->hideAlphaAndScale(Landroid/content/Context;Landroid/view/View;)V

    .line 1393
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1394
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsTimeTextListShow:Z

    .line 1395
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAudioTrackListShow:Z

    .line 1396
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaListShow:Z

    .line 1397
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 1398
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->maybeStartHiding()V

    .line 1400
    :cond_0
    return-void
.end method

.method public initPreNextVideo()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 1236
    iput v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIndex:I

    .line 1237
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v0, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->showSystemTitle(Z)V

    .line 1238
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideControllAni(Z)V

    .line 1239
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsPreNext:Z

    .line 1240
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1241
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideSelectList(Z)V

    .line 1243
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1244
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTrackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1245
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1246
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-nez v0, :cond_1

    .line 1247
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1249
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRecZoom:D

    .line 1250
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    .line 1251
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1434
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1431
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1427
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter

    .prologue
    const/16 v3, 0x3f3

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 2727
    invoke-virtual {p0, v6}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding(Z)V

    .line 2728
    invoke-direct {p0, v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideControllAni(Z)V

    .line 2729
    iput-boolean v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsConfigChange:Z

    .line 2730
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2731
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    if-eqz v1, :cond_0

    .line 2732
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v1, v4}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->showSystemTitle(Z)V

    .line 2733
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->turnOffLed()V

    .line 2735
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2736
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2738
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2739
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2740
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2742
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2743
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2744
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2746
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoControll:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2747
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2748
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRightBottomlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2750
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 2751
    iput-boolean v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    .line 2752
    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsHdmiOn:Z

    if-eqz v1, :cond_7

    .line 2753
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    sget-object v2, Landroid/widget/VideoView$ZoomType;->ZOOM_HDMI:Landroid/widget/VideoView$ZoomType;

    invoke-interface {v1, v2}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setVideoZoomType(Landroid/widget/VideoView$ZoomType;)V

    .line 2758
    :goto_0
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayHeight:I

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayWidth:I

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 2759
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayHeight:I

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenWidth:I

    .line 2760
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayWidth:I

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenHeight:I

    .line 2761
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2762
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHorizontalMenuButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v1, v4}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    .line 2763
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHorizontalBackButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v1, v4}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    .line 2766
    :cond_4
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v6, :cond_5

    .line 2767
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    .line 2768
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    sget-object v2, Landroid/widget/VideoView$ZoomType;->ZOOM_VERTICAL:Landroid/widget/VideoView$ZoomType;

    invoke-interface {v1, v2}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setVideoZoomType(Landroid/widget/VideoView$ZoomType;)V

    .line 2769
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayWidth:I

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayHeight:I

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 2770
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayWidth:I

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenWidth:I

    .line 2771
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayHeight:I

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenHeight:I

    .line 2772
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHorizontalMenuButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v1, v5}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    .line 2773
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHorizontalBackButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v1, v5}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    .line 2774
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2776
    :cond_5
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2777
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2779
    :cond_6
    const-string v0, "onConfigurationChanged"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged mIsScreenHorizontal ---->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2780
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->resetLayoutSize()V

    .line 2781
    return-void

    .line 2755
    :cond_7
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    sget-object v2, Landroid/widget/VideoView$ZoomType;->ZOOM_LEVEL:Landroid/widget/VideoView$ZoomType;

    invoke-interface {v1, v2}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setVideoZoomType(Landroid/widget/VideoView$ZoomType;)V

    .line 2756
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    iget-wide v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    invoke-interface {v1, v2, v3, v4}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setVideoZoomLevel(DZ)V

    goto/16 :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 1437
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsBitrateListShow:Z

    if-eqz v0, :cond_1

    .line 1438
    iput p3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateSelect:I

    .line 1439
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectListAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateSelect:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;->setSelect(I)V

    .line 1440
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateSelect:I

    if-nez v0, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200a4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1445
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectListAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;->notifyDataSetChanged()V

    .line 1446
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1447
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateSelect:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setBitrateIndex(I)V

    .line 1448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    .line 1475
    :goto_1
    return-void

    .line 1443
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200d6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1451
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAudioTrackListShow:Z

    if-eqz v0, :cond_2

    .line 1452
    iput p3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAudioTrackSelect:I

    .line 1453
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectListAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAudioTrackSelect:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;->setSelect(I)V

    .line 1454
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAudioTrackSelect:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setAudioTrackIndex(I)V

    .line 1456
    :cond_2
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsTimeTextListShow:Z

    if-eqz v0, :cond_3

    .line 1457
    iput p3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextSelect:I

    .line 1458
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectListAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextSelect:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;->setSelect(I)V

    .line 1459
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextSelect:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setTimeTextIndex(I)V

    .line 1461
    :cond_3
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaListShow:Z

    if-eqz v0, :cond_4

    .line 1462
    iput p3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaDeviceSelect:I

    .line 1463
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectListAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;

    invoke-virtual {v0, p3}, Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;->setSelect(I)V

    .line 1464
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0, p3}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->selectDlnaDevice(I)V

    .line 1465
    if-lez p3, :cond_5

    .line 1466
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 1473
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectListAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;->notifyDataSetChanged()V

    .line 1474
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideSelectList(Z)V

    goto :goto_1

    .line 1468
    :cond_5
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 1469
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f0201a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1470
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->resetVolumeBar()V

    goto :goto_2
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v6, 0x0

    .line 2786
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsOnLineVideo:Z

    if-eqz v0, :cond_1

    .line 2787
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLetvLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2791
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/view/View;

    sub-int v1, p4, p2

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int v2, p5, p3

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v3, p4, p2

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int v4, p5, p3

    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 2792
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-virtual {v0, v6, v6, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 2793
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mainView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2794
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mainView:Landroid/view/View;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/MovieControllerOverlay;->layoutCenteredView(Landroid/view/View;IIII)V

    .line 2796
    :cond_0
    return-void

    .line 2789
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLetvLogo:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 2809
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2810
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->measureChildren(II)V

    .line 2811
    return-void
.end method

.method public onMoveEvent(Landroid/view/MotionEvent;)V
    .locals 10
    .parameter

    .prologue
    .line 2512
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomScaleMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 2513
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureZoomMode:Z

    .line 2514
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 2515
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v1, v2

    .line 2516
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v3

    .line 2517
    const/high16 v0, 0x4248

    cmpl-float v0, v3, v0

    if-lez v0, :cond_3

    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDownDist:F

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x4248

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 2518
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2519
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    if-nez v0, :cond_0

    .line 2520
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2521
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 2522
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 2523
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->showViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    .line 2525
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScaleMode:Z

    .line 2526
    float-to-double v0, v3

    iget-wide v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxZoomValue:D

    iget-wide v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMinZoomValue:D

    sub-double/2addr v4, v6

    mul-double/2addr v0, v4

    const-wide v4, 0x4082c00000000000L

    div-double v4, v0, v4

    .line 2527
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDownDist:F

    div-float v0, v3, v0

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomScale:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 2528
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldLevel:D

    const-wide/16 v6, 0x0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_2

    .line 2529
    iget-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v0, v1, v6

    if-gez v0, :cond_4

    .line 2530
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    iget-wide v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldLevel:D

    sub-double v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    add-double/2addr v0, v6

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    .line 2531
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/MovieActivityUtils;->roundingLevel(DI)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    .line 2543
    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setZoomIcon(Z)V

    .line 2566
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    iget-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    const/4 v6, 0x1

    invoke-interface {v0, v1, v2, v6}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setVideoZoomLevel(DZ)V

    .line 2567
    iput-wide v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldLevel:D

    .line 2568
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDownDist:F

    div-float v0, v3, v0

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomScale:F

    .line 2572
    :cond_3
    return-void

    .line 2533
    :cond_4
    const-wide v1, 0x3f50624dd2f1a9fcL

    .line 2534
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomCount:I

    .line 2535
    const/4 v0, 0x0

    :goto_2
    iget v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomCount:I

    if-ge v0, v6, :cond_5

    .line 2536
    const-wide/high16 v6, 0x4024

    div-double/2addr v1, v6

    .line 2535
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2538
    :cond_5
    iget-wide v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    const-wide v8, 0x3f50624dd2f1a9fcL

    add-double v0, v8, v1

    add-double/2addr v0, v6

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    .line 2539
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    iget-wide v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxZoomValue:D

    const-wide v8, 0x3fb99999a0000000L

    add-double/2addr v6, v8

    cmpl-double v0, v0, v6

    if-ltz v0, :cond_1

    .line 2540
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxZoomValue:D

    const-wide v6, 0x3fb99999a0000000L

    add-double/2addr v0, v6

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    goto :goto_0

    .line 2546
    :cond_6
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldLevel:D

    const-wide/16 v6, 0x0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_2

    .line 2547
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    iget-wide v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMinZoomValue:D

    cmpl-double v0, v0, v6

    if-lez v0, :cond_8

    .line 2548
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    iget-wide v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldLevel:D

    sub-double v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    sub-double/2addr v0, v6

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    .line 2549
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/MovieActivityUtils;->roundingLevel(DI)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    .line 2563
    :cond_7
    :goto_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setZoomIcon(Z)V

    goto :goto_1

    .line 2551
    :cond_8
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    const-wide v6, 0x3fecccccc0000000L

    cmpl-double v0, v0, v6

    if-eqz v0, :cond_7

    .line 2552
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomCount:I

    .line 2553
    const-wide v1, 0x3f847ae147ae147bL

    .line 2554
    const/4 v0, 0x0

    :goto_4
    iget v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomCount:I

    if-ge v0, v6, :cond_9

    .line 2555
    const-wide/high16 v6, 0x4024

    div-double/2addr v1, v6

    .line 2554
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2557
    :cond_9
    iget-wide v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    const-wide v8, 0x3f50624dd2f1a9fcL

    add-double v0, v8, v1

    sub-double v0, v6, v0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    .line 2558
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    const-wide v6, 0x3fecccccc0000000L

    cmpg-double v0, v0, v6

    if-gtz v0, :cond_7

    .line 2559
    const-wide v0, 0x3fecccccc0000000L

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    goto :goto_3
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 529
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSysBrightness:I

    if-le v0, v1, :cond_4

    .line 530
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->saveAppScreenBrightness(Landroid/content/SharedPreferences;I)V

    .line 534
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreferences:Landroid/content/SharedPreferences;

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAutoVerScreen:Z

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->saveScreenSensor(Landroid/content/SharedPreferences;Z)V

    .line 535
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsOnLineVideo:Z

    if-eqz v0, :cond_5

    .line 536
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsOnLineCompleteMode:I

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->saveOnLineCompleteMode(Landroid/content/SharedPreferences;I)V

    .line 540
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreferences:Landroid/content/SharedPreferences;

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsQueueplay:Z

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->saveQueuePlay(Landroid/content/SharedPreferences;Z)V

    .line 541
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreferences:Landroid/content/SharedPreferences;

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsRepeatplay:Z

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->saveReplay(Landroid/content/SharedPreferences;Z)V

    .line 542
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-eqz v0, :cond_1

    .line 543
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 544
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f0201a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 545
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 548
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 551
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoControll:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    if-eqz v0, :cond_3

    .line 552
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->enableMediaControl(Z)V

    .line 553
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoControll:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 554
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 556
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 557
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    .line 558
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 559
    return-void

    .line 531
    :cond_4
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSysBrightness:I

    if-ge v0, v1, :cond_0

    .line 532
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->saveAppScreenBrightness(Landroid/content/SharedPreferences;I)V

    goto :goto_0

    .line 538
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsNativeCompleteMode:I

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->saveNativeCompleteMode(Landroid/content/SharedPreferences;I)V

    goto :goto_1
.end method

.method public onPrepared()V
    .locals 2

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setScreenSensor()V

    .line 504
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setPlayMode()V

    .line 505
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSysBrightness:I

    if-le v0, v1, :cond_1

    .line 506
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->saveAppScreenBrightness(Landroid/content/SharedPreferences;I)V

    .line 510
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->resetScreenLight()V

    .line 511
    return-void

    .line 507
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSysBrightness:I

    if-ge v0, v1, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->saveAppScreenBrightness(Landroid/content/SharedPreferences;I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v1, :cond_1

    .line 515
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f0201a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 519
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->showSystemTitle(Z)V

    .line 522
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setPlayMode()V

    .line 523
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->resetVolumeBar()V

    .line 524
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->resetScreenLight()V

    .line 525
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->resetLayoutSize()V

    .line 526
    return-void

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f0201a1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onSeekbarProgressTouch(Landroid/widget/SeekBar;Landroid/view/MotionEvent;)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const/16 v12, 0x3e9

    const/high16 v11, -0x4080

    const/16 v10, 0x2710

    const/4 v1, 0x0

    const/16 v9, 0xff

    .line 1493
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTimeText:Landroid/widget/TextView;

    const/high16 v2, 0x4170

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1494
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRemainPlayTimeText:Landroid/widget/TextView;

    const/high16 v2, 0x4170

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1496
    const/high16 v2, 0x4348

    .line 1497
    const/high16 v3, 0x43af

    .line 1498
    const/high16 v4, 0x43fa

    .line 1499
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3e8

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1500
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1501
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3f2

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1503
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    .line 1504
    iget-wide v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTotalTime:J

    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    int-to-long v7, v0

    mul-long/2addr v5, v7

    const-wide/16 v7, 0x2710

    div-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    .line 1505
    iget-wide v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    iget-wide v7, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTotalTime:J

    cmp-long v0, v5, v7

    if-ltz v0, :cond_7

    .line 1506
    iget-wide v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTotalTime:J

    long-to-int v0, v5

    int-to-long v5, v0

    iput-wide v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    .line 1511
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureAlreadyPlayTimeText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1512
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureAlreadyPlayTimeText:Landroid/widget/TextView;

    iget-wide v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    long-to-int v5, v5

    int-to-long v5, v5

    invoke-direct {p0, v5, v6}, Lcom/android/gallery3d/app/MovieControllerOverlay;->stringForTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1513
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTimeText:Landroid/widget/TextView;

    iget-wide v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    long-to-int v5, v5

    int-to-long v5, v5

    invoke-direct {p0, v5, v6}, Lcom/android/gallery3d/app/MovieControllerOverlay;->stringForTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1516
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureRemainPlayTimeText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1517
    iget-wide v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTotalTime:J

    iget-wide v7, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    sub-long/2addr v5, v7

    long-to-int v0, v5

    .line 1518
    if-gez v0, :cond_2

    move v0, v1

    .line 1521
    :cond_2
    int-to-long v5, v0

    invoke-direct {p0, v5, v6}, Lcom/android/gallery3d/app/MovieControllerOverlay;->stringForTime(J)Ljava/lang/String;

    move-result-object v0

    .line 1522
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureRemainPlayTimeText:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1523
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRemainPlayTimeText:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1525
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_c

    .line 1526
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDragging:Z

    .line 1527
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentX:F

    .line 1528
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentY:F

    .line 1529
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldX:F

    cmpl-float v0, v0, v11

    if-nez v0, :cond_4

    .line 1530
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentX:F

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldX:F

    .line 1531
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentY:F

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldY:F

    .line 1533
    :cond_4
    iput v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mThumbAlpha:I

    .line 1534
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1535
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1536
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentY:F

    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_8

    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentY:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_8

    .line 1537
    const-wide/high16 v2, 0x3ff0

    .line 1545
    :goto_1
    const-wide v4, 0x40c3880000000000L

    mul-double/2addr v2, v4

    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentX:F

    iget v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldX:F

    sub-float/2addr v0, v4

    float-to-double v4, v0

    mul-double/2addr v2, v4

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    int-to-double v4, v0

    div-double/2addr v2, v4

    .line 1546
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    int-to-double v4, v0

    add-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    .line 1547
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    if-le v0, v10, :cond_b

    .line 1548
    iput v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    .line 1552
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1553
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1554
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentX:F

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldX:F

    .line 1555
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentY:F

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldY:F

    .line 1614
    :cond_6
    :goto_3
    return-void

    .line 1507
    :cond_7
    iget-wide v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-gez v0, :cond_0

    .line 1508
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    goto/16 :goto_0

    .line 1538
    :cond_8
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentY:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_9

    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentY:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_9

    .line 1539
    const-wide/high16 v2, 0x3fe0

    goto :goto_1

    .line 1540
    :cond_9
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentY:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_a

    cmpg-float v0, v3, v4

    if-gtz v0, :cond_a

    .line 1541
    const-wide/high16 v2, 0x3fd0

    goto :goto_1

    .line 1543
    :cond_a
    const-wide v2, 0x3f847ae147ae147bL

    goto :goto_1

    .line 1549
    :cond_b
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    if-gez v0, :cond_5

    .line 1550
    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    goto :goto_2

    .line 1556
    :cond_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    .line 1557
    iput v11, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldX:F

    .line 1558
    iput v11, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldY:F

    .line 1559
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setTextSize(I)V

    .line 1560
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDragging:Z

    .line 1561
    iput v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mThumbAlpha:I

    .line 1562
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1563
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1564
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnTouchUpTime:J

    .line 1565
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e7

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1566
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e7

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1567
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnTouchDownThumbAlpha:I

    if-lez v0, :cond_e

    .line 1568
    iget-wide v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnTouchUpTime:J

    iget-wide v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnTouchDownTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x96

    cmp-long v0, v2, v4

    if-gez v0, :cond_e

    .line 1569
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDownX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1570
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDownY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1571
    mul-float/2addr v0, v0

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    const/high16 v2, 0x40a0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_e

    .line 1572
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    .line 1573
    iget v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    mul-int/2addr v0, v2

    div-int/lit16 v0, v0, 0x2710

    .line 1574
    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_10

    .line 1575
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    add-int/lit16 v0, v0, 0x1f4

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    .line 1576
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    if-le v0, v10, :cond_d

    .line 1577
    iput v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    .line 1585
    :cond_d
    :goto_4
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1586
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1590
    :cond_e
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnTouchDownPosition:I

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    if-eq v0, v1, :cond_f

    .line 1591
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    if-eqz v0, :cond_f

    .line 1592
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTotalTime:J

    iget v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    .line 1593
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-eqz v0, :cond_11

    .line 1594
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    iget-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->doDlnaSeek(J)V

    .line 1600
    :cond_f
    :goto_5
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_12

    .line 1601
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1602
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v12, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .line 1580
    :cond_10
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    add-int/lit16 v0, v0, -0x1f4

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    .line 1581
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    if-gez v0, :cond_d

    .line 1582
    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    goto :goto_4

    .line 1596
    :cond_11
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    iget-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    long-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onSeekEnd(I)V

    goto :goto_5

    .line 1603
    :cond_12
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_6

    .line 1604
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1605
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f2

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .line 1607
    :cond_13
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    .line 1608
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnTouchDownTime:J

    .line 1609
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDownX:F

    .line 1610
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDownY:F

    .line 1611
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnTouchDownPosition:I

    .line 1612
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mThumbAlpha:I

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnTouchDownThumbAlpha:I

    goto/16 :goto_3
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 2722
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2723
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const/16 v7, 0x3f5

    const/high16 v6, 0x4140

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2600
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2717
    :cond_0
    :goto_0
    return v5

    .line 2603
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->getIsPrepareFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2606
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v5, :cond_2

    .line 2607
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2608
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureClickCount:I

    .line 2609
    iput-boolean v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsZoomClick:Z

    .line 2610
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCanGesture:Z

    .line 2611
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 2612
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetSeek:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetVol:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetBright:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsHdmiOn:Z

    if-nez v0, :cond_0

    .line 2615
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->zoomScaleEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 2619
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2620
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGuestureListenr:Landroid/view/GestureDetector;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGuestureListenr:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2623
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2625
    :pswitch_0
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldX:F

    .line 2626
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldY:F

    .line 2627
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setTextSize(I)V

    .line 2628
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2629
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2630
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLastDownTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 2631
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 2635
    :cond_4
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetSeek:Z

    if-eqz v0, :cond_6

    .line 2636
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTotalTime:J

    iget v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    .line 2637
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    iget-wide v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTotalTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_7

    .line 2638
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTotalTime:J

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    .line 2642
    :cond_5
    :goto_1
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDragging:Z

    .line 2643
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-eqz v0, :cond_8

    .line 2644
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    iget-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->doDlnaSeek(J)V

    .line 2648
    :goto_2
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    if-eqz v0, :cond_9

    .line 2649
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTimeText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2650
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRemainPlayTimeText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2651
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2652
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2653
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2662
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->initTouchParams()V

    .line 2664
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2665
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ef

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2639
    :cond_7
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_5

    .line 2640
    iput-wide v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    goto :goto_1

    .line 2646
    :cond_8
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    iget-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    long-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onSeekMove(I)V

    goto :goto_2

    .line 2655
    :cond_9
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureAlreadyPlayTimeText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2656
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureRemainPlayTimeText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2657
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2658
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2659
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f2

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    .line 2670
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDownX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 2671
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDownY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 2672
    iget-boolean v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsHdmiOn:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    if-eqz v2, :cond_a

    .line 2673
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    invoke-interface {v2, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->setWinBrightness(I)V

    .line 2675
    :cond_a
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    const/high16 v3, 0x40a0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 2676
    iget-boolean v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    if-eqz v2, :cond_b

    .line 2677
    invoke-virtual {p0, v5}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding(Z)V

    .line 2679
    :cond_b
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureClickCount:I

    .line 2680
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ee

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2681
    iget-boolean v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCanGesture:Z

    if-eqz v2, :cond_0

    .line 2682
    iget-boolean v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetSeek:Z

    if-nez v2, :cond_c

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetVol:Z

    if-nez v2, :cond_c

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetBright:Z

    if-nez v2, :cond_c

    .line 2683
    div-float v0, v1, v0

    float-to-double v0, v0

    const-wide v2, 0x3fe38c35418a5bf6L

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_d

    .line 2684
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetVol:Z

    .line 2685
    iput-boolean v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetSeek:Z

    .line 2686
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetVol:Z

    .line 2687
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetBright:Z

    .line 2688
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->getVideoCurPosition()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    .line 2689
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setProgress()J

    .line 2706
    :cond_c
    :goto_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2707
    iput v7, v0, Landroid/os/Message;->what:I

    .line 2708
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2709
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2691
    :cond_d
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDownX:F

    const/high16 v1, 0x4348

    cmpg-float v0, v0, v1

    if-gez v0, :cond_e

    .line 2692
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetSeek:Z

    .line 2693
    iput-boolean v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetVol:Z

    .line 2694
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetBright:Z

    goto :goto_4

    .line 2695
    :cond_e
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDownX:F

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenWidth:I

    add-int/lit16 v1, v1, -0xc8

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_f

    .line 2696
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetVol:Z

    .line 2697
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetSeek:Z

    .line 2698
    iput-boolean v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetBright:Z

    goto :goto_4

    .line 2700
    :cond_f
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetVol:Z

    .line 2701
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetSeek:Z

    .line 2702
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetBright:Z

    goto :goto_4

    .line 2623
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public playStateChangeUpdateProgress()V
    .locals 4

    .prologue
    const/16 v3, 0x3e9

    .line 849
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding(Z)V

    .line 850
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v1, :cond_1

    .line 851
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 852
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 854
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x36ee80

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public resetVolumeBar()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 1728
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxVolume:I

    .line 1729
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    .line 1730
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    mul-int/lit16 v0, v0, 0x2710

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxVolume:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    .line 1731
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeTouchSeek:Lcom/android/gallery3d/seekbar/VerSeekBar;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setProgress(I)V

    .line 1732
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setVolumeLevel(I)V

    .line 1733
    return-void
.end method

.method public selectDlnaDevice(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1196
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaDeviceSelect:I

    .line 1197
    return-void
.end method

.method public setAudioTrackCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 1226
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAudioTrackCount:I

    .line 1227
    return-void
.end method

.method public setBitrateTextSelect(I)V
    .locals 2
    .parameter

    .prologue
    .line 1308
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateSelect:I

    .line 1309
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateSelect:I

    if-nez v0, :cond_0

    .line 1310
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200a4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1314
    :goto_0
    return-void

    .line 1312
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200d6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public setCanGesture(Z)V
    .locals 0
    .parameter "canGesture"

    .prologue
    .line 2885
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCanGesture:Z

    .line 2886
    return-void
.end method

.method public setDlnaDeviceCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 1221
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaDeviceCount:I

    .line 1222
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setDlnaVisable()V

    .line 1223
    return-void
.end method

.method public setDlnaVideoState(I)V
    .locals 2
    .parameter

    .prologue
    .line 1212
    if-nez p1, :cond_1

    .line 1213
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f0201a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1217
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->invalidate()V

    .line 1218
    return-void

    .line 1214
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1215
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f0201a1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setDlnaVisable()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 2301
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 2302
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsHdmiOn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-nez v0, :cond_1

    .line 2303
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2317
    :cond_0
    :goto_0
    return-void

    .line 2306
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaDeviceCount:I

    if-lez v0, :cond_3

    .line 2307
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    if-eqz v0, :cond_2

    .line 2308
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 2310
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 2314
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setDlnaVolumeProgress(F)V
    .locals 2
    .parameter

    .prologue
    .line 1740
    const v0, 0x461c4000

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    .line 1741
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeTouchSeek:Lcom/android/gallery3d/seekbar/VerSeekBar;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setProgress(I)V

    .line 1742
    return-void
.end method

.method public setIsDlnaMode(Z)V
    .locals 1
    .parameter "isDlnaMode"

    .prologue
    .line 1190
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    .line 1191
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    if-eqz v0, :cond_0

    .line 1192
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showSelectItemAni()V

    .line 1194
    :cond_0
    return-void
.end method

.method public setKeyVolumChange(Z)V
    .locals 3
    .parameter "isUp"

    .prologue
    const/4 v2, 0x0

    .line 2868
    if-eqz p1, :cond_1

    .line 2869
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxVolume:I

    if-le v0, v1, :cond_0

    .line 2870
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxVolume:I

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    .line 2881
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setVolumBarProgress(Z)V

    .line 2882
    return-void

    .line 2872
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    goto :goto_0

    .line 2875
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    if-gez v0, :cond_2

    .line 2876
    iput v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    goto :goto_0

    .line 2878
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    goto :goto_0
.end method

.method public setListener(Lcom/android/gallery3d/app/ControllerOverlay$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1254
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    .line 1255
    return-void
.end method

.method public setMeizuExt(Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;)V
    .locals 0
    .parameter "ext"

    .prologue
    .line 1186
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    .line 1187
    return-void
.end method

.method public setOnLineBitRateCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 1233
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateCount:I

    .line 1234
    return-void
.end method

.method public setTimeTextCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 1230
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextCount:I

    .line 1231
    return-void
.end method

.method public setTimeTextSelect(I)V
    .locals 0
    .parameter "timeTextSelect"

    .prologue
    .line 1317
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextSelect:I

    .line 1319
    return-void
.end method

.method public setTimes(II)V
    .locals 2
    .parameter "currentTime"
    .parameter "totalTime"

    .prologue
    .line 1299
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetSeek:Z

    if-nez v0, :cond_0

    .line 1300
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTotalTime:J

    .line 1301
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    .line 1302
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setProgress()J

    .line 1305
    :cond_0
    return-void
.end method

.method public setTrackSelect(I)V
    .locals 0
    .parameter "trackSelect"

    .prologue
    .line 1322
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAudioTrackSelect:I

    .line 1323
    return-void
.end method

.method public setVideoTitle()V
    .locals 3

    .prologue
    .line 1413
    const/4 v0, 0x0

    .line 1414
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    if-eqz v1, :cond_0

    .line 1415
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->getVideoTitle()Ljava/lang/String;

    move-result-object v0

    .line 1417
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTitle_view:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 1418
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTitle_view:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->calculateTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1423
    :goto_0
    return-void

    .line 1420
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTitle_view:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    const v2, 0x7f0a012e

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/MovieActivityUtils;->getStringFromRes(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showController()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x64

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/16 v4, 0x3ea

    const/4 v3, 0x0

    .line 1326
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 1327
    .local v0, wasHidden:Z
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 1328
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->updateViews()V

    .line 1329
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1330
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1331
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1333
    :cond_0
    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    if-eqz v1, :cond_1

    .line 1334
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1340
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1341
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3f3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1342
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1343
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1344
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1370
    :goto_1
    return-void

    .line 1336
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1337
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v1, v3}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    .line 1338
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalMenuButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v1, v3}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1347
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1348
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3fb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1349
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1350
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1351
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1354
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1355
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3f6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1356
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1358
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRightBottomlayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1359
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRightBottomlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1361
    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showControllAni()V

    .line 1362
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setVisibility(I)V

    .line 1363
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setFocusable(Z)V

    .line 1364
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eq v0, v1, :cond_6

    .line 1365
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onShown()V

    .line 1367
    :cond_6
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1368
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    .line 1369
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->maybeStartHiding()V

    goto :goto_1
.end method

.method public showDlnaButton()V
    .locals 2

    .prologue
    .line 1205
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    if-eqz v0, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1210
    :goto_0
    return-void

    .line 1208
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public showErrorMessage(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0xa

    .line 1291
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->ERROR:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 1292
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e2aaaab

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1293
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1294
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1295
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 1296
    return-void
.end method

.method public showLoading()V
    .locals 1

    .prologue
    .line 1286
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->LOADING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 1287
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 1288
    return-void
.end method

.method public showPaused()V
    .locals 2

    .prologue
    .line 1276
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 1277
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f0201a1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1278
    return-void
.end method

.method public showPlaying()V
    .locals 2

    .prologue
    .line 1270
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 1271
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f0201a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1272
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 1273
    return-void
.end method

.method public updateSelectList(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 2076
    const/4 v0, 0x0

    .line 2077
    .local v0, addHeight:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2078
    .local v1, arraySize:I
    const/4 v4, 0x3

    if-le v1, v4, :cond_0

    .line 2079
    const/4 v1, 0x3

    .line 2082
    :cond_0
    iget v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLastListSize:I

    if-eq v1, v4, :cond_7

    .line 2083
    const/16 v2, 0x35

    .line 2084
    .local v2, dpValue:I
    iget v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLastListSize:I

    if-ge v4, v1, :cond_5

    .line 2085
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLastListSize:I

    sub-int v5, v1, v5

    iget-object v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    int-to-float v7, v2

    invoke-static {v6, v7}, Lcom/android/gallery3d/app/MovieActivityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v6

    mul-int/2addr v5, v6

    add-int v0, v4, v5

    .line 2093
    :goto_0
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    invoke-direct {v3, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2094
    .local v3, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    if-eqz v4, :cond_6

    .line 2095
    iget v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayHeight:I

    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayWidth:I

    sub-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v4, v5, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 2111
    .end local v2           #dpValue:I
    :goto_1
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2112
    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLastListSize:I

    .line 2113
    iget-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAudioTrackListShow:Z

    if-eqz v4, :cond_1

    .line 2114
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectListAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;

    iget v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAudioTrackSelect:I

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;->setSelect(I)V

    .line 2116
    :cond_1
    iget-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsTimeTextListShow:Z

    if-eqz v4, :cond_2

    .line 2117
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectListAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;

    iget v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextSelect:I

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;->setSelect(I)V

    .line 2119
    :cond_2
    iget-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaListShow:Z

    if-eqz v4, :cond_3

    .line 2120
    iget-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-nez v4, :cond_9

    .line 2121
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectListAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;

    invoke-virtual {v4, v8}, Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;->setSelect(I)V

    .line 2126
    :cond_3
    :goto_2
    iget-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsBitrateListShow:Z

    if-eqz v4, :cond_4

    .line 2127
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectListAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;

    iget v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateSelect:I

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;->setSelect(I)V

    .line 2129
    :cond_4
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectListAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;

    invoke-virtual {v4, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;->setItemList(Ljava/util/ArrayList;)V

    .line 2130
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectListAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;->notifyDataSetChanged()V

    .line 2131
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectList:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectListAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2132
    return-void

    .line 2089
    .end local v3           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v2       #dpValue:I
    :cond_5
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLastListSize:I

    sub-int/2addr v5, v1

    iget-object v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    int-to-float v7, v2

    invoke-static {v6, v7}, Lcom/android/gallery3d/app/MovieActivityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v6

    mul-int/2addr v5, v6

    sub-int v0, v4, v5

    goto :goto_0

    .line 2098
    .restart local v3       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    iget v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayWidth:I

    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayHeight:I

    sub-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v4, v5, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 2102
    .end local v2           #dpValue:I
    .end local v3           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2103
    .restart local v3       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    if-eqz v4, :cond_8

    .line 2104
    iget v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayHeight:I

    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayWidth:I

    iget-object v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v4, v5, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    .line 2107
    :cond_8
    iget v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayWidth:I

    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayHeight:I

    iget-object v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v4, v5, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    .line 2123
    :cond_9
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectListAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;

    iget v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaDeviceSelect:I

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;->setSelect(I)V

    goto/16 :goto_2
.end method
