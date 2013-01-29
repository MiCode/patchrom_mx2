.class public Lcom/android/gallery3d/app/MoviePlayer;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnTimedTextListener;
.implements Lcom/android/gallery3d/app/ControllerOverlay$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;,
        Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;
    }
.end annotation


# instance fields
.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private final mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

.field private mCachedPosition:J

.field private mCachedRemotePlaying:Z

.field private mContext:Landroid/content/Context;

.field private final mController:Lcom/android/gallery3d/app/ControllerOverlay;

.field private mCurUriIndex:I

.field private mCurrentDevice:Landroid/media/dlna/DlnaDevice;

.field private mDimissRemoteBuffering:Ljava/lang/Runnable;

.field private mDlna:Landroid/media/dlna/DlnaClient;

.field private mDlnaHandler:Landroid/os/Handler;

.field private mDlnaIsPlaying:Z

.field private mDlnaMode:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

.field private mDlnaPlayState:I

.field private mDlnaReceiver:Landroid/content/BroadcastReceiver;

.field private mDlnaVolume:F

.field private mDragging:Z

.field private mFileUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFirHeadSetClick:J

.field private final mHandler:Landroid/os/Handler;

.field private mHasPaused:Z

.field private mHeadSetHookClick:I

.field private mHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoryEntry:Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;

.field private mIsError:Z

.field private mIsOnLineVideo:Z

.field private mIsPlayComplete:Z

.field private mIsPlayingBeforeOnPause:Z

.field private mIsPreNext:Z

.field private mIsPrepared:Z

.field private mIsSingleVideo:Z

.field private mLoadingBeginTime:J

.field private mLoadingDuration:J

.field private mLoopValue:D

.field private mMaxZoomLevel:D

.field private mMinZoomLevel:D

.field private mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

.field private mMsgHandler:Landroid/os/Handler;

.field private mOnLineHighQualityMmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnLineHighQualityUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnLineMediaIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnLineMmsId:Ljava/lang/String;

.field private mOnLineSmoothMmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnLineSmoothUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnLineUriId:Ljava/lang/String;

.field private mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

.field private mPlayHistory:Lcom/android/gallery3d/data/PlayHistory;

.field private mPlayHistoryDBHelper:Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;

.field private mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

.field private mPlaybackInfoListener:Landroid/media/dlna/DlnaClient$PlaybackInfoListener;

.field private final mPlayingChecker:Ljava/lang/Runnable;

.field private final mProgressChecker:Ljava/lang/Runnable;

.field private mQuality:I

.field private mReboundLevel:D

.field private mRecordStatus:I

.field private mRemoteBuffering:Landroid/app/ProgressDialog;

.field private mRemoteVideoCid:Ljava/lang/String;

.field private mRemoteVideoVid:Ljava/lang/String;

.field private mResumeableTime:J

.field private mSaveAudioTrackId:I

.field private mSaveTimeText:I

.field private mSecHeadSetClick:J

.field private mSelectAudioTrackId:I

.field private mSelectTimeText:I

.field private mShowRemoteBuffering:Ljava/lang/Runnable;

.field private mShowing:Z

.field private mThrHeadSetClick:J

.field private mTimeText:Landroid/widget/TextView;

.field private mTimeTextPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeTextTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;

.field private mVideoDuration:I

.field private mVideoPosition:I

