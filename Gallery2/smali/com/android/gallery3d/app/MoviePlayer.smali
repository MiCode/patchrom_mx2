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

.field private mIsM040:Z

.field private mIsOnLineVideo:Z

.field private mIsPlayComplete:Z

.field private mIsPlayingBeforeOnPause:Z

.field private mIsPreNext:Z

.field private mIsPrepared:Z

.field private mIsSeekToTail:Z

.field private mIsSilent:Z

.field private mIsSingleVideo:Z

.field private mLoadingBeginTime:J

.field private mLoadingDuration:J

.field private mLoopValue:D

.field private mMaxZoomLevel:D

.field private mMinZoomLevel:D

.field private mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

.field private mMsgHandler:Landroid/os/Handler;

.field private mOnLineHeadDuration:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

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

.field private mOnLineTailDuration:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mOnLineUriId:Ljava/lang/String;

.field private mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

.field private mOnLineVideoTailPositon:I

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
.method public constructor <init>(Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;ILjava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Z)V
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
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
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
    .line 416
    .local p5, headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, onLineHeadDuration:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p7, onLineTailDuration:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p8, highQuality:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p9, smooth:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p10, highMmsId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p11, smoothMmsId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p12, mediaId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const-string v1, ""

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineUriId:Ljava/lang/String;

    .line 115
    const-string v1, ""

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMmsId:Ljava/lang/String;

    .line 120
    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    .line 121
    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLoadingBeginTime:J

    .line 122
    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLoadingDuration:J

    .line 123
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 124
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoDuration:I

    .line 125
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoTailPositon:I

    .line 126
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCachedPosition:J

    .line 127
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    .line 128
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHeadSetHookClick:I

    .line 129
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSaveAudioTrackId:I

    .line 130
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSaveTimeText:I

    .line 131
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I

    .line 132
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRecordStatus:I

    .line 133
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSelectTimeText:I

    .line 134
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSelectAudioTrackId:I

    .line 135
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFirHeadSetClick:J

    .line 136
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSecHeadSetClick:J

    .line 137
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mThrHeadSetClick:J

    .line 138
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F

    .line 139
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mReboundLevel:D

    .line 140
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLoopValue:D

    .line 141
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMaxZoomLevel:D

    .line 142
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMinZoomLevel:D

    .line 143
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 145
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSilent:Z

    .line 146
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mShowing:Z

    .line 147
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPreNext:Z

    .line 148
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPrepared:Z

    .line 149
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPlayingBeforeOnPause:Z

    .line 150
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z

    .line 151
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSingleVideo:Z

    .line 152
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaIsPlaying:Z

    .line 153
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsError:Z

    .line 154
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPlayComplete:Z

    .line 155
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCachedRemotePlaying:Z

    .line 156
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSeekToTail:Z

    .line 157
    sget-object v1, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsM040:Z

    .line 158
    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->LISTCYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    .line 159
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaPlayState:I

    .line 161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextPathList:Ljava/util/ArrayList;

    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextTypeList:Ljava/util/ArrayList;

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFileUriList:Ljava/util/ArrayList;

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHeadDuration:Ljava/util/ArrayList;

    .line 165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineTailDuration:Ljava/util/ArrayList;

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityUriList:Ljava/util/ArrayList;

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothUriList:Ljava/util/ArrayList;

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityMmsList:Ljava/util/ArrayList;

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothMmsList:Ljava/util/ArrayList;

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMediaIdList:Ljava/util/ArrayList;

    .line 178
    new-instance v1, Landroid/media/dlna/DlnaDevice;

    invoke-direct {v1}, Landroid/media/dlna/DlnaDevice;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentDevice:Landroid/media/dlna/DlnaDevice;

    .line 181
    const-string v1, ""

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteVideoCid:Ljava/lang/String;

    .line 182
    const-string v1, ""

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteVideoVid:Ljava/lang/String;

    .line 189
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$1;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    .line 202
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$2;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$2;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    .line 258
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$6;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$6;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaHandler:Landroid/os/Handler;

    .line 305
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteBuffering:Landroid/app/ProgressDialog;

    .line 306
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$7;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$7;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDimissRemoteBuffering:Ljava/lang/Runnable;

    .line 313
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$8;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$8;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mShowRemoteBuffering:Ljava/lang/Runnable;

    .line 335
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$9;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$9;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    .line 554
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$13;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$13;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    .line 986
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$15;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$15;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaReceiver:Landroid/content/BroadcastReceiver;

    .line 1608
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$18;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$18;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlaybackInfoListener:Landroid/media/dlna/DlnaClient$PlaybackInfoListener;

    .line 417
    new-instance v2, Lcom/android/gallery3d/data/PlayHistory;

    invoke-virtual {p2}, Lcom/android/gallery3d/app/MovieActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, v1}, Lcom/android/gallery3d/data/PlayHistory;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayHistory:Lcom/android/gallery3d/data/PlayHistory;

    .line 418
    new-instance v1, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;

    invoke-direct {v1, p2}, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayHistoryDBHelper:Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;

    .line 419
    new-instance v1, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    invoke-direct {v1}, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    .line 420
    iput-object p2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    .line 421
    invoke-virtual {p2}, Lcom/android/gallery3d/app/MovieActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/GalleryApp;

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 422
    const v1, 0x7f0d00eb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    .line 423
    const v1, 0x7f0d00ec

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeText:Landroid/widget/TextView;

    .line 424
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextPathList:Ljava/util/ArrayList;

    .line 425
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextTypeList:Ljava/util/ArrayList;

    .line 426
    iput-object p5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHeaders:Ljava/util/HashMap;

    .line 427
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFileUriList:Ljava/util/ArrayList;

    .line 428
    iput-object p4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineUriId:Ljava/lang/String;

    .line 429
    iput p3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    .line 430
    iput-object p8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityUriList:Ljava/util/ArrayList;

    .line 431
    iput-object p9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothUriList:Ljava/util/ArrayList;

    .line 432
    iput-object p10, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityMmsList:Ljava/util/ArrayList;

    .line 433
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothMmsList:Ljava/util/ArrayList;

    .line 434
    iput-object p6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHeadDuration:Ljava/util/ArrayList;

    .line 435
    iput-object p7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineTailDuration:Ljava/util/ArrayList;

    .line 436
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMediaIdList:Ljava/util/ArrayList;

    .line 437
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z

    .line 438
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSingleVideo:Z

    .line 439
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteVideoCid:Ljava/lang/String;

    .line 440
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteVideoVid:Ljava/lang/String;

    .line 441
    new-instance v2, Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSingleVideo:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const/4 v4, 0x1

    invoke-direct {v2, v3, v1, v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;-><init>(Landroid/content/Context;ZZ)V

    iput-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    .line 442
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;-><init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    .line 443
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;->register()V

    .line 444
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v1}, Lcom/android/gallery3d/app/ControllerOverlay;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 445
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->initMoviePlayer()V

    .line 446
    return-void

    .line 441
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
    .line 448
    .local p4, headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, timeTextPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p6, timeTextType:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p7, uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineUriId:Ljava/lang/String;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMmsId:Ljava/lang/String;

    .line 120
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    .line 121
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLoadingBeginTime:J

    .line 122
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLoadingDuration:J

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoDuration:I

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoTailPositon:I

    .line 126
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCachedPosition:J

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHeadSetHookClick:I

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSaveAudioTrackId:I

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSaveTimeText:I

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I

    .line 132
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRecordStatus:I

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSelectTimeText:I

    .line 134
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSelectAudioTrackId:I

    .line 135
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFirHeadSetClick:J

    .line 136
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSecHeadSetClick:J

    .line 137
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mThrHeadSetClick:J

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F

    .line 139
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mReboundLevel:D

    .line 140
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLoopValue:D

    .line 141
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMaxZoomLevel:D

    .line 142
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMinZoomLevel:D

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSilent:Z

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mShowing:Z

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPreNext:Z

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPrepared:Z

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPlayingBeforeOnPause:Z

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSingleVideo:Z

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaIsPlaying:Z

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsError:Z

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPlayComplete:Z

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCachedRemotePlaying:Z

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSeekToTail:Z

    .line 157
    sget-object v0, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsM040:Z

    .line 158
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->LISTCYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    .line 159
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaPlayState:I

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextPathList:Ljava/util/ArrayList;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextTypeList:Ljava/util/ArrayList;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFileUriList:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHeadDuration:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineTailDuration:Ljava/util/ArrayList;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityUriList:Ljava/util/ArrayList;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothUriList:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityMmsList:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothMmsList:Ljava/util/ArrayList;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMediaIdList:Ljava/util/ArrayList;

    .line 178
    new-instance v0, Landroid/media/dlna/DlnaDevice;

    invoke-direct {v0}, Landroid/media/dlna/DlnaDevice;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentDevice:Landroid/media/dlna/DlnaDevice;

    .line 181
    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteVideoCid:Ljava/lang/String;

    .line 182
    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteVideoVid:Ljava/lang/String;

    .line 189
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MoviePlayer$1;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    .line 202
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MoviePlayer$2;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    .line 258
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$6;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MoviePlayer$6;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaHandler:Landroid/os/Handler;

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteBuffering:Landroid/app/ProgressDialog;

    .line 306
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$7;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MoviePlayer$7;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDimissRemoteBuffering:Ljava/lang/Runnable;

    .line 313
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$8;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MoviePlayer$8;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mShowRemoteBuffering:Ljava/lang/Runnable;

    .line 335
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$9;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MoviePlayer$9;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    .line 554
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$13;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MoviePlayer$13;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    .line 986
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$15;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MoviePlayer$15;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaReceiver:Landroid/content/BroadcastReceiver;

    .line 1608
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$18;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MoviePlayer$18;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlaybackInfoListener:Landroid/media/dlna/DlnaClient$PlaybackInfoListener;

    .line 449
    new-instance v1, Lcom/android/gallery3d/data/PlayHistory;

    invoke-virtual {p2}, Lcom/android/gallery3d/app/MovieActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/data/PlayHistory;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayHistory:Lcom/android/gallery3d/data/PlayHistory;

    .line 450
    invoke-virtual {p2}, Lcom/android/gallery3d/app/MovieActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 451
    iput-object p2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    .line 452
    const v0, 0x7f0d00eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    .line 453
    const v0, 0x7f0d00ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeText:Landroid/widget/TextView;

    .line 454
    iput-object p5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextPathList:Ljava/util/ArrayList;

    .line 455
    iput-object p6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextTypeList:Ljava/util/ArrayList;

    .line 456
    iput-object p7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFileUriList:Ljava/util/ArrayList;

    .line 457
    iput-object p3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 458
    iput-object p4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHeaders:Ljava/util/HashMap;

    .line 459
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z

    .line 460
    iput-boolean p8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSingleVideo:Z

    .line 461
    new-instance v0, Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    .line 462
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;-><init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    .line 463
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;->register()V

    .line 464
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 465
    sget-boolean v0, Lcom/android/gallery3d/app/MovieActivityUtils;->sIsFromFile:Z

    if-nez v0, :cond_0

    .line 466
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->findCurUriIndex()V

    .line 468
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->initMoviePlayer()V

    .line 469
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/MoviePlayer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLoadingDuration:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/gallery3d/app/MoviePlayer;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLoadingDuration:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/MoviePlayer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MoviePlayer;->realInit(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/MoviePlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCachedRemotePlaying:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/gallery3d/app/MoviePlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCachedRemotePlaying:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaPlayState:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/gallery3d/app/MoviePlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaPlayState:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDimissRemoteBuffering:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/media/dlna/DlnaClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/app/MoviePlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaIsPlaying:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/gallery3d/app/MoviePlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaIsPlaying:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;)Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaMode:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/MoviePlayer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLoadingBeginTime:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/app/MoviePlayer;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F

    return v0
