.class public Lcom/android/gallery3d/app/MovieControllerOverlay;
.super Landroid/widget/FrameLayout;
.source "MovieControllerOverlay.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/android/gallery3d/app/ControllerOverlay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;,
        Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;,
        Lcom/android/gallery3d/app/MovieControllerOverlay$MyOrientationEventListener;,
        Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;,
        Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;,
        Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    }
.end annotation


# instance fields
.field private errorView:Landroid/widget/TextView;

.field private hidden:Z

.field private hideAnimation:Landroid/view/animation/Animation;

.field private loadingView:Landroid/view/View;

.field private m03XPopMenuRightBottomAnchorView:Landroid/widget/ImageView;

.field private m03XPopMenuRightTopAnchorView:Landroid/widget/ImageView;

.field private mAlertDialogTitle:Ljava/lang/String;

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

.field private mGestureControllProgress:Landroid/widget/SeekBar;

.field private mGestureProgressLayout:Landroid/widget/RelativeLayout;

.field private mGestureRemainPlayTimeText:Landroid/widget/TextView;

.field private mGestureZoomMode:Z

.field private mGuestureListenr:Lcom/android/gallery3d/app/VideoGestureListener;

.field private mHandler:Landroid/os/Handler;

.field private mHorizontalBackButton:Lcom/meizu/widget/GlowImageButton;

.field private mHorizontalMenuButton:Lcom/meizu/widget/GlowImageButton;

.field private mIsAnimationStarting:Z

.field private mIsAudioTrackListShow:Z

.field private mIsAutoVerScreen:Z

.field private mIsBitrateListShow:Z

.field private mIsCanGesture:Z

.field private mIsCompleteMode:Z

.field private mIsConfigChange:Z

.field private mIsDlnaListShow:Z

.field private mIsDlnaMode:Z

.field private mIsHdmiOn:Z

.field private mIsM040:Z

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

.field private mIsSilent:Z

.field private mIsSystemSensorOn:Z

.field private mIsTimeTextListShow:Z

.field private mLetvLogo:Landroid/widget/ImageView;

.field private mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

.field private mLightBarLayout:Landroid/widget/LinearLayout;

.field private mLightButton:Landroid/widget/ImageButton;

.field private mLightButtonListener:Landroid/view/View$OnClickListener;

.field private mLightProgress:I

.field private mLightSeekListener:Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;

.field private mMaxTextSize:I

.field private mMaxVolume:I

.field private mMaxZoomValue:D

.field private mMenuIconListener:Landroid/view/View$OnClickListener;

.field private mMinTextSize:I

.field private mMinZoomValue:D

.field private mMoveTime:J

.field private mMovieActivity:Lcom/android/gallery3d/app/MovieActivity;

.field private mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

.field private mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

.field private mMyOrientationEventListener:Lcom/android/gallery3d/app/MovieControllerOverlay$MyOrientationEventListener;

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

.field private mScreenRotation:I

.field private mScreenWidth:I

.field private mSeekBarPosition:I

.field private mSelectDialog:Landroid/app/AlertDialog;

.field private mSelectDialogAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSysBrightness:I

.field private mThumbAlpha:I

.field private mTimeTextButton:Landroid/widget/ImageButton;

.field private mTimeTextCount:I

.field private mTimeTextSelect:I

.field private mTitle_view:Landroid/widget/TextView;

.field private mTopPartLayout:Landroid/widget/RelativeLayout;

.field private mTotalTime:J