.field private final mVideoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .parameter "rootView"
    .parameter "movieActivity"
    .parameter "curUriIndex"
    .parameter "uriId"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter "cid"
    .parameter "vid"
    .parameter "isSingle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/gallery3d/app/MovieActivity;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p5, highQuality:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p6, smooth:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p7, highMmsId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p8, smoothMmsId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p9, mediaId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const-string v1, ""

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineUriId:Ljava/lang/String;

    .line 103
    const-string v1, ""

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMmsId:Ljava/lang/String;

    .line 105
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    .line 109
    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    .line 110
    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLoadingBeginTime:J

    .line 111
    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLoadingDuration:J

    .line 112
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 113
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoDuration:I

    .line 114
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCachedPosition:J

    .line 115
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    .line 116
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHeadSetHookClick:I

    .line 117
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSaveAudioTrackId:I

    .line 118
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSaveTimeText:I

    .line 119
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I

    .line 120
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRecordStatus:I

    .line 121
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSelectTimeText:I

    .line 122
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSelectAudioTrackId:I

    .line 123
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFirHeadSetClick:J

    .line 124
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSecHeadSetClick:J

    .line 125
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mThrHeadSetClick:J

    .line 126
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F

    .line 127
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mReboundLevel:D

    .line 128
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLoopValue:D

    .line 129
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMaxZoomLevel:D

    .line 130
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMinZoomLevel:D

    .line 131
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 133
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mShowing:Z

    .line 134
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPreNext:Z

    .line 135
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPrepared:Z

    .line 136
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPlayingBeforeOnPause:Z

    .line 137
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z

    .line 138
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSingleVideo:Z

    .line 139
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaIsPlaying:Z

    .line 140
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsError:Z

    .line 141
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPlayComplete:Z

    .line 142
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCachedRemotePlaying:Z

    .line 143
    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->LISTCYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    .line 144
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaPlayState:I

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextPathList:Ljava/util/ArrayList;

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextTypeList:Ljava/util/ArrayList;

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFileUriList:Ljava/util/ArrayList;

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityUriList:Ljava/util/ArrayList;

    .line 150
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothUriList:Ljava/util/ArrayList;

    .line 151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityMmsList:Ljava/util/ArrayList;

    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothMmsList:Ljava/util/ArrayList;

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMediaIdList:Ljava/util/ArrayList;

    .line 161
    new-instance v1, Landroid/media/dlna/DlnaDevice;

    invoke-direct {v1}, Landroid/media/dlna/DlnaDevice;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentDevice:Landroid/media/dlna/DlnaDevice;

    .line 164
    const-string v1, ""

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteVideoCid:Ljava/lang/String;

    .line 165
    const-string v1, ""

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteVideoVid:Ljava/lang/String;

    .line 172
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$1;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    .line 201
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$2;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$2;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaHandler:Landroid/os/Handler;

    .line 246
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteBuffering:Landroid/app/ProgressDialog;

    .line 247
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$3;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$3;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDimissRemoteBuffering:Ljava/lang/Runnable;

    .line 254
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$4;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$4;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mShowRemoteBuffering:Ljava/lang/Runnable;

    .line 276
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$5;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$5;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    .line 435
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$9;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$9;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    .line 825
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$10;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$10;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaReceiver:Landroid/content/BroadcastReceiver;

    .line 1376
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$13;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$13;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlaybackInfoListener:Landroid/media/dlna/DlnaClient$PlaybackInfoListener;

    .line 356
    new-instance v2, Lcom/android/gallery3d/data/PlayHistory;

    invoke-virtual {p2}, Lcom/android/gallery3d/app/MovieActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, v1}, Lcom/android/gallery3d/data/PlayHistory;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayHistory:Lcom/android/gallery3d/data/PlayHistory;

    .line 357
    new-instance v1, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;

    invoke-direct {v1, p2}, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayHistoryDBHelper:Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;

    .line 358
    new-instance v1, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    invoke-direct {v1}, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    .line 359
    iput-object p2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    .line 360
    invoke-virtual {p2}, Lcom/android/gallery3d/app/MovieActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/GalleryApp;

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 361
    const v1, 0x7f0d00e9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    .line 362
    const v1, 0x7f0d00ea

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeText:Landroid/widget/TextView;

    .line 363
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextPathList:Ljava/util/ArrayList;

    .line 364
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextTypeList:Ljava/util/ArrayList;

    .line 365
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHeaders:Ljava/util/HashMap;

    .line 366
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFileUriList:Ljava/util/ArrayList;

    .line 367
    iput-object p4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineUriId:Ljava/lang/String;

    .line 368
    iput p3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    .line 369
    iput-object p5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityUriList:Ljava/util/ArrayList;

    .line 370
    iput-object p6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothUriList:Ljava/util/ArrayList;

    .line 371
    iput-object p7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityMmsList:Ljava/util/ArrayList;

    .line 372
    iput-object p8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothMmsList:Ljava/util/ArrayList;

    .line 373
    iput-object p9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMediaIdList:Ljava/util/ArrayList;

    .line 374
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z

    .line 375
    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSingleVideo:Z

    .line 376
    iput-object p10, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteVideoCid:Ljava/lang/String;

    .line 377
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteVideoVid:Ljava/lang/String;

    .line 378
    new-instance v2, Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSingleVideo:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const/4 v4, 0x1

    invoke-direct {v2, v3, v1, v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;-><init>(Landroid/content/Context;ZZ)V

    iput-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    .line 379
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;-><init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    .line 380
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;->register()V

    .line 381
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v1}, Lcom/android/gallery3d/app/ControllerOverlay;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 382
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->initMoviePlayer()V

    .line 383
    return-void

    .line 378
    .restart local p1
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;Landroid/net/Uri;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 4
    .parameter "rootView"
    .parameter "movieActivity"
    .parameter "videoUri"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter "isSingle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/gallery3d/app/MovieActivity;",
            "Landroid/net/Uri;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 385
    .local p4, headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, timeTextPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p6, timeTextType:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p7, uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineUriId:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMmsId:Ljava/lang/String;

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    .line 109
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    .line 110
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLoadingBeginTime:J

    .line 111
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLoadingDuration:J

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoDuration:I

    .line 114
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCachedPosition:J

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHeadSetHookClick:I

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSaveAudioTrackId:I

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSaveTimeText:I

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I

    .line 120
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRecordStatus:I

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSelectTimeText:I

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSelectAudioTrackId:I

    .line 123
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFirHeadSetClick:J

    .line 124
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSecHeadSetClick:J

    .line 125
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mThrHeadSetClick:J

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F

    .line 127
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mReboundLevel:D

    .line 128
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLoopValue:D

    .line 129
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMaxZoomLevel:D

    .line 130
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMinZoomLevel:D

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mShowing:Z

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPreNext:Z

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPrepared:Z

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPlayingBeforeOnPause:Z

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSingleVideo:Z

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaIsPlaying:Z

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsError:Z

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPlayComplete:Z

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCachedRemotePlaying:Z

    .line 143
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->LISTCYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    .line 144
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaPlayState:I

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextPathList:Ljava/util/ArrayList;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextTypeList:Ljava/util/ArrayList;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFileUriList:Ljava/util/ArrayList;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityUriList:Ljava/util/ArrayList;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothUriList:Ljava/util/ArrayList;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityMmsList:Ljava/util/ArrayList;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothMmsList:Ljava/util/ArrayList;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMediaIdList:Ljava/util/ArrayList;

    .line 161
    new-instance v0, Landroid/media/dlna/DlnaDevice;

    invoke-direct {v0}, Landroid/media/dlna/DlnaDevice;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentDevice:Landroid/media/dlna/DlnaDevice;

    .line 164
    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteVideoCid:Ljava/lang/String;

    .line 165
    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteVideoVid:Ljava/lang/String;

    .line 172
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MoviePlayer$1;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    .line 201
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MoviePlayer$2;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaHandler:Landroid/os/Handler;

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteBuffering:Landroid/app/ProgressDialog;

    .line 247
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$3;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MoviePlayer$3;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDimissRemoteBuffering:Ljava/lang/Runnable;

    .line 254
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$4;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MoviePlayer$4;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mShowRemoteBuffering:Ljava/lang/Runnable;

    .line 276
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$5;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MoviePlayer$5;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    .line 435
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$9;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MoviePlayer$9;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    .line 825
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$10;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MoviePlayer$10;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaReceiver:Landroid/content/BroadcastReceiver;

    .line 1376
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$13;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MoviePlayer$13;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlaybackInfoListener:Landroid/media/dlna/DlnaClient$PlaybackInfoListener;

    .line 386
    new-instance v1, Lcom/android/gallery3d/data/PlayHistory;

    invoke-virtual {p2}, Lcom/android/gallery3d/app/MovieActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/data/PlayHistory;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayHistory:Lcom/android/gallery3d/data/PlayHistory;

    .line 387
    invoke-virtual {p2}, Lcom/android/gallery3d/app/MovieActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 388
    iput-object p2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    .line 389
    const v0, 0x7f0d00e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    .line 390
    const v0, 0x7f0d00ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeText:Landroid/widget/TextView;

    .line 391
    iput-object p5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextPathList:Ljava/util/ArrayList;

    .line 392
    iput-object p6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextTypeList:Ljava/util/ArrayList;

    .line 393
    iput-object p7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFileUriList:Ljava/util/ArrayList;

    .line 394
    iput-object p3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 395
    iput-object p4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHeaders:Ljava/util/HashMap;

    .line 396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z

    .line 397
    iput-boolean p8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSingleVideo:Z

    .line 398
    new-instance v0, Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    .line 399
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;-><init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    .line 400
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;->register()V

    .line 401
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 402
    sget-boolean v0, Lcom/android/gallery3d/app/MovieActivityUtils;->sIsFromFile:Z

    if-nez v0, :cond_0

    .line 403
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->findCurUriIndex()V

    .line 405
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->initMoviePlayer()V

    .line 406
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/MoviePlayer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLoadingDuration:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/gallery3d/app/MoviePlayer;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLoadingDuration:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/MoviePlayer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLoadingBeginTime:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaPlayState:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/gallery3d/app/MoviePlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaPlayState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDimissRemoteBuffering:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/media/dlna/DlnaClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/MoviePlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaIsPlaying:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/gallery3d/app/MoviePlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaIsPlaying:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;)Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaMode:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/app/MoviePlayer;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F

    return v0
