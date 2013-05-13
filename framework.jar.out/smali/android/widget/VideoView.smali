.class public Landroid/widget/VideoView;
.super Landroid/view/SurfaceView;
.source "VideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/VideoView$ZoomType;,
        Landroid/widget/VideoView$PendingTrackInfo;
    }
.end annotation


# static fields
.field private static final DELAY_OPEN_VIDEO:I = 0xc8

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAudioTrack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseZoomHeight:I

.field private mBaseZoomWidth:I

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurZoomType:Landroid/widget/VideoView$ZoomType;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mDuration:I

.field private mErrorDialog:Landroid/app/AlertDialog$Builder;

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mFitVideoHeight:I

.field private mFitVideoWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDialogShowing:Z

.field private mIsSeeking:Z

.field private mLastUriString:Ljava/lang/String;

.field private mMediaController:Landroid/widget/MediaController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

.field private mPendingTracknfo:Landroid/widget/VideoView$PendingTrackInfo;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSeekCompletionListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mTimedText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

.field private mTrackInfo:[Landroid/media/MediaPlayer$TrackInfo;

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoSizeChangeHeight:I

.field private mVideoSizeChangeWidth:I

.field private mVideoWidth:I

.field private mZoomHeight:I

.field private mZoomLevel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomScale:D

.field private mZoomWidth:I

.field private mbForceNuPlayer:Z

.field private mbSpdifStatus:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 137
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 58
    const-string v0, "VideoView"

    iput-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    .line 61
    iput-object v1, p0, Landroid/widget/VideoView;->mLastUriString:Ljava/lang/String;

    .line 80
    iput v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 81
    iput v2, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 84
    iput-object v1, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 85
    iput-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/widget/VideoView;->mHandler:Landroid/os/Handler;

    .line 89
    iput v2, p0, Landroid/widget/VideoView;->mVideoSizeChangeWidth:I

    .line 90
    iput v2, p0, Landroid/widget/VideoView;->mVideoSizeChangeHeight:I

    .line 95
    iput v2, p0, Landroid/widget/VideoView;->mFitVideoWidth:I

    .line 96
    iput v2, p0, Landroid/widget/VideoView;->mFitVideoHeight:I

    .line 97
    const/16 v0, 0x500

    iput v0, p0, Landroid/widget/VideoView;->mScreenWidth:I

    .line 98
    const/16 v0, 0x320

    iput v0, p0, Landroid/widget/VideoView;->mScreenHeight:I

    .line 99
    iput v2, p0, Landroid/widget/VideoView;->mBaseZoomWidth:I

    .line 100
    iput v2, p0, Landroid/widget/VideoView;->mBaseZoomHeight:I

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/VideoView;->mAudioTrack:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/VideoView;->mTimedText:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Landroid/widget/VideoView$PendingTrackInfo;

    invoke-direct {v0, p0, v1}, Landroid/widget/VideoView$PendingTrackInfo;-><init>(Landroid/widget/VideoView;Landroid/widget/VideoView$1;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mPendingTracknfo:Landroid/widget/VideoView$PendingTrackInfo;

    .line 113
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Landroid/widget/VideoView;->mZoomScale:D

    .line 117
    iput-boolean v2, p0, Landroid/widget/VideoView;->mIsSeeking:Z

    .line 118
    iput-boolean v2, p0, Landroid/widget/VideoView;->mIsDialogShowing:Z

    .line 119
    sget-object v0, Landroid/widget/VideoView$ZoomType;->ZOOM_LEVEL:Landroid/widget/VideoView$ZoomType;

    iput-object v0, p0, Landroid/widget/VideoView;->mCurZoomType:Landroid/widget/VideoView$ZoomType;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/VideoView;->mZoomLevel:Ljava/util/ArrayList;

    .line 122
    iput-boolean v2, p0, Landroid/widget/VideoView;->mbSpdifStatus:Z

    .line 123
    iput-boolean v2, p0, Landroid/widget/VideoView;->mbForceNuPlayer:Z

    .line 432
    new-instance v0, Landroid/widget/VideoView$1;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$1;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 448
    new-instance v0, Landroid/widget/VideoView$2;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$2;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 522
    new-instance v0, Landroid/widget/VideoView$3;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$3;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSeekCompletionListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 544
    new-instance v0, Landroid/widget/VideoView$4;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$4;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 558
    new-instance v0, Landroid/widget/VideoView$5;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$5;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 567
    new-instance v0, Landroid/widget/VideoView$6;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$6;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 651
    new-instance v0, Landroid/widget/VideoView$7;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$7;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 698
    new-instance v0, Landroid/widget/VideoView$8;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$8;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 138
    invoke-direct {p0, p1}, Landroid/widget/VideoView;->initVideoView(Landroid/content/Context;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 143
    invoke-direct {p0, p1}, Landroid/widget/VideoView;->initVideoView(Landroid/content/Context;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 147
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    const-string v0, "VideoView"

    iput-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    .line 61
    iput-object v1, p0, Landroid/widget/VideoView;->mLastUriString:Ljava/lang/String;

    .line 80
    iput v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 81
    iput v2, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 84
    iput-object v1, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 85
    iput-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/widget/VideoView;->mHandler:Landroid/os/Handler;

    .line 89
    iput v2, p0, Landroid/widget/VideoView;->mVideoSizeChangeWidth:I

    .line 90
    iput v2, p0, Landroid/widget/VideoView;->mVideoSizeChangeHeight:I

    .line 95
    iput v2, p0, Landroid/widget/VideoView;->mFitVideoWidth:I

    .line 96
    iput v2, p0, Landroid/widget/VideoView;->mFitVideoHeight:I

    .line 97
    const/16 v0, 0x500

    iput v0, p0, Landroid/widget/VideoView;->mScreenWidth:I

    .line 98
    const/16 v0, 0x320

    iput v0, p0, Landroid/widget/VideoView;->mScreenHeight:I

    .line 99
    iput v2, p0, Landroid/widget/VideoView;->mBaseZoomWidth:I

    .line 100
    iput v2, p0, Landroid/widget/VideoView;->mBaseZoomHeight:I

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/VideoView;->mAudioTrack:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/VideoView;->mTimedText:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Landroid/widget/VideoView$PendingTrackInfo;

    invoke-direct {v0, p0, v1}, Landroid/widget/VideoView$PendingTrackInfo;-><init>(Landroid/widget/VideoView;Landroid/widget/VideoView$1;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mPendingTracknfo:Landroid/widget/VideoView$PendingTrackInfo;

    .line 113
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Landroid/widget/VideoView;->mZoomScale:D

    .line 117
    iput-boolean v2, p0, Landroid/widget/VideoView;->mIsSeeking:Z

    .line 118
    iput-boolean v2, p0, Landroid/widget/VideoView;->mIsDialogShowing:Z

    .line 119
    sget-object v0, Landroid/widget/VideoView$ZoomType;->ZOOM_LEVEL:Landroid/widget/VideoView$ZoomType;

    iput-object v0, p0, Landroid/widget/VideoView;->mCurZoomType:Landroid/widget/VideoView$ZoomType;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/VideoView;->mZoomLevel:Ljava/util/ArrayList;

    .line 122
    iput-boolean v2, p0, Landroid/widget/VideoView;->mbSpdifStatus:Z

    .line 123
    iput-boolean v2, p0, Landroid/widget/VideoView;->mbForceNuPlayer:Z

    .line 432
    new-instance v0, Landroid/widget/VideoView$1;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$1;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 448
    new-instance v0, Landroid/widget/VideoView$2;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$2;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 522
    new-instance v0, Landroid/widget/VideoView$3;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$3;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSeekCompletionListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 544
    new-instance v0, Landroid/widget/VideoView$4;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$4;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 558
    new-instance v0, Landroid/widget/VideoView$5;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$5;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 567
    new-instance v0, Landroid/widget/VideoView$6;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$6;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 651
    new-instance v0, Landroid/widget/VideoView$7;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$7;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 698
    new-instance v0, Landroid/widget/VideoView$8;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$8;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 148
    invoke-direct {p0, p1}, Landroid/widget/VideoView;->initVideoView(Landroid/content/Context;)V

    .line 149
    return-void
.end method

.method static synthetic access$100(Landroid/widget/VideoView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/VideoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Landroid/widget/VideoView;->mbSpdifStatus:Z

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$1302(Landroid/widget/VideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Landroid/widget/VideoView;->mCanPause:Z

    return p1
.end method

.method static synthetic access$1402(Landroid/widget/VideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Landroid/widget/VideoView;->mCanSeekBack:Z

    return p1
.end method

.method static synthetic access$1502(Landroid/widget/VideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Landroid/widget/VideoView;->mCanSeekForward:Z

    return p1
.end method

.method static synthetic access$1600(Landroid/widget/VideoView;)Landroid/widget/MediaController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Landroid/widget/VideoView;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$1702(Landroid/widget/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Landroid/widget/VideoView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$1800(Landroid/widget/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Landroid/widget/VideoView;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$1802(Landroid/widget/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Landroid/widget/VideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1900(Landroid/widget/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Landroid/widget/VideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$1902(Landroid/widget/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Landroid/widget/VideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$200(Landroid/widget/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Landroid/widget/VideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$2002(Landroid/widget/VideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Landroid/widget/VideoView;->mIsSeeking:Z

    return p1
.end method

.method static synthetic access$202(Landroid/widget/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Landroid/widget/VideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$2100(Landroid/widget/VideoView;)Landroid/widget/VideoView$PendingTrackInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/widget/VideoView;->mPendingTracknfo:Landroid/widget/VideoView$PendingTrackInfo;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnTimedTextListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/widget/VideoView;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/widget/VideoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Landroid/widget/VideoView;->mbForceNuPlayer:Z

    return v0
.end method

.method static synthetic access$2402(Landroid/widget/VideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Landroid/widget/VideoView;->mbForceNuPlayer:Z

    return p1
.end method

.method static synthetic access$2500(Landroid/widget/VideoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/widget/VideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$2600(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/widget/VideoView;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/widget/VideoView;->mErrorDialog:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$2702(Landroid/widget/VideoView;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Landroid/widget/VideoView;->mErrorDialog:Landroid/app/AlertDialog$Builder;

    return-object p1
.end method

.method static synthetic access$2800(Landroid/widget/VideoView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/widget/VideoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Landroid/widget/VideoView;->mIsDialogShowing:Z

    return v0
.end method

.method static synthetic access$2902(Landroid/widget/VideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Landroid/widget/VideoView;->mIsDialogShowing:Z

    return p1
.end method

.method static synthetic access$300(Landroid/widget/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Landroid/widget/VideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$3002(Landroid/widget/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$302(Landroid/widget/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Landroid/widget/VideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$3102(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$3200(Landroid/widget/VideoView;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/widget/VideoView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/widget/VideoView;->mLastUriString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302(Landroid/widget/VideoView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Landroid/widget/VideoView;->mLastUriString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3400(Landroid/widget/VideoView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/widget/VideoView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/widget/VideoView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/widget/VideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Landroid/widget/VideoView;->mVideoSizeChangeWidth:I

    return v0
.end method

.method static synthetic access$402(Landroid/widget/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Landroid/widget/VideoView;->mVideoSizeChangeWidth:I

    return p1
.end method

.method static synthetic access$500(Landroid/widget/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Landroid/widget/VideoView;->mVideoSizeChangeHeight:I

    return v0
.end method

.method static synthetic access$502(Landroid/widget/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Landroid/widget/VideoView;->mVideoSizeChangeHeight:I

    return p1
.end method

.method static synthetic access$602(Landroid/widget/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Landroid/widget/VideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$700(Landroid/widget/VideoView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/widget/VideoView;->mAudioTrack:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/VideoView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/widget/VideoView;->mTimedText:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method private attachMediaController()V
    .locals 3

    .prologue
    .line 423
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 425
    invoke-virtual {p0}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 427
    .local v0, anchorView:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 428
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 430
    .end local v0           #anchorView:Landroid/view/View;
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 425
    goto :goto_0
.end method

.method private calculateZoomLevel(Ljava/util/ArrayList;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Double;>;"
    iget v8, p0, Landroid/widget/VideoView;->mVideoWidth:I

    if-lez v8, :cond_0

    iget v8, p0, Landroid/widget/VideoView;->mVideoHeight:I

    if-gtz v8, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    const/4 v8, 0x0

    iput v8, p0, Landroid/widget/VideoView;->mBaseZoomWidth:I

    .line 194
    const/4 v8, 0x0

    iput v8, p0, Landroid/widget/VideoView;->mBaseZoomHeight:I

    .line 195
    iget v8, p0, Landroid/widget/VideoView;->mVideoWidth:I

    iget v9, p0, Landroid/widget/VideoView;->mScreenHeight:I

    mul-int/2addr v8, v9

    iget v9, p0, Landroid/widget/VideoView;->mScreenWidth:I

    iget v10, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v9, v10

    if-le v8, v9, :cond_3

    .line 196
    iget v8, p0, Landroid/widget/VideoView;->mScreenWidth:I

    iget v9, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v8, v9

    iget v9, p0, Landroid/widget/VideoView;->mVideoWidth:I

    div-int/2addr v8, v9

    iput v8, p0, Landroid/widget/VideoView;->mBaseZoomHeight:I

    .line 197
    iget v8, p0, Landroid/widget/VideoView;->mScreenWidth:I

    iput v8, p0, Landroid/widget/VideoView;->mBaseZoomWidth:I

    .line 202
    :goto_1
    iget v8, p0, Landroid/widget/VideoView;->mScreenWidth:I

    int-to-double v8, v8

    iget v10, p0, Landroid/widget/VideoView;->mBaseZoomWidth:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    const/4 v10, 0x2

    invoke-direct {p0, v8, v9, v10}, Landroid/widget/VideoView;->roundingLevel(DI)D

    move-result-wide v6

    .line 203
    .local v6, widthLevel:D
    iget v8, p0, Landroid/widget/VideoView;->mScreenHeight:I

    int-to-double v8, v8

    iget v10, p0, Landroid/widget/VideoView;->mBaseZoomHeight:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    const/4 v10, 0x2

    invoke-direct {p0, v8, v9, v10}, Landroid/widget/VideoView;->roundingLevel(DI)D

    move-result-wide v0

    .line 204
    .local v0, heightLevel:D
    const-wide v4, 0x3ff199999999999aL

    .line 206
    .local v4, rationLevel:D
    const/4 v8, 0x3

    new-array v3, v8, [D

    const/4 v8, 0x0

    aput-wide v6, v3, v8

    const/4 v8, 0x1

    aput-wide v0, v3, v8

    const/4 v8, 0x2

    aput-wide v4, v3, v8

    .line 207
    .local v3, level:[D
    invoke-static {v3}, Ljava/util/Arrays;->sort([D)V

    .line 208
    const/4 v8, 0x0

    aget-wide v8, v3, v8

    const/4 v10, 0x2

    aget-wide v10, v3, v10

    cmpl-double v8, v8, v10

    if-nez v8, :cond_4

    .line 209
    const/4 v8, 0x1

    const/4 v9, 0x0

    aget-wide v9, v3, v9

    const-wide v11, 0x3fb999999999999aL

    add-double/2addr v9, v11

    aput-wide v9, v3, v8

    .line 210
    const/4 v8, 0x2

    const/4 v9, 0x0

    aget-wide v9, v3, v9

    const-wide v11, 0x3fc999999999999aL

    add-double/2addr v9, v11

    aput-wide v9, v3, v8

    .line 219
    :cond_2
    :goto_2
    const/4 v2, 0x0

    .local v2, index:I
    :goto_3
    const/4 v8, 0x3

    if-ge v2, v8, :cond_6

    .line 221
    aget-wide v8, v3, v2

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 199
    .end local v0           #heightLevel:D
    .end local v2           #index:I
    .end local v3           #level:[D
    .end local v4           #rationLevel:D
    .end local v6           #widthLevel:D
    :cond_3
    iget v8, p0, Landroid/widget/VideoView;->mScreenHeight:I

    iget v9, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v8, v9

    iget v9, p0, Landroid/widget/VideoView;->mVideoHeight:I

    div-int/2addr v8, v9

    iput v8, p0, Landroid/widget/VideoView;->mBaseZoomWidth:I

    .line 200
    iget v8, p0, Landroid/widget/VideoView;->mScreenHeight:I

    iput v8, p0, Landroid/widget/VideoView;->mBaseZoomHeight:I

    goto :goto_1

    .line 211
    .restart local v0       #heightLevel:D
    .restart local v3       #level:[D
    .restart local v4       #rationLevel:D
    .restart local v6       #widthLevel:D
    :cond_4
    const/4 v8, 0x1

    aget-wide v8, v3, v8

    const/4 v10, 0x0

    aget-wide v10, v3, v10

    sub-double/2addr v8, v10

    const-wide v10, 0x3fb999999999999aL

    cmpg-double v8, v8, v10

    if-gez v8, :cond_5

    .line 212
    const/4 v8, 0x1

    const/4 v9, 0x0

    aget-wide v9, v3, v9

    const-wide v11, 0x3fb999999999999aL

    add-double/2addr v9, v11

    aput-wide v9, v3, v8

    .line 213
    const/4 v8, 0x2

    aget-wide v8, v3, v8

    const/4 v10, 0x1

    aget-wide v10, v3, v10

    sub-double/2addr v8, v10

    const-wide v10, 0x3fb999999999999aL

    cmpg-double v8, v8, v10

    if-gez v8, :cond_2

    .line 214
    const/4 v8, 0x2

    const/4 v9, 0x1

    aget-wide v9, v3, v9

    const-wide v11, 0x3fb999999999999aL

    add-double/2addr v9, v11

    aput-wide v9, v3, v8

    goto :goto_2

    .line 216
    :cond_5
    const/4 v8, 0x2

    aget-wide v8, v3, v8

    const/4 v10, 0x1

    aget-wide v10, v3, v10

    sub-double/2addr v8, v10

    const-wide v10, 0x3fb999999999999aL

    cmpg-double v8, v8, v10

    if-gez v8, :cond_2

    .line 217
    const/4 v8, 0x2

    const/4 v9, 0x1

    aget-wide v9, v3, v9

    const-wide v11, 0x3fb999999999999aL

    add-double/2addr v9, v11

    aput-wide v9, v3, v8

    goto :goto_2

    .line 223
    .restart local v2       #index:I
    :cond_6
    const/4 v8, 0x2

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide v10, 0x3fb999999999999aL

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private extractTrackInfo()V
    .locals 4

    .prologue
    .line 173
    iget-object v1, p0, Landroid/widget/VideoView;->mTrackInfo:[Landroid/media/MediaPlayer$TrackInfo;

    .line 174
    .local v1, minfo:[Landroid/media/MediaPlayer$TrackInfo;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Landroid/widget/VideoView;->mTrackInfo:[Landroid/media/MediaPlayer$TrackInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 175
    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v2

    if-nez v2, :cond_1

    .line 174
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_1
    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 179
    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 180
    iget-object v2, p0, Landroid/widget/VideoView;->mAudioTrack:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 181
    :cond_2
    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 182
    iget-object v2, p0, Landroid/widget/VideoView;->mTimedText:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 187
    :cond_3
    return-void
.end method

.method private initVideoView(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 310
    iput v3, p0, Landroid/widget/VideoView;->mVideoWidth:I

    .line 311
    iput v3, p0, Landroid/widget/VideoView;->mVideoHeight:I

    .line 312
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 313
    .local v0, outSize:Landroid/graphics/Point;
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 314
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_0

    .line 315
    sget-object v1, Landroid/widget/VideoView$ZoomType;->ZOOM_LEVEL:Landroid/widget/VideoView$ZoomType;

    iput-object v1, p0, Landroid/widget/VideoView;->mCurZoomType:Landroid/widget/VideoView$ZoomType;

    .line 319
    :goto_0
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_1

    iget v1, v0, Landroid/graphics/Point;->x:I

    :goto_1
    iput v1, p0, Landroid/widget/VideoView;->mScreenWidth:I

    .line 320
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_2

    iget v1, v0, Landroid/graphics/Point;->y:I

    :goto_2
    iput v1, p0, Landroid/widget/VideoView;->mScreenHeight:I

    .line 321
    invoke-virtual {p0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 322
    invoke-virtual {p0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 323
    invoke-virtual {p0, v4}, Landroid/widget/VideoView;->setFocusable(Z)V

    .line 324
    invoke-virtual {p0, v4}, Landroid/widget/VideoView;->setFocusableInTouchMode(Z)V

    .line 325
    invoke-virtual {p0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 326
    iput v3, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 327
    iput v3, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 328
    return-void

    .line 317
    :cond_0
    sget-object v1, Landroid/widget/VideoView$ZoomType;->ZOOM_VERTICAL:Landroid/widget/VideoView$ZoomType;

    iput-object v1, p0, Landroid/widget/VideoView;->mCurZoomType:Landroid/widget/VideoView$ZoomType;

    goto :goto_0

    .line 319
    :cond_1
    iget v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 320
    :cond_2
    iget v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_2
.end method

.method private isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 898
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openVideo()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 360
    iget-object v2, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v2, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    .local v1, i:Landroid/content/Intent;
    const-string v2, "command"

    const-string/jumbo v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 372
    invoke-direct {p0, v8}, Landroid/widget/VideoView;->release(Z)V

    .line 374
    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 375
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 376
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mSeekCompletionListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 377
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 378
    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/VideoView;->mDuration:I

    .line 379
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 380
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 381
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V

    .line 382
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 383
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    .line 384
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Landroid/widget/VideoView;->mHeaders:Ljava/util/Map;

    iget-boolean v6, p0, Landroid/widget/VideoView;->mbForceNuPlayer:Z

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 386
    :try_start_1
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 392
    :try_start_2
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 393
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 394
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 397
    const/4 v2, 0x1

    iput v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 398
    invoke-direct {p0}, Landroid/widget/VideoView;->attachMediaController()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, ex:Ljava/io/IOException;
    iget-object v2, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    iput v7, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 402
    iput v7, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 403
    iget-object v2, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v9, v8}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 387
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 388
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    :try_start_3
    iget-object v2, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 405
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 406
    .restart local v0       #ex:Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    iput v7, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 408
    iput v7, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 409
    iget-object v2, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v9, v8}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method private release(Z)V
    .locals 2
    .parameter "cleartargetstate"

    .prologue
    const/4 v1, 0x0

    .line 748
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 750
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 751
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 752
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 753
    invoke-direct {p0}, Landroid/widget/VideoView;->resetZoomList()V

    .line 754
    iput v1, p0, Landroid/widget/VideoView;->mFitVideoWidth:I

    .line 755
    iput v1, p0, Landroid/widget/VideoView;->mFitVideoHeight:I

    .line 756
    iput v1, p0, Landroid/widget/VideoView;->mZoomWidth:I

    .line 757
    iput v1, p0, Landroid/widget/VideoView;->mZoomHeight:I

    .line 758
    if-eqz p1, :cond_0

    .line 759
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 762
    :cond_0
    return-void
.end method

.method private resetZoomList()V
    .locals 2

    .prologue
    .line 1033
    iget-object v0, p0, Landroid/widget/VideoView;->mZoomLevel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1034
    iget-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetZoomList --->"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    return-void
.end method

.method private roundingLevel(DI)D
    .locals 3
    .parameter "level"
    .parameter "scale"

    .prologue
    .line 227
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 228
    .local v0, b:Ljava/math/BigDecimal;
    const/4 v1, 0x4

    invoke-virtual {v0, p3, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    return-wide v1
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 828
    :goto_0
    return-void

    .line 826
    :cond_0
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 905
    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 909
    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 913
    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanSeekForward:Z

    return v0
.end method

.method public closeTimeText(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 920
    iget-boolean v0, p0, Landroid/widget/VideoView;->mIsSeeking:Z

    if-eqz v0, :cond_1

    .line 921
    iget-object v0, p0, Landroid/widget/VideoView;->mPendingTracknfo:Landroid/widget/VideoView$PendingTrackInfo;

    iput p1, v0, Landroid/widget/VideoView$PendingTrackInfo;->timeTextIndex:I

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 923
    :cond_1
    iget-object v0, p0, Landroid/widget/VideoView;->mTimedText:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 924
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Landroid/widget/VideoView;->mTimedText:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->deselectTrack(I)V

    goto :goto_0
.end method

.method public formatTimeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 1026
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1027
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->ass_To_html(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    .line 1029
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAudioTrackCount()I
    .locals 1

    .prologue
    .line 946
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Landroid/widget/VideoView;->mAudioTrack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 949
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAudioTrackName(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    .line 970
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 971
    iget-object v1, p0, Landroid/widget/VideoView;->mAudioTrack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 972
    iget-object v2, p0, Landroid/widget/VideoView;->mTrackInfo:[Landroid/media/MediaPlayer$TrackInfo;

    iget-object v1, p0, Landroid/widget/VideoView;->mAudioTrack:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v2, v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer$TrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 973
    .local v0, str:Ljava/lang/String;
    const-string/jumbo v1, "und"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 974
    const-string v0, ""

    .line 981
    .end local v0           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 978
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 981
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 892
    iget v0, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    .line 894
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 870
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 873
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 858
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 859
    iget v0, p0, Landroid/widget/VideoView;->mDuration:I

    if-lez v0, :cond_0

    .line 860
    iget v0, p0, Landroid/widget/VideoView;->mDuration:I

    .line 866
    :goto_0
    return v0

    .line 862
    :cond_0
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Landroid/widget/VideoView;->mDuration:I

    .line 863
    iget v0, p0, Landroid/widget/VideoView;->mDuration:I

    goto :goto_0

    .line 865
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/VideoView;->mDuration:I

    .line 866
    iget v0, p0, Landroid/widget/VideoView;->mDuration:I

    goto :goto_0
.end method

.method public getTimeTextCount()I
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Landroid/widget/VideoView;->mTimedText:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTimeTextName(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 933
    iget-object v1, p0, Landroid/widget/VideoView;->mTimedText:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 934
    iget-object v1, p0, Landroid/widget/VideoView;->mTimedText:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 935
    .local v0, pos:I
    if-ltz v0, :cond_0

    .line 936
    iget-object v1, p0, Landroid/widget/VideoView;->mTrackInfo:[Landroid/media/MediaPlayer$TrackInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/MediaPlayer$TrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 941
    .end local v0           #pos:I
    :goto_0
    return-object v1

    .line 938
    .restart local v0       #pos:I
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 941
    .end local v0           #pos:I
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public getVideoTrackRotation()I
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoTrackRotation()I

    move-result v0

    return v0
.end method

.method public getZoomLevelList()Ljava/util/ArrayList;
    .locals 1
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
    .line 169
    iget-object v0, p0, Landroid/widget/VideoView;->mZoomLevel:Ljava/util/ArrayList;

    return-object v0
.end method

.method public initTimeTextPathAndType(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1000
    .local p1, timeTextPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, timeTextType:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 1001
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1002
    .local v3, strPath:Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 1003
    .local v4, strType:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 1004
    .local v2, str:Ljava/lang/String;
    const-string v5, "chs"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1005
    const-string v2, "chs"

    .line 1012
    :cond_0
    :goto_1
    :try_start_0
    iget-object v5, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const-string v6, "application/x-subrip"

    invoke-virtual {v5, v3, v6, v2}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1000
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1006
    :cond_1
    const-string v5, "cht"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1007
    const-string v2, "cht"

    goto :goto_1

    .line 1008
    :cond_2
    const-string v5, "eng"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1009
    const-string v2, "eng"

    goto :goto_1

    .line 1013
    :catch_0
    move-exception v0

    .line 1014
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 1015
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1016
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    .line 1017
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 1018
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1021
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #str:Ljava/lang/String;
    .end local v3           #strPath:Ljava/lang/String;
    .end local v4           #strType:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/VideoView;->mTrackInfo:[Landroid/media/MediaPlayer$TrackInfo;

    .line 1022
    invoke-direct {p0}, Landroid/widget/VideoView;->extractTrackInfo()V

    .line 1023
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 887
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSeeking()Z
    .locals 1

    .prologue
    .line 916
    iget-boolean v0, p0, Landroid/widget/VideoView;->mIsSeeking:Z

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 783
    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/16 v2, 0x18

    if-eq p1, v2, :cond_2

    const/16 v2, 0x19

    if-eq p1, v2, :cond_2

    const/16 v2, 0xa4

    if-eq p1, v2, :cond_2

    const/16 v2, 0x52

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    move v0, v1

    .line 790
    .local v0, isKeyCodeSupported:Z
    :goto_0
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    iget-object v2, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v2, :cond_8

    .line 791
    const/16 v2, 0x4f

    if-eq p1, v2, :cond_0

    const/16 v2, 0x55

    if-ne p1, v2, :cond_4

    .line 793
    :cond_0
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 794
    invoke-virtual {p0}, Landroid/widget/VideoView;->pause()V

    .line 795
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 819
    :cond_1
    :goto_1
    return v1

    .line 783
    .end local v0           #isKeyCodeSupported:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 797
    .restart local v0       #isKeyCodeSupported:Z
    :cond_3
    invoke-virtual {p0}, Landroid/widget/VideoView;->start()V

    .line 798
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 801
    :cond_4
    const/16 v2, 0x7e

    if-ne p1, v2, :cond_5

    .line 802
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    .line 803
    invoke-virtual {p0}, Landroid/widget/VideoView;->start()V

    .line 804
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 807
    :cond_5
    const/16 v2, 0x56

    if-eq p1, v2, :cond_6

    const/16 v2, 0x7f

    if-ne p1, v2, :cond_7

    .line 809
    :cond_6
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 810
    invoke-virtual {p0}, Landroid/widget/VideoView;->pause()V

    .line 811
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    goto :goto_1

    .line 815
    :cond_7
    invoke-direct {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 819
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const-wide/high16 v8, 0x3ff0

    const-wide/high16 v10, 0x3fe0

    .line 233
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    invoke-static {v6, p1}, Landroid/widget/VideoView;->getDefaultSize(II)I

    move-result v5

    .line 234
    .local v5, width:I
    iget v6, p0, Landroid/widget/VideoView;->mVideoHeight:I

    invoke-static {v6, p2}, Landroid/widget/VideoView;->getDefaultSize(II)I

    move-result v2

    .line 235
    .local v2, height:I
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    if-lez v6, :cond_0

    iget v6, p0, Landroid/widget/VideoView;->mVideoHeight:I

    if-gtz v6, :cond_1

    .line 236
    :cond_0
    invoke-virtual {p0, v5, v2}, Landroid/widget/VideoView;->setMeasuredDimension(II)V

    .line 278
    :goto_0
    return-void

    .line 239
    :cond_1
    move v1, v5

    .line 240
    .local v1, fit_width:I
    move v0, v2

    .line 241
    .local v0, fit_height:I
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v6, v2

    iget v7, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v7, v5

    if-le v6, v7, :cond_3

    .line 242
    iget v6, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v6, v5

    iget v7, p0, Landroid/widget/VideoView;->mVideoWidth:I

    div-int v0, v6, v7

    .line 246
    :goto_1
    iput v1, p0, Landroid/widget/VideoView;->mFitVideoWidth:I

    .line 247
    iput v0, p0, Landroid/widget/VideoView;->mFitVideoHeight:I

    .line 248
    iget-object v6, p0, Landroid/widget/VideoView;->mZoomLevel:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 249
    iget-object v6, p0, Landroid/widget/VideoView;->mZoomLevel:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Landroid/widget/VideoView;->calculateZoomLevel(Ljava/util/ArrayList;)V

    .line 252
    :cond_2
    iget-object v6, p0, Landroid/widget/VideoView;->mCurZoomType:Landroid/widget/VideoView$ZoomType;

    sget-object v7, Landroid/widget/VideoView$ZoomType;->ZOOM_HDMI:Landroid/widget/VideoView$ZoomType;

    if-ne v6, v7, :cond_4

    .line 253
    iget-object v6, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onMeasure --->ZOOM_HDMI"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget v6, p0, Landroid/widget/VideoView;->mScreenWidth:I

    iget v7, p0, Landroid/widget/VideoView;->mScreenHeight:I

    invoke-virtual {p0, v6, v7}, Landroid/widget/VideoView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 244
    :cond_3
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v6, v2

    iget v7, p0, Landroid/widget/VideoView;->mVideoHeight:I

    div-int v1, v6, v7

    goto :goto_1

    .line 255
    :cond_4
    iget-object v6, p0, Landroid/widget/VideoView;->mCurZoomType:Landroid/widget/VideoView$ZoomType;

    sget-object v7, Landroid/widget/VideoView$ZoomType;->ZOOM_VERTICAL:Landroid/widget/VideoView$ZoomType;

    if-ne v6, v7, :cond_6

    iget-wide v6, p0, Landroid/widget/VideoView;->mZoomScale:D

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_6

    .line 256
    iget-object v6, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onMeasure --->ZOOM_VERTICAL"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget v4, p0, Landroid/widget/VideoView;->mScreenHeight:I

    .line 258
    .local v4, verWidth:I
    iget v3, p0, Landroid/widget/VideoView;->mScreenWidth:I

    .line 259
    .local v3, verHeight:I
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    iget v7, p0, Landroid/widget/VideoView;->mScreenWidth:I

    mul-int/2addr v6, v7

    iget v7, p0, Landroid/widget/VideoView;->mScreenHeight:I

    iget v8, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v7, v8

    if-le v6, v7, :cond_5

    .line 260
    iget v6, p0, Landroid/widget/VideoView;->mScreenHeight:I

    iget v7, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v6, v7

    iget v7, p0, Landroid/widget/VideoView;->mVideoWidth:I

    div-int v3, v6, v7

    .line 264
    :goto_2
    iget-object v6, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "verWidth  --->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "verHeight--->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p0, v4, v3}, Landroid/widget/VideoView;->setMeasuredDimension(II)V

    goto/16 :goto_0

    .line 262
    :cond_5
    iget v6, p0, Landroid/widget/VideoView;->mScreenWidth:I

    iget v7, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v6, v7

    iget v7, p0, Landroid/widget/VideoView;->mVideoHeight:I

    div-int v4, v6, v7

    goto :goto_2

    .line 268
    .end local v3           #verHeight:I
    .end local v4           #verWidth:I
    :cond_6
    iget-wide v6, p0, Landroid/widget/VideoView;->mZoomScale:D

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_7

    .line 269
    iget v6, p0, Landroid/widget/VideoView;->mBaseZoomWidth:I

    int-to-double v6, v6

    iget-wide v8, p0, Landroid/widget/VideoView;->mZoomScale:D

    mul-double/2addr v6, v8

    add-double/2addr v6, v10

    double-to-int v6, v6

    iput v6, p0, Landroid/widget/VideoView;->mZoomWidth:I

    .line 270
    iget v6, p0, Landroid/widget/VideoView;->mBaseZoomHeight:I

    int-to-double v6, v6

    iget-wide v8, p0, Landroid/widget/VideoView;->mZoomScale:D

    mul-double/2addr v6, v8

    add-double/2addr v6, v10

    double-to-int v6, v6

    iput v6, p0, Landroid/widget/VideoView;->mZoomHeight:I

    .line 275
    :goto_3
    iget-object v6, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mZoomWidth  --->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/widget/VideoView;->mZoomWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "mZoomHeight--->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/widget/VideoView;->mZoomHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget v6, p0, Landroid/widget/VideoView;->mZoomWidth:I

    iget v7, p0, Landroid/widget/VideoView;->mZoomHeight:I

    invoke-virtual {p0, v6, v7}, Landroid/widget/VideoView;->setMeasuredDimension(II)V

    goto/16 :goto_0

    .line 272
    :cond_7
    iget v6, p0, Landroid/widget/VideoView;->mFitVideoWidth:I

    int-to-double v6, v6

    iget-wide v8, p0, Landroid/widget/VideoView;->mZoomScale:D

    mul-double/2addr v6, v8

    add-double/2addr v6, v10

    double-to-int v6, v6

    iput v6, p0, Landroid/widget/VideoView;->mZoomWidth:I

    .line 273
    iget v6, p0, Landroid/widget/VideoView;->mFitVideoHeight:I

    int-to-double v6, v6

    iget-wide v8, p0, Landroid/widget/VideoView;->mZoomScale:D

    mul-double/2addr v6, v8

    add-double/2addr v6, v10

    double-to-int v6, v6

    iput v6, p0, Landroid/widget/VideoView;->mZoomHeight:I

    goto :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 766
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 767
    invoke-direct {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 769
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 774
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 775
    invoke-direct {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 777
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 839
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 842
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 845
    :cond_0
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 846
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 3
    .parameter "desiredSize"
    .parameter "measureSpec"

    .prologue
    .line 281
    move v0, p1

    .line 282
    .local v0, result:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 283
    .local v1, specMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 285
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 306
    :goto_0
    return v0

    .line 290
    :sswitch_0
    move v0, p1

    .line 291
    goto :goto_0

    .line 298
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 299
    goto :goto_0

    .line 303
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 285
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 853
    invoke-direct {p0}, Landroid/widget/VideoView;->openVideo()V

    .line 854
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .parameter "msec"

    .prologue
    .line 877
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/VideoView;->mIsSeeking:Z

    if-nez v0, :cond_0

    .line 878
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/VideoView;->mIsSeeking:Z

    .line 879
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 880
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    .line 884
    :goto_0
    return-void

    .line 882
    :cond_0
    iput p1, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setAudioTrackIndex(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 956
    iget-boolean v0, p0, Landroid/widget/VideoView;->mIsSeeking:Z

    if-eqz v0, :cond_1

    .line 957
    iget-object v0, p0, Landroid/widget/VideoView;->mPendingTracknfo:Landroid/widget/VideoView$PendingTrackInfo;

    iput p1, v0, Landroid/widget/VideoView$PendingTrackInfo;->audioTrackIndex:I

    .line 966
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 959
    :cond_1
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Landroid/widget/VideoView;->mAudioTrack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 961
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Landroid/widget/VideoView;->mAudioTrack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->selectTrack(I)V

    .line 962
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 415
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 418
    :cond_0
    iput-object p1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    .line 419
    invoke-direct {p0}, Landroid/widget/VideoView;->attachMediaController()V

    .line 420
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 677
    iput-object p1, p0, Landroid/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 678
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 690
    iput-object p1, p0, Landroid/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 691
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 666
    iput-object p1, p0, Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 667
    return-void
.end method

.method public setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 695
    iput-object p1, p0, Landroid/widget/VideoView;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 696
    return-void
.end method

.method public setSpdifStatus(Z)V
    .locals 3
    .parameter "b"

    .prologue
    .line 1038
    iput-boolean p1, p0, Landroid/widget/VideoView;->mbSpdifStatus:Z

    .line 1039
    iget-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoView mbSpdifStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/widget/VideoView;->mbSpdifStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1041
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-boolean v1, p0, Landroid/widget/VideoView;->mbSpdifStatus:Z

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->switchSpdifStatus(Z)V

    .line 1043
    :cond_0
    return-void
.end method

.method public setTimeTextIndex(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 985
    iget-boolean v0, p0, Landroid/widget/VideoView;->mIsSeeking:Z

    if-eqz v0, :cond_1

    .line 986
    iget-object v0, p0, Landroid/widget/VideoView;->mPendingTracknfo:Landroid/widget/VideoView$PendingTrackInfo;

    iput p1, v0, Landroid/widget/VideoView$PendingTrackInfo;->timeTextIndex:I

    .line 994
    :cond_0
    :goto_0
    return-void

    .line 988
    :cond_1
    iget-object v0, p0, Landroid/widget/VideoView;->mTimedText:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 989
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Landroid/widget/VideoView;->mTimedText:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->selectTrack(I)V

    goto :goto_0
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 331
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 332
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 335
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 336
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 342
    iput-boolean v0, p0, Landroid/widget/VideoView;->mbForceNuPlayer:Z

    .line 343
    iput-object p1, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    .line 344
    iput-object p2, p0, Landroid/widget/VideoView;->mHeaders:Ljava/util/Map;

    .line 345
    iput v0, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    .line 346
    invoke-direct {p0}, Landroid/widget/VideoView;->openVideo()V

    .line 347
    return-void
.end method

.method public setVideoZoomLevel(D)V
    .locals 2
    .parameter "level"

    .prologue
    .line 156
    iget-object v0, p0, Landroid/widget/VideoView;->mCurZoomType:Landroid/widget/VideoView$ZoomType;

    sget-object v1, Landroid/widget/VideoView$ZoomType;->ZOOM_LEVEL:Landroid/widget/VideoView$ZoomType;

    if-ne v0, v1, :cond_1

    .line 157
    iget v0, p0, Landroid/widget/VideoView;->mFitVideoWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/VideoView;->mFitVideoHeight:I

    if-nez v0, :cond_2

    .line 158
    :cond_0
    iget-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mFitVideoWidth, mFitVideoHeight  is :0 "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :goto_0
    invoke-virtual {p0}, Landroid/widget/VideoView;->requestLayout()V

    .line 163
    invoke-virtual {p0}, Landroid/widget/VideoView;->invalidate()V

    .line 167
    :cond_1
    return-void

    .line 160
    :cond_2
    iput-wide p1, p0, Landroid/widget/VideoView;->mZoomScale:D

    goto :goto_0
.end method

.method public setVideoZoomType(Landroid/widget/VideoView$ZoomType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 152
    iput-object p1, p0, Landroid/widget/VideoView;->mCurZoomType:Landroid/widget/VideoView$ZoomType;

    .line 153
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 831
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 833
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 835
    :cond_0
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 836
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 350
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 352
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 354
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 355
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 357
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 849
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/VideoView;->release(Z)V

    .line 850
    return-void
.end method