.field private mTrackButton:Landroid/widget/ImageButton;

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
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 9
    .parameter "context"
    .parameter "completeMode"
    .parameter "isOnlineVideo"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/high16 v3, -0x4080

    const/4 v4, 0x0

    .line 289
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 191
    iput-wide v7, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    .line 192
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAudioTrackCount:I

    .line 193
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextCount:I

    .line 194
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAudioTrackSelect:I

    .line 195
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateCount:I

    .line 196
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextSelect:I

    .line 197
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaDeviceSelect:I

    .line 198
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateSelect:I

    .line 199
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomScaleMode:I

    .line 200
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIndex:I

    .line 201
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxVolume:I

    .line 202
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    .line 203
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomCount:I

    .line 204
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    .line 205
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSysBrightness:I

    .line 206
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoRotation:I

    .line 207
    iput v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenRotation:I

    .line 208
    const/16 v1, 0x320

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayWidth:I

    .line 209
    const/16 v1, 0x500

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayHeight:I

    .line 210
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayHeight:I

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenWidth:I

    .line 211
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayWidth:I

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenHeight:I

    .line 212
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    .line 213
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    .line 214
    iput v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldVolumeProgress:I

    .line 215
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightProgress:I

    .line 216
    iput v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldLightProgress:I

    .line 217
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaDeviceCount:I

    .line 218
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    .line 219
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnTouchDownPosition:I

    .line 220
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnTouchDownThumbAlpha:I

    .line 221
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mThumbAlpha:I

    .line 222
    const/16 v1, 0xf

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxTextSize:I

    .line 223
    const/16 v1, 0xc

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMinTextSize:I

    .line 224
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRecZoom:D

    .line 225
    const-wide/high16 v1, 0x3ff0

    iput-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    .line 226
    const-wide/high16 v1, -0x4010

    iput-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldLevel:D

    .line 227
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxZoomValue:D

    .line 228
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMinZoomValue:D

    .line 229
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomScale:F

    .line 230
    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDownDist:F

    .line 231
    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDownX:F

    .line 232
    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDownY:F

    .line 233
    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldY:F

    .line 234
    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldX:F

    .line 235
    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentY:F

    .line 236
    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentX:F

    .line 237
    iput-wide v7, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTotalTime:J

    .line 238
    iput-wide v7, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoveTime:J

    .line 239
    iput-wide v7, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnTouchDownTime:J

    .line 240
    iput-wide v7, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnTouchUpTime:J

    .line 241
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDragging:Z

    .line 242
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    .line 243
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopMenuShowing:Z

    .line 244
    iput-boolean v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    .line 245
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAudioTrackListShow:Z

    .line 246
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsTimeTextListShow:Z

    .line 247
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsBitrateListShow:Z

    .line 248
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaListShow:Z

    .line 249
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAnimationStarting:Z

    .line 251
    iput v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsNativeCompleteMode:I

    .line 252
    iput v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsOnLineCompleteMode:I

    .line 253
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCompleteMode:Z

    .line 254
    iput-boolean v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAutoVerScreen:Z

    .line 255
    iput-boolean v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSystemSensorOn:Z

    .line 256
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsRepeatplay:Z

    .line 257
    iput-boolean v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsQueueplay:Z

    .line 259
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureZoomMode:Z

    .line 260
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSilent:Z

    .line 261
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetSeek:Z

    .line 262
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetVol:Z

    .line 263
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetBright:Z

    .line 264
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    .line 265
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsPreNext:Z

    .line 266
    iput-boolean v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCanGesture:Z

    .line 267
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScaleMode:Z

    .line 268
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsHdmiOn:Z

    .line 269
    iput-boolean v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsConfigChange:Z

    .line 270
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsOnLineVideo:Z

    .line 271
    sget-object v1, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsM040:Z

    .line 276
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomScaleMidPoint:Landroid/graphics/PointF;

    .line 277
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;

    .line 280
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlertDialogTitle:Ljava/lang/String;

    .line 282
    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->LISTCYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    .line 285
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialog:Landroid/app/AlertDialog;

    .line 286
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialogAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;

    .line 629
    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay$2;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$2;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    .line 853
    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay$3;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$3;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 873
    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay$4;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$4;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPrevNextListener:Landroid/view/View$OnClickListener;

    .line 899
    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay$5;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$5;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mChangeTrackListener:Landroid/view/View$OnClickListener;

    .line 910
    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay$6;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$6;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaBtnListener:Landroid/view/View$OnClickListener;

    .line 921
    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay$7;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$7;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mChangeBitrateListener:Landroid/view/View$OnClickListener;

    .line 932
    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay$8;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$8;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mChangeTimeTextListener:Landroid/view/View$OnClickListener;

    .line 943
    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay$9;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$9;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMenuIconListener:Landroid/view/View$OnClickListener;

    .line 994
    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay$10;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$10;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mBackIconListener:Landroid/view/View$OnClickListener;

    .line 1003
    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay$11;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$11;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightButtonListener:Landroid/view/View$OnClickListener;

    .line 1014
    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay$12;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$12;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButtonListener:Landroid/view/View$OnClickListener;

    .line 1036
    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay$13;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$13;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumSeekListener:Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;

    .line 1074
    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay$14;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$14;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightSeekListener:Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;

    .line 290
    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->LOADING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 291
    iput-boolean p3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsOnLineVideo:Z

    .line 292
    iput-boolean p2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCompleteMode:Z

    .line 293
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->getSystemSensor()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSystemSensorOn:Z

    move-object v1, p1

    .line 294
    check-cast v1, Lcom/android/gallery3d/app/MovieActivity;

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivity:Lcom/android/gallery3d/app/MovieActivity;

    .line 295
    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay$MyOrientationEventListener;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MyOrientationEventListener;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMyOrientationEventListener:Lcom/android/gallery3d/app/MovieControllerOverlay$MyOrientationEventListener;

    .line 296
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMyOrientationEventListener:Lcom/android/gallery3d/app/MovieControllerOverlay$MyOrientationEventListener;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MyOrientationEventListener;->enable()V

    .line 297
    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivity:Lcom/android/gallery3d/app/MovieActivity;

    new-array v3, v4, [Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;I)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialogAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;

    .line 299
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090274

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMinTextSize:I

    .line 300
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090275

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxTextSize:I

    .line 301
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 302
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    const/16 v1, 0x202

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setSystemUiVisibility(I)V

    .line 304
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->initSelectAlertDialog()V

    .line 305
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->initSharePreferences()V

    .line 306
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->initScreenSize(Landroid/content/Context;)V

    .line 307
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->initWindowView(Landroid/content/Context;)V

    .line 308
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->initWidget()V

    .line 309
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/MovieControllerOverlay;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->onDialogItemClick(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/MovieControllerOverlay;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mThumbAlpha:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mThumbAlpha:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopMenuShowing:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopMenuShowing:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideControllAni(Z)V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/gallery3d/app/MovieControllerOverlay;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlertDialogTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/MovieControllerOverlay;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setAudioTrackType(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialogAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/app/MovieControllerOverlay;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAudioTrackSelect:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showSelectDialog()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/app/MovieControllerOverlay;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setTimeTextType(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/app/MovieControllerOverlay;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextSelect:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/ControllerOverlay$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/gallery3d/app/MovieControllerOverlay;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaDeviceSelect:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/gallery3d/app/MovieControllerOverlay;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mBitrateInfo:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/gallery3d/app/MovieControllerOverlay;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateSelect:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hide()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/View;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->initTouchParams()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setHdmiScreenLight()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
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
    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->translateAni(IIII)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/gallery3d/app/MovieControllerOverlay;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/gallery3d/app/MovieControllerOverlay;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/gallery3d/app/MovieControllerOverlay;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    return-wide v0
.end method

.method static synthetic access$4002(Lcom/android/gallery3d/app/MovieControllerOverlay;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    return-wide p1
.end method

.method static synthetic access$4100(Lcom/android/gallery3d/app/MovieControllerOverlay;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRecZoom:D

    return-wide v0
.end method

.method static synthetic access$4102(Lcom/android/gallery3d/app/MovieControllerOverlay;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRecZoom:D

    return-wide p1
.end method

.method static synthetic access$4200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetSeek:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetSeek:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->changeVideoProgress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetVol:Z

    return v0
.end method

.method static synthetic access$4402(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetVol:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->changeVolume(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetBright:Z

    return v0
.end method

.method static synthetic access$4602(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetBright:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsHdmiOn:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->changeBrigtness(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTrackButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mNextButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPauseButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$5702(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAudioTrackListShow:Z

    return p1
.end method

.method static synthetic access$5802(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsTimeTextListShow:Z

    return p1
.end method

.method static synthetic access$5902(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaListShow:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/MovieControllerOverlay;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setProgress()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$6002(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsBitrateListShow:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCanGesture:Z

    return v0
.end method

.method static synthetic access$6102(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCanGesture:Z

    return p1
.end method

.method static synthetic access$6202(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopupMenu:Landroid/widget/PopupMenu;

    return-object p1
.end method

.method static synthetic access$6300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showPopMenu()V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/gallery3d/app/MovieControllerOverlay;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightProgress:I

    return v0
.end method

.method static synthetic access$6502(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightProgress:I

    return p1
.end method

.method static synthetic access$6600(Lcom/android/gallery3d/app/MovieControllerOverlay;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSysBrightness:I

    return v0
.end method

.method static synthetic access$6700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/seekbar/VerSeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/gallery3d/app/MovieControllerOverlay;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    return v0
.end method

.method static synthetic access$6802(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    return p1
.end method

.method static synthetic access$6900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/seekbar/VerSeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeTouchSeek:Lcom/android/gallery3d/seekbar/VerSeekBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDragging:Z

    return v0
.end method

.method static synthetic access$7000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDragging:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/android/gallery3d/app/MovieControllerOverlay;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    return v0
.end method

.method static synthetic access$7102(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    return p1
.end method

.method static synthetic access$7200(Lcom/android/gallery3d/app/MovieControllerOverlay;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setVolumeLevel(I)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/gallery3d/app/MovieControllerOverlay;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    return v0
.end method

.method static synthetic access$7302(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    return p1
.end method

.method static synthetic access$7400(Lcom/android/gallery3d/app/MovieControllerOverlay;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxVolume:I

    return v0
.end method

.method static synthetic access$7500(Lcom/android/gallery3d/app/MovieControllerOverlay;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    return v0
.end method

.method static synthetic access$7502(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    return p1
.end method

.method static synthetic access$7600(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->maybeStartHiding()V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCompleteMode:Z

    return v0
.end method

.method static synthetic access$7702(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCompleteMode:Z

    return p1
.end method

.method static synthetic access$7800(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsOnLineVideo:Z

    return v0
.end method

.method static synthetic access$7902(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsOnLineCompleteMode:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    return-object v0
.end method

.method static synthetic access$8002(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsNativeCompleteMode:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/gallery3d/app/MovieControllerOverlay;Lcom/android/gallery3d/app/MovieControllerOverlay$State;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    return-object p1
.end method

.method static synthetic access$8100(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAutoVerScreen:Z

    return v0
.end method

.method static synthetic access$8102(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAutoVerScreen:Z

    return p1
.end method

.method static synthetic access$8200(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setScreenSensor()V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsRepeatplay:Z

    return v0
.end method

.method static synthetic access$8302(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsRepeatplay:Z

    return p1
.end method

.method static synthetic access$8400(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setPlayMode()V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsQueueplay:Z

    return v0
.end method

.method static synthetic access$8502(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsQueueplay:Z

    return p1
.end method

.method static synthetic access$8600(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setMenuItemCheck()V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAnimationStarting:Z

    return v0
.end method

.method static synthetic access$8900(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->onTouchClick(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    return v0
.end method

.method static synthetic access$9000(Lcom/android/gallery3d/app/MovieControllerOverlay;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$9100(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->onTouchDoubleClick(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9200(Lcom/android/gallery3d/app/MovieControllerOverlay;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoveTime:J

    return-wide v0
.end method

.method static synthetic access$9202(Lcom/android/gallery3d/app/MovieControllerOverlay;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoveTime:J

    return-wide p1
.end method

.method static synthetic access$9300(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->onTouchUp(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    return v0
.end method

.method static synthetic access$9500(Lcom/android/gallery3d/app/MovieControllerOverlay;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenRotation:I

    return v0
.end method

.method static synthetic access$9502(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenRotation:I

    return p1
.end method

.method static synthetic access$9600(Lcom/android/gallery3d/app/MovieControllerOverlay;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$9702(Lcom/android/gallery3d/app/MovieControllerOverlay;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    return-wide p1
.end method

.method static synthetic access$9800(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->onScreenOrientationChanged()V

    return-void
.end method

.method private calculateTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    const/high16 v8, 0x4000

    .line 501
    const-string v1, ""

    .line 503
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090234

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v2, v0

    .line 505
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 506
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxTextSize:I

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 508
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v4, v0

    .line 509
    float-to-double v6, v2

    cmpg-double v0, v4, v6

    if-gtz v0, :cond_0

    .line 529
    :goto_0
    return-object p1

    .line 512
    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-ge v0, v4, :cond_1

    .line 513
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 514
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    div-float v6, v2, v8

    const-string v7, ".."

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    sub-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 519
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 520
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v0, v4, :cond_4

    .line 521
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 522
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 523
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    div-float v6, v2, v8

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_3

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object p1, v0

    .line 529
    goto :goto_0

    .line 517
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 512
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 521
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

    .line 2421
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 2422
    .local v2, y:I
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenHeight:I

    iget v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayWidth:I

    if-ne v3, v4, :cond_4

    .line 2423
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenHeight:I

    add-int/lit8 v1, v3, -0x50

    .line 2424
    .local v1, setProgressRange:I
    add-int/lit8 v2, v2, -0x28

    .line 2429
    :goto_0
    if-gez v2, :cond_0

    .line 2430
    const/4 v2, 0x0

    .line 2432
    :cond_0
    if-le v2, v1, :cond_1

    .line 2433
    move v2, v1

    .line 2435
    :cond_1
    sub-int v3, v1, v2

    mul-int/lit16 v3, v3, 0x2710

    div-int/2addr v3, v1

    int-to-double v3, v3

    invoke-static {v3, v4, v5}, Lcom/android/gallery3d/app/MovieActivityUtils;->roundingLevel(DI)D

    move-result-wide v3

    double-to-int v0, v3

    .line 2436
    .local v0, progress:I
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldLightProgress:I

    if-eq v0, v3, :cond_2

    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldLightProgress:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 2437
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldLightProgress:I

    if-le v0, v3, :cond_5

    .line 2438
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightProgress:I

    iget v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldLightProgress:I

    sub-int v4, v0, v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightProgress:I

    .line 2439
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightProgress:I

    if-lt v3, v6, :cond_2

    .line 2440
    iput v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightProgress:I

    .line 2449
    :cond_2
    :goto_1
    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldLightProgress:I

    .line 2450
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setLightBarProgress()V

    .line 2451
    iget-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    if-eqz v3, :cond_3

    .line 2452
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideControllAni(Z)V

    .line 2454
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->updateLightUI()V

    .line 2455
    return-void

    .line 2426
    .end local v0           #progress:I
    .end local v1           #setProgressRange:I
    :cond_4
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenHeight:I

    add-int/lit16 v1, v3, -0xdc

    .line 2427
    .restart local v1       #setProgressRange:I
    add-int/lit8 v2, v2, -0x6e

    goto :goto_0

    .line 2443
    .restart local v0       #progress:I
    :cond_5
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightProgress:I

    iget v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldLightProgress:I

    sub-int/2addr v4, v0

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightProgress:I

    .line 2444
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightProgress:I

    if-gtz v3, :cond_2

    .line 2445
    iput v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightProgress:I

    goto :goto_1
.end method

.method private changeVideoProgress(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 2515
    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    if-eqz v1, :cond_0

    .line 2516
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {p0, v1, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->onSeekbarProgressTouch(Landroid/widget/SeekBar;Landroid/view/MotionEvent;)V

    .line 2547
    :goto_0
    return-void

    .line 2518
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 2519
    .local v0, wasHidden:Z
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 2520
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eq v0, v1, :cond_1

    .line 2521
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onShown()V

    .line 2523
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v1, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->showSystemTitle(Z)V

    .line 2524
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3f0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2525
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxTextSize:I

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setTextSize(I)V

    .line 2526
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2527
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2528
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 2530
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2531
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2532
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2533
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/MovieActivityUtils;->hideViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    .line 2535
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2536
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3f1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2537
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2542
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2543
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 2545
    :cond_5
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {p0, v1, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->onSeekbarProgressTouch(Landroid/widget/SeekBar;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 2538
    :cond_6
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2539
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3f9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2540
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private changeVolume(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x2710

    .line 2460
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 2461
    .local v2, y:I
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenHeight:I

    iget v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayWidth:I

    if-ne v3, v4, :cond_5

    .line 2462
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenHeight:I

    add-int/lit8 v1, v3, -0x50

    .line 2463
    .local v1, setProgressRange:I
    add-int/lit8 v2, v2, -0x28

    .line 2468
    :goto_0
    if-gez v2, :cond_0

    .line 2469
    const/4 v2, 0x0

    .line 2471
    :cond_0
    if-le v2, v1, :cond_1

    .line 2472
    move v2, v1

    .line 2474
    :cond_1
    sub-int v3, v1, v2

    mul-int/lit16 v3, v3, 0x2710

    div-int/2addr v3, v1

    int-to-double v3, v3

    invoke-static {v3, v4, v6}, Lcom/android/gallery3d/app/MovieActivityUtils;->roundingLevel(DI)D

    move-result-wide v3

    double-to-int v0, v3

    .line 2475
    .local v0, progress:I
    iget-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSilent:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-nez v3, :cond_2

    .line 2476
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldVolumeProgress:I

    .line 2478
    :cond_2
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldVolumeProgress:I

    if-eq v0, v3, :cond_3

    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldVolumeProgress:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 2479
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldVolumeProgress:I

    if-le v0, v3, :cond_7

    .line 2480
    iget-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-eqz v3, :cond_6

    .line 2481
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    iget v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldVolumeProgress:I

    sub-int v4, v0, v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    .line 2482
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    if-lt v3, v5, :cond_3

    .line 2483
    iput v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    .line 2506
    :cond_3
    :goto_1
    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldVolumeProgress:I

    .line 2507
    iget-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    if-eqz v3, :cond_4

    .line 2508
    invoke-direct {p0, v7}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideControllAni(Z)V

    .line 2510
    :cond_4
    invoke-direct {p0, v7}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setVolumBarProgress(Z)V

    .line 2511
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->updateVolumeUI()V

    .line 2512
    return-void

    .line 2465
    .end local v0           #progress:I
    .end local v1           #setProgressRange:I
    :cond_5
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenHeight:I

    add-int/lit16 v1, v3, -0xdc

    .line 2466
    .restart local v1       #setProgressRange:I
    add-int/lit8 v2, v2, -0x6e

    goto :goto_0

    .line 2486
    .restart local v0       #progress:I
    :cond_6
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    iget v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldVolumeProgress:I

    sub-int v4, v0, v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    .line 2487
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    if-lt v3, v5, :cond_3

    .line 2488
    iput v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    goto :goto_1

    .line 2492
    :cond_7
    iget-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-eqz v3, :cond_8

    .line 2493
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    iget v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldVolumeProgress:I

    sub-int/2addr v4, v0

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    .line 2494
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    if-gtz v3, :cond_3

    .line 2495
    iput v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    goto :goto_1

    .line 2498
    :cond_8
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    iget v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldVolumeProgress:I

    sub-int/2addr v4, v0

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    .line 2499
    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    if-gtz v3, :cond_3

    .line 2500
    iput v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    goto :goto_1
.end method

.method private configurationChangedStopDragging()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/16 v4, 0x3e8

    const/16 v1, 0x3e7

    const/high16 v0, -0x4080

    .line 2680
    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldX:F

    .line 2681
    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldY:F

    .line 2682
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMinTextSize:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setTextSize(I)V

    .line 2683
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2684
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2685
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTotalTime:J

    iget v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    .line 2686
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    iget-wide v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTotalTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 2687
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTotalTime:J

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    .line 2691
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDragging:Z

    .line 2692
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-eqz v0, :cond_2

    .line 2693
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    iget-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->doDlnaSeek(J)V

    .line 2697
    :goto_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    if-eqz v0, :cond_3

    .line 2698
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2699
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2704
    :goto_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->initTouchParams()V

    .line 2705
    return-void

    .line 2688
    :cond_1
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    cmp-long v0, v0, v5

    if-gez v0, :cond_0

    .line 2689
    iput-wide v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    goto :goto_0

    .line 2695
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    iget-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    long-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onSeekEnd(I)V

    goto :goto_1

    .line 2701
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2702
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method

.method private enableMediaControl(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 2288
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 2289
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 2291
    :cond_0
    return-void
.end method

.method private getSystemSensor()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 449
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 452
    :try_start_0
    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 454
    if-nez v1, :cond_0

    .line 462
    :goto_0
    return v0

    .line 457
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 459
    :catch_0
    move-exception v1

    .line 460
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private hide()V
    .locals 2

    .prologue
    .line 1469
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 1470
    .local v0, wasHidden:Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 1471
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eq v0, v1, :cond_0

    .line 1472
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onHidden()V

    .line 1474
    :cond_0
    return-void
.end method

.method private hideControllAni(Z)V
    .locals 6
    .parameter "showAni"

    .prologue
    const/16 v5, 0x3f7

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 2011
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoControll:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    if-eqz v0, :cond_1

    .line 2012
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2013
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->enableMediaControl(Z)V

    .line 2014
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->showSystemTitle(Z)V

    .line 2015
    if-eqz p1, :cond_2

    .line 2016
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsM040:Z

    if-eqz v0, :cond_0

    .line 2017
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    if-nez v0, :cond_0

    .line 2018
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideViewTranslateAniDown(Landroid/content/Context;Landroid/view/View;)V

    .line 2021
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideViewTranslateAniUp(Landroid/content/Context;Landroid/view/View;)V

    .line 2022
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoControll:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideViewTranslateAniDown(Landroid/content/Context;Landroid/view/View;)V

    .line 2023
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideSelectItemAni()V

    .line 2028
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoControll:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2029
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2030
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsM040:Z

    if-eqz v0, :cond_4

    .line 2031
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    if-eqz v0, :cond_3

    .line 2032
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2039
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRightBottomlayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2040
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRightBottomlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2043
    :cond_1
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    .line 2044
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setHdmiScreenLight()V

    .line 2045
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hide()V

    .line 2046
    return-void

    .line 2025
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2026
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2034
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 2037
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private hideSelectItemAni()V
    .locals 4

    .prologue
    const/16 v3, 0x3f7

    const/16 v2, 0x8

    .line 2049
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2050
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTrackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 2051
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTrackButton:Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->hideViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    .line 2053
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 2054
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextButton:Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->hideViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    .line 2056
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 2057
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->hideViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    .line 2059
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 2060
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateButton:Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->hideViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    .line 2062
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2063
    return-void
.end method

.method private hideViewTranslateAniDown(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1785
    const v0, 0x7f050009

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1786
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1787
    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1788
    return-void
.end method

.method private hideViewTranslateAniUp(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1780
    const v0, 0x7f05000a

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1781
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1782
    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1783
    return-void
.end method

.method private initBottomPartWidget()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x4

    .line 1742
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->m03XPopMenuRightBottomAnchorView:Landroid/widget/ImageView;

    .line 1743
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoControll:Landroid/widget/RelativeLayout;

    .line 1744
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    .line 1745
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRightBottomlayout:Landroid/widget/LinearLayout;

    .line 1746
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPauseButton:Landroid/widget/ImageButton;

    .line 1747
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mNextButton:Landroid/widget/ImageButton;

    .line 1748
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreButton:Landroid/widget/ImageButton;

    .line 1749
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCompleteMode:Z

    if-eqz v0, :cond_0

    .line 1750
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1751
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1756
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1757
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mNextButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPrevNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1758
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPrevNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1759
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/GlowImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalMenuButton:Lcom/meizu/widget/GlowImageButton;

    .line 1760
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalMenuButton:Lcom/meizu/widget/GlowImageButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMenuIconListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/GlowImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1762
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/GlowImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackButton:Lcom/meizu/widget/GlowImageButton;

    .line 1763
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackButton:Lcom/meizu/widget/GlowImageButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mBackIconListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/GlowImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1764
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsM040:Z

    if-eqz v0, :cond_2

    .line 1765
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    if-eqz v0, :cond_1

    .line 1766
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1778
    :goto_1
    return-void

    .line 1753
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1754
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1768
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1769
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    .line 1770
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalMenuButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    goto :goto_1

    .line 1773
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1774
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v0, v3}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    .line 1775
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalMenuButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v0, v3}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method private initLeftWidget()V
    .locals 2

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;

    .line 1813
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButton:Landroid/widget/ImageButton;

    .line 1814
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1815
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/seekbar/VerSeekBar;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeTouchSeek:Lcom/android/gallery3d/seekbar/VerSeekBar;

    .line 1816
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeTouchSeek:Lcom/android/gallery3d/seekbar/VerSeekBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumSeekListener:Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setOnSeekBarChangeListener(Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;)V

    .line 1817
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeTouchSeek:Lcom/android/gallery3d/seekbar/VerSeekBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setMax(I)V

    .line 1818
    return-void
.end method

.method private initRightWidget()V
    .locals 2

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d000e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    .line 1804
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightButton:Landroid/widget/ImageButton;

    .line 1805
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/seekbar/VerSeekBar;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

    .line 1806
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightSeekListener:Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setOnSeekBarChangeListener(Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;)V

    .line 1807
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setMax(I)V

    .line 1808
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1809
    return-void
.end method

.method private initScreenSize(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 408
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 409
    .local v0, outSize:Landroid/graphics/Point;
    check-cast p1, Lcom/android/gallery3d/app/MovieActivity;

    .end local p1
    invoke-virtual {p1}, Lcom/android/gallery3d/app/MovieActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 410
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    :goto_0
    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayWidth:I

    .line 411
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_1

    iget v1, v0, Landroid/graphics/Point;->x:I

    :goto_1
    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayHeight:I

    .line 412
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    .line 413
    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    if-eqz v1, :cond_3

    .line 414
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayHeight:I

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenWidth:I

    .line 415
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayWidth:I

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenHeight:I

    .line 420
    :goto_3
    return-void

    .line 410
    :cond_0
    iget v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 411
    :cond_1
    iget v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 412
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 417
    :cond_3
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayWidth:I

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenWidth:I

    .line 418
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayHeight:I

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenHeight:I

    goto :goto_3
.end method

.method private initSelectAlertDialog()V
    .locals 3

    .prologue
    .line 325
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivity:Lcom/android/gallery3d/app/MovieActivity;

    const v2, 0x1030323

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 328
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialogAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;

    new-instance v2, Lcom/android/gallery3d/app/MovieControllerOverlay$1;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$1;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 335
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialog:Landroid/app/AlertDialog;

    .line 336
    return-void
.end method

.method private initSelectView()V
    .locals 2

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTitle_view:Landroid/widget/TextView;

    .line 1791
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTrackButton:Landroid/widget/ImageButton;

    .line 1792
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextButton:Landroid/widget/ImageButton;

    .line 1793
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateButton:Landroid/widget/ImageButton;

    .line 1794
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    .line 1796
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTrackButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mChangeTrackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1797
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mChangeTimeTextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1798
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mChangeBitrateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1799
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1800
    return-void
.end method

.method private initSharePreferences()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 465
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    const-string v1, "com.meizu.videoplayer"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreferences:Landroid/content/SharedPreferences;

    .line 466
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 467
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAutoVerScreen:Z

    .line 468
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsRepeatplay:Z

    .line 469
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsQueueplay:Z

    .line 491
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "screen-sensor"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAutoVerScreen:Z

    .line 472
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsOnLineVideo:Z

    if-eqz v0, :cond_3

    .line 473
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "online-complete-mode"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsOnLineCompleteMode:I

    .line 474
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsOnLineCompleteMode:I

    if-nez v0, :cond_2

    .line 475
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCompleteMode:Z

    .line 487
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "queue-mode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsQueueplay:Z

    .line 488
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "replay-mode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsRepeatplay:Z

    goto :goto_0

    .line 476
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsOnLineCompleteMode:I

    if-ne v0, v2, :cond_1

    .line 477
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCompleteMode:Z

    goto :goto_1

    .line 480
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "native-complete-mode"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsNativeCompleteMode:I

    .line 481
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsNativeCompleteMode:I

    if-nez v0, :cond_4

    .line 482
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCompleteMode:Z

    goto :goto_1

    .line 483
    :cond_4
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsNativeCompleteMode:I

    if-ne v0, v2, :cond_1

    .line 484
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCompleteMode:Z

    goto :goto_1
.end method

.method private initTopPartWidget()V
    .locals 6

    .prologue
    const/16 v5, 0x2710

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1692
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->m03XPopMenuRightTopAnchorView:Landroid/widget/ImageView;

    .line 1693
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    .line 1694
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    .line 1695
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTimeText:Landroid/widget/TextView;

    .line 1696
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRemainPlayTimeText:Landroid/widget/TextView;

    .line 1697
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;

    .line 1698
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1699
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1701
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureAlreadyPlayTimeText:Landroid/widget/TextView;

    .line 1702
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureRemainPlayTimeText:Landroid/widget/TextView;

    .line 1703
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    .line 1704
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1705
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1707
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/GlowImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHorizontalMenuButton:Lcom/meizu/widget/GlowImageButton;

    .line 1708
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHorizontalMenuButton:Lcom/meizu/widget/GlowImageButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMenuIconListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/GlowImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1710
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/GlowImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHorizontalBackButton:Lcom/meizu/widget/GlowImageButton;

    .line 1711
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHorizontalBackButton:Lcom/meizu/widget/GlowImageButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mBackIconListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/GlowImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1712
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsM040:Z

    if-eqz v0, :cond_1

    .line 1713
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    if-eqz v0, :cond_0

    .line 1714
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHorizontalBackButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    .line 1715
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHorizontalMenuButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    .line 1724
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    const v1, 0x7f0d00ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    .line 1725
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay$17;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$17;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1733
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;

    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay$18;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$18;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1740
    return-void

    .line 1717
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHorizontalBackButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v0, v3}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    .line 1718
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHorizontalMenuButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v0, v3}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1721
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHorizontalBackButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v0, v4}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    .line 1722
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHorizontalMenuButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v0, v4}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private initTouchParams()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/high16 v1, -0x4080

    const/4 v0, 0x0

    .line 2670
    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldY:F

    .line 2671
    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldX:F

    .line 2672
    iput v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldLightProgress:I

    .line 2673
    iput v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldVolumeProgress:I

    .line 2674
    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomCount:I

    .line 2675
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetSeek:Z

    .line 2676
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetVol:Z

    .line 2677
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetBright:Z

    .line 2678
    return-void
.end method

.method private initWidget()V
    .locals 4

    .prologue
    .line 1539
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->initTopPartWidget()V

    .line 1540
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->initBottomPartWidget()V

    .line 1541
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->initLeftWidget()V

    .line 1542
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->initRightWidget()V

    .line 1543
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->initSelectView()V

    .line 1544
    new-instance v0, Lcom/android/gallery3d/app/VideoGestureListener;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;Lcom/android/gallery3d/app/MovieControllerOverlay$1;)V

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/app/VideoGestureListener;-><init>(Landroid/content/Context;Lcom/android/gallery3d/app/VideoGestureListener$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGuestureListenr:Lcom/android/gallery3d/app/VideoGestureListener;

    .line 1545
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopMenuInfo:[Ljava/lang/String;

    .line 1546
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mBitrateInfo:[Ljava/lang/String;

    .line 1547
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAudioManager:Landroid/media/AudioManager;

    .line 1548
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 1549
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1550
    return-void
.end method

.method private initWindowView(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v1, -0x2

    const/4 v5, -0x1

    .line 423
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 424
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 425
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 426
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 427
    const v4, 0x7f04003c

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/view/View;

    .line 428
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/view/View;

    const v4, 0x7f0d00d1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLetvLogo:Landroid/widget/ImageView;

    .line 429
    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsOnLineVideo:Z

    if-eqz v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLetvLogo:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 434
    :goto_0
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    .line 435
    const v1, 0x7f050012

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideAnimation:Landroid/view/animation/Animation;

    .line 436
    const v1, 0x7f04003a

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    .line 437
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 438
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    const/high16 v1, -0x3400

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 439
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 440
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 441
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-virtual {p0, v0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hide()V

    .line 447
    return-void

    .line 432
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLetvLogo:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private initZoomParams()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2657
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsPreNext:Z

    if-eqz v0, :cond_1

    .line 2658
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->getZoomLevelList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;

    .line 2659
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2660
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxZoomValue:D

    .line 2661
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMinZoomValue:D

    .line 2665
    :goto_0
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsPreNext:Z

    .line 2667
    :cond_1
    return-void

    .line 2663
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
    .line 1931
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
    .line 2948
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 2949
    .local v3, cw:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 2950
    .local v0, ch:I
    sub-int v4, p4, p2

    sub-int/2addr v4, v3

    div-int/lit8 v1, v4, 0x2

    .line 2951
    .local v1, cl:I
    sub-int v4, p5, p3

    sub-int/2addr v4, v0

    div-int/lit8 v2, v4, 0x2

    .line 2952
    .local v2, ct:I
    add-int v4, v1, v3

    add-int v5, v2, v0

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 2953
    return-void
.end method

.method private maybeStartHiding()V
    .locals 4

    .prologue
    .line 1915
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding(Z)V

    .line 1916
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    if-eqz v0, :cond_0

    .line 1917
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1921
    :goto_0
    return-void

    .line 1919
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "point"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x4000

    .line 2555
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float v0, v2, v3

    .line 2556
    .local v0, x:F
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float v1, v2, v3

    .line 2557
    .local v1, y:F
    div-float v2, v0, v4

    div-float v3, v1, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 2558
    return-void
.end method

.method private onDialogItemClick(I)V
    .locals 2
    .parameter

    .prologue
    .line 1501
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsBitrateListShow:Z

    if-eqz v0, :cond_1

    .line 1502
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateSelect:I

    .line 1503
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialogAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateSelect:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;->setSelection(I)V

    .line 1504
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateSelect:I

    if-nez v0, :cond_0

    .line 1505
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200a3

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1509
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialogAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;->notifyDataSetChanged()V

    .line 1510
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateSelect:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setBitrateIndex(I)V

    .line 1511
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    .line 1537
    :goto_1
    return-void

    .line 1507
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200d3

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1514
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAudioTrackListShow:Z

    if-eqz v0, :cond_2

    .line 1515
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAudioTrackSelect:I

    .line 1516
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialogAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAudioTrackSelect:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;->setSelection(I)V

    .line 1517
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAudioTrackSelect:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setAudioTrackIndex(I)V

    .line 1519
    :cond_2
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsTimeTextListShow:Z

    if-eqz v0, :cond_3

    .line 1520
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextSelect:I

    .line 1521
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialogAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextSelect:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;->setSelection(I)V

    .line 1522
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextSelect:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setTimeTextIndex(I)V

    .line 1524
    :cond_3
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaListShow:Z

    if-eqz v0, :cond_4

    .line 1525
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaDeviceSelect:I

    .line 1526
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialogAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaDeviceSelect:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;->setSelection(I)V

    .line 1527
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->selectDlnaDevice(I)V

    .line 1528
    if-lez p1, :cond_5

    .line 1529
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 1536
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialogAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 1531
    :cond_5
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 1532
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02019a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1533
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->resetVolumeBar()V

    goto :goto_2
.end method

.method private onScreenOrientationChanged()V
    .locals 7

    .prologue
    const/16 v6, 0x3f1

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 2842
    const-string v0, "ontouch"

    const-string v1, "video onScreenOrientationChanged"

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding(Z)V

    .line 2844
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideControllAni(Z)V

    .line 2845
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsConfigChange:Z

    .line 2846
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    if-eqz v0, :cond_0

    .line 2847
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v0, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->showSystemTitle(Z)V

    .line 2848
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->turnOffLed()V

    .line 2850
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDragging:Z

    if-ne v0, v4, :cond_6

    .line 2851
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setVolumeLevel(I)V

    .line 2852
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->configurationChangedStopDragging()V

    .line 2856
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2857
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAudioTrackListShow:Z

    .line 2858
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsTimeTextListShow:Z

    .line 2859
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsBitrateListShow:Z

    .line 2860
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaListShow:Z

    .line 2861
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2863
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2864
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2865
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2867
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2868
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2869
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2871
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2872
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2873
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 2875
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2876
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2877
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2879
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoControll:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2880
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2881
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRightBottomlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2882
    return-void

    .line 2854
    :cond_6
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->initTouchParams()V

    goto :goto_0
.end method

.method private onTouchClick(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/16 v5, 0x3f1

    const/16 v1, 0x3f0

    const/4 v4, 0x0

    const/16 v3, 0x3ea

    const/4 v2, 0x1

    .line 2766
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding(Z)V

    .line 2767
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopMenuShowing:Z

    if-eqz v0, :cond_0

    .line 2768
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidePopMenu(Z)V

    .line 2793
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v1, :cond_6

    .line 2794
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding(Z)V

    .line 2798
    :goto_1
    return-void

    .line 2770
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    if-eqz v0, :cond_1

    .line 2771
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideControllAni(Z)V

    goto :goto_0

    .line 2773
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2774
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2775
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2776
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2777
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2778
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2779
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2780
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2781
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2782
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2783
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2784
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2785
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2786
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2787
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2789
    :cond_5
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showController()V

    goto :goto_0

    .line 2796
    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding(Z)V

    goto :goto_1
.end method

.method private onTouchDoubleClick(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2801
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsHdmiOn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->getZoomLevelList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2802
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setZoomChange()V

    .line 2804
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private onTouchUp(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    const/16 v7, 0x3f0

    const/16 v6, 0x3e8

    const/16 v2, 0x3e7

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2707
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDragging:Z

    .line 2708
    iput-boolean v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCanGesture:Z

    .line 2709
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMinTextSize:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setTextSize(I)V

    .line 2710
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-eqz v0, :cond_3

    .line 2711
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setDlnaVol(I)V

    .line 2715
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2716
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2717
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetSeek:Z

    if-eqz v0, :cond_8

    .line 2718
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTotalTime:J

    iget v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    .line 2719
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    iget-wide v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTotalTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    .line 2720
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTotalTime:J

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    .line 2724
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-eqz v0, :cond_5

    .line 2725
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    iget-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->doDlnaSeek(J)V

    .line 2729
    :goto_2
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    if-eqz v0, :cond_7

    .line 2730
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2731
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2732
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v1, :cond_6

    .line 2733
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding(Z)V

    .line 2754
    :cond_1
    :goto_3
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    if-eqz v0, :cond_2

    .line 2755
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v1, :cond_a

    .line 2756
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding(Z)V

    .line 2761
    :cond_2
    :goto_4
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->initTouchParams()V

    .line 2763
    return-void

    .line 2713
    :cond_3
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setVolumeLevel(I)V

    goto :goto_0

    .line 2721
    :cond_4
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 2722
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    goto :goto_1

    .line 2727
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    iget-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    long-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onSeekEnd(I)V

    goto :goto_2

    .line 2735
    :cond_6
    invoke-virtual {p0, v5}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding(Z)V

    goto :goto_3

    .line 2738
    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 2739
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2740
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v7, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    .line 2743
    :cond_8
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetVol:Z

    if-eqz v0, :cond_9

    .line 2744
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2745
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f9

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    .line 2748
    :cond_9
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetBright:Z

    if-eqz v0, :cond_1

    .line 2749
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2750
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    .line 2758
    :cond_a
    invoke-virtual {p0, v5}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding(Z)V

    goto :goto_4
.end method

.method private resetLayoutSize()V
    .locals 26

    .prologue
    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v5, v23

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 340
    .local v5, gestureProgressLp:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v14, v23

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 341
    .local v14, progressLp:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTitle_view:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v16, v23

    check-cast v16, Landroid/widget/RelativeLayout$LayoutParams;

    .line 343
    .local v16, titleLp:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v18, v23

    check-cast v18, Landroid/widget/RelativeLayout$LayoutParams;

    .line 344
    .local v18, volumeLp:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeTouchSeek:Lcom/android/gallery3d/seekbar/VerSeekBar;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/gallery3d/seekbar/VerSeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v19, v23

    check-cast v19, Landroid/widget/LinearLayout$LayoutParams;

    .line 346
    .local v19, volumeSeekbarLp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v6, v23

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 347
    .local v6, lightLp:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/gallery3d/seekbar/VerSeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v7, v23

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 349
    .local v7, lightSeekbarLp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoControll:Landroid/widget/RelativeLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v17, v23

    check-cast v17, Landroid/widget/RelativeLayout$LayoutParams;

    .line 351
    .local v17, videoControllLp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v15, 0x310

    .line 352
    .local v15, progress_seekbar_width:I
    const/16 v20, 0x2d

    .line 353
    .local v20, volume_layout_left_padding:I
    const/16 v21, 0x69

    .line 354
    .local v21, volume_layout_top_padding:I
    const/16 v22, 0x11

    .line 355
    .local v22, volume_seekbar_top_padding:I
    const/16 v8, 0x2d

    .line 356
    .local v8, light_layout_right_padding:I
    const/16 v9, 0x69

    .line 357
    .local v9, light_layout_top_padding:I
    const/16 v10, 0x11

    .line 358
    .local v10, light_seekbar_top_padding:I
    const/16 v12, 0x194

    .line 359
    .local v12, movie_controller_layout_left_padding:I
    const/16 v13, 0x194

    .line 360
    .local v13, movie_controller_layout_right_padding:I
    const/16 v11, 0x28

    .line 362
    .local v11, movie_controller_layout_bottom_padding:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090233

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090261

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090260

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090262

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f09025a

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090259

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f09025b

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090244

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090245

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090246

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 385
    :goto_0
    iput v15, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 386
    iput v15, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 387
    move-object/from16 v0, v16

    iput v15, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 389
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 390
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v22

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 392
    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v6, v0, v9, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 393
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v7, v0, v10, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 395
    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v12, v1, v13, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTitle_view:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeTouchSeek:Lcom/android/gallery3d/seekbar/VerSeekBar;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoControll:Landroid/widget/RelativeLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    return-void

    .line 374
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090234

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090264

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090263

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090265

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f09025d

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f09025c

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f09025e

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090247

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090248

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090249

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    goto/16 :goto_0
.end method

.method private resetScreenLight()V
    .locals 3

    .prologue
    .line 1876
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->getAppScreenBrightness(Landroid/content/SharedPreferences;)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    .line 1877
    invoke-static {}, Lcom/android/gallery3d/app/MovieActivityUtils;->getCurScreenBrightness()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSysBrightness:I

    .line 1878
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    iget v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSysBrightness:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    if-gez v1, :cond_1

    .line 1879
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSysBrightness:I

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    .line 1881
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSysBrightness:I

    add-int/lit8 v1, v1, -0x2

    mul-int/lit16 v1, v1, 0x2710

    div-int/lit16 v0, v1, 0xfd

    .line 1882
    .local v0, sysProgress:I
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    add-int/lit8 v1, v1, -0x2

    mul-int/lit16 v1, v1, 0x2710

    div-int/lit16 v1, v1, 0xfd

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightProgress:I

    .line 1883
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setBreakPointLevel(I)V

    .line 1884
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setLightBarProgress()V

    .line 1885
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
    .line 2371
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAudioTrackCount:I

    if-ge v0, v1, :cond_1

    .line 2372
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v1, v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->getAudioTrackName(I)Ljava/lang/String;

    move-result-object v1

    .line 2373
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    const v3, 0x7f0a01bc

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

    .line 2371
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2377
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2381
    :cond_1
    return-void
.end method

.method private setHdmiScreenLight()V
    .locals 2

    .prologue
    .line 1859
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsHdmiOn:Z

    if-eqz v0, :cond_3

    .line 1860
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetSeek:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetVol:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetBright:Z

    if-eqz v0, :cond_2

    .line 1861
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    if-eqz v0, :cond_1

    .line 1862
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->setWinBrightness(I)V

    .line 1874
    :cond_1
    :goto_0
    return-void

    .line 1865
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    if-eqz v0, :cond_1

    .line 1866
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->setWinBrightness(I)V

    goto :goto_0

    .line 1870
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    if-eqz v0, :cond_1

    .line 1871
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->setWinBrightness(I)V

    goto :goto_0
.end method

.method private setLightBarProgress()V
    .locals 2

    .prologue
    .line 2234
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightProgress:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setProgress(I)V

    .line 2235
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightProgress:I

    mul-int/lit16 v0, v0, 0xfd

    div-int/lit16 v0, v0, 0x2710

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    .line 2236
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    if-eqz v0, :cond_0

    .line 2237
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->setWinBrightness(I)V

    .line 2239
    :cond_0
    return-void
.end method

.method private setMenuItemCheck()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 951
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 952
    .local v2, pmenu:Landroid/widget/PopupMenu;
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/Menu;->size()I

    move-result v3

    .line 953
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_4

    .line 954
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 955
    .local v1, item:Landroid/view/MenuItem;
    packed-switch v0, :pswitch_data_0

    .line 953
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 957
    :pswitch_0
    iget-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCompleteMode:Z

    if-eqz v4, :cond_0

    .line 958
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 960
    :cond_0
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 965
    :pswitch_1
    iget-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAutoVerScreen:Z

    if-eqz v4, :cond_1

    .line 966
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 968
    :cond_1
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 973
    :pswitch_2
    iget-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsRepeatplay:Z

    if-eqz v4, :cond_2

    .line 974
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 976
    :cond_2
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 981
    :pswitch_3
    iget-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsQueueplay:Z

    if-eqz v4, :cond_3

    .line 982
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 984
    :cond_3
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 992
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_4
    return-void

    .line 955
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
    .line 1100
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsQueueplay:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsRepeatplay:Z

    if-eqz v0, :cond_2

    .line 1101
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->ALLCYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    .line 1113
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    if-eqz v0, :cond_1

    .line 1114
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setPlayMode(Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;)V

    .line 1116
    :cond_1
    return-void

    .line 1103
    :cond_2
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsQueueplay:Z

    if-eqz v0, :cond_3

    .line 1104
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->LISTCYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    .line 1106
    :cond_3
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsRepeatplay:Z

    if-eqz v0, :cond_4

    .line 1107
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->SINGLECYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    .line 1109
    :cond_4
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsRepeatplay:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsQueueplay:Z

    if-nez v0, :cond_0

    .line 1110
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->NOMODE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    goto :goto_0
.end method

.method private setProgress()J
    .locals 15

    .prologue
    const-wide/16 v9, 0x0

    .line 2242
    iget-boolean v11, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDragging:Z

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v11}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->isSeeking()Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_0
    move-wide v6, v9

    .line 2284
    :cond_1
    :goto_0
    return-wide v6

    .line 2245
    :cond_2
    const-wide/16 v6, 0x0

    .line 2247
    .local v6, position:J
    iget-wide v11, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTotalTime:J

    cmp-long v11, v11, v9

    if-nez v11, :cond_3

    .line 2248
    iget-object v11, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v11}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->getVideoDuration()J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTotalTime:J

    .line 2250
    :cond_3
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTotalTime:J

    .line 2251
    .local v0, duration:J
    iget-boolean v11, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-eqz v11, :cond_9

    .line 2252
    iget-object v11, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v11}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->getDlnaClientPos()I

    move-result v11

    int-to-long v6, v11

    .line 2253
    cmp-long v11, v6, v9

    if-nez v11, :cond_4

    iget-wide v11, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    cmp-long v11, v11, v9

    if-eqz v11, :cond_4

    .line 2254
    iget-wide v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    .line 2259
    :cond_4
    :goto_1
    iget-object v11, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;

    if-eqz v11, :cond_6

    .line 2260
    cmp-long v9, v0, v9

    if-lez v9, :cond_5

    .line 2262
    const-wide v9, 0x40c3880000000000L

    long-to-double v11, v6

    long-to-double v13, v0

    div-double/2addr v11, v13

    mul-double/2addr v9, v11

    double-to-long v4, v9

    .line 2263
    .local v4, pos:J
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;

    long-to-int v10, v4

    invoke-virtual {v9, v10}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2264
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    long-to-int v10, v4

    invoke-virtual {v9, v10}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2266
    .end local v4           #pos:J
    :cond_5
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v9}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->getBufferPercentage()I

    move-result v3

    .line 2267
    .local v3, percent:I
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;

    mul-int/lit16 v10, v3, 0x2710

    div-int/lit8 v10, v10, 0x64

    invoke-virtual {v9, v10}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 2268
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    mul-int/lit16 v10, v3, 0x2710

    div-int/lit8 v10, v10, 0x64

    invoke-virtual {v9, v10}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 2271
    .end local v3           #percent:I
    :cond_6
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRemainPlayTimeText:Landroid/widget/TextView;

    if-eqz v9, :cond_8

    .line 2272
    sub-long v9, v0, v6

    long-to-int v2, v9

    .line 2273
    .local v2, iTime:I
    if-gez v2, :cond_7

    .line 2274
    const/4 v2, 0x0

    .line 2276
    :cond_7
    int-to-long v9, v2

    invoke-direct {p0, v9, v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->stringForTime(J)Ljava/lang/String;

    move-result-object v8

    .line 2277
    .local v8, str:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureRemainPlayTimeText:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2278
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRemainPlayTimeText:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2280
    .end local v2           #iTime:I
    .end local v8           #str:Ljava/lang/String;
    :cond_8
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTimeText:Landroid/widget/TextView;

    if-eqz v9, :cond_1

    .line 2281
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureAlreadyPlayTimeText:Landroid/widget/TextView;

    invoke-direct {p0, v6, v7}, Lcom/android/gallery3d/app/MovieControllerOverlay;->stringForTime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2282
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTimeText:Landroid/widget/TextView;

    invoke-direct {p0, v6, v7}, Lcom/android/gallery3d/app/MovieControllerOverlay;->stringForTime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2257
    :cond_9
    iget-wide v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    goto :goto_1
.end method

.method private setScreenSensor()V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->getHdmiState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    sget-object v1, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;->VIDEO_ORIENTATION_LANDSCAPE:Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->lockScreenSensor(Lcom/android/gallery3d/app/MovieActivity$SensorRotation;)V

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoRotation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoRotation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_3

    .line 538
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    sget-object v1, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;->VIDEO_ORIENTATION_PORTRAIT:Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->lockScreenSensor(Lcom/android/gallery3d/app/MovieActivity$SensorRotation;)V

    goto :goto_0

    .line 540
    :cond_3
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSystemSensorOn:Z

    if-nez v0, :cond_4

    .line 541
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    sget-object v1, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;->VIDEO_ORIENTATION_LANDSCAPE:Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->lockScreenSensor(Lcom/android/gallery3d/app/MovieActivity$SensorRotation;)V

    goto :goto_0

    .line 543
    :cond_4
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAutoVerScreen:Z

    if-eqz v0, :cond_5

    .line 544
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    sget-object v1, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;->VIDEO_ORIENTATION_SENSOR:Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->lockScreenSensor(Lcom/android/gallery3d/app/MovieActivity$SensorRotation;)V

    goto :goto_0

    .line 546
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    sget-object v1, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;->VIDEO_ORIENTATION_LANDSCAPE_SENSOR:Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->lockScreenSensor(Lcom/android/gallery3d/app/MovieActivity$SensorRotation;)V

    goto :goto_0
.end method

.method private setTextSize(I)V
    .locals 3
    .parameter "size"

    .prologue
    const/4 v2, 0x0

    .line 494
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureAlreadyPlayTimeText:Landroid/widget/TextView;

    int-to-float v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 495
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureRemainPlayTimeText:Landroid/widget/TextView;

    int-to-float v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 496
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTimeText:Landroid/widget/TextView;

    int-to-float v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 497
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRemainPlayTimeText:Landroid/widget/TextView;

    int-to-float v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 498
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
    .line 2345
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->getTimeTextCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 2346
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v1, v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->getTimeTextName(I)Ljava/lang/String;

    move-result-object v1

    .line 2347
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "und"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2348
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    const v3, 0x7f0a01bb

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/MovieActivityUtils;->getStringFromRes(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2350
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2345
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2352
    :cond_1
    const-string v2, "chs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2353
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    const v2, 0x7f0a01bd

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/MovieActivityUtils;->getStringFromRes(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2355
    :cond_2
    const-string v2, "cht"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2356
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    const v2, 0x7f0a01be

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/MovieActivityUtils;->getStringFromRes(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2358
    :cond_3
    const-string v2, "eng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2359
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    const v2, 0x7f0a01bf

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/MovieActivityUtils;->getStringFromRes(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2362
    :cond_4
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2366
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    const v1, 0x7f0a015c

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->getStringFromRes(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2367
    return-void
.end method

.method private setVolumBarProgress(Z)V
    .locals 2
    .parameter

    .prologue
    .line 2214
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-eqz v0, :cond_0

    .line 2215
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeTouchSeek:Lcom/android/gallery3d/seekbar/VerSeekBar;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setProgress(I)V

    .line 2216
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setDlnaVol(I)V

    .line 2231
    :goto_0
    return-void

    .line 2218
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSilent:Z

    if-eqz v0, :cond_1

    .line 2219
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeTouchSeek:Lcom/android/gallery3d/seekbar/VerSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setProgress(I)V

    .line 2220
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200db

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 2222
    :cond_1
    if-eqz p1, :cond_2

    .line 2223
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxVolume:I

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x2710

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    .line 2227
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeTouchSeek:Lcom/android/gallery3d/seekbar/VerSeekBar;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setProgress(I)V

    .line 2228
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setVolumeLevel(I)V

    goto :goto_0

    .line 2225
    :cond_2
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
    .line 2384
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/16 v2, 0x10

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2386
    return-void
.end method

.method private setZoomChange()V
    .locals 10

    .prologue
    const/16 v9, 0x3f4

    const/16 v8, 0x3f0

    const/16 v7, 0x3ee

    const/4 v6, 0x0

    .line 2307
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->initZoomParams()V

    .line 2308
    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureZoomMode:Z

    if-eqz v1, :cond_0

    .line 2309
    iput-boolean v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureZoomMode:Z

    .line 2310
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2311
    iget-wide v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpg-double v1, v2, v4

    if-gez v1, :cond_5

    .line 2312
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIndex:I

    .line 2320
    .end local v0           #i:I
    :cond_0
    :goto_1
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIndex:I

    .line 2321
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIndex:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 2322
    iput v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIndex:I

    .line 2324
    :cond_1
    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    if-nez v1, :cond_4

    .line 2325
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 2326
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2327
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 2328
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2330
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2331
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 2332
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 2333
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/MovieActivityUtils;->showViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    .line 2335
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 2336
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v9, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2338
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 2339
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2340
    invoke-direct {p0, v6}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setZoomIcon(Z)V

    .line 2341
    return-void

    .line 2314
    .restart local v0       #i:I
    :cond_5
    iget-wide v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-nez v1, :cond_6

    .line 2315
    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIndex:I

    goto :goto_1

    .line 2310
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private setZoomIcon(Z)V
    .locals 8
    .parameter "stepLess"

    .prologue
    .line 1888
    const-wide/16 v1, 0x0

    .line 1889
    .local v1, value:D
    if-nez p1, :cond_0

    .line 1890
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 1910
    :goto_0
    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/app/MovieActivityUtils;->roundingLevel(DI)D

    move-result-wide v1

    .line 1911
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1912
    return-void

    .line 1892
    :cond_0
    const/4 v0, 0x0

    .line 1893
    .local v0, index:I
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1894
    iget-wide v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v3, v4, v6

    if-gez v3, :cond_2

    .line 1898
    :cond_1
    if-nez v0, :cond_4

    .line 1899
    iget-wide v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    iget-wide v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMinZoomValue:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    .line 1900
    iget-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMinZoomValue:D

    goto :goto_0

    .line 1893
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1902
    :cond_3
    const-wide v1, 0x3feccccccccccccdL

    goto :goto_0

    .line 1904
    :cond_4
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 1905
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_0

    .line 1907
    :cond_5
    iget-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxZoomValue:D

    goto :goto_0
.end method

.method private showControllAni()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1935
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1936
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1937
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoControll:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    if-nez v0, :cond_0

    .line 1938
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    .line 1939
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->turnOnLed()V

    .line 1940
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setHdmiScreenLight()V

    .line 1941
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->updateTopPartUI(Z)V

    .line 1942
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->updateGestureProgress(Z)V

    .line 1943
    invoke-direct {p0, v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->enableMediaControl(Z)V

    .line 1944
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v0, v4}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->showSystemTitle(Z)V

    .line 1945
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1946
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoControll:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1947
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsM040:Z

    if-eqz v0, :cond_2

    .line 1948
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    if-eqz v0, :cond_1

    .line 1949
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1961
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoControll:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->showViewTranslateAniUp(Landroid/content/Context;Landroid/view/View;)V

    .line 1962
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->showViewTranslateAniDown(Landroid/content/Context;Landroid/view/View;)V

    .line 1963
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showSelectItemAni()V

    .line 1966
    :cond_0
    return-void

    .line 1951
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1952
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    .line 1953
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalMenuButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    .line 1954
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->showViewTranslateAniUp(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 1957
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1958
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v0, v3}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    .line 1959
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalMenuButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v0, v3}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private showMainView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 2410
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mainView:Landroid/view/View;

    .line 2411
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mainView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2413
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mainView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/view/View;

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2415
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mainView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    if-ne v3, v4, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2417
    return-void

    :cond_0
    move v0, v2

    .line 2411
    goto :goto_0

    :cond_1
    move v0, v2

    .line 2413
    goto :goto_1

    :cond_2
    move v1, v2

    .line 2415
    goto :goto_2
.end method

.method private showPopMenu()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1324
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopupMenu:Landroid/widget/PopupMenu;

    new-instance v3, Lcom/android/gallery3d/app/MovieControllerOverlay$15;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$15;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 1334
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 1335
    .local v1, menu:Landroid/view/Menu;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopMenuInfo:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1336
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopMenuInfo:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v4, v0, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1335
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1338
    :cond_0
    iput-boolean v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopMenuShowing:Z

    .line 1339
    invoke-interface {v1, v4, v5, v4}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    .line 1340
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setMenuItemCheck()V

    .line 1341
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopupMenu:Landroid/widget/PopupMenu;

    new-instance v3, Lcom/android/gallery3d/app/MovieControllerOverlay$16;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$16;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1396
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->show()V

    .line 1397
    return-void
.end method

.method private showSelectDialog()V
    .locals 2

    .prologue
    .line 3284
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3285
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlertDialogTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 3286
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3287
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3290
    :cond_0
    return-void
.end method

.method private showSelectItemAni()V
    .locals 6

    .prologue
    const v5, 0x7f020068

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1969
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    if-eqz v0, :cond_0

    .line 1970
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->getDlnaDeviceCount()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaDeviceCount:I

    .line 1972
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-eqz v0, :cond_5

    .line 1973
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTrackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1974
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1975
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaDeviceCount:I

    if-lez v0, :cond_4

    .line 1976
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1990
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateCount:I

    if-le v0, v4, :cond_2

    .line 1991
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1992
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateButton:Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->showViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    .line 1994
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaDeviceCount:I

    if-lez v0, :cond_8

    .line 1995
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsHdmiOn:Z

    if-nez v0, :cond_3

    .line 1996
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-eqz v0, :cond_7

    .line 1997
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    const v1, 0x7f020069

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2001
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2002
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->showViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    .line 2008
    :cond_3
    :goto_2
    return-void

    .line 1978
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1981
    :cond_5
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAudioTrackCount:I

    if-le v0, v4, :cond_6

    .line 1982
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTrackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1983
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTrackButton:Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->showViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    .line 1985
    :cond_6
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextCount:I

    if-lez v0, :cond_1

    .line 1986
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1987
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextButton:Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->showViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 1999
    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 2005
    :cond_8
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2006
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2
.end method

.method private spacing(Landroid/view/MotionEvent;)F
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2549
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 2550
    .local v0, x:F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 2551
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

    .line 2294
    long-to-int v0, p1

    div-int/lit16 v0, v0, 0x3e8

    .line 2295
    rem-int/lit8 v1, v0, 0x3c

    .line 2296
    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    .line 2297
    div-int/lit16 v0, v0, 0xe10

    .line 2298
    if-lez v0, :cond_0

    .line 2299
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

    .line 2302
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
    .line 1924
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1925
    .local v0, tran_ani:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, p0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1926
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1927
    return-object v0
.end method

.method private updateDLNADevicesList()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3293
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v2}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->getDeviceListName()Ljava/util/ArrayList;

    move-result-object v2

    .line 3294
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v1, :cond_1

    .line 3295
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaDeviceCount:I

    .line 3296
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaDeviceSelect:I

    .line 3297
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    const v2, 0x7f020068

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3298
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3299
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3311
    :cond_0
    :goto_0
    return v0

    .line 3303
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialogAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;

    if-eqz v3, :cond_2

    .line 3304
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialogAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;->setObjects(Ljava/util/List;)V

    .line 3305
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialogAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;

    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaDeviceSelect:I

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;->setSelection(I)V

    .line 3306
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialogAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v1

    .line 3311
    goto :goto_0

    .line 3308
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private updateGestureProgress(Z)V
    .locals 4
    .parameter "isChangeSeek"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 2184
    if-eqz p1, :cond_5

    .line 2185
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2186
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxTextSize:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setTextSize(I)V

    .line 2187
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2188
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2189
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 2191
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2192
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2193
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2194
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->hideViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    .line 2196
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2197
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2198
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2199
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2200
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2202
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setProgress()J

    .line 2203
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2204
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 2210
    :cond_4
    :goto_0
    return-void

    .line 2207
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2208
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateLightUI()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/16 v2, 0x8

    .line 2067
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2068
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2069
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2070
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2071
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 2072
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2073
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoControll:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2074
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2075
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2076
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2077
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTrackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2079
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2080
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2082
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2083
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2084
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2086
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2087
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2088
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 2090
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2091
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2093
    :cond_4
    return-void
.end method

.method private updateTopPartUI(Z)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x3f1

    const/16 v4, 0x3f0

    const/16 v3, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 2138
    if-eqz p1, :cond_9

    .line 2139
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2140
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 2142
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2143
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2144
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2145
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->hideViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    .line 2147
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2148
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2149
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2150
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2151
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2152
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 2160
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2161
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-eqz v0, :cond_7

    .line 2162
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    if-eqz v0, :cond_6

    .line 2163
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200da

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 2181
    :cond_4
    :goto_1
    return-void

    .line 2153
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2154
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2155
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2156
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2157
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2158
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0

    .line 2165
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200db

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 2168
    :cond_7
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSilent:Z

    if-nez v0, :cond_8

    .line 2169
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200da

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 2171
    :cond_8
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200db

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 2175
    :cond_9
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2176
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2177
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsConfigChange:Z

    if-eqz v0, :cond_4

    .line 2178
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsConfigChange:Z

    goto :goto_1
.end method

.method private updateViews()V
    .locals 1

    .prologue
    .line 2963
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eqz v0, :cond_0

    .line 2967
    :goto_0
    return-void

    .line 2966
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->requestLayout()V

    goto :goto_0
.end method

.method private updateVolumeUI()V
    .locals 6

    .prologue
    const v5, 0x7f0200db

    const v4, 0x7f0200da

    const/4 v3, 0x4

    const/16 v2, 0x8

    .line 2095
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2096
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2097
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2098
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2099
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 2100
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2101
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoControll:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2102
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2103
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2104
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2105
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTrackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2107
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2108
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2110
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-eqz v0, :cond_6

    .line 2111
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    if-eqz v0, :cond_5

    .line 2112
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 2123
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2124
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2125
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2126
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->hideViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    .line 2128
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2129
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2130
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 2132
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2133
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2135
    :cond_4
    return-void

    .line 2114
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 2117
    :cond_6
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSilent:Z

    if-nez v0, :cond_7

    .line 2118
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 2120
    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private zoomScaleEvent(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x3f4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2560
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->initZoomParams()V

    .line 2561
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 2597
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2563
    :pswitch_1
    iput v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomScaleMode:I

    goto :goto_0

    .line 2568
    :pswitch_2
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomScaleMode:I

    .line 2569
    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomCount:I

    .line 2570
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScaleMode:Z

    if-eqz v0, :cond_0

    .line 2571
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    iget-wide v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMinZoomValue:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    .line 2572
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    iget-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setVideoZoomDamp(D)V

    .line 2573
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMinZoomValue:D

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    .line 2575
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setZoomIcon(Z)V

    .line 2576
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2577
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2578
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScaleMode:Z

    .line 2579
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldLevel:D

    goto :goto_0

    .line 2585
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->spacing(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDownDist:F

    .line 2586
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDownDist:F

    const/high16 v1, 0x4120

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2587
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomScaleMidPoint:Landroid/graphics/PointF;

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 2588
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomScaleMode:I

    goto :goto_0

    .line 2593
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->onMoveEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 2561
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

    .line 1450
    if-eqz p1, :cond_0

    .line 1451
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1456
    :goto_0
    return-void

    .line 1453
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public checkHdmiState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2977
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    if-eqz v0, :cond_0

    .line 2978
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->getHdmiState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsHdmiOn:Z

    .line 2980
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

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2981
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setHdmiScreenLight()V

    .line 2982
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsHdmiOn:Z

    if-eqz v0, :cond_2

    .line 2983
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2984
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    sget-object v1, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;->VIDEO_ORIENTATION_LANDSCAPE:Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->lockScreenSensor(Lcom/android/gallery3d/app/MovieActivity$SensorRotation;)V

    .line 2986
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    sget-object v1, Landroid/widget/VideoView$ZoomType;->ZOOM_HDMI:Landroid/widget/VideoView$ZoomType;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setVideoZoomType(Landroid/widget/VideoView$ZoomType;)V

    .line 2987
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-nez v0, :cond_1

    .line 2988
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2989
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaListShow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2990
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3009
    :cond_1
    :goto_0
    return-void

    .line 2994
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2995
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setScreenSensor()V

    .line 2996
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    if-eqz v0, :cond_3

    .line 2997
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    sget-object v1, Landroid/widget/VideoView$ZoomType;->ZOOM_LEVEL:Landroid/widget/VideoView$ZoomType;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setVideoZoomType(Landroid/widget/VideoView$ZoomType;)V

    .line 2998
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    iget-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    invoke-interface {v0, v1, v2, v3}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setVideoZoomLevel(DZ)V

    .line 3002
    :goto_1
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaDeviceCount:I

    if-lez v0, :cond_1

    .line 3003
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    if-eqz v0, :cond_1

    .line 3004
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 3000
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    sget-object v1, Landroid/widget/VideoView$ZoomType;->ZOOM_VERTICAL:Landroid/widget/VideoView$ZoomType;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setVideoZoomType(Landroid/widget/VideoView$ZoomType;)V

    goto :goto_1
.end method

.method public finishLoading()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/16 v2, 0x8

    .line 1222
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1223
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 1224
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02019a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1229
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 1230
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoControll:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1231
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1232
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsM040:Z

    if-eqz v0, :cond_3

    .line 1233
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    if-eqz v0, :cond_2

    .line 1234
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1241
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRightBottomlayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1242
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRightBottomlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1244
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTrackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1245
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1246
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1247
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1248
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->showSystemTitle(Z)V

    .line 1249
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1250
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1252
    return-void

    .line 1226
    :cond_1
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 1227
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02019b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 1236
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 1239
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public getShowingFlag()Z
    .locals 1

    .prologue
    .line 3012
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 1219
    return-object p0
.end method

.method public hidePopMenu(Z)V
    .locals 2
    .parameter "isFromPlayer"

    .prologue
    const/4 v1, 0x0

    .line 1458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCanGesture:Z

    .line 1459
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1460
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsTimeTextListShow:Z

    .line 1461
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAudioTrackListShow:Z

    .line 1462
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaListShow:Z

    .line 1463
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopMenuShowing:Z

    .line 1464
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 1465
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->maybeStartHiding()V

    .line 1467
    :cond_0
    return-void
.end method

.method public initPreNextVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 1194
    iput v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIndex:I

    .line 1195
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v0, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->showSystemTitle(Z)V

    .line 1196
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideControllAni(Z)V

    .line 1197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsPreNext:Z

    .line 1198
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1199
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1201
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1202
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTrackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1203
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1204
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-nez v0, :cond_1

    .line 1205
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1207
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRecZoom:D

    .line 1208
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    .line 1209
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1498
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAnimationStarting:Z

    .line 1499
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1494
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAnimationStarting:Z

    .line 1491
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 2890
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2891
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2893
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2894
    iput-boolean v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    .line 2895
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsHdmiOn:Z

    if-eqz v0, :cond_3

    .line 2896
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    sget-object v1, Landroid/widget/VideoView$ZoomType;->ZOOM_HDMI:Landroid/widget/VideoView$ZoomType;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setVideoZoomType(Landroid/widget/VideoView$ZoomType;)V

    .line 2901
    :goto_0
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayHeight:I

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenWidth:I

    .line 2902
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayWidth:I

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenHeight:I

    .line 2903
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2904
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsM040:Z

    if-eqz v0, :cond_4

    .line 2905
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHorizontalMenuButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v0, v4}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    .line 2906
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHorizontalBackButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v0, v4}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    .line 2913
    :cond_1
    :goto_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_2

    .line 2914
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    .line 2915
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    sget-object v1, Landroid/widget/VideoView$ZoomType;->ZOOM_VERTICAL:Landroid/widget/VideoView$ZoomType;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setVideoZoomType(Landroid/widget/VideoView$ZoomType;)V

    .line 2916
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayWidth:I

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenWidth:I

    .line 2917
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayHeight:I

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenHeight:I

    .line 2918
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsM040:Z

    if-eqz v0, :cond_5

    .line 2919
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHorizontalMenuButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v0, v5}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    .line 2920
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHorizontalBackButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v0, v5}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    .line 2921
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2928
    :cond_2
    :goto_2
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

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2929
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->resetLayoutSize()V

    .line 2930
    return-void

    .line 2898
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    sget-object v1, Landroid/widget/VideoView$ZoomType;->ZOOM_LEVEL:Landroid/widget/VideoView$ZoomType;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setVideoZoomType(Landroid/widget/VideoView$ZoomType;)V

    .line 2899
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    iget-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    invoke-interface {v0, v1, v2, v4}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setVideoZoomLevel(DZ)V

    goto :goto_0

    .line 2908
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHorizontalMenuButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v0, v3}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    .line 2909
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHorizontalBackButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v0, v3}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    goto :goto_1

    .line 2923
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHorizontalMenuButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v0, v3}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    .line 2924
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHorizontalBackButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v0, v3}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    .line 2925
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

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

    .line 2935
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsOnLineVideo:Z

    if-eqz v0, :cond_1

    .line 2936
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLetvLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2940
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

    .line 2941
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-virtual {v0, v6, v6, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 2942
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mainView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2943
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mainView:Landroid/view/View;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/MovieControllerOverlay;->layoutCenteredView(Landroid/view/View;IIII)V

    .line 2945
    :cond_0
    return-void

    .line 2938
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
    .line 2958
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2959
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->measureChildren(II)V

    .line 2960
    return-void
.end method

.method public onMoveEvent(Landroid/view/MotionEvent;)V
    .locals 13
    .parameter

    .prologue
    const/high16 v4, 0x4248

    const-wide/16 v8, 0x0

    const-wide v11, 0x3fecccccc0000000L

    const/4 v0, 0x0

    const/4 v10, 0x1

    .line 2599
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomScaleMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 2600
    iput-boolean v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureZoomMode:Z

    .line 2601
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    sub-float/2addr v1, v2

    .line 2602
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float/2addr v2, v3

    .line 2603
    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v3

    .line 2604
    cmpl-float v1, v3, v4

    if-lez v1, :cond_3

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDownDist:F

    sub-float v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    .line 2605
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2606
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    if-nez v1, :cond_1

    .line 2607
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2608
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3f0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2609
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3f0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2611
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2612
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 2613
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 2614
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/MovieActivityUtils;->showViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    .line 2616
    :cond_1
    iput-boolean v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScaleMode:Z

    .line 2617
    float-to-double v1, v3

    iget-wide v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxZoomValue:D

    iget-wide v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMinZoomValue:D

    sub-double/2addr v4, v6

    mul-double/2addr v1, v4

    const-wide v4, 0x4082c00000000000L

    div-double v4, v1, v4

    .line 2618
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDownDist:F

    div-float v1, v3, v1

    iget v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomScale:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 2619
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldLevel:D

    cmpl-double v0, v0, v8

    if-lez v0, :cond_2

    .line 2620
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

    .line 2621
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    iget-wide v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldLevel:D

    sub-double v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    add-double/2addr v0, v6

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    .line 2622
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/MovieActivityUtils;->roundingLevel(DI)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    .line 2626
    :goto_0
    invoke-direct {p0, v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setZoomIcon(Z)V

    .line 2649
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    iget-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    invoke-interface {v0, v1, v2, v10}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setVideoZoomLevel(DZ)V

    .line 2650
    iput-wide v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldLevel:D

    .line 2651
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDownDist:F

    div-float v0, v3, v0

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomScale:F

    .line 2655
    :cond_3
    return-void

    .line 2624
    :cond_4
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxZoomValue:D

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    goto :goto_0

    .line 2629
    :cond_5
    iget-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldLevel:D

    cmpl-double v1, v1, v8

    if-lez v1, :cond_2

    .line 2630
    iget-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    iget-wide v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMinZoomValue:D

    cmpl-double v1, v1, v6

    if-lez v1, :cond_7

    .line 2631
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    iget-wide v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldLevel:D

    sub-double v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    sub-double/2addr v0, v6

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    .line 2632
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/MovieActivityUtils;->roundingLevel(DI)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    .line 2646
    :cond_6
    :goto_2
    invoke-direct {p0, v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setZoomIcon(Z)V

    goto :goto_1

    .line 2634
    :cond_7
    iget-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    cmpl-double v1, v1, v11

    if-eqz v1, :cond_6

    .line 2635
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomCount:I

    .line 2636
    const-wide v1, 0x3f847ae147ae147bL

    .line 2637
    :goto_3
    iget v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomCount:I

    if-ge v0, v6, :cond_8

    .line 2638
    const-wide/high16 v6, 0x4024

    div-double/2addr v1, v6

    .line 2637
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2640
    :cond_8
    iget-wide v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    const-wide v8, 0x3f50624dd2f1a9fcL

    add-double v0, v8, v1

    sub-double v0, v6, v0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    .line 2641
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    cmpg-double v0, v0, v11

    if-gtz v0, :cond_6

    .line 2642
    iput-wide v11, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D

    goto :goto_2
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 579
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSysBrightness:I

    if-le v0, v1, :cond_6

    .line 580
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->saveAppScreenBrightness(Landroid/content/SharedPreferences;I)V

    .line 584
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreferences:Landroid/content/SharedPreferences;

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAutoVerScreen:Z

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->saveScreenSensor(Landroid/content/SharedPreferences;Z)V

    .line 585
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsOnLineVideo:Z

    if-eqz v0, :cond_7

    .line 586
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsOnLineCompleteMode:I

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->saveOnLineCompleteMode(Landroid/content/SharedPreferences;I)V

    .line 590
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreferences:Landroid/content/SharedPreferences;

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsQueueplay:Z

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->saveQueuePlay(Landroid/content/SharedPreferences;Z)V

    .line 591
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreferences:Landroid/content/SharedPreferences;

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsRepeatplay:Z

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->saveReplay(Landroid/content/SharedPreferences;Z)V

    .line 592
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-eqz v0, :cond_1

    .line 593
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 594
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02019a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 595
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    .line 597
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsM040:Z

    if-eqz v0, :cond_9

    .line 598
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    if-eqz v0, :cond_8

    .line 599
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 607
    :goto_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRightBottomlayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 608
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRightBottomlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 610
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoControll:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    if-eqz v0, :cond_3

    .line 611
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->enableMediaControl(Z)V

    .line 612
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVideoControll:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 613
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTopPartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 615
    :cond_3
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopMenuShowing:Z

    if-eqz v0, :cond_4

    .line 616
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 617
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopMenuShowing:Z

    .line 619
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 620
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 622
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 623
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    .line 624
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 625
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 626
    return-void

    .line 581
    :cond_6
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSysBrightness:I

    if-ge v0, v1, :cond_0

    .line 582
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->saveAppScreenBrightness(Landroid/content/SharedPreferences;I)V

    goto/16 :goto_0

    .line 588
    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsNativeCompleteMode:I

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->saveNativeCompleteMode(Landroid/content/SharedPreferences;I)V

    goto/16 :goto_1

    .line 601
    :cond_8
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 604
    :cond_9
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public onPrepared()V
    .locals 2

    .prologue
    const/16 v1, 0x3e9

    .line 554
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 555
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 556
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setScreenSensor()V

    .line 557
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setPlayMode()V

    .line 558
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAnimationStarting:Z

    .line 559
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->resetVolumeBar()V

    .line 560
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v1, :cond_1

    .line 564
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02019a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 568
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->showSystemTitle(Z)V

    .line 571
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->getSystemSensor()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSystemSensorOn:Z

    .line 572
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setPlayMode()V

    .line 573
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->resetVolumeBar()V

    .line 574
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->resetScreenLight()V

    .line 575
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->resetLayoutSize()V

    .line 576
    return-void

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02019b

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

    const/16 v9, 0xff

    const/4 v1, 0x0

    .line 1553
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxTextSize:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setTextSize(I)V

    .line 1555
    const/high16 v2, 0x4348

    .line 1556
    const/high16 v3, 0x43af

    .line 1557
    const/high16 v4, 0x43fa

    .line 1558
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3e8

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1559
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1560
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3f0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1562
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    .line 1563
    iget-wide v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTotalTime:J

    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    int-to-long v7, v0

    mul-long/2addr v5, v7

    const-wide/16 v7, 0x2710

    div-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    .line 1564
    iget-wide v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    iget-wide v7, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTotalTime:J

    cmp-long v0, v5, v7

    if-ltz v0, :cond_9

    .line 1565
    iget-wide v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTotalTime:J

    long-to-int v0, v5

    int-to-long v5, v0

    iput-wide v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    .line 1570
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureAlreadyPlayTimeText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1571
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureAlreadyPlayTimeText:Landroid/widget/TextView;

    iget-wide v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    long-to-int v5, v5

    int-to-long v5, v5

    invoke-direct {p0, v5, v6}, Lcom/android/gallery3d/app/MovieControllerOverlay;->stringForTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1572
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTimeText:Landroid/widget/TextView;

    iget-wide v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    long-to-int v5, v5

    int-to-long v5, v5

    invoke-direct {p0, v5, v6}, Lcom/android/gallery3d/app/MovieControllerOverlay;->stringForTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1575
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureRemainPlayTimeText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1576
    iget-wide v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTotalTime:J

    iget-wide v7, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    sub-long/2addr v5, v7

    long-to-int v0, v5

    .line 1577
    if-gez v0, :cond_2

    move v0, v1

    .line 1580
    :cond_2
    int-to-long v5, v0

    invoke-direct {p0, v5, v6}, Lcom/android/gallery3d/app/MovieControllerOverlay;->stringForTime(J)Ljava/lang/String;

    move-result-object v0

    .line 1581
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureRemainPlayTimeText:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1582
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRemainPlayTimeText:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1584
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_f

    .line 1585
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDragging:Z

    .line 1586
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentX:F

    .line 1587
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentY:F

    .line 1588
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldX:F

    cmpl-float v0, v0, v11

    if-nez v0, :cond_4

    .line 1589
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentX:F

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldX:F

    .line 1590
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentY:F

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldY:F

    .line 1592
    :cond_4
    iput v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mThumbAlpha:I

    .line 1593
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1594
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1595
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentY:F

    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_a

    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentY:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_a

    .line 1596
    const-wide/high16 v2, 0x3ff0

    .line 1604
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

    .line 1605
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    int-to-double v4, v0

    add-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    .line 1606
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    if-le v0, v10, :cond_d

    .line 1607
    iput v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    .line 1611
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1612
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1613
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    if-eqz v0, :cond_7

    .line 1614
    iget-wide v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTotalTime:J

    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    int-to-long v4, v0

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    .line 1615
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsHdmiOn:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsOnLineVideo:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1616
    :cond_6
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-eqz v0, :cond_e

    .line 1617
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setDlnaVol(I)V

    .line 1618
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    iget-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->doDlnaSeek(J)V

    .line 1625
    :cond_7
    :goto_3
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentX:F

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldX:F

    .line 1626
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentY:F

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldY:F

    .line 1690
    :cond_8
    :goto_4
    return-void

    .line 1566
    :cond_9
    iget-wide v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-gez v0, :cond_0

    .line 1567
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    goto/16 :goto_0

    .line 1597
    :cond_a
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentY:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_b

    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentY:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_b

    .line 1598
    const-wide/high16 v2, 0x3fe0

    goto/16 :goto_1

    .line 1599
    :cond_b
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentY:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_c

    cmpg-float v0, v3, v4

    if-gtz v0, :cond_c

    .line 1600
    const-wide/high16 v2, 0x3fd0

    goto/16 :goto_1

    .line 1602
    :cond_c
    const-wide v2, 0x3f847ae147ae147bL

    goto/16 :goto_1

    .line 1608
    :cond_d
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    if-gez v0, :cond_5

    .line 1609
    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    goto :goto_2

    .line 1620
    :cond_e
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setVolumeLevel(I)V

    .line 1621
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    iget-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    long-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onSeekMove(I)V

    goto :goto_3

    .line 1627
    :cond_f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    .line 1628
    iput v11, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldX:F

    .line 1629
    iput v11, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOldY:F

    .line 1630
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMinTextSize:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setTextSize(I)V

    .line 1631
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDragging:Z

    .line 1632
    iput v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mThumbAlpha:I

    .line 1633
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-eqz v0, :cond_13

    .line 1634
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    iget v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    invoke-interface {v0, v2}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setDlnaVol(I)V

    .line 1638
    :goto_5
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1639
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1640
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnTouchUpTime:J

    .line 1641
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e7

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1642
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e7

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1643
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnTouchDownThumbAlpha:I

    if-lez v0, :cond_11

    .line 1644
    iget-wide v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnTouchUpTime:J

    iget-wide v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnTouchDownTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xb4

    cmp-long v0, v2, v4

    if-gez v0, :cond_11

    .line 1645
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDownX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1646
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDownY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1647
    mul-float/2addr v0, v0

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    const/high16 v2, 0x40a0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_11

    .line 1648
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    .line 1649
    iget v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    mul-int/2addr v0, v2

    div-int/lit16 v0, v0, 0x2710

    .line 1650
    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_14

    .line 1651
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    add-int/lit16 v0, v0, 0x1f4

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    .line 1652
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    if-le v0, v10, :cond_10

    .line 1653
    iput v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    .line 1661
    :cond_10
    :goto_6
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1662
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1666
    :cond_11
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnTouchDownPosition:I

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    if-eq v0, v1, :cond_12

    .line 1667
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    if-eqz v0, :cond_12

    .line 1668
    iget-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTotalTime:J

    iget v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    .line 1669
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-eqz v0, :cond_15

    .line 1670
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    iget-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->doDlnaSeek(J)V

    .line 1676
    :cond_12
    :goto_7
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_16

    .line 1677
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1678
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v12, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 1636
    :cond_13
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setVolumeLevel(I)V

    goto/16 :goto_5

    .line 1656
    :cond_14
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    add-int/lit16 v0, v0, -0x1f4

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    .line 1657
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    if-gez v0, :cond_10

    .line 1658
    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    goto :goto_6

    .line 1672
    :cond_15
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    iget-wide v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    long-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onSeekEnd(I)V

    goto :goto_7

    .line 1679
    :cond_16
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_8

    .line 1680
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1681
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 1683
    :cond_17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_8

    .line 1684
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnTouchDownTime:J

    .line 1685
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDownX:F

    .line 1686
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDownY:F

    .line 1687
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSeekBarPosition:I

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnTouchDownPosition:I

    .line 1688
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mThumbAlpha:I

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnTouchDownThumbAlpha:I

    goto/16 :goto_4
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 2885
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2886
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x1

    .line 2809
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2839
    :cond_0
    :goto_0
    return v2

    .line 2812
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 2813
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCanGesture:Z

    .line 2814
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2815
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

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->getZoomLevelList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2818
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->zoomScaleEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 2822
    :cond_2
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAnimationStarting:Z

    if-nez v0, :cond_0

    .line 2825
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGuestureListenr:Lcom/android/gallery3d/app/VideoGestureListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGuestureListenr:Lcom/android/gallery3d/app/VideoGestureListener;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/VideoGestureListener;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2828
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2830
    :pswitch_0
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setVolumeLevel(I)V

    .line 2831
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2832
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2833
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0

    .line 2828
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    const/4 v1, 0x4

    .line 312
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setVolumeLevel(I)V

    .line 313
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 317
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v1, :cond_1

    .line 318
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->maybeStartHiding()V

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding(Z)V

    goto :goto_0
.end method

.method public playStateChangeUpdateProgress()V
    .locals 4

    .prologue
    const/16 v3, 0x3e9

    .line 863
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding(Z)V

    .line 864
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v1, :cond_1

    .line 865
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 866
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 871
    :cond_0
    :goto_0
    return-void

    .line 867
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 868
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x36ee80

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public resetVolumeBar()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 1820
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxVolume:I

    .line 1821
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    .line 1822
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    mul-int/lit16 v0, v0, 0x2710

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxVolume:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    .line 1823
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeTouchSeek:Lcom/android/gallery3d/seekbar/VerSeekBar;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setProgress(I)V

    .line 1824
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setVolumeLevel(I)V

    .line 1825
    return-void
.end method

.method public selectDlnaDevice(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1149
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaDeviceSelect:I

    .line 1150
    return-void
.end method

.method public setAudioTrackCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 1184
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAudioTrackCount:I

    .line 1185
    return-void
.end method

.method public setBitrateTextSelect(I)V
    .locals 2
    .parameter

    .prologue
    .line 1294
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateSelect:I

    .line 1295
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateSelect:I

    if-nez v0, :cond_0

    .line 1296
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200a3

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1300
    :goto_0
    return-void

    .line 1298
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200d3

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public setCanGesture(Z)V
    .locals 0
    .parameter "canGesture"

    .prologue
    .line 3063
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCanGesture:Z

    .line 3064
    return-void
.end method

.method public setDlnaDeviceCount(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 1176
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaDeviceCount:I

    .line 1177
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaListShow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1178
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->updateDLNADevicesList()Z

    .line 1180
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setDlnaVisable()V

    .line 1181
    return-void
.end method

.method public setDlnaVideoState(I)V
    .locals 2
    .parameter

    .prologue
    .line 1167
    if-nez p1, :cond_1

    .line 1168
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02019a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1172
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->invalidate()V

    .line 1173
    return-void

    .line 1169
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02019b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setDlnaVisable()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 2389
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 2390
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsHdmiOn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-nez v0, :cond_1

    .line 2391
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2407
    :cond_0
    :goto_0
    return-void

    .line 2394
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaDeviceCount:I

    if-lez v0, :cond_3

    .line 2395
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    if-eqz v0, :cond_2

    .line 2396
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 2398
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 2402
    :cond_3
    iput v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaDeviceSelect:I

    .line 2403
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    const v1, 0x7f020068

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2404
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setDlnaVolumeProgress(FZ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x3f0

    const/16 v3, 0x3ea

    const/4 v2, 0x0

    .line 1832
    const v0, 0x461c4000

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    .line 1833
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeTouchSeek:Lcom/android/gallery3d/seekbar/VerSeekBar;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setProgress(I)V

    .line 1834
    if-eqz p2, :cond_1

    .line 1835
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1836
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1837
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    if-eqz v0, :cond_2

    .line 1838
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideControllAni(Z)V

    .line 1854
    :cond_0
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setVolumBarProgress(Z)V

    .line 1855
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->updateVolumeUI()V

    .line 1857
    :cond_1
    return-void

    .line 1840
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1841
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1842
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1843
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1844
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1845
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1846
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1847
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1848
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1849
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1850
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIsDlnaMode(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1134
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    .line 1135
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-nez v0, :cond_1

    .line 1136
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaDeviceSelect:I

    .line 1137
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;

    const v1, 0x7f020068

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1138
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaListShow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialogAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaDeviceSelect:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;->setSelection(I)V

    .line 1140
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialogAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;->notifyDataSetChanged()V

    .line 1142
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->resetVolumeBar()V

    .line 1144
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    if-eqz v0, :cond_2

    .line 1145
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showSelectItemAni()V

    .line 1147
    :cond_2
    return-void
.end method

.method public setIsSilentMode(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1121
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSilent:Z

    .line 1122
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSilent:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-nez v0, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200db

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1124
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeTouchSeek:Lcom/android/gallery3d/seekbar/VerSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setEnabled(Z)V

    .line 1132
    :goto_0
    return-void

    .line 1126
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I

    if-eqz v0, :cond_1

    .line 1127
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200da

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1129
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeTouchSeek:Lcom/android/gallery3d/seekbar/VerSeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setEnabled(Z)V

    .line 1130
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->resetVolumeBar()V

    goto :goto_0
.end method

.method public setKeyVolumChange(Z)V
    .locals 5
    .parameter "isUp"

    .prologue
    const/16 v4, 0x3f0

    const/16 v3, 0x3ea

    const/4 v2, 0x0

    .line 3020
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSilent:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z

    if-eqz v0, :cond_1

    .line 3021
    :cond_0
    if-eqz p1, :cond_4

    .line 3022
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxVolume:I

    if-le v0, v1, :cond_3

    .line 3023
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxVolume:I

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    .line 3035
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3036
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3037
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    if-eqz v0, :cond_6

    .line 3038
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideControllAni(Z)V

    .line 3054
    :cond_2
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetVol:Z

    .line 3055
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setHdmiScreenLight()V

    .line 3056
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetVol:Z

    .line 3057
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setVolumBarProgress(Z)V

    .line 3058
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->updateVolumeUI()V

    .line 3059
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f9

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3060
    return-void

    .line 3025
    :cond_3
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    goto :goto_0

    .line 3028
    :cond_4
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    if-gtz v0, :cond_5

    .line 3029
    iput v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    goto :goto_0

    .line 3031
    :cond_5
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I

    goto :goto_0

    .line 3040
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3041
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3042
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3043
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 3044
    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3045
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3046
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3047
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 3048
    :cond_8
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3049
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3050
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setListener(Lcom/android/gallery3d/app/ControllerOverlay$Listener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1212
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    .line 1213
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    if-eqz v0, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->getScreenRotation()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenRotation:I

    .line 1216
    :cond_0
    return-void
.end method

.method public setMeizuExt(Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;)V
    .locals 0
    .parameter "ext"

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    .line 1119
    return-void
.end method

.method public setOnLineBitRateCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 1191
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateCount:I

    .line 1192
    return-void
.end method

.method public setTimeTextCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 1188
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextCount:I

    .line 1189
    return-void
.end method

.method public setTimeTextSelect(I)V
    .locals 0
    .parameter "timeTextSelect"

    .prologue
    .line 1303
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextSelect:I

    .line 1305
    return-void
.end method

.method public setTimes(II)V
    .locals 2
    .parameter "currentTime"
    .parameter "totalTime"

    .prologue
    .line 1286
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetSeek:Z

    if-nez v0, :cond_0

    .line 1287
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTotalTime:J

    .line 1288
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J

    .line 1289
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setProgress()J

    .line 1291
    :cond_0
    return-void
.end method

.method public setTrackSelect(I)V
    .locals 0
    .parameter "trackSelect"

    .prologue
    .line 1308
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mAudioTrackSelect:I

    .line 1309
    return-void
.end method

.method public setVideoTitle()V
    .locals 3

    .prologue
    .line 1476
    const/4 v0, 0x0

    .line 1477
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    if-eqz v1, :cond_0

    .line 1478
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->getVideoTitle()Ljava/lang/String;

    move-result-object v0

    .line 1480
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTitle_view:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 1481
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTitle_view:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->calculateTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1486
    :goto_0
    return-void

    .line 1483
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTitle_view:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0139

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/MovieActivityUtils;->getStringFromRes(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showController()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x64

    const/4 v6, 0x4

    const/16 v5, 0x3ea

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1399
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 1400
    .local v0, wasHidden:Z
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 1401
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->updateViews()V

    .line 1402
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1403
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1404
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1406
    :cond_0
    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsM040:Z

    if-eqz v1, :cond_2

    .line 1407
    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    if-eqz v1, :cond_1

    .line 1408
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1419
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1420
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3f1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1421
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1422
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1423
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1448
    :goto_1
    return-void

    .line 1410
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1411
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v1, v3}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    .line 1412
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalMenuButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v1, v3}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1415
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1416
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalBackButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v1, v4}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    .line 1417
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVerticalMenuButton:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v1, v4}, Lcom/meizu/widget/GlowImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1426
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1427
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3f9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1428
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1429
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1430
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1433
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1434
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1435
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1437
    :cond_5
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRightBottomlayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1438
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRightBottomlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1440
    :cond_6
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showControllAni()V

    .line 1441
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setVisibility(I)V

    .line 1442
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setFocusable(Z)V

    .line 1443
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eq v0, v1, :cond_7

    .line 1444
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onShown()V

    .line 1446
    :cond_7
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1447
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->maybeStartHiding()V

    goto/16 :goto_1
.end method

.method public showErrorMessage(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0xa

    .line 1278
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->ERROR:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 1279
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e2aaaab

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1280
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1281
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1282
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 1283
    return-void
.end method

.method public showLoading()V
    .locals 2

    .prologue
    .line 1270
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->LOADING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 1271
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 1272
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    if-eqz v0, :cond_0

    .line 1273
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->showSystemTitle(Z)V

    .line 1275
    :cond_0
    return-void
.end method

.method public showM03XPopMenu()V
    .locals 3

    .prologue
    .line 1312
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z

    if-eqz v0, :cond_1

    .line 1313
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z

    if-eqz v0, :cond_0

    .line 1314
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mRemainPlayTimeText:Landroid/widget/TextView;

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 1321
    :goto_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showPopMenu()V

    .line 1322
    return-void

    .line 1316
    :cond_0
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->m03XPopMenuRightTopAnchorView:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopupMenu:Landroid/widget/PopupMenu;

    goto :goto_0

    .line 1319
    :cond_1
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->m03XPopMenuRightBottomAnchorView:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopupMenu:Landroid/widget/PopupMenu;

    goto :goto_0
.end method

.method public showPaused()V
    .locals 2

    .prologue
    .line 1260
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 1261
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02019b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1262
    return-void
.end method

.method public showPlaying()V
    .locals 2

    .prologue
    .line 1254
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 1255
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02019a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1256
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 1257
    return-void
.end method

.method public systemSensorSettingChange()V
    .locals 1

    .prologue
    .line 2973
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->getSystemSensor()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSystemSensorOn:Z

    .line 2974
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setScreenSensor()V

    .line 2975
    return-void
.end method