.end method

.method static synthetic access$1702(Lcom/android/gallery3d/app/MoviePlayer;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F

    return p1
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteBuffering:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/gallery3d/app/MoviePlayer;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteBuffering:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->doDlnaPause()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/widget/VideoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/app/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/app/MoviePlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPrepared:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/gallery3d/app/MoviePlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPrepared:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/app/MoviePlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityUriList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothUriList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/gallery3d/app/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextPathList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextTypeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/gallery3d/app/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSaveTimeText:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/gallery3d/app/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSaveAudioTrackId:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/gallery3d/app/MoviePlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRecordStatus:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/gallery3d/app/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/gallery3d/app/MoviePlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/gallery3d/app/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoDuration:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/gallery3d/app/MoviePlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoDuration:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->playVideo()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setDlnaPlayState()V

    return-void
.end method

.method static synthetic access$3702(Lcom/android/gallery3d/app/MoviePlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHeadSetHookClick:I

    return p1
.end method

.method static synthetic access$3802(Lcom/android/gallery3d/app/MoviePlayer;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFirHeadSetClick:J

    return-wide p1
.end method

.method static synthetic access$3902(Lcom/android/gallery3d/app/MoviePlayer;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSecHeadSetClick:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/gallery3d/app/MoviePlayer;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mReboundLevel:D

    return-wide v0
.end method

.method static synthetic access$4002(Lcom/android/gallery3d/app/MoviePlayer;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mReboundLevel:D

    return-wide p1
.end method

.method static synthetic access$4018(Lcom/android/gallery3d/app/MoviePlayer;D)D
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mReboundLevel:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mReboundLevel:D

    return-wide v0
.end method

.method static synthetic access$4026(Lcom/android/gallery3d/app/MoviePlayer;D)D
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mReboundLevel:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mReboundLevel:D

    return-wide v0
.end method

.method static synthetic access$4100(Lcom/android/gallery3d/app/MoviePlayer;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMaxZoomLevel:D

    return-wide v0
.end method

.method static synthetic access$4200(Lcom/android/gallery3d/app/MoviePlayer;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLoopValue:D

    return-wide v0
.end method

.method static synthetic access$4202(Lcom/android/gallery3d/app/MoviePlayer;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLoopValue:D

    return-wide p1
.end method

.method static synthetic access$4300(Lcom/android/gallery3d/app/MoviePlayer;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMinZoomLevel:D

    return-wide v0
.end method

.method static synthetic access$4400(Lcom/android/gallery3d/app/MoviePlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->updateDLNADevicesList()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/OnLineVideoPlayRecord;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->stopDlnaPlay()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/gallery3d/app/MoviePlayer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCachedPosition:J

    return-wide v0
.end method

.method static synthetic access$4702(Lcom/android/gallery3d/app/MoviePlayer;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCachedPosition:J

    return-wide p1
.end method

.method static synthetic access$4800(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->dlnaPlayComplete()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mShowRemoteBuffering:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/MoviePlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCachedRemotePlaying:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/gallery3d/app/MoviePlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCachedRemotePlaying:Z

    return p1
.end method

.method private dlnaDoSetDataSourcePlay()V
    .locals 2

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$14;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$14;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/dlna/DlnaClient;->stop(Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z

    .line 1603
    return-void
.end method

.method private dlnaPlayComplete()V
    .locals 3

    .prologue
    .line 1339
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 1340
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSingleVideo:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/gallery3d/app/MovieActivityUtils;->sIsFromFile:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->NOMODE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->LISTCYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->getVideoCount()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1342
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->finishVideo()V

    .line 1374
    :cond_1
    :goto_0
    return-void

    .line 1343
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->SINGLECYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    if-ne v0, v1, :cond_3

    .line 1344
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/dlna/DlnaClient;->seek(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1345
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$12;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$12;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/dlna/DlnaClient;->play(Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z

    goto :goto_0

    .line 1369
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->LISTCYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    if-ne v0, v1, :cond_4

    .line 1370
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->videoNext()V

    goto :goto_0

    .line 1371
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->ALLCYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    if-ne v0, v1, :cond_1

    .line 1372
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->videoNext()V

    goto :goto_0
.end method

.method private doDlnaPause()V
    .locals 4

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    if-eqz v0, :cond_0

    .line 1652
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$16;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$16;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/dlna/DlnaClient;->pause(Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1666
    const-string v0, "dlna"

    const-string v1, "pause fail--->:"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1668
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->stopDlnaPlay()V

    .line 1671
    :cond_0
    return-void
.end method

.method private doPlayDlna()V
    .locals 4

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    if-eqz v0, :cond_0

    .line 1607
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$15;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$15;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/dlna/DlnaClient;->play(Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1629
    const-string v0, "dlna"

    const-string v1, "play fail--->:"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1631
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->stopDlnaPlay()V

    .line 1634
    :cond_0
    return-void
.end method

.method private findCurUriIndex()V
    .locals 3

    .prologue
    .line 585
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 586
    .local v1, str:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFileUriList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFileUriList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 587
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFileUriList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 588
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFileUriList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 589
    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    .line 596
    .end local v0           #i:I
    :cond_0
    :goto_1
    return-void

    .line 587
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 594
    .end local v0           #i:I
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    goto :goto_1
.end method

.method private getVideoCount()I
    .locals 2

    .prologue
    .line 602
    const/4 v0, 0x0

    .line 603
    .local v0, videocount:I
    iget-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z

    if-eqz v1, :cond_1

    .line 604
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityUriList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 605
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityUriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 612
    :goto_0
    return v0

    .line 607
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothUriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 610
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFileUriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method private initDlnaClient(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    if-nez v0, :cond_0

    .line 1447
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    check-cast v0, Lcom/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryAppImpl;->getDlnaClient()Landroid/media/dlna/DlnaClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    .line 1460
    :goto_0
    return-void

    .line 1449
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isCurrentDlna()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1450
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlaybackInfoListener:Landroid/media/dlna/DlnaClient$PlaybackInfoListener;

    invoke-virtual {v0, v1}, Landroid/media/dlna/DlnaClient;->setPlaybackInfoListener(Landroid/media/dlna/DlnaClient$PlaybackInfoListener;)V

    .line 1451
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    invoke-virtual {v0}, Landroid/media/dlna/DlnaClient;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1452
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay;->setDlnaVideoState(I)V

    goto :goto_0

    .line 1454
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay;->setDlnaVideoState(I)V

    goto :goto_0

    .line 1457
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/dlna/DlnaClient;->setPlaybackInfoListener(Landroid/media/dlna/DlnaClient$PlaybackInfoListener;)V

    goto :goto_0
.end method

.method private initHistoryEntry()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 566
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayHistory:Lcom/android/gallery3d/data/PlayHistory;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineUriId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/PlayHistory;->lookup(Ljava/lang/String;)Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHistoryEntry:Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;

    .line 571
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHistoryEntry:Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;

    if-nez v0, :cond_1

    .line 572
    iput v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSelectAudioTrackId:I

    .line 573
    iput v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSelectTimeText:I

    .line 574
    iput v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 575
    iput v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I

    .line 583
    :goto_1
    return-void

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayHistory:Lcom/android/gallery3d/data/PlayHistory;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/PlayHistory;->lookup(Ljava/lang/String;)Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHistoryEntry:Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;

    goto :goto_0

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHistoryEntry:Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;

    iget v0, v0, Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;->audioTrack:I

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSaveAudioTrackId:I

    .line 578
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHistoryEntry:Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;

    iget v0, v0, Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;->textTrack:I

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSaveTimeText:I

    .line 579
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHistoryEntry:Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;

    iget v0, v0, Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;->position:I

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 580
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHistoryEntry:Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;

    iget v0, v0, Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;->quality:I

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I

    goto :goto_1
.end method

.method private initMoviePlayer()V
    .locals 2

    .prologue
    .line 285
    sget-object v0, Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;->NATIVE_PLAY:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaMode:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    .line 286
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MoviePlayer;->realInit(Z)V

    .line 287
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$6;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$6;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 296
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$7;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$7;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 303
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$8;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$8;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 353
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->broadcasePause()V

    .line 354
    return-void
.end method

.method private static isMediaKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 1309
    const/16 v0, 0x4f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x58

    if-eq p0, v0, :cond_0

    const/16 v0, 0x57

    if-eq p0, v0, :cond_0

    const/16 v0, 0x55

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mediaButton()V
    .locals 11

    .prologue
    const/16 v10, 0x3ef

    const-wide/16 v8, 0x0

    const/16 v7, 0x3ee

    const/16 v6, 0x3ed

    const-wide/16 v4, 0x226

    .line 912
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHeadSetHookClick:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHeadSetHookClick:I

    .line 913
    const-string v0, "MoviePlayer"

    const-string v1, "mediaButton"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const-string v0, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHeadSetHookClick"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHeadSetHookClick:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHeadSetHookClick:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 916
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 917
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 918
    const-string v0, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFirHeadSetClick"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFirHeadSetClick:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFirHeadSetClick:J

    .line 920
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 921
    iput v6, v0, Landroid/os/Message;->what:I

    .line 922
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 945
    :cond_0
    :goto_0
    return-void

    .line 923
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHeadSetHookClick:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 924
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSecHeadSetClick:J

    .line 925
    iget-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSecHeadSetClick:J

    iget-wide v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFirHeadSetClick:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 927
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 928
    iput v7, v0, Landroid/os/Message;->what:I

    .line 929
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 931
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHeadSetHookClick:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 932
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mThrHeadSetClick:J

    .line 933
    iget-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mThrHeadSetClick:J

    iget-wide v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSecHeadSetClick:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    .line 934
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 935
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 936
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 937
    iput v10, v0, Landroid/os/Message;->what:I

    .line 938
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 940
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHeadSetHookClick:I

    .line 941
    iput-wide v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mThrHeadSetClick:J

    .line 942
    iput-wide v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSecHeadSetClick:J

    .line 943
    iput-wide v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFirHeadSetClick:J

    goto :goto_0
.end method

.method private pauseVideo()V
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 990
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->showPaused()V

    .line 991
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->playStateChangeUpdateProgress()V

    .line 992
    return-void
.end method

.method private playVideo()V
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 984
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->showPlaying()V

    .line 985
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->playStateChangeUpdateProgress()V

    .line 986
    return-void
.end method

.method private realInit(Z)V
    .locals 3
    .parameter "initHistory"

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isCurrentDlna()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    const-string v0, "dlna"

    const-string v1, "realInit is dlna --->"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->dlnaDoSetDataSourcePlay()V

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0, p0}, Lcom/android/gallery3d/app/ControllerOverlay;->setListener(Lcom/android/gallery3d/app/ControllerOverlay$Listener;)V

    .line 545
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 546
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 547
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V

    .line 548
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z

    if-eqz v0, :cond_1

    .line 549
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 550
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothUriList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 551
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothMmsList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMmsId:Ljava/lang/String;

    .line 556
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMediaIdList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineUriId:Ljava/lang/String;

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHeaders:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 559
    if-eqz p1, :cond_2

    .line 560
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->initHistoryEntry()V

    .line 562
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->startVideo()V

    .line 563
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->setVideoTitle()V

    .line 564
    return-void

    .line 553
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityUriList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 554
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityMmsList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMmsId:Ljava/lang/String;

    goto :goto_0
.end method

.method private sendPlayRecordToLetv()V
    .locals 3

    .prologue
    .line 895
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setPlayRecordValue()V

    .line 896
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPlayComplete:Z

    .line 897
    const-string v0, "letv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendPlayRecordToLetv is --->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->getPlayRecord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    iget-object v0, v0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->did:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 899
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$11;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MoviePlayer$11;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer$11;->start()V

    .line 909
    :cond_0
    return-void
.end method

.method private setDlnaPlayState()V
    .locals 2

    .prologue
    .line 1704
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaIsPlaying:Z

    if-eqz v0, :cond_0

    .line 1705
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay;->setDlnaVideoState(I)V

    .line 1706
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->doDlnaPause()V

    .line 1711
    :goto_0
    return-void

    .line 1708
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay;->setDlnaVideoState(I)V

    .line 1709
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->doPlayDlna()V

    goto :goto_0
.end method

.method private setPlayRecordValue()V
    .locals 6

    .prologue
    .line 857
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteVideoCid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 858
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    const-string v2, "-"

    iput-object v2, v1, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->cid:Ljava/lang/String;

    .line 862
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineUriId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 863
    const-string v1, "-"

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineUriId:Ljava/lang/String;

    .line 865
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMmsId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 866
    const-string v1, "-"

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMmsId:Ljava/lang/String;

    .line 868
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteVideoVid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineUriId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMmsId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->vinfo:Ljava/lang/String;

    .line 869
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_3

    .line 870
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 871
    .local v0, tempuri:Ljava/lang/String;
    const-string v1, "&"

    const-string v2, "}"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 872
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    iput-object v0, v1, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->ddurl:Ljava/lang/String;

    .line 873
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    iput-object v0, v1, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->playurl:Ljava/lang/String;

    .line 878
    .end local v0           #tempuri:Ljava/lang/String;
    :goto_1
    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    .line 879
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    const/16 v2, 0x320

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->rate:Ljava/lang/String;

    .line 883
    :goto_2
    iget-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPlayComplete:Z

    if-eqz v1, :cond_5

    .line 884
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoDuration:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->playedTime:Ljava/lang/String;

    .line 888
    :goto_3
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRecordStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->status:Ljava/lang/String;

    .line 889
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    iget-wide v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLoadingDuration:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->utime:Ljava/lang/String;

    .line 890
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/video/client/util/CommonUtil;->getDid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->did:Ljava/lang/String;

    .line 891
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    iget-object v3, v3, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->did:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->uuid:Ljava/lang/String;

    .line 892
    return-void

    .line 860
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteVideoCid:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->cid:Ljava/lang/String;

    goto/16 :goto_0

    .line 875
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    const-string v2, "-"

    iput-object v2, v1, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->ddurl:Ljava/lang/String;

    .line 876
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    const-string v2, "-"

    iput-object v2, v1, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->playurl:Ljava/lang/String;

    goto :goto_1

    .line 881
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    const/16 v2, 0x12c

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->rate:Ljava/lang/String;

    goto :goto_2

    .line 886
    :cond_5
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->playedTime:Ljava/lang/String;

    goto :goto_3
.end method

.method private setProgress()I
    .locals 3

    .prologue
    .line 951
    iget-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mShowing:Z

    if-nez v1, :cond_1

    .line 952
    :cond_0
    const/4 v1, 0x0

    .line 959
    :goto_0
    return v1

    .line 954
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isCurrentDlna()Z

    move-result v1

    if-nez v1, :cond_2

    .line 955
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 957
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    .line 958
    .local v0, duration:I
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    invoke-interface {v1, v2, v0}, Lcom/android/gallery3d/app/ControllerOverlay;->setTimes(II)V

    .line 959
    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    goto :goto_0
.end method

.method private startVideo()V
    .locals 4

    .prologue
    .line 965
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 966
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "rtsp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 967
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLoadingBeginTime:J

    .line 968
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->showLoading()V

    .line 969
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 970
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 974
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isCurrentDlna()Z

    move-result v0

    if-nez v0, :cond_2

    .line 975
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 980
    :goto_1
    return-void

    .line 972
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->showPlaying()V

    goto :goto_0

    .line 977
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    goto :goto_1
.end method

.method private stopDlnaPlay()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1637
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    invoke-virtual {v0, v2}, Landroid/media/dlna/DlnaClient;->stop(Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z

    .line 1638
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaIsPlaying:Z

    .line 1639
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaPlayState:I

    .line 1640
    sget-object v0, Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;->NATIVE_PLAY:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaMode:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    .line 1641
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay;->setIsDlnaMode(Z)V

    .line 1642
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    invoke-virtual {v0, v2}, Landroid/media/dlna/DlnaClient;->setPlaybackInfoListener(Landroid/media/dlna/DlnaClient$PlaybackInfoListener;)V

    .line 1643
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    .line 1644
    return-void
.end method

.method private storePlayHistory()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 667
    sget-boolean v0, Lcom/android/gallery3d/app/MovieActivityUtils;->sIsFromFile:Z

    if-nez v0, :cond_1

    .line 668
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSelectTimeText:I

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSaveTimeText:I

    .line 669
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSelectAudioTrackId:I

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSaveAudioTrackId:I

    .line 670
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 671
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    const v1, 0x1d4c0

    if-ge v0, v1, :cond_2

    .line 672
    iput v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 676
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z

    if-eqz v0, :cond_4

    .line 677
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayHistory:Lcom/android/gallery3d/data/PlayHistory;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineUriId:Ljava/lang/String;

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    iget v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSaveAudioTrackId:I

    iget v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSaveTimeText:I

    iget v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/data/PlayHistory;->store(Ljava/lang/String;IIII)V

    .line 679
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayHistoryDBHelper:Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteVideoCid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteVideoVid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineUriId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;->insertOrUpdatePlayHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_1
    :goto_1
    return-void

    .line 673
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    const/16 v1, 0x7530

    if-lt v0, v1, :cond_3

    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    add-int/lit16 v1, v1, -0x7530

    if-le v0, v1, :cond_0

    .line 674
    :cond_3
    iput v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    goto :goto_0

    .line 681
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayHistory:Lcom/android/gallery3d/data/PlayHistory;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    iget v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSaveAudioTrackId:I

    iget v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSaveTimeText:I

    iget v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/data/PlayHistory;->store(Ljava/lang/String;IIII)V

    goto :goto_1
.end method

.method private switchOnLineBitRate(I)V
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 414
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iput p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I

    .line 418
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I

    if-nez v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityUriList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 420
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityMmsList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMmsId:Ljava/lang/String;

    .line 425
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMediaIdList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineUriId:Ljava/lang/String;

    .line 426
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 427
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 428
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 429
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPrepared:Z

    .line 430
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 431
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 432
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/MoviePlayer;->realInit(Z)V

    goto :goto_0

    .line 422
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothUriList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 423
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothMmsList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMmsId:Ljava/lang/String;

    goto :goto_1
.end method

.method private updateDLNADevicesList()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1463
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    invoke-virtual {v0}, Landroid/media/dlna/DlnaClient;->listPlayers()Ljava/util/List;

    move-result-object v4

    .line 1464
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 1465
    sget-object v0, Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;->NATIVE_PLAY:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaMode:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    .line 1466
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/gallery3d/app/ControllerOverlay;->setDlnaDeviceCount(I)V

    .line 1467
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/gallery3d/app/ControllerOverlay;->setIsDlnaMode(Z)V

    move v0, v1

    .line 1489
    :goto_0
    return v0

    :cond_0
    move v3, v1

    .line 1471
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 1472
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/dlna/DlnaDevice;

    .line 1473
    iget-object v0, v0, Landroid/media/dlna/DlnaDevice;->deviceId:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentDevice:Landroid/media/dlna/DlnaDevice;

    iget-object v5, v5, Landroid/media/dlna/DlnaDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1474
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v3}, Lcom/android/gallery3d/app/ControllerOverlay;->selectDlnaDevice(I)V

    move v0, v2

    .line 1479
    :goto_2
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentDevice:Landroid/media/dlna/DlnaDevice;

    iget-object v0, v0, Landroid/media/dlna/DlnaDevice;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1480
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isCurrentDlna()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1481
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1482
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->stopDlnaPlay()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v0, v2

    .line 1489
    goto :goto_0

    .line 1471
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 1485
    :catch_0
    move-exception v0

    .line 1486
    const-string v2, "MoviePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDLNADeviceChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1487
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public broadcasePause()V
    .locals 3

    .prologue
    .line 800
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 801
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 802
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/MovieActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 803
    return-void
.end method

.method public checkHdmiState()V
    .locals 1

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    if-eqz v0, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->checkHdmiState()V

    .line 1199
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->invalidate()V

    .line 1200
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestLayout()V

    .line 1201
    return-void
.end method

.method public doDlnaSeek(J)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 1678
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    if-eqz v0, :cond_0

    .line 1679
    long-to-int v0, p1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 1680
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    invoke-virtual {v0, p1, p2}, Landroid/media/dlna/DlnaClient;->seek(J)Z

    .line 1682
    :cond_0
    return-void
.end method

.method public getAudioTrackCount()I
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getAudioTrackCount()I

    move-result v0

    return v0
.end method

.method public getAudioTrackName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->getAudioTrackName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getBufferPercentage()I

    move-result v0

    return v0
.end method

.method public getDeviceListName()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    invoke-virtual {v0}, Landroid/media/dlna/DlnaClient;->listPlayers()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1494
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1495
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1496
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 1497
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/dlna/DlnaDevice;

    .line 1498
    invoke-virtual {v1}, Landroid/media/dlna/DlnaDevice;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1496
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 1500
    :cond_0
    return-object v3
.end method

.method public getDlnaClientPos()I
    .locals 1

    .prologue
    .line 1674
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    return v0
.end method

.method public getIsPrepareFinish()Z
    .locals 1

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPrepared:Z

    return v0
.end method

.method public getIsSingleVideo()Z
    .locals 1

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSingleVideo:Z

    return v0
.end method

.method public getOnLineVideoCurIndex()I
    .locals 1

    .prologue
    .line 1110
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    return v0
.end method

.method public getTimeTextCount()I
    .locals 1

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getTimeTextCount()I

    move-result v0

    return v0
.end method

.method public getTimeTextName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->getTimeTextName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoCurPosition()J
    .locals 2

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getVideoDuration()J
    .locals 2

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getVideoUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getZoomLevelList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/high16 v2, 0x3ff0

    .line 1099
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getZoomLevelList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1100
    .local v0, zoomLevelList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Double;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1101
    iput-wide v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMaxZoomLevel:D

    .line 1102
    iput-wide v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMinZoomLevel:D

    .line 1107
    :goto_0
    return-object v0

    .line 1104
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMaxZoomLevel:D

    .line 1105
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMinZoomLevel:D

    goto :goto_0
.end method

.method public isCurrentDlna()Z
    .locals 2

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaMode:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    sget-object v1, Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;->DLNA_PLAYOUT:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    const/4 v2, 0x0

    .line 1012
    iput v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 1013
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsError:Z

    if-eqz v0, :cond_1

    .line 1014
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->finishVideo()V

    .line 1029
    :cond_0
    :goto_0
    return-void

    .line 1017
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPlayComplete:Z

    .line 1018
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSingleVideo:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->SINGLECYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    if-ne v0, v1, :cond_3

    :cond_2
    sget-boolean v0, Lcom/android/gallery3d/app/MovieActivityUtils;->sIsFromFile:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->NOMODE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->LISTCYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->getVideoCount()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1020
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->finishVideo()V

    goto :goto_0

    .line 1021
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->SINGLECYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    if-ne v0, v1, :cond_5

    .line 1022
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->seekTo(I)V

    .line 1023
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto :goto_0

    .line 1024
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->LISTCYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    if-ne v0, v1, :cond_6

    .line 1025
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->videoNext()V

    goto :goto_0

    .line 1026
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->ALLCYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    if-ne v0, v1, :cond_0

    .line 1027
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->videoNext()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 844
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 845
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayHistory:Lcom/android/gallery3d/data/PlayHistory;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/PlayHistory;->close()V

    .line 846
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayHistoryDBHelper:Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayHistoryDBHelper:Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;

    invoke-virtual {v0}, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;->close()V

    .line 849
    :cond_0
    sget-object v0, Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;->NATIVE_PLAY:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaMode:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    .line 850
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaPlayState:I

    .line 851
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    invoke-virtual {v0, v1}, Landroid/media/dlna/DlnaClient;->stop(Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z

    .line 852
    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    .line 853
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;->unregister()V

    .line 854
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "player"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 998
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1001
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsError:Z

    .line 1002
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z

    if-eqz v0, :cond_0

    .line 1003
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRecordStatus:I

    .line 1004
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->sendPlayRecordToLetv()V

    .line 1006
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay;->showErrorMessage(Ljava/lang/String;)V

    .line 1007
    const/4 v0, 0x0

    return v0
.end method

.method public onHidden()V
    .locals 1

    .prologue
    .line 1090
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mShowing:Z

    .line 1091
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v6, 0x3ea

    const/16 v5, 0x3e9

    const-wide/16 v3, 0x96

    const/4 v0, 0x1

    .line 1206
    const/16 v2, 0x18

    if-eq p1, v2, :cond_1

    const/16 v2, 0x19

    if-eq p1, v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-lt v2, v0, :cond_1

    .line 1208
    const/16 v2, 0x4f

    if-ne p1, v2, :cond_0

    .line 1209
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    const/16 v3, 0x3ed

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1210
    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHeadSetHookClick:I

    .line 1211
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mThrHeadSetClick:J

    .line 1212
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSecHeadSetClick:J

    .line 1213
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFirHeadSetClick:J

    .line 1301
    :cond_0
    :goto_0
    return v0

    .line 1217
    :cond_1
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1301
    goto :goto_0

    .line 1219
    :sswitch_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->mediaButton()V

    goto :goto_0

    .line 1223
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isCurrentDlna()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1224
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1225
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1226
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1228
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1229
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1232
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setDlnaPlayState()V

    goto :goto_0

    .line 1237
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isCurrentDlna()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1238
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1239
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1241
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setDlnaPlayState()V

    goto :goto_0

    .line 1247
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isCurrentDlna()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1248
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1249
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1251
    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setDlnaPlayState()V

    goto :goto_0

    .line 1257
    :sswitch_4
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    const/16 v2, 0x3ec

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1258
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    const/16 v2, 0x3ec

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1262
    :sswitch_5
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1263
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1267
    :sswitch_6
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v1}, Lcom/android/gallery3d/app/ControllerOverlay;->getSelectListShow()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1268
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v1, v0}, Lcom/android/gallery3d/app/ControllerOverlay;->hideSelectList(Z)V

    goto/16 :goto_0

    .line 1271
    :cond_6
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->finishVideo()V

    goto/16 :goto_0

    .line 1276
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isCurrentDlna()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1277
    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F

    const v2, 0x3d4ccccd

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F

    .line 1278
    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    .line 1279
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F

    .line 1281
    :cond_7
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F

    invoke-interface {v1, v2}, Lcom/android/gallery3d/app/ControllerOverlay;->setDlnaVolumeProgress(F)V

    goto/16 :goto_0

    .line 1283
    :cond_8
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v1, v0}, Lcom/android/gallery3d/app/ControllerOverlay;->setKeyVolumChange(Z)V

    goto/16 :goto_0

    .line 1289
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isCurrentDlna()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1290
    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F

    const v2, 0x3d4ccccd

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F

    .line 1291
    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_9

    .line 1292
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F

    .line 1294
    :cond_9
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F

    invoke-interface {v1, v2}, Lcom/android/gallery3d/app/ControllerOverlay;->setDlnaVolumeProgress(F)V

    goto/16 :goto_0

    .line 1296
    :cond_a
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v2, v1}, Lcom/android/gallery3d/app/ControllerOverlay;->setKeyVolumChange(Z)V

    goto/16 :goto_0

    .line 1217
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_6
        0x18 -> :sswitch_7
        0x19 -> :sswitch_8
        0x4f -> :sswitch_0
        0x55 -> :sswitch_1
        0x57 -> :sswitch_5
        0x58 -> :sswitch_4
        0x7e -> :sswitch_3
        0x7f -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1305
    invoke-static {p1}, Lcom/android/gallery3d/app/MoviePlayer;->isMediaKey(I)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 772
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 773
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPreNext:Z

    .line 774
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 775
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 776
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteBuffering:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteBuffering:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteBuffering:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->onPause()V

    .line 780
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->storePlayHistory()V

    .line 781
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPlayingBeforeOnPause:Z

    .line 782
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    .line 783
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x2bf20

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    .line 784
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    if-eqz v0, :cond_1

    .line 785
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    invoke-virtual {v0, v4}, Landroid/media/dlna/DlnaClient;->setPlaybackInfoListener(Landroid/media/dlna/DlnaClient$PlaybackInfoListener;)V

    .line 787
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 789
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z

    if-eqz v0, :cond_3

    .line 790
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsError:Z

    if-nez v0, :cond_3

    .line 791
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPlayComplete:Z

    if-eqz v0, :cond_2

    .line 792
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRecordStatus:I

    .line 794
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->sendPlayRecordToLetv()V

    .line 797
    :cond_3
    return-void
.end method

.method public onPlayPause()V
    .locals 1

    .prologue
    .line 1051
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isCurrentDlna()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1052
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 1055
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setDlnaPlayState()V

    .line 1063
    :goto_0
    return-void

    .line 1057
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1058
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    goto :goto_0

    .line 1060
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->playVideo()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 806
    iget-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    if-eqz v1, :cond_1

    .line 807
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->seekTo(I)V

    .line 808
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->resume()V

    .line 809
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    .line 811
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPlayingBeforeOnPause:Z

    if-nez v1, :cond_1

    .line 812
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    .line 815
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    if-eqz v1, :cond_2

    .line 816
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isCurrentDlna()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/gallery3d/app/ControllerOverlay;->setIsDlnaMode(Z)V

    .line 817
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v1}, Lcom/android/gallery3d/app/ControllerOverlay;->onResume()V

    .line 819
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/MoviePlayer;->initDlnaClient(Landroid/content/Context;)V

    .line 820
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 821
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "media.dlnaservice.action.devicesChanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 822
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 823
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 824
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 767
    const-string v0, "video-position"

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 768
    const-string v0, "resumeable-timeout"

    iget-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 769
    return-void
.end method

.method public onSeekEnd(I)V
    .locals 1
    .parameter "time"

    .prologue
    .line 1077
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    .line 1078
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 1079
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    .line 1080
    return-void
.end method

.method public onSeekMove(I)V
    .locals 1
    .parameter "time"

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 1073
    return-void
.end method

.method public onShown()V
    .locals 1

    .prologue
    .line 1084
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mShowing:Z

    .line 1085
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    .line 1086
    return-void
.end method

.method public onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V
    .locals 3
    .parameter "mp"
    .parameter "text"

    .prologue
    .line 1033
    if-nez p2, :cond_1

    .line 1034
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1043
    :cond_0
    :goto_0
    return-void

    .line 1037
    :cond_1
    invoke-virtual {p2}, Landroid/media/TimedText;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1038
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1039
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->formatTimeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1040
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeText:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public resetControllVolum()V
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->resetVolumeBar()V

    .line 1187
    return-void
.end method

.method public selectDlnaDevice(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1504
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    invoke-virtual {v0}, Landroid/media/dlna/DlnaClient;->listPlayers()Ljava/util/List;

    move-result-object v0

    .line 1505
    if-nez p1, :cond_1

    .line 1506
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    invoke-virtual {v0, v3}, Landroid/media/dlna/DlnaClient;->stop(Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1507
    const-string v0, "dlna"

    const-string v1, "selectDlnaDevice stop fail--->"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaPlayState:I

    .line 1510
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    invoke-virtual {v0, v3}, Landroid/media/dlna/DlnaClient;->setPlaybackInfoListener(Landroid/media/dlna/DlnaClient$PlaybackInfoListener;)V

    .line 1511
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0, v2}, Lcom/android/gallery3d/app/ControllerOverlay;->setIsDlnaMode(Z)V

    .line 1512
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0, v2}, Lcom/android/gallery3d/app/ControllerOverlay;->setDlnaVideoState(I)V

    .line 1513
    sget-object v0, Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;->NATIVE_PLAY:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaMode:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    .line 1514
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 1515
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 1516
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    .line 1517
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    invoke-interface {v1, v2, v0}, Lcom/android/gallery3d/app/ControllerOverlay;->setTimes(II)V

    .line 1518
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->showPlaying()V

    .line 1531
    :goto_0
    return-void

    .line 1520
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1521
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentDevice:Landroid/media/dlna/DlnaDevice;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/dlna/DlnaDevice;

    iget-object v0, v0, Landroid/media/dlna/DlnaDevice;->deviceId:Ljava/lang/String;

    iput-object v0, v1, Landroid/media/dlna/DlnaDevice;->deviceId:Ljava/lang/String;

    .line 1523
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentDevice:Landroid/media/dlna/DlnaDevice;

    iget-object v1, v1, Landroid/media/dlna/DlnaDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/dlna/DlnaClient;->selectPlayer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1524
    const-string v0, "dlna"

    const-string v1, "selectPlayer finish --->"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlaybackInfoListener:Landroid/media/dlna/DlnaClient$PlaybackInfoListener;

    invoke-virtual {v0, v1}, Landroid/media/dlna/DlnaClient;->setPlaybackInfoListener(Landroid/media/dlna/DlnaClient$PlaybackInfoListener;)V

    .line 1529
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->dlnaDoSetDataSourcePlay()V

    goto :goto_0

    .line 1526
    :cond_3
    const-string v0, "dlna"

    const-string v1, "selectPlayer fail --->"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setAudioTrackIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1125
    iput p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSelectAudioTrackId:I

    .line 1126
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getAudioTrackCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1127
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setAudioTrackIndex(I)Z

    .line 1130
    :cond_0
    return-void
.end method

.method public setBitrateIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1144
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 1145
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MoviePlayer;->switchOnLineBitRate(I)V

    .line 1147
    :cond_0
    return-void
.end method

.method public setDlnaVol(I)V
    .locals 2
    .parameter

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1686
    int-to-float v0, p1

    const v1, 0x461c4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F

    .line 1687
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F

    invoke-virtual {v0, v1}, Landroid/media/dlna/DlnaClient;->setVolume(F)Z

    .line 1688
    return-void
.end method

.method public setMeizuExt(Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;)V
    .locals 1
    .parameter "ext"

    .prologue
    .line 755
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    .line 756
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/app/ControllerOverlay;->setMeizuExt(Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;)V

    .line 757
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->setVideoTitle()V

    .line 758
    return-void
.end method

.method public setPlayMode(Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 599
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    .line 600
    return-void
.end method

.method public setSpdifStatus(Z)V
    .locals 1
    .parameter "status"

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setSpdifStatus(Z)V

    .line 1193
    :cond_0
    return-void
.end method

.method public setTimeTextIndex(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1133
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->getTimeTextCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSelectTimeText:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->closeTimeText(I)V

    .line 1135
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1136
    iput p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSelectTimeText:I

    .line 1141
    :goto_0
    return-void

    .line 1138
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSelectTimeText:I

    .line 1139
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setTimeTextIndex(I)V

    goto :goto_0
.end method

.method public setVideoZoomDamp(D)V
    .locals 2
    .parameter "value"

    .prologue
    .line 1164
    iget-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMaxZoomLevel:D

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMinZoomLevel:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    .line 1165
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLoopValue:D

    .line 1166
    const/4 v0, 0x3

    invoke-static {p1, p2, v0}, Lcom/android/gallery3d/app/MovieActivityUtils;->roundingLevel(DI)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mReboundLevel:D

    .line 1168
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1169
    return-void
.end method

.method public setVideoZoomLevel(DZ)V
    .locals 1
    .parameter "level"
    .parameter "isStepLess"

    .prologue
    .line 1176
    if-nez p3, :cond_0

    .line 1177
    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Lcom/android/gallery3d/app/MovieActivityUtils;->roundingLevel(DI)D

    move-result-wide p1

    .line 1181
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/VideoView;->setVideoZoomLevel(D)V

    .line 1182
    return-void

    .line 1179
    :cond_0
    const/4 v0, 0x3

    invoke-static {p1, p2, v0}, Lcom/android/gallery3d/app/MovieActivityUtils;->roundingLevel(DI)D

    move-result-wide p1

    goto :goto_0
.end method

.method public setVideoZoomType(Landroid/widget/VideoView$ZoomType;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setVideoZoomType(Landroid/widget/VideoView$ZoomType;)V

    .line 1173
    return-void
.end method

.method public upDataDeviceList(I)V
    .locals 2
    .parameter "deviceCount"

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    if-nez v0, :cond_0

    .line 1701
    :goto_0
    return-void

    .line 1694
    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->getSelectListShow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1695
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay;->hideSelectList(Z)V

    .line 1696
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->resetVolumeBar()V

    .line 1700
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/app/ControllerOverlay;->setDlnaDeviceCount(I)V

    goto :goto_0

    .line 1697
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->getSelectListShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1698
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->getDeviceListName()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay;->updateSelectList(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public videoNext()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 615
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSingleVideo:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->getVideoCount()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->ALLCYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    if-eq v0, v1, :cond_1

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z

    if-eqz v0, :cond_2

    .line 620
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPlayComplete:Z

    if-eq v0, v4, :cond_5

    .line 621
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRecordStatus:I

    .line 625
    :goto_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->sendPlayRecordToLetv()V

    .line 627
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->storePlayHistory()V

    .line 628
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 629
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 630
    iput-boolean v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPrepared:Z

    .line 631
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->initPreNextVideo()V

    .line 632
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPreNext:Z

    .line 634
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 635
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    .line 636
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z

    if-eqz v0, :cond_8

    .line 637
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I

    if-nez v0, :cond_6

    .line 638
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 639
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityUriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    .line 640
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityUriList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 642
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 643
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityMmsList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMmsId:Ljava/lang/String;

    .line 663
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v5}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 664
    invoke-direct {p0, v4}, Lcom/android/gallery3d/app/MoviePlayer;->realInit(Z)V

    goto/16 :goto_0

    .line 623
    :cond_5
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRecordStatus:I

    goto :goto_1

    .line 646
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 647
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothUriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    .line 648
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothUriList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 650
    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 651
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothMmsList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMmsId:Ljava/lang/String;

    goto :goto_2

    .line 655
    :cond_8
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFileUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 656
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFileUriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    .line 657
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFileUriList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 659
    :cond_9
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextPathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 660
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextTypeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 661
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextPathList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextTypeList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/app/MovieActivityUtils;->findSubTitleFromUri(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;)V

    goto :goto_2
.end method

.method public videoPrev()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 687
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->storePlayHistory()V

    .line 688
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 689
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSingleVideo:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->ALLCYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    if-nez v0, :cond_2

    .line 690
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isCurrentDlna()Z

    move-result v0

    if-nez v0, :cond_1

    .line 691
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v4}, Landroid/widget/VideoView;->seekTo(I)V

    .line 692
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 748
    :goto_0
    return-void

    .line 694
    :cond_1
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/app/MoviePlayer;->doDlnaSeek(J)V

    goto :goto_0

    .line 698
    :cond_2
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z

    if-eqz v0, :cond_3

    .line 699
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPlayComplete:Z

    if-eq v0, v5, :cond_7

    .line 700
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRecordStatus:I

    .line 704
    :goto_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->sendPlayRecordToLetv()V

    .line 706
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 707
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPrepared:Z

    .line 708
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->initPreNextVideo()V

    .line 709
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 710
    iput-boolean v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPreNext:Z

    .line 711
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 712
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    .line 713
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z

    if-eqz v0, :cond_b

    .line 714
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I

    if-nez v0, :cond_8

    .line 715
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 716
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    if-gez v0, :cond_4

    .line 717
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    .line 719
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityUriList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 721
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 722
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityMmsList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMmsId:Ljava/lang/String;

    .line 746
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v4}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 747
    invoke-direct {p0, v5}, Lcom/android/gallery3d/app/MoviePlayer;->realInit(Z)V

    goto :goto_0

    .line 702
    :cond_7
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRecordStatus:I

    goto :goto_1

    .line 725
    :cond_8
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 726
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    if-gez v0, :cond_9

    .line 727
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    .line 729
    :cond_9
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothUriList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 731
    :cond_a
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 732
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothMmsList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMmsId:Ljava/lang/String;

    goto :goto_2

    .line 736
    :cond_b
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFileUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 737
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    if-gez v0, :cond_c

    .line 738
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFileUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    .line 740
    :cond_c
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFileUriList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 742
    :cond_d
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextPathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 743
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextTypeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 744
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextPathList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextTypeList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/app/MovieActivityUtils;->findSubTitleFromUri(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;)V

    goto/16 :goto_2
.end method