.end method

.method static synthetic access$2002(Lcom/android/gallery3d/app/MoviePlayer;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F

    return p1
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteBuffering:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/gallery3d/app/MoviePlayer;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteBuffering:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->doDlnaPause()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/app/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$2402(Lcom/android/gallery3d/app/MoviePlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSeekToTail:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/app/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoDuration:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/gallery3d/app/MoviePlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoDuration:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/gallery3d/app/MoviePlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityUriList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothUriList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/gallery3d/app/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/MoviePlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPrepared:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/gallery3d/app/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/gallery3d/app/MoviePlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPrepared:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineTailDuration:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/gallery3d/app/MoviePlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoTailPositon:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextPathList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextTypeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/gallery3d/app/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSaveTimeText:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/gallery3d/app/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSaveAudioTrackId:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/gallery3d/app/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    return v0
.end method

.method static synthetic access$3702(Lcom/android/gallery3d/app/MoviePlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setDlnaPlayState()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/gallery3d/app/MoviePlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRecordStatus:I

    return p1
.end method

.method static synthetic access$4102(Lcom/android/gallery3d/app/MoviePlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHeadSetHookClick:I

    return p1
.end method

.method static synthetic access$4202(Lcom/android/gallery3d/app/MoviePlayer;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFirHeadSetClick:J

    return-wide p1
.end method

.method static synthetic access$4302(Lcom/android/gallery3d/app/MoviePlayer;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSecHeadSetClick:J

    return-wide p1
.end method

.method static synthetic access$4400(Lcom/android/gallery3d/app/MoviePlayer;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mReboundLevel:D

    return-wide v0
.end method

.method static synthetic access$4402(Lcom/android/gallery3d/app/MoviePlayer;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mReboundLevel:D

    return-wide p1
.end method

.method static synthetic access$4418(Lcom/android/gallery3d/app/MoviePlayer;D)D
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mReboundLevel:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mReboundLevel:D

    return-wide v0
.end method

.method static synthetic access$4426(Lcom/android/gallery3d/app/MoviePlayer;D)D
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mReboundLevel:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mReboundLevel:D

    return-wide v0
.end method

.method static synthetic access$4500(Lcom/android/gallery3d/app/MoviePlayer;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMaxZoomLevel:D

    return-wide v0
.end method

.method static synthetic access$4600(Lcom/android/gallery3d/app/MoviePlayer;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLoopValue:D

    return-wide v0
.end method

.method static synthetic access$4602(Lcom/android/gallery3d/app/MoviePlayer;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLoopValue:D

    return-wide p1
.end method

.method static synthetic access$4700(Lcom/android/gallery3d/app/MoviePlayer;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMinZoomLevel:D

    return-wide v0
.end method

.method static synthetic access$4800(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->addUserAgent()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/gallery3d/app/MoviePlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->updateDLNADevicesList()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/OnLineVideoPlayRecord;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->stopDlnaPlay()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/gallery3d/app/MoviePlayer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCachedPosition:J

    return-wide v0
.end method

.method static synthetic access$5202(Lcom/android/gallery3d/app/MoviePlayer;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCachedPosition:J

    return-wide p1
.end method

.method static synthetic access$5300(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->dlnaPlayComplete()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mShowRemoteBuffering:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/widget/VideoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->showTimeoutAlertDialog()V

    return-void
.end method

.method private addUserAgent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 521
    const/4 v1, 0x0

    .line 522
    .local v1, request:Lorg/apache/http/client/methods/HttpHead;
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/gallery3d/app/MoviePlayer;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Proxy;->getPreferredHttpHost(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpHost;

    move-result-object v0

    .line 523
    .local v0, proxy:Lorg/apache/http/HttpHost;
    if-eqz v0, :cond_0

    .line 524
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/gallery3d/app/MoviePlayer;->getHostAndNewUrl(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 525
    .local v2, result:[Ljava/lang/String;
    new-instance v1, Lorg/apache/http/client/methods/HttpHead;

    .end local v1           #request:Lorg/apache/http/client/methods/HttpHead;
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-direct {v1, v3}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    .line 526
    .restart local v1       #request:Lorg/apache/http/client/methods/HttpHead;
    aget-object v3, v2, v5

    if-eqz v3, :cond_0

    .line 527
    const-string v3, "X-Online-Host"

    aget-object v4, v2, v5

    invoke-virtual {v1, v3, v4}, Lorg/apache/http/client/methods/HttpHead;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHeaders:Ljava/util/HashMap;

    const-string v4, "X-Online-Host"

    aget-object v5, v2, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    .end local v2           #result:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private completePlayVideo()V
    .locals 4

    .prologue
    .line 1174
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsError:Z

    if-eqz v0, :cond_1

    .line 1175
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->finishVideo()V

    .line 1194
    :cond_0
    :goto_0
    return-void

    .line 1178
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 1179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPlayComplete:Z

    .line 1180
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSingleVideo:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->SINGLECYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    if-ne v0, v1, :cond_3

    :cond_2
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

    .line 1182
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->finishVideo()V

    goto :goto_0

    .line 1183
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->SINGLECYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    if-ne v0, v1, :cond_6

    .line 1184
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z

    if-eqz v0, :cond_5

    .line 1185
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHeadDuration:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 1187
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 1188
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto :goto_0

    .line 1189
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->LISTCYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    if-ne v0, v1, :cond_7

    .line 1190
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->videoNext()V

    goto :goto_0

    .line 1191
    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->ALLCYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    if-ne v0, v1, :cond_0

    .line 1192
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->videoNext()V

    goto :goto_0
.end method

.method private dlnaDoSetDataSourcePlay()V
    .locals 2

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$19;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$19;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/dlna/DlnaClient;->stop(Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z

    .line 1842
    return-void
.end method

.method private dlnaPlayComplete()V
    .locals 3

    .prologue
    .line 1571
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 1572
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

    .line 1574
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->finishVideo()V

    .line 1606
    :cond_1
    :goto_0
    return-void

    .line 1575
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->SINGLECYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    if-ne v0, v1, :cond_3

    .line 1576
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/dlna/DlnaClient;->seek(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1577
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$17;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$17;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/dlna/DlnaClient;->play(Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z

    goto :goto_0

    .line 1601
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->LISTCYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    if-ne v0, v1, :cond_4

    .line 1602
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->videoNext()V

    goto :goto_0

    .line 1603
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->ALLCYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    if-ne v0, v1, :cond_1

    .line 1604
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->videoNext()V

    goto :goto_0
.end method

.method private doDlnaPause()V
    .locals 4

    .prologue
    .line 1893
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    if-eqz v0, :cond_0

    .line 1894
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$21;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$21;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/dlna/DlnaClient;->pause(Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1908
    const-string v0, "dlna"

    const-string v1, "pause fail--->:"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1910
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->stopDlnaPlay()V

    .line 1913
    :cond_0
    return-void
.end method

.method private doPlayDlna()V
    .locals 4

    .prologue
    .line 1845
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    if-eqz v0, :cond_0

    .line 1846
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$20;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$20;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/dlna/DlnaClient;->play(Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1868
    const-string v0, "dlna"

    const-string v1, "play fail--->:"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1870
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->stopDlnaPlay()V

    .line 1873
    :cond_0
    return-void
.end method

.method private encodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "path"

    .prologue
    const/16 v10, 0x7c

    const/16 v9, 0x5d

    const/16 v8, 0x5b

    .line 494
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 496
    .local v2, chars:[C
    const/4 v5, 0x0

    .line 497
    .local v5, needed:Z
    move-object v0, v2

    .local v0, arr$:[C
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-char v1, v0, v3

    .line 498
    .local v1, c:C
    if-eq v1, v8, :cond_0

    if-eq v1, v9, :cond_0

    if-ne v1, v10, :cond_2

    .line 499
    :cond_0
    const/4 v5, 0x1

    .line 503
    .end local v1           #c:C
    :cond_1
    if-nez v5, :cond_3

    .line 517
    .end local p1
    :goto_1
    return-object p1

    .line 497
    .restart local v1       #c:C
    .restart local p1
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 507
    .end local v1           #c:C
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 508
    .local v6, sb:Ljava/lang/StringBuilder;
    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_6

    aget-char v1, v0, v3

    .line 509
    .restart local v1       #c:C
    if-eq v1, v8, :cond_4

    if-eq v1, v9, :cond_4

    if-ne v1, v10, :cond_5

    .line 510
    :cond_4
    const/16 v7, 0x25

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 511
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 513
    :cond_5
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 517
    .end local v1           #c:C
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method private findCurUriIndex()V
    .locals 3

    .prologue
    .line 724
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 725
    .local v1, str:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFileUriList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFileUriList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 726
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFileUriList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 727
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFileUriList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 728
    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    .line 735
    .end local v0           #i:I
    :cond_0
    :goto_1
    return-void

    .line 726
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 733
    .end local v0           #i:I
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    goto :goto_1
.end method

.method private final getHostAndNewUrl(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .parameter "url"
    .parameter "proxyHost"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 479
    :try_start_0
    const-string v4, "://"

    .line 480
    .local v4, signFirst:Ljava/lang/String;
    const-string v5, "/"

    .line 481
    .local v5, signSlash:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int v2, v7, v8

    .line 482
    .local v2, nPosFirst:I
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 483
    .local v3, nPosSecond:I
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 485
    .local v1, host:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {p1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 486
    .local v6, strUrl:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 487
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    aput-object v6, v7, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    .end local v1           #host:Ljava/lang/String;
    .end local v2           #nPosFirst:I
    .end local v3           #nPosSecond:I
    .end local v4           #signFirst:Ljava/lang/String;
    .end local v5           #signSlash:Ljava/lang/String;
    .end local v6           #strUrl:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 491
    new-array v7, v11, [Ljava/lang/String;

    aput-object p1, v7, v9

    aput-object p1, v7, v10

    goto :goto_0
.end method

.method private getVideoCount()I
    .locals 2

    .prologue
    .line 741
    const/4 v0, 0x0

    .line 742
    .local v0, videocount:I
    iget-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z

    if-eqz v1, :cond_1

    .line 743
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityUriList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 744
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityUriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 751
    :goto_0
    return v0

    .line 746
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothUriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 749
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFileUriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method private initDlnaClient(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1678
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    if-nez v1, :cond_1

    .line 1679
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    check-cast v1, Lcom/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/GalleryAppImpl;->getDlnaClient()Landroid/media/dlna/DlnaClient;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    .line 1692
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    invoke-virtual {v1}, Landroid/media/dlna/DlnaClient;->listPlayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1693
    .local v0, dlnaDeviceCount:I
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    if-eqz v1, :cond_0

    .line 1694
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v1, v0}, Lcom/android/gallery3d/app/ControllerOverlay;->setDlnaDeviceCount(I)V

    .line 1696
    :cond_0
    return-void

    .line 1681
    .end local v0           #dlnaDeviceCount:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isCurrentDlna()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1682
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlaybackInfoListener:Landroid/media/dlna/DlnaClient$PlaybackInfoListener;

    invoke-virtual {v1, v2}, Landroid/media/dlna/DlnaClient;->setPlaybackInfoListener(Landroid/media/dlna/DlnaClient$PlaybackInfoListener;)V

    .line 1683
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    invoke-virtual {v1}, Landroid/media/dlna/DlnaClient;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1684
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/gallery3d/app/ControllerOverlay;->setDlnaVideoState(I)V

    goto :goto_0

    .line 1686
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/gallery3d/app/ControllerOverlay;->setDlnaVideoState(I)V

    goto :goto_0

    .line 1689
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/dlna/DlnaClient;->setPlaybackInfoListener(Landroid/media/dlna/DlnaClient$PlaybackInfoListener;)V

    goto :goto_0
.end method

.method private initHistoryEntry()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x3e8

    const/4 v2, -0x1

    .line 693
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayHistory:Lcom/android/gallery3d/data/PlayHistory;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineUriId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/PlayHistory;->lookup(Ljava/lang/String;)Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHistoryEntry:Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;

    .line 698
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHistoryEntry:Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;

    if-nez v0, :cond_2

    .line 699
    iput v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSelectAudioTrackId:I

    .line 700
    iput v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSelectTimeText:I

    .line 701
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHeadDuration:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    mul-long/2addr v0, v3

    long-to-int v0, v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 706
    :goto_1
    iput v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I

    .line 722
    :goto_2
    return-void

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayHistory:Lcom/android/gallery3d/data/PlayHistory;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/PlayHistory;->lookup(Ljava/lang/String;)Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHistoryEntry:Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;

    goto :goto_0

    .line 704
    :cond_1
    iput v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    goto :goto_1

    .line 708
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHistoryEntry:Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;

    iget v0, v0, Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;->audioTrack:I

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSaveAudioTrackId:I

    .line 709
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHistoryEntry:Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;

    iget v0, v0, Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;->textTrack:I

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSaveTimeText:I

    .line 710
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHistoryEntry:Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;

    iget v0, v0, Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;->position:I

    if-gtz v0, :cond_3

    .line 711
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHeadDuration:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    mul-long/2addr v0, v3

    long-to-int v0, v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 719
    :goto_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHistoryEntry:Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;

    iget v0, v0, Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;->quality:I

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I

    goto :goto_2

    .line 713
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHistoryEntry:Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;

    iget v0, v0, Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;->position:I

    if-lez v0, :cond_4

    .line 714
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHistoryEntry:Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;

    iget v0, v0, Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;->position:I

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    goto :goto_3

    .line 716
    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    goto :goto_3
.end method

.method private initMoviePlayer()V
    .locals 2

    .prologue
    .line 344
    sget-object v0, Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;->NATIVE_PLAY:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaMode:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    .line 345
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MoviePlayer;->realInit(Z)V

    .line 346
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$10;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$10;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 355
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$11;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$11;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 362
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$12;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$12;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 414
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->broadcasePause()V

    .line 415
    return-void
.end method

.method private static isMediaKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 1541
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

    .line 1076
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHeadSetHookClick:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHeadSetHookClick:I

    .line 1077
    const-string v0, "MoviePlayer"

    const-string v1, "mediaButton"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
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

    .line 1079
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHeadSetHookClick:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1080
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1081
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1082
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

    .line 1083
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFirHeadSetClick:J

    .line 1084
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1085
    iput v6, v0, Landroid/os/Message;->what:I

    .line 1086
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1109
    :cond_0
    :goto_0
    return-void

    .line 1087
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHeadSetHookClick:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1088
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSecHeadSetClick:J

    .line 1089
    iget-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSecHeadSetClick:J

    iget-wide v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFirHeadSetClick:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1091
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1092
    iput v7, v0, Landroid/os/Message;->what:I

    .line 1093
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1095
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHeadSetHookClick:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1096
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mThrHeadSetClick:J

    .line 1097
    iget-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mThrHeadSetClick:J

    iget-wide v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSecHeadSetClick:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    .line 1098
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1099
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1100
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1101
    iput v10, v0, Landroid/os/Message;->what:I

    .line 1102
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1104
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHeadSetHookClick:I

    .line 1105
    iput-wide v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mThrHeadSetClick:J

    .line 1106
    iput-wide v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSecHeadSetClick:J

    .line 1107
    iput-wide v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFirHeadSetClick:J

    goto :goto_0
.end method

.method private realInit(Z)V
    .locals 4
    .parameter "initHistory"

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isCurrentDlna()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 660
    const-string v1, "dlna"

    const-string v2, "realInit is dlna --->"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->dlnaDoSetDataSourcePlay()V

    .line 663
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v1, p0}, Lcom/android/gallery3d/app/ControllerOverlay;->setListener(Lcom/android/gallery3d/app/ControllerOverlay$Listener;)V

    .line 664
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 665
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 666
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V

    .line 667
    iget-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z

    if-eqz v1, :cond_1

    .line 668
    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 669
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothUriList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 670
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothMmsList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMmsId:Ljava/lang/String;

    .line 675
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMediaIdList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineUriId:Ljava/lang/String;

    .line 677
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, scheme:Ljava/lang/String;
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "rtsp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 679
    :cond_2
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$14;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$14;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MoviePlayer$14;->start()V

    .line 685
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHeaders:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 686
    if-eqz p1, :cond_4

    .line 687
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->initHistoryEntry()V

    .line 689
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->startVideo()V

    .line 690
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v1}, Lcom/android/gallery3d/app/ControllerOverlay;->setVideoTitle()V

    .line 691
    return-void

    .line 672
    .end local v0           #scheme:Ljava/lang/String;
    :cond_5
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityUriList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 673
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityMmsList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMmsId:Ljava/lang/String;

    goto :goto_0
.end method

.method private sendPlayRecordToLetv()V
    .locals 3

    .prologue
    .line 1059
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setPlayRecordValue()V

    .line 1060
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPlayComplete:Z

    .line 1061
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

    .line 1062
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    iget-object v0, v0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->did:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1063
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$16;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MoviePlayer$16;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer$16;->start()V

    .line 1073
    :cond_0
    return-void
.end method

.method private setDlnaPlayState()V
    .locals 2

    .prologue
    .line 1943
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaIsPlaying:Z

    if-eqz v0, :cond_0

    .line 1944
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay;->setDlnaVideoState(I)V

    .line 1945
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->doDlnaPause()V

    .line 1950
    :goto_0
    return-void

    .line 1947
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay;->setDlnaVideoState(I)V

    .line 1948
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->doPlayDlna()V

    goto :goto_0
.end method

.method private setPlayRecordValue()V
    .locals 5

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteVideoCid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1022
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    const-string v1, "-"

    iput-object v1, v0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->cid:Ljava/lang/String;

    .line 1026
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineUriId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    const-string v0, "-"

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineUriId:Ljava/lang/String;

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMmsId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1030
    const-string v0, "-"

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMmsId:Ljava/lang/String;

    .line 1032
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteVideoVid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineUriId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMmsId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->vinfo:Ljava/lang/String;

    .line 1033
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 1034
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1035
    const-string v1, "&"

    const-string v2, "}"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1036
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    iput-object v0, v1, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->ddurl:Ljava/lang/String;

    .line 1037
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    iput-object v0, v1, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->playurl:Ljava/lang/String;

    .line 1042
    :goto_1
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 1043
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    const/16 v1, 0x320

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->rate:Ljava/lang/String;

    .line 1047
    :goto_2
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPlayComplete:Z

    if-eqz v0, :cond_5

    .line 1048
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoDuration:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->playedTime:Ljava/lang/String;

    .line 1052
    :goto_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRecordStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->status:Ljava/lang/String;

    .line 1053
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    iget-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLoadingDuration:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->utime:Ljava/lang/String;

    .line 1054
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/video/client/util/CommonUtil;->getDid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->did:Ljava/lang/String;

    .line 1055
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    iget-object v2, v2, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->did:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->uuid:Ljava/lang/String;

    .line 1056
    return-void

    .line 1024
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteVideoCid:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->cid:Ljava/lang/String;

    goto/16 :goto_0

    .line 1039
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    const-string v1, "-"

    iput-object v1, v0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->ddurl:Ljava/lang/String;

    .line 1040
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    const-string v1, "-"

    iput-object v1, v0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->playurl:Ljava/lang/String;

    goto :goto_1

    .line 1045
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->rate:Ljava/lang/String;

    goto :goto_2

    .line 1050
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->playedTime:Ljava/lang/String;

    goto :goto_3
.end method

.method private setProgress()I
    .locals 3

    .prologue
    .line 1115
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPrepared:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isSeeking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1116
    :cond_0
    const/4 v0, 0x0

    .line 1127
    :goto_0
    return v0

    .line 1118
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isCurrentDlna()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1119
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 1120
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoTailPositon:I

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSeekToTail:Z

    if-nez v0, :cond_2

    .line 1121
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoTailPositon:I

    sub-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x3e8

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 1122
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->completePlayVideo()V

    .line 1126
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoDuration:I

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/app/ControllerOverlay;->setTimes(II)V

    .line 1127
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    goto :goto_0
.end method

.method private showTimeoutAlertDialog()V
    .locals 3

    .prologue
    .line 227
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    const v2, 0x1030323

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 228
    .local v0, timeoutDialog:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 229
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$3;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$3;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 236
    const v1, 0x7f0a01c8

    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$4;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/MoviePlayer$4;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 243
    const v1, 0x7f0a01c9

    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$5;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/MoviePlayer$5;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 251
    const v1, 0x7f0a01cb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 252
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 253
    return-void
.end method

.method private startVideo()V
    .locals 5

    .prologue
    .line 1133
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 1134
    .local v0, scheme:Ljava/lang/String;
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "rtsp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1135
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLoadingBeginTime:J

    .line 1136
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v1}, Lcom/android/gallery3d/app/ControllerOverlay;->showPlaying()V

    .line 1137
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v1}, Lcom/android/gallery3d/app/ControllerOverlay;->showLoading()V

    .line 1138
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1139
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1143
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isCurrentDlna()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1144
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    .line 1149
    :goto_1
    return-void

    .line 1141
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v1}, Lcom/android/gallery3d/app/ControllerOverlay;->showPlaying()V

    goto :goto_0

    .line 1146
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->pause()V

    goto :goto_1
.end method

.method private stopDlnaPlay()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1876
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    if-eqz v0, :cond_0

    .line 1877
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    invoke-virtual {v0, v1}, Landroid/media/dlna/DlnaClient;->stop(Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z

    .line 1878
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    invoke-virtual {v0, v1}, Landroid/media/dlna/DlnaClient;->setPlaybackInfoListener(Landroid/media/dlna/DlnaClient$PlaybackInfoListener;)V

    .line 1880
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentDevice:Landroid/media/dlna/DlnaDevice;

    const-string v1, ""

    iput-object v1, v0, Landroid/media/dlna/DlnaDevice;->deviceId:Ljava/lang/String;

    .line 1881
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaIsPlaying:Z

    .line 1882
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaPlayState:I

    .line 1883
    sget-object v0, Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;->NATIVE_PLAY:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaMode:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    .line 1884
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0, v2}, Lcom/android/gallery3d/app/ControllerOverlay;->setIsDlnaMode(Z)V

    .line 1885
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    .line 1886
    return-void
.end method

.method private switchOnLineBitRate(I)V
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 533
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    iput p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I

    .line 537
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I

    if-nez v0, :cond_2

    .line 538
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityUriList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 539
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityMmsList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMmsId:Ljava/lang/String;

    .line 544
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMediaIdList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineUriId:Ljava/lang/String;

    .line 545
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 546
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 547
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 548
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPrepared:Z

    .line 549
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 550
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 551
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/MoviePlayer;->realInit(Z)V

    goto :goto_0

    .line 541
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothUriList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 542
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

    .line 1699
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    invoke-virtual {v0}, Landroid/media/dlna/DlnaClient;->listPlayers()Ljava/util/List;

    move-result-object v4

    .line 1700
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 1701
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentDevice:Landroid/media/dlna/DlnaDevice;

    const-string v2, ""

    iput-object v2, v0, Landroid/media/dlna/DlnaDevice;->deviceId:Ljava/lang/String;

    .line 1702
    sget-object v0, Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;->NATIVE_PLAY:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaMode:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    .line 1703
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/gallery3d/app/ControllerOverlay;->setDlnaDeviceCount(I)V

    .line 1704
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/gallery3d/app/ControllerOverlay;->setIsDlnaMode(Z)V

    move v0, v1

    .line 1727
    :goto_0
    return v0

    :cond_0
    move v3, v1

    .line 1708
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 1709
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/dlna/DlnaDevice;

    .line 1710
    iget-object v0, v0, Landroid/media/dlna/DlnaDevice;->deviceId:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentDevice:Landroid/media/dlna/DlnaDevice;

    iget-object v5, v5, Landroid/media/dlna/DlnaDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1711
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v3}, Lcom/android/gallery3d/app/ControllerOverlay;->selectDlnaDevice(I)V

    move v0, v2

    .line 1716
    :goto_2
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/gallery3d/app/ControllerOverlay;->setDlnaDeviceCount(I)V

    .line 1717
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentDevice:Landroid/media/dlna/DlnaDevice;

    iget-object v0, v0, Landroid/media/dlna/DlnaDevice;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1718
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isCurrentDlna()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1719
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1720
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->stopDlnaPlay()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v0, v2

    .line 1727
    goto :goto_0

    .line 1708
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 1723
    :catch_0
    move-exception v0

    .line 1724
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

    .line 1725
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public broadcasePause()V
    .locals 3

    .prologue
    .line 951
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.android.music.musicservicecommand"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 952
    const-string v0, "command"

    const-string v2, "pause"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 953
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MovieActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 954
    return-void
.end method

.method public checkHdmiState()V
    .locals 1

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    if-eqz v0, :cond_0

    .line 1399
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->checkHdmiState()V

    .line 1401
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->invalidate()V

    .line 1402
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestLayout()V

    .line 1403
    return-void
.end method

.method public doDlnaSeek(J)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 1929
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    if-eqz v0, :cond_0

    .line 1930
    long-to-int v0, p1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 1931
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    invoke-virtual {v0, p1, p2}, Landroid/media/dlna/DlnaClient;->seek(J)Z

    .line 1933
    :cond_0
    return-void
.end method

.method public getAudioTrackCount()I
    .locals 1

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getAudioTrackCount()I

    move-result v0

    return v0
.end method

.method public getAudioTrackName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->getAudioTrackName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getBufferPercentage()I

    move-result v0

    return v0
.end method

.method public getCurrentUriIsStreamMedia()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1151
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 1152
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 1153
    .local v0, scheme:Ljava/lang/String;
    const-string v2, "http"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "rtsp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1154
    :cond_0
    const/4 v1, 0x1

    .line 1159
    .end local v0           #scheme:Ljava/lang/String;
    :cond_1
    return v1
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
    .line 1730
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    invoke-virtual {v0}, Landroid/media/dlna/DlnaClient;->listPlayers()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1732
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1733
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1734
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 1735
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/dlna/DlnaDevice;

    .line 1736
    invoke-virtual {v1}, Landroid/media/dlna/DlnaDevice;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1734
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 1738
    :cond_0
    return-object v3
.end method

.method public getDlnaClientPos()I
    .locals 1

    .prologue
    .line 1925
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    return v0
.end method

.method public getDlnaDeviceCount()I
    .locals 1

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    if-nez v0, :cond_0

    .line 1916
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    check-cast v0, Lcom/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryAppImpl;->getDlnaClient()Landroid/media/dlna/DlnaClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    .line 1918
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    if-eqz v0, :cond_1

    .line 1919
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    invoke-virtual {v0}, Landroid/media/dlna/DlnaClient;->listPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1921
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsPrepareFinish()Z
    .locals 1

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPrepared:Z

    return v0
.end method

.method public getIsSingleVideo()Z
    .locals 1

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSingleVideo:Z

    return v0
.end method

.method public getOnLineVideoCurIndex()I
    .locals 1

    .prologue
    .line 1312
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    return v0
.end method

.method public getTimeTextCount()I
    .locals 1

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getTimeTextCount()I

    move-result v0

    return v0
.end method

.method public getTimeTextName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->getTimeTextName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoCurPosition()J
    .locals 2

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getVideoDuration()J
    .locals 2

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getVideoUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 899
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

    .line 1301
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getZoomLevelList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1302
    .local v0, zoomLevelList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Double;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1303
    iput-wide v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMaxZoomLevel:D

    .line 1304
    iput-wide v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMinZoomLevel:D

    .line 1309
    :goto_0
    return-object v0

    .line 1306
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMaxZoomLevel:D

    .line 1307
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
    .line 1889
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

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 1291
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    .line 1293
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSeeking()Z
    .locals 1

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isSeeking()Z

    move-result v0

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 1213
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->completePlayVideo()V

    .line 1214
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 998
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 999
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayHistory:Lcom/android/gallery3d/data/PlayHistory;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/PlayHistory;->close()V

    .line 1000
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayHistoryDBHelper:Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayHistoryDBHelper:Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;

    invoke-virtual {v0}, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;->close()V

    .line 1003
    :cond_0
    sget-object v0, Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;->NATIVE_PLAY:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaMode:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    .line 1004
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaPlayState:I

    .line 1005
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    if-eqz v0, :cond_1

    .line 1006
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    invoke-virtual {v0, v1}, Landroid/media/dlna/DlnaClient;->stop(Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z

    .line 1008
    :cond_1
    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    .line 1009
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;->unregister()V

    .line 1010
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "player"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsError:Z

    .line 1203
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z

    if-eqz v0, :cond_0

    .line 1204
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRecordStatus:I

    .line 1205
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->sendPlayRecordToLetv()V

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay;->showErrorMessage(Ljava/lang/String;)V

    .line 1208
    const/4 v0, 0x0

    return v0
.end method

.method public onHidden()V
    .locals 1

    .prologue
    .line 1286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mShowing:Z

    .line 1287
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x3ea

    const/16 v5, 0x3e9

    const/4 v1, 0x0

    const-wide/16 v3, 0x96

    const/4 v0, 0x1

    .line 1412
    const/16 v2, 0x18

    if-eq p1, v2, :cond_1

    const/16 v2, 0x19

    if-eq p1, v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-lt v2, v0, :cond_1

    .line 1414
    const/16 v2, 0x4f

    if-ne p1, v2, :cond_0

    .line 1415
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    const/16 v3, 0x3ed

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1416
    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHeadSetHookClick:I

    .line 1417
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mThrHeadSetClick:J

    .line 1418
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSecHeadSetClick:J

    .line 1419
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFirHeadSetClick:J

    .line 1520
    :cond_0
    :goto_0
    return v0

    .line 1423
    :cond_1
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1520
    goto :goto_0

    .line 1425
    :sswitch_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->mediaButton()V

    goto :goto_0

    .line 1429
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isCurrentDlna()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1430
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1431
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1432
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1434
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1435
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1438
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setDlnaPlayState()V

    goto :goto_0

    .line 1443
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isCurrentDlna()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1444
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1445
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1447
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setDlnaPlayState()V

    goto :goto_0

    .line 1453
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isCurrentDlna()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1454
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1455
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1457
    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setDlnaPlayState()V

    goto :goto_0

    .line 1463
    :sswitch_4
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    const/16 v2, 0x3ec

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1464
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    const/16 v2, 0x3ec

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1468
    :sswitch_5
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1469
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1474
    :sswitch_6
    iget-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsM040:Z

    if-eqz v1, :cond_6

    .line 1475
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->finishVideo()V

    goto/16 :goto_0

    .line 1477
    :cond_6
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v1}, Lcom/android/gallery3d/app/ControllerOverlay;->getShowingFlag()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->getLedBrightness()I

    move-result v1

    if-lez v1, :cond_8

    .line 1478
    :cond_7
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->finishVideo()V

    goto/16 :goto_0

    .line 1480
    :cond_8
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3f3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1481
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3f2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1482
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3f2

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1483
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3f3

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1489
    :sswitch_7
    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPrepared:Z

    if-nez v2, :cond_9

    move v0, v1

    .line 1490
    goto/16 :goto_0

    .line 1492
    :cond_9
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isCurrentDlna()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1493
    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F

    const v2, 0x3d4ccccd

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F

    .line 1494
    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-lez v1, :cond_a

    .line 1495
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F

    .line 1497
    :cond_a
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F

    invoke-interface {v1, v2, v0}, Lcom/android/gallery3d/app/ControllerOverlay;->setDlnaVolumeProgress(FZ)V

    goto/16 :goto_0

    .line 1499
    :cond_b
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v1, v0}, Lcom/android/gallery3d/app/ControllerOverlay;->setKeyVolumChange(Z)V

    goto/16 :goto_0

    .line 1505
    :sswitch_8
    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPrepared:Z

    if-nez v2, :cond_c

    move v0, v1

    .line 1506
    goto/16 :goto_0

    .line 1508
    :cond_c
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isCurrentDlna()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1509
    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F

    const v2, 0x3d4ccccd

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F

    .line 1510
    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_d

    .line 1511
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F

    .line 1513
    :cond_d
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F

    invoke-interface {v1, v2, v0}, Lcom/android/gallery3d/app/ControllerOverlay;->setDlnaVolumeProgress(FZ)V

    goto/16 :goto_0

    .line 1515
    :cond_e
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v2, v1}, Lcom/android/gallery3d/app/ControllerOverlay;->setKeyVolumChange(Z)V

    goto/16 :goto_0

    .line 1423
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
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v4, 0x3f3

    const/16 v3, 0x3f2

    .line 1524
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 1525
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->getLedBrightness()I

    move-result v0

    if-lez v0, :cond_0

    .line 1526
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1527
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1528
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1529
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->showM03XPopMenu()V

    .line 1534
    :goto_0
    const/4 v0, 0x1

    .line 1536
    :goto_1
    return v0

    .line 1531
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    invoke-interface {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->turnOnM03XLed()V

    .line 1532
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1536
    :cond_1
    invoke-static {p1}, Lcom/android/gallery3d/app/MoviePlayer;->isMediaKey(I)Z

    move-result v0

    goto :goto_1
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 920
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 921
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPreNext:Z

    .line 922
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPrepared:Z

    .line 923
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 924
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsError:Z

    if-nez v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 927
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteBuffering:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteBuffering:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 928
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteBuffering:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 930
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->onPause()V

    .line 931
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->storePlayHistory()V

    .line 932
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPlayingBeforeOnPause:Z

    .line 933
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    .line 934
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x2bf20

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    .line 935
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    if-eqz v0, :cond_2

    .line 936
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    invoke-virtual {v0, v4}, Landroid/media/dlna/DlnaClient;->setPlaybackInfoListener(Landroid/media/dlna/DlnaClient$PlaybackInfoListener;)V

    .line 938
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 940
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z

    if-eqz v0, :cond_4

    .line 941
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsError:Z

    if-nez v0, :cond_4

    .line 942
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPlayComplete:Z

    if-eqz v0, :cond_3

    .line 943
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRecordStatus:I

    .line 945
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->sendPlayRecordToLetv()V

    .line 948
    :cond_4
    return-void
.end method

.method public onPlayPause()V
    .locals 1

    .prologue
    .line 1236
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isCurrentDlna()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1237
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 1240
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setDlnaPlayState()V

    .line 1248
    :goto_0
    return-void

    .line 1242
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1243
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    goto :goto_0

    .line 1245
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->playVideo()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 957
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    if-eqz v0, :cond_2

    .line 958
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 959
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "rtsp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 960
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLoadingBeginTime:J

    .line 961
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->showLoading()V

    .line 962
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 963
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 967
    :goto_0
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    add-int/lit16 v0, v0, -0x1388

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 968
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 969
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V

    .line 970
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 972
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPlayingBeforeOnPause:Z

    if-nez v0, :cond_2

    .line 973
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    .line 976
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    if-eqz v0, :cond_3

    .line 977
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isCurrentDlna()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay;->setIsDlnaMode(Z)V

    .line 978
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->onResume()V

    .line 980
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MoviePlayer;->initDlnaClient(Landroid/content/Context;)V

    .line 981
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 982
    const-string v1, "media.dlnaservice.action.devicesChanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 983
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 984
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 985
    return-void

    .line 965
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->showPlaying()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 915
    const-string v0, "video-position"

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 916
    const-string v0, "resumeable-timeout"

    iget-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 917
    return-void
.end method

.method public onSeekEnd(I)V
    .locals 3
    .parameter "time"

    .prologue
    const/4 v1, 0x0

    .line 1265
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    .line 1266
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 1267
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoTailPositon:I

    if-le p1, v0, :cond_1

    .line 1268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSeekToTail:Z

    .line 1272
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isCurrentDlna()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 1273
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 1274
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoDuration:I

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/app/ControllerOverlay;->setTimes(II)V

    .line 1276
    :cond_0
    return-void

    .line 1270
    :cond_1
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSeekToTail:Z

    goto :goto_0
.end method

.method public onSeekMove(I)V
    .locals 1
    .parameter "time"

    .prologue
    .line 1259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    .line 1260
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 1261
    return-void
.end method

.method public onShown()V
    .locals 1

    .prologue
    .line 1280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mShowing:Z

    .line 1281
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    .line 1282
    return-void
.end method

.method public onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V
    .locals 3
    .parameter "mp"
    .parameter "text"

    .prologue
    .line 1218
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1219
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1228
    :cond_1
    :goto_0
    return-void

    .line 1222
    :cond_2
    invoke-virtual {p2}, Landroid/media/TimedText;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1223
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1224
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->formatTimeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1225
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeText:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public pauseVideo()V
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 1170
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->showPaused()V

    .line 1171
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->playStateChangeUpdateProgress()V

    .line 1172
    return-void
.end method

.method public playVideo()V
    .locals 1

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 1164
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->showPlaying()V

    .line 1165
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->playStateChangeUpdateProgress()V

    .line 1166
    return-void
.end method

.method public resetControllVolum()V
    .locals 1

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->resetVolumeBar()V

    .line 1389
    return-void
.end method

.method public selectDlnaDevice(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1742
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    invoke-virtual {v0}, Landroid/media/dlna/DlnaClient;->listPlayers()Ljava/util/List;

    move-result-object v0

    .line 1743
    if-nez p1, :cond_1

    .line 1744
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    invoke-virtual {v0, v3}, Landroid/media/dlna/DlnaClient;->stop(Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1745
    const-string v0, "dlna"

    const-string v1, "selectDlnaDevice stop fail--->"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaPlayState:I

    .line 1748
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    invoke-virtual {v0, v3}, Landroid/media/dlna/DlnaClient;->setPlaybackInfoListener(Landroid/media/dlna/DlnaClient$PlaybackInfoListener;)V

    .line 1749
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentDevice:Landroid/media/dlna/DlnaDevice;

    const-string v1, ""

    iput-object v1, v0, Landroid/media/dlna/DlnaDevice;->deviceId:Ljava/lang/String;

    .line 1750
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0, v2}, Lcom/android/gallery3d/app/ControllerOverlay;->setIsDlnaMode(Z)V

    .line 1751
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0, v2}, Lcom/android/gallery3d/app/ControllerOverlay;->setDlnaVideoState(I)V

    .line 1752
    sget-object v0, Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;->NATIVE_PLAY:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaMode:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    .line 1753
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 1754
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 1755
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    .line 1756
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    invoke-interface {v1, v2, v0}, Lcom/android/gallery3d/app/ControllerOverlay;->setTimes(II)V

    .line 1757
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->showPlaying()V

    .line 1770
    :goto_0
    return-void

    .line 1759
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1760
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentDevice:Landroid/media/dlna/DlnaDevice;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/dlna/DlnaDevice;

    iget-object v0, v0, Landroid/media/dlna/DlnaDevice;->deviceId:Ljava/lang/String;

    iput-object v0, v1, Landroid/media/dlna/DlnaDevice;->deviceId:Ljava/lang/String;

    .line 1762
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentDevice:Landroid/media/dlna/DlnaDevice;

    iget-object v1, v1, Landroid/media/dlna/DlnaDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/dlna/DlnaClient;->selectPlayer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1763
    const-string v0, "dlna"

    const-string v1, "selectPlayer finish --->"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlaybackInfoListener:Landroid/media/dlna/DlnaClient$PlaybackInfoListener;

    invoke-virtual {v0, v1}, Landroid/media/dlna/DlnaClient;->setPlaybackInfoListener(Landroid/media/dlna/DlnaClient$PlaybackInfoListener;)V

    .line 1768
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->dlnaDoSetDataSourcePlay()V

    goto :goto_0

    .line 1765
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
    .line 1327
    iput p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSelectAudioTrackId:I

    .line 1328
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getAudioTrackCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setAudioTrackIndex(I)Z

    .line 1332
    :cond_0
    return-void
.end method

.method public setBitrateIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1346
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 1347
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MoviePlayer;->switchOnLineBitRate(I)V

    .line 1349
    :cond_0
    return-void
.end method

.method public setDlnaVol(I)V
    .locals 2
    .parameter

    .prologue
    .line 1936
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1937
    int-to-float v0, p1

    const v1, 0x461c4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F

    .line 1938
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    if-eqz v0, :cond_0

    .line 1939
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F

    invoke-virtual {v0, v1}, Landroid/media/dlna/DlnaClient;->setVolume(F)Z

    .line 1941
    :cond_0
    return-void
.end method

.method public setIsSilentMode(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1012
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSilent:Z

    .line 1013
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    if-eqz v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSilent:Z

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay;->setIsSilentMode(Z)V

    .line 1016
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSilent:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isCurrentDlna()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1017
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    const v1, 0x7f0a01cd

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1019
    :cond_1
    return-void
.end method

.method public setMeizuExt(Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;)V
    .locals 1
    .parameter "ext"

    .prologue
    .line 903
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    .line 904
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/app/ControllerOverlay;->setMeizuExt(Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;)V

    .line 905
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->setVideoTitle()V

    .line 906
    return-void
.end method

.method public setPlayMode(Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 738
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    .line 739
    return-void
.end method

.method public setSpdifStatus(Z)V
    .locals 1
    .parameter "status"

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setSpdifStatus(Z)V

    .line 1395
    :cond_0
    return-void
.end method

.method public setTimeTextIndex(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1335
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->getTimeTextCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1336
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSelectTimeText:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->closeTimeText(I)V

    .line 1337
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1338
    iput p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSelectTimeText:I

    .line 1343
    :goto_0
    return-void

    .line 1340
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSelectTimeText:I

    .line 1341
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setTimeTextIndex(I)V

    goto :goto_0
.end method

.method public setVideoZoomDamp(D)V
    .locals 2
    .parameter "value"

    .prologue
    .line 1366
    iget-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMaxZoomLevel:D

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMinZoomLevel:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    .line 1367
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLoopValue:D

    .line 1368
    const/4 v0, 0x3

    invoke-static {p1, p2, v0}, Lcom/android/gallery3d/app/MovieActivityUtils;->roundingLevel(DI)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mReboundLevel:D

    .line 1370
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1371
    return-void
.end method

.method public setVideoZoomLevel(DZ)V
    .locals 1
    .parameter "level"
    .parameter "isStepLess"

    .prologue
    .line 1378
    if-nez p3, :cond_0

    .line 1379
    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Lcom/android/gallery3d/app/MovieActivityUtils;->roundingLevel(DI)D

    move-result-wide p1

    .line 1383
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/VideoView;->setVideoZoomLevel(D)V

    .line 1384
    return-void

    .line 1381
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
    .line 1374
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setVideoZoomType(Landroid/widget/VideoView$ZoomType;)V

    .line 1375
    return-void
.end method

.method public storePlayHistory()V
    .locals 6

    .prologue
    .line 806
    sget-boolean v0, Lcom/android/gallery3d/app/MovieActivityUtils;->sIsFromFile:Z

    if-nez v0, :cond_1

    .line 807
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSelectTimeText:I

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSaveTimeText:I

    .line 808
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSelectAudioTrackId:I

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSaveAudioTrackId:I

    .line 809
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsError:Z

    if-nez v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 812
    :cond_0
    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 813
    .local v2, savePosition:I
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoDuration:I

    const v1, 0x1d4c0

    if-ge v0, v1, :cond_2

    .line 814
    const/4 v2, 0x0

    .line 820
    :goto_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z

    if-eqz v0, :cond_6

    .line 821
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoTailPositon:I

    if-lt v0, v1, :cond_5

    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoTailPositon:I

    if-eqz v0, :cond_5

    .line 822
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayHistory:Lcom/android/gallery3d/data/PlayHistory;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineUriId:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSaveAudioTrackId:I

    .end local v2           #savePosition:I
    iget v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSaveTimeText:I

    iget v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/data/PlayHistory;->store(Ljava/lang/String;IIII)V

    .line 827
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayHistoryDBHelper:Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteVideoCid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoteVideoVid:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineUriId:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v4}, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;->insertOrUpdatePlayHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_1
    :goto_2
    return-void

    .line 815
    .restart local v2       #savePosition:I
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    const/16 v1, 0x7530

    if-lt v0, v1, :cond_3

    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoDuration:I

    add-int/lit16 v1, v1, -0x7530

    if-le v0, v1, :cond_4

    .line 816
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 818
    :cond_4
    add-int/lit16 v2, v2, -0x1388

    goto :goto_0

    .line 824
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayHistory:Lcom/android/gallery3d/data/PlayHistory;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineUriId:Ljava/lang/String;

    iget v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSaveAudioTrackId:I

    iget v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSaveTimeText:I

    iget v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/data/PlayHistory;->store(Ljava/lang/String;IIII)V

    goto :goto_1

    .line 829
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayHistory:Lcom/android/gallery3d/data/PlayHistory;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSaveAudioTrackId:I

    iget v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSaveTimeText:I

    iget v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/data/PlayHistory;->store(Ljava/lang/String;IIII)V

    goto :goto_2
.end method

.method public systemSensorSettingChange()V
    .locals 1

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    if-eqz v0, :cond_0

    .line 1406
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->systemSensorSettingChange()V

    .line 1408
    :cond_0
    return-void
.end method

.method public videoNext()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 754
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

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 758
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z

    if-eqz v0, :cond_2

    .line 759
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPlayComplete:Z

    if-eq v0, v4, :cond_5

    .line 760
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRecordStatus:I

    .line 764
    :goto_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->sendPlayRecordToLetv()V

    .line 766
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->storePlayHistory()V

    .line 767
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 768
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 769
    iput-boolean v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPrepared:Z

    .line 770
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->initPreNextVideo()V

    .line 771
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPreNext:Z

    .line 773
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 774
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    .line 775
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z

    if-eqz v0, :cond_8

    .line 776
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I

    if-nez v0, :cond_6

    .line 777
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 778
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityUriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    .line 779
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityUriList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 781
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 782
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityMmsList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMmsId:Ljava/lang/String;

    .line 802
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v5}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 803
    invoke-direct {p0, v4}, Lcom/android/gallery3d/app/MoviePlayer;->realInit(Z)V

    goto/16 :goto_0

    .line 762
    :cond_5
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRecordStatus:I

    goto :goto_1

    .line 785
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 786
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothUriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    .line 787
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothUriList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 789
    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 790
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothMmsList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMmsId:Ljava/lang/String;

    goto :goto_2

    .line 794
    :cond_8
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFileUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 795
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFileUriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    .line 796
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFileUriList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 798
    :cond_9
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextPathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 799
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextTypeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 800
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

    .line 835
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->storePlayHistory()V

    .line 836
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 837
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSingleVideo:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayMode:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->ALLCYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    if-nez v0, :cond_2

    .line 838
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isCurrentDlna()Z

    move-result v0

    if-nez v0, :cond_1

    .line 839
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v4}, Landroid/widget/VideoView;->seekTo(I)V

    .line 840
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 896
    :goto_0
    return-void

    .line 842
    :cond_1
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/app/MoviePlayer;->doDlnaSeek(J)V

    goto :goto_0

    .line 846
    :cond_2
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z

    if-eqz v0, :cond_3

    .line 847
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPlayComplete:Z

    if-eq v0, v5, :cond_7

    .line 848
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRecordStatus:I

    .line 852
    :goto_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->sendPlayRecordToLetv()V

    .line 854
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 855
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPrepared:Z

    .line 856
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->initPreNextVideo()V

    .line 857
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 858
    iput-boolean v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPreNext:Z

    .line 859
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 860
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    .line 861
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z

    if-eqz v0, :cond_b

    .line 862
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I

    if-nez v0, :cond_8

    .line 863
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 864
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    if-gez v0, :cond_4

    .line 865
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    .line 867
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityUriList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 869
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 870
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityMmsList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMmsId:Ljava/lang/String;

    .line 894
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v4}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 895
    invoke-direct {p0, v5}, Lcom/android/gallery3d/app/MoviePlayer;->realInit(Z)V

    goto :goto_0

    .line 850
    :cond_7
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRecordStatus:I

    goto :goto_1

    .line 873
    :cond_8
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 874
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    if-gez v0, :cond_9

    .line 875
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    .line 877
    :cond_9
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothUriList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 879
    :cond_a
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 880
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothMmsList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOnLineMmsId:Ljava/lang/String;

    goto :goto_2

    .line 884
    :cond_b
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFileUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 885
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    if-gez v0, :cond_c

    .line 886
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFileUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    .line 888
    :cond_c
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFileUriList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 890
    :cond_d
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextPathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 891
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextTypeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 892
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextPathList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextTypeList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/app/MovieActivityUtils;->findSubTitleFromUri(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;)V

    goto/16 :goto_2
.end method
