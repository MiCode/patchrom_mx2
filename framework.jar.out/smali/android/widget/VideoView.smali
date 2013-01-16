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

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurZoomType:Landroid/widget/VideoView$ZoomType;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mDuration:I

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

    .line 131
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 58
    const-string v0, "VideoView"

    iput-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

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

    .line 93
    iput v2, p0, Landroid/widget/VideoView;->mFitVideoWidth:I

    .line 94
    iput v2, p0, Landroid/widget/VideoView;->mFitVideoHeight:I

    .line 95
    const/16 v0, 0x500

    iput v0, p0, Landroid/widget/VideoView;->mScreenWidth:I

    .line 96
    const/16 v0, 0x320

    iput v0, p0, Landroid/widget/VideoView;->mScreenHeight:I

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/VideoView;->mAudioTrack:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/VideoView;->mTimedText:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Landroid/widget/VideoView$PendingTrackInfo;

    invoke-direct {v0, p0, v1}, Landroid/widget/VideoView$PendingTrackInfo;-><init>(Landroid/widget/VideoView;Landroid/widget/VideoView$1;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mPendingTracknfo:Landroid/widget/VideoView$PendingTrackInfo;

    .line 108
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Landroid/widget/VideoView;->mZoomScale:D

    .line 112
    iput-boolean v2, p0, Landroid/widget/VideoView;->mIsSeeking:Z

    .line 113
    sget-object v0, Landroid/widget/VideoView$ZoomType;->ZOOM_LEVEL:Landroid/widget/VideoView$ZoomType;

    iput-object v0, p0, Landroid/widget/VideoView;->mCurZoomType:Landroid/widget/VideoView$ZoomType;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/VideoView;->mZoomLevel:Ljava/util/ArrayList;

    .line 116
    iput-boolean v2, p0, Landroid/widget/VideoView;->mbSpdifStatus:Z

    .line 117
    iput-boolean v2, p0, Landroid/widget/VideoView;->mbForceNuPlayer:Z

    .line 426
    new-instance v0, Landroid/widget/VideoView$1;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$1;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 438
    new-instance v0, Landroid/widget/VideoView$2;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$2;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 509
    new-instance v0, Landroid/widget/VideoView$3;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$3;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSeekCompletionListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 530
    new-instance v0, Landroid/widget/VideoView$4;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$4;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 544
    new-instance v0, Landroid/widget/VideoView$5;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$5;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 553
    new-instance v0, Landroid/widget/VideoView$6;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$6;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 629
    new-instance v0, Landroid/widget/VideoView$7;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$7;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 676
    new-instance v0, Landroid/widget/VideoView$8;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$8;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 132
    invoke-direct {p0, p1}, Landroid/widget/VideoView;->initVideoView(Landroid/content/Context;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 137
    invoke-direct {p0, p1}, Landroid/widget/VideoView;->initVideoView(Landroid/content/Context;)V

    .line 138
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

    .line 141
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    const-string v0, "VideoView"

    iput-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

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

    .line 93
    iput v2, p0, Landroid/widget/VideoView;->mFitVideoWidth:I

    .line 94
    iput v2, p0, Landroid/widget/VideoView;->mFitVideoHeight:I

    .line 95
    const/16 v0, 0x500

    iput v0, p0, Landroid/widget/VideoView;->mScreenWidth:I

    .line 96
    const/16 v0, 0x320

    iput v0, p0, Landroid/widget/VideoView;->mScreenHeight:I

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/VideoView;->mAudioTrack:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/VideoView;->mTimedText:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Landroid/widget/VideoView$PendingTrackInfo;

    invoke-direct {v0, p0, v1}, Landroid/widget/VideoView$PendingTrackInfo;-><init>(Landroid/widget/VideoView;Landroid/widget/VideoView$1;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mPendingTracknfo:Landroid/widget/VideoView$PendingTrackInfo;

    .line 108
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Landroid/widget/VideoView;->mZoomScale:D

    .line 112
    iput-boolean v2, p0, Landroid/widget/VideoView;->mIsSeeking:Z

    .line 113
    sget-object v0, Landroid/widget/VideoView$ZoomType;->ZOOM_LEVEL:Landroid/widget/VideoView$ZoomType;

    iput-object v0, p0, Landroid/widget/VideoView;->mCurZoomType:Landroid/widget/VideoView$ZoomType;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/VideoView;->mZoomLevel:Ljava/util/ArrayList;

    .line 116
    iput-boolean v2, p0, Landroid/widget/VideoView;->mbSpdifStatus:Z

    .line 117
    iput-boolean v2, p0, Landroid/widget/VideoView;->mbForceNuPlayer:Z

    .line 426
    new-instance v0, Landroid/widget/VideoView$1;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$1;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 438
    new-instance v0, Landroid/widget/VideoView$2;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$2;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 509
    new-instance v0, Landroid/widget/VideoView$3;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$3;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSeekCompletionListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 530
    new-instance v0, Landroid/widget/VideoView$4;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$4;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 544
    new-instance v0, Landroid/widget/VideoView$5;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$5;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 553
    new-instance v0, Landroid/widget/VideoView$6;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$6;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 629
    new-instance v0, Landroid/widget/VideoView$7;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$7;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 676
    new-instance v0, Landroid/widget/VideoView$8;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$8;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 142
    invoke-direct {p0, p1}, Landroid/widget/VideoView;->initVideoView(Landroid/content/Context;)V

    .line 143
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

.method static synthetic access$1000(Landroid/widget/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$1102(Landroid/widget/VideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Landroid/widget/VideoView;->mCanPause:Z

    return p1
.end method

.method static synthetic access$1202(Landroid/widget/VideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Landroid/widget/VideoView;->mCanSeekBack:Z

    return p1
.end method

.method static synthetic access$1302(Landroid/widget/VideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Landroid/widget/VideoView;->mCanSeekForward:Z

    return p1
.end method

.method static synthetic access$1400(Landroid/widget/VideoView;)Landroid/widget/MediaController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Landroid/widget/VideoView;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$1502(Landroid/widget/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Landroid/widget/VideoView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$1600(Landroid/widget/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Landroid/widget/VideoView;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$1602(Landroid/widget/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Landroid/widget/VideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1700(Landroid/widget/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Landroid/widget/VideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$1702(Landroid/widget/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Landroid/widget/VideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$1800(Landroid/widget/VideoView;)Landroid/widget/VideoView$PendingTrackInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/widget/VideoView;->mPendingTracknfo:Landroid/widget/VideoView$PendingTrackInfo;

    return-object v0
.end method

.method static synthetic access$1902(Landroid/widget/VideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Landroid/widget/VideoView;->mIsSeeking:Z

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

.method static synthetic access$2000(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
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

.method static synthetic access$2100(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnTimedTextListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/widget/VideoView;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/widget/VideoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Landroid/widget/VideoView;->mbForceNuPlayer:Z

    return v0
.end method

.method static synthetic access$2202(Landroid/widget/VideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Landroid/widget/VideoView;->mbForceNuPlayer:Z

    return p1
.end method

.method static synthetic access$2300(Landroid/widget/VideoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/widget/VideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$2400(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/widget/VideoView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2602(Landroid/widget/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$2702(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$2800(Landroid/widget/VideoView;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/widget/VideoView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/widget/VideoView;->mLastUriString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2902(Landroid/widget/VideoView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Landroid/widget/VideoView;->mLastUriString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Landroid/widget/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Landroid/widget/VideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$3000(Landroid/widget/VideoView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/widget/VideoView;->mHandler:Landroid/os/Handler;

    return-object v0
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

.method static synthetic access$3100(Landroid/widget/VideoView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/widget/VideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$402(Landroid/widget/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Landroid/widget/VideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$500(Landroid/widget/VideoView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/widget/VideoView;->mAudioTrack:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/VideoView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/widget/VideoView;->mTimedText:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/VideoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Landroid/widget/VideoView;->mbSpdifStatus:Z

    return v0
.end method

.method private attachMediaController()V
    .locals 3

    .prologue
    .line 417
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 419
    invoke-virtual {p0}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 421
    .local v0, anchorView:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 422
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 424
    .end local v0           #anchorView:Landroid/view/View;
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 419
    goto :goto_0
.end method

.method private calculateZoomLevel(Ljava/util/ArrayList;)V
    .locals 16
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
    .line 184
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Double;>;"
    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/VideoView;->mVideoWidth:I

    if-lez v11, :cond_0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/VideoView;->mVideoHeight:I

    if-gtz v11, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    const/4 v8, 0x0

    .line 188
    .local v8, width:I
    const/4 v1, 0x0

    .line 189
    .local v1, height:I
    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/VideoView;->mVideoWidth:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/VideoView;->mScreenHeight:I

    mul-int/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/VideoView;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v12, v13

    if-le v11, v12, :cond_3

    .line 190
    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/VideoView;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/VideoView;->mVideoWidth:I

    div-int v1, v11, v12

    .line 191
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/VideoView;->mScreenWidth:I

    .line 196
    :goto_1
    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/VideoView;->mScreenWidth:I

    int-to-double v11, v11

    int-to-double v13, v8

    div-double/2addr v11, v13

    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13}, Landroid/widget/VideoView;->roundingLevel(DI)D

    move-result-wide v9

    .line 197
    .local v9, widthLevel:D
    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/VideoView;->mScreenHeight:I

    int-to-double v11, v11

    int-to-double v13, v1

    div-double/2addr v11, v13

    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13}, Landroid/widget/VideoView;->roundingLevel(DI)D

    move-result-wide v2

    .line 198
    .local v2, heightLevel:D
    const-wide v6, 0x3ff199999999999aL

    .line 200
    .local v6, rationLevel:D
    const/4 v11, 0x3

    new-array v5, v11, [D

    const/4 v11, 0x0

    aput-wide v9, v5, v11

    const/4 v11, 0x1

    aput-wide v2, v5, v11

    const/4 v11, 0x2

    aput-wide v6, v5, v11

    .line 201
    .local v5, level:[D
    invoke-static {v5}, Ljava/util/Arrays;->sort([D)V

    .line 202
    const/4 v11, 0x0

    aget-wide v11, v5, v11

    const/4 v13, 0x2

    aget-wide v13, v5, v13

    cmpl-double v11, v11, v13

    if-nez v11, :cond_4

    .line 203
    const/4 v11, 0x1

    const/4 v12, 0x0

    aget-wide v12, v5, v12

    const-wide v14, 0x3fb999999999999aL

    add-double/2addr v12, v14

    aput-wide v12, v5, v11

    .line 204
    const/4 v11, 0x2

    const/4 v12, 0x0

    aget-wide v12, v5, v12

    const-wide v14, 0x3fc999999999999aL

    add-double/2addr v12, v14

    aput-wide v12, v5, v11

    .line 213
    :cond_2
    :goto_2
    const/4 v4, 0x0

    .local v4, index:I
    :goto_3
    const/4 v11, 0x3

    if-ge v4, v11, :cond_6

    .line 215
    aget-wide v11, v5, v4

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 193
    .end local v2           #heightLevel:D
    .end local v4           #index:I
    .end local v5           #level:[D
    .end local v6           #rationLevel:D
    .end local v9           #widthLevel:D
    :cond_3
    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/VideoView;->mScreenHeight:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/VideoView;->mVideoHeight:I

    div-int v8, v11, v12

    .line 194
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/VideoView;->mScreenHeight:I

    goto :goto_1

    .line 205
    .restart local v2       #heightLevel:D
    .restart local v5       #level:[D
    .restart local v6       #rationLevel:D
    .restart local v9       #widthLevel:D
    :cond_4
    const/4 v11, 0x1

    aget-wide v11, v5, v11

    const/4 v13, 0x0

    aget-wide v13, v5, v13

    sub-double/2addr v11, v13

    const-wide v13, 0x3fb999999999999aL

    cmpg-double v11, v11, v13

    if-gez v11, :cond_5

    .line 206
    const/4 v11, 0x1

    const/4 v12, 0x0

    aget-wide v12, v5, v12

    const-wide v14, 0x3fb999999999999aL

    add-double/2addr v12, v14

    aput-wide v12, v5, v11

    .line 207
    const/4 v11, 0x2

    aget-wide v11, v5, v11

    const/4 v13, 0x1

    aget-wide v13, v5, v13

    sub-double/2addr v11, v13

    const-wide v13, 0x3fb999999999999aL

    cmpg-double v11, v11, v13

    if-gez v11, :cond_2

    .line 208
    const/4 v11, 0x2

    const/4 v12, 0x1

    aget-wide v12, v5, v12

    const-wide v14, 0x3fb999999999999aL

    add-double/2addr v12, v14

    aput-wide v12, v5, v11

    goto :goto_2

    .line 210
    :cond_5
    const/4 v11, 0x2

    aget-wide v11, v5, v11

    const/4 v13, 0x1

    aget-wide v13, v5, v13

    sub-double/2addr v11, v13

    const-wide v13, 0x3fb999999999999aL

    cmpg-double v11, v11, v13

    if-gez v11, :cond_2

    .line 211
    const/4 v11, 0x2

    const/4 v12, 0x1

    aget-wide v12, v5, v12

    const-wide v14, 0x3fb999999999999aL

    add-double/2addr v12, v14

    aput-wide v12, v5, v11

    goto :goto_2

    .line 217
    .restart local v4       #index:I
    :cond_6
    const/4 v11, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    const-wide v13, 0x3fb999999999999aL

    add-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private extractTrackInfo()V
    .locals 4

    .prologue
    .line 167
    iget-object v1, p0, Landroid/widget/VideoView;->mTrackInfo:[Landroid/media/MediaPlayer$TrackInfo;

    .line 168
    .local v1, minfo:[Landroid/media/MediaPlayer$TrackInfo;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Landroid/widget/VideoView;->mTrackInfo:[Landroid/media/MediaPlayer$TrackInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 169
    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v2

    if-nez v2, :cond_1

    .line 168
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_1
    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 173
    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 174
    iget-object v2, p0, Landroid/widget/VideoView;->mAudioTrack:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 175
    :cond_2
    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 176
    iget-object v2, p0, Landroid/widget/VideoView;->mTimedText:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 181
    :cond_3
    return-void
.end method

.method private initVideoView(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 301
    iput v3, p0, Landroid/widget/VideoView;->mVideoWidth:I

    .line 302
    iput v3, p0, Landroid/widget/VideoView;->mVideoHeight:I

    .line 303
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 304
    .local v0, outSize:Landroid/graphics/Point;
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 305
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_0

    .line 306
    sget-object v1, Landroid/widget/VideoView$ZoomType;->ZOOM_LEVEL:Landroid/widget/VideoView$ZoomType;

    iput-object v1, p0, Landroid/widget/VideoView;->mCurZoomType:Landroid/widget/VideoView$ZoomType;

    .line 310
    :goto_0
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_1

    iget v1, v0, Landroid/graphics/Point;->x:I

    :goto_1
    iput v1, p0, Landroid/widget/VideoView;->mScreenWidth:I

    .line 311
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_2

    iget v1, v0, Landroid/graphics/Point;->y:I

    :goto_2
    iput v1, p0, Landroid/widget/VideoView;->mScreenHeight:I

    .line 312
    invoke-virtual {p0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 313
    invoke-virtual {p0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 314
    invoke-virtual {p0, v4}, Landroid/widget/VideoView;->setFocusable(Z)V

    .line 315
    invoke-virtual {p0, v4}, Landroid/widget/VideoView;->setFocusableInTouchMode(Z)V

    .line 316
    invoke-virtual {p0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 317
    iput v3, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 318
    iput v3, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 319
    return-void

    .line 308
    :cond_0
    sget-object v1, Landroid/widget/VideoView$ZoomType;->ZOOM_VERTICAL:Landroid/widget/VideoView$ZoomType;

    iput-object v1, p0, Landroid/widget/VideoView;->mCurZoomType:Landroid/widget/VideoView$ZoomType;

    goto :goto_0

    .line 310
    :cond_1
    iget v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 311
    :cond_2
    iget v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_2
.end method

.method private isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 874
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

    .line 354
    iget-object v2, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v2, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .local v1, i:Landroid/content/Intent;
    const-string v2, "command"

    const-string/jumbo v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 366
    invoke-direct {p0, v8}, Landroid/widget/VideoView;->release(Z)V

    .line 368
    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 369
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 370
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mSeekCompletionListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 371
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 372
    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/VideoView;->mDuration:I

    .line 373
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 374
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 375
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V

    .line 376
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 377
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    .line 378
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Landroid/widget/VideoView;->mHeaders:Ljava/util/Map;

    iget-boolean v6, p0, Landroid/widget/VideoView;->mbForceNuPlayer:Z

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 380
    :try_start_1
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 386
    :try_start_2
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 387
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 388
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 391
    const/4 v2, 0x1

    iput v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 392
    invoke-direct {p0}, Landroid/widget/VideoView;->attachMediaController()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 393
    :catch_0
    move-exception v0

    .line 394
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

    .line 395
    iput v7, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 396
    iput v7, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 397
    iget-object v2, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v9, v8}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 381
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 382
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

    .line 399
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 400
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

    .line 401
    iput v7, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 402
    iput v7, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 403
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

    .line 722
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 724
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 725
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 726
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 727
    invoke-direct {p0}, Landroid/widget/VideoView;->resetZoomList()V

    .line 728
    iput v1, p0, Landroid/widget/VideoView;->mVideoWidth:I

    .line 729
    iput v1, p0, Landroid/widget/VideoView;->mVideoHeight:I

    .line 730
    iput v1, p0, Landroid/widget/VideoView;->mFitVideoWidth:I

    .line 731
    iput v1, p0, Landroid/widget/VideoView;->mFitVideoHeight:I

    .line 732
    iput v1, p0, Landroid/widget/VideoView;->mZoomWidth:I

    .line 733
    iput v1, p0, Landroid/widget/VideoView;->mZoomHeight:I

    .line 734
    if-eqz p1, :cond_0

    .line 735
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 738
    :cond_0
    return-void
.end method

.method private resetZoomList()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1003
    iget-object v0, p0, Landroid/widget/VideoView;->mZoomLevel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1004
    iget-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetZoomList --->"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iput v2, p0, Landroid/widget/VideoView;->mFitVideoWidth:I

    .line 1006
    iput v2, p0, Landroid/widget/VideoView;->mFitVideoHeight:I

    .line 1007
    return-void
.end method

.method private roundingLevel(DI)D
    .locals 3
    .parameter "level"
    .parameter "scale"

    .prologue
    .line 221
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 222
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
    .line 799
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 804
    :goto_0
    return-void

    .line 802
    :cond_0
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 881
    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 885
    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 889
    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanSeekForward:Z

    return v0
.end method

.method public closeTimeText(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 892
    iget-boolean v0, p0, Landroid/widget/VideoView;->mIsSeeking:Z

    if-eqz v0, :cond_0

    .line 893
    iget-object v1, p0, Landroid/widget/VideoView;->mPendingTracknfo:Landroid/widget/VideoView$PendingTrackInfo;

    iget-object v0, p0, Landroid/widget/VideoView;->mTimedText:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/widget/VideoView$PendingTrackInfo;->timeTextIndex:I

    .line 897
    :goto_0
    return-void

    .line 895
    :cond_0
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
    .line 996
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 997
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->ass_To_html(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    .line 999
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAudioTrackCount()I
    .locals 1

    .prologue
    .line 916
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Landroid/widget/VideoView;->mAudioTrack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 919
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
    .line 940
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 941
    iget-object v1, p0, Landroid/widget/VideoView;->mAudioTrack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 942
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

    .line 943
    .local v0, str:Ljava/lang/String;
    const-string/jumbo v1, "und"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 944
    const-string v0, ""

    .line 951
    .end local v0           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 948
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 951
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 868
    iget v0, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    .line 870
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 846
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 849
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 834
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 835
    iget v0, p0, Landroid/widget/VideoView;->mDuration:I

    if-lez v0, :cond_0

    .line 836
    iget v0, p0, Landroid/widget/VideoView;->mDuration:I

    .line 842
    :goto_0
    return v0

    .line 838
    :cond_0
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Landroid/widget/VideoView;->mDuration:I

    .line 839
    iget v0, p0, Landroid/widget/VideoView;->mDuration:I

    goto :goto_0

    .line 841
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/VideoView;->mDuration:I

    .line 842
    iget v0, p0, Landroid/widget/VideoView;->mDuration:I

    goto :goto_0
.end method

.method public getTimeTextCount()I
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Landroid/widget/VideoView;->mTimedText:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTimeTextName(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 903
    iget-object v1, p0, Landroid/widget/VideoView;->mTimedText:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 904
    iget-object v1, p0, Landroid/widget/VideoView;->mTimedText:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 905
    .local v0, pos:I
    if-ltz v0, :cond_0

    .line 906
    iget-object v1, p0, Landroid/widget/VideoView;->mTrackInfo:[Landroid/media/MediaPlayer$TrackInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/MediaPlayer$TrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 911
    .end local v0           #pos:I
    :goto_0
    return-object v1

    .line 908
    .restart local v0       #pos:I
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 911
    .end local v0           #pos:I
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public getVideoTrackRotation()I
    .locals 1

    .prologue
    .line 923
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
    .line 163
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
    .line 970
    .local p1, timeTextPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, timeTextType:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 971
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 972
    .local v3, strPath:Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 973
    .local v4, strType:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 974
    .local v2, str:Ljava/lang/String;
    const-string v5, "chs"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 975
    const-string v2, "chs"

    .line 982
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

    .line 970
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 976
    :cond_1
    const-string v5, "cht"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 977
    const-string v2, "cht"

    goto :goto_1

    .line 978
    :cond_2
    const-string v5, "eng"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 979
    const-string v2, "eng"

    goto :goto_1

    .line 983
    :catch_0
    move-exception v0

    .line 984
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 985
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 986
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    .line 987
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 988
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 991
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #str:Ljava/lang/String;
    .end local v3           #strPath:Ljava/lang/String;
    .end local v4           #strType:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/VideoView;->mTrackInfo:[Landroid/media/MediaPlayer$TrackInfo;

    .line 992
    invoke-direct {p0}, Landroid/widget/VideoView;->extractTrackInfo()V

    .line 993
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 863
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

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 759
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

    .line 766
    .local v0, isKeyCodeSupported:Z
    :goto_0
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    iget-object v2, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v2, :cond_8

    .line 767
    const/16 v2, 0x4f

    if-eq p1, v2, :cond_0

    const/16 v2, 0x55

    if-ne p1, v2, :cond_4

    .line 769
    :cond_0
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 770
    invoke-virtual {p0}, Landroid/widget/VideoView;->pause()V

    .line 771
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 795
    :cond_1
    :goto_1
    return v1

    .line 759
    .end local v0           #isKeyCodeSupported:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 773
    .restart local v0       #isKeyCodeSupported:Z
    :cond_3
    invoke-virtual {p0}, Landroid/widget/VideoView;->start()V

    .line 774
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 777
    :cond_4
    const/16 v2, 0x7e

    if-ne p1, v2, :cond_5

    .line 778
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    .line 779
    invoke-virtual {p0}, Landroid/widget/VideoView;->start()V

    .line 780
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 783
    :cond_5
    const/16 v2, 0x56

    if-eq p1, v2, :cond_6

    const/16 v2, 0x7f

    if-ne p1, v2, :cond_7

    .line 785
    :cond_6
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 786
    invoke-virtual {p0}, Landroid/widget/VideoView;->pause()V

    .line 787
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    goto :goto_1

    .line 791
    :cond_7
    invoke-direct {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 795
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
    const-wide/high16 v10, 0x3fe0

    .line 227
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    invoke-static {v6, p1}, Landroid/widget/VideoView;->getDefaultSize(II)I

    move-result v5

    .line 228
    .local v5, width:I
    iget v6, p0, Landroid/widget/VideoView;->mVideoHeight:I

    invoke-static {v6, p2}, Landroid/widget/VideoView;->getDefaultSize(II)I

    move-result v2

    .line 229
    .local v2, height:I
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    if-lez v6, :cond_0

    iget v6, p0, Landroid/widget/VideoView;->mVideoHeight:I

    if-gtz v6, :cond_1

    .line 230
    :cond_0
    invoke-virtual {p0, v5, v2}, Landroid/widget/VideoView;->setMeasuredDimension(II)V

    .line 269
    :goto_0
    return-void

    .line 233
    :cond_1
    iget v1, p0, Landroid/widget/VideoView;->mScreenWidth:I

    .line 234
    .local v1, fit_width:I
    iget v0, p0, Landroid/widget/VideoView;->mScreenHeight:I

    .line 235
    .local v0, fit_height:I
    iget v6, p0, Landroid/widget/VideoView;->mFitVideoWidth:I

    if-nez v6, :cond_2

    iget v6, p0, Landroid/widget/VideoView;->mFitVideoHeight:I

    if-nez v6, :cond_2

    .line 236
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    iget v7, p0, Landroid/widget/VideoView;->mScreenHeight:I

    mul-int/2addr v6, v7

    iget v7, p0, Landroid/widget/VideoView;->mScreenWidth:I

    iget v8, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v7, v8

    if-le v6, v7, :cond_4

    .line 237
    iget v6, p0, Landroid/widget/VideoView;->mScreenWidth:I

    iget v7, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v6, v7

    iget v7, p0, Landroid/widget/VideoView;->mVideoWidth:I

    div-int v0, v6, v7

    .line 241
    :goto_1
    iput v1, p0, Landroid/widget/VideoView;->mFitVideoWidth:I

    .line 242
    iput v0, p0, Landroid/widget/VideoView;->mFitVideoHeight:I

    .line 244
    :cond_2
    iget-object v6, p0, Landroid/widget/VideoView;->mZoomLevel:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 245
    iget-object v6, p0, Landroid/widget/VideoView;->mZoomLevel:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Landroid/widget/VideoView;->calculateZoomLevel(Ljava/util/ArrayList;)V

    .line 248
    :cond_3
    iget-object v6, p0, Landroid/widget/VideoView;->mCurZoomType:Landroid/widget/VideoView$ZoomType;

    sget-object v7, Landroid/widget/VideoView$ZoomType;->ZOOM_HDMI:Landroid/widget/VideoView$ZoomType;

    if-ne v6, v7, :cond_5

    .line 249
    iget-object v6, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onMeasure --->ZOOM_HDMI"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget v6, p0, Landroid/widget/VideoView;->mScreenWidth:I

    iget v7, p0, Landroid/widget/VideoView;->mScreenHeight:I

    invoke-virtual {p0, v6, v7}, Landroid/widget/VideoView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 239
    :cond_4
    iget v6, p0, Landroid/widget/VideoView;->mScreenHeight:I

    iget v7, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v6, v7

    iget v7, p0, Landroid/widget/VideoView;->mVideoHeight:I

    div-int v1, v6, v7

    goto :goto_1

    .line 251
    :cond_5
    iget-object v6, p0, Landroid/widget/VideoView;->mCurZoomType:Landroid/widget/VideoView$ZoomType;

    sget-object v7, Landroid/widget/VideoView$ZoomType;->ZOOM_VERTICAL:Landroid/widget/VideoView$ZoomType;

    if-ne v6, v7, :cond_7

    .line 252
    iget-object v6, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onMeasure --->ZOOM_VERTICAL"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget v4, p0, Landroid/widget/VideoView;->mScreenHeight:I

    .line 254
    .local v4, verWidth:I
    iget v3, p0, Landroid/widget/VideoView;->mScreenWidth:I

    .line 255
    .local v3, verHeight:I
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    iget v7, p0, Landroid/widget/VideoView;->mScreenWidth:I

    mul-int/2addr v6, v7

    iget v7, p0, Landroid/widget/VideoView;->mScreenHeight:I

    iget v8, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v7, v8

    if-le v6, v7, :cond_6

    .line 256
    iget v6, p0, Landroid/widget/VideoView;->mScreenHeight:I

    iget v7, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v6, v7

    iget v7, p0, Landroid/widget/VideoView;->mVideoWidth:I

    div-int v3, v6, v7

    .line 260
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

    .line 261
    invoke-virtual {p0, v4, v3}, Landroid/widget/VideoView;->setMeasuredDimension(II)V

    goto/16 :goto_0

    .line 258
    :cond_6
    iget v6, p0, Landroid/widget/VideoView;->mScreenWidth:I

    iget v7, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v6, v7

    iget v7, p0, Landroid/widget/VideoView;->mVideoHeight:I

    div-int v4, v6, v7

    goto :goto_2

    .line 264
    .end local v3           #verHeight:I
    .end local v4           #verWidth:I
    :cond_7
    iget v6, p0, Landroid/widget/VideoView;->mFitVideoWidth:I

    int-to-double v6, v6

    iget-wide v8, p0, Landroid/widget/VideoView;->mZoomScale:D

    mul-double/2addr v6, v8

    add-double/2addr v6, v10

    double-to-int v6, v6

    iput v6, p0, Landroid/widget/VideoView;->mZoomWidth:I

    .line 265
    iget v6, p0, Landroid/widget/VideoView;->mFitVideoHeight:I

    int-to-double v6, v6

    iget-wide v8, p0, Landroid/widget/VideoView;->mZoomScale:D

    mul-double/2addr v6, v8

    add-double/2addr v6, v10

    double-to-int v6, v6

    iput v6, p0, Landroid/widget/VideoView;->mZoomHeight:I

    .line 266
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

    .line 267
    iget v6, p0, Landroid/widget/VideoView;->mZoomWidth:I

    iget v7, p0, Landroid/widget/VideoView;->mZoomHeight:I

    invoke-virtual {p0, v6, v7}, Landroid/widget/VideoView;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 742
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 743
    invoke-direct {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 745
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 750
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 751
    invoke-direct {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 753
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 815
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 818
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 821
    :cond_0
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 822
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 3
    .parameter "desiredSize"
    .parameter "measureSpec"

    .prologue
    .line 272
    move v0, p1

    .line 273
    .local v0, result:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 274
    .local v1, specMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 276
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 297
    :goto_0
    return v0

    .line 281
    :sswitch_0
    move v0, p1

    .line 282
    goto :goto_0

    .line 289
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 290
    goto :goto_0

    .line 294
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 276
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
    .line 829
    invoke-direct {p0}, Landroid/widget/VideoView;->openVideo()V

    .line 830
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .parameter "msec"

    .prologue
    .line 853
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 855
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/VideoView;->mIsSeeking:Z

    .line 856
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    .line 860
    :goto_0
    return-void

    .line 858
    :cond_0
    iput p1, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public sendDirectState(Z)V
    .locals 3
    .parameter "bDirect"

    .prologue
    .line 1011
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEIZU_SPDIF_DIRECT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1012
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.MEIZU_SPDIF_STATE"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1013
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1014
    return-void

    .line 1012
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAudioTrackIndex(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 926
    iget-boolean v0, p0, Landroid/widget/VideoView;->mIsSeeking:Z

    if-eqz v0, :cond_1

    .line 927
    iget-object v1, p0, Landroid/widget/VideoView;->mPendingTracknfo:Landroid/widget/VideoView$PendingTrackInfo;

    iget-object v0, p0, Landroid/widget/VideoView;->mAudioTrack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/widget/VideoView$PendingTrackInfo;->audioTrackIndex:I

    .line 936
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 929
    :cond_1
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Landroid/widget/VideoView;->mAudioTrack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 931
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Landroid/widget/VideoView;->mAudioTrack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->selectTrack(I)V

    .line 932
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 409
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 412
    :cond_0
    iput-object p1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    .line 413
    invoke-direct {p0}, Landroid/widget/VideoView;->attachMediaController()V

    .line 414
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 655
    iput-object p1, p0, Landroid/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 656
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 668
    iput-object p1, p0, Landroid/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 669
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 644
    iput-object p1, p0, Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 645
    return-void
.end method

.method public setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 673
    iput-object p1, p0, Landroid/widget/VideoView;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 674
    return-void
.end method

.method public setSpdifStatus(Z)V
    .locals 3
    .parameter "b"

    .prologue
    .line 1017
    iput-boolean p1, p0, Landroid/widget/VideoView;->mbSpdifStatus:Z

    .line 1018
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

    .line 1019
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1020
    iget-boolean v0, p0, Landroid/widget/VideoView;->mbSpdifStatus:Z

    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->sendDirectState(Z)V

    .line 1021
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-boolean v1, p0, Landroid/widget/VideoView;->mbSpdifStatus:Z

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->switchSpdifStatus(Z)V

    .line 1023
    :cond_0
    return-void
.end method

.method public setTimeTextIndex(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 955
    iget-boolean v0, p0, Landroid/widget/VideoView;->mIsSeeking:Z

    if-eqz v0, :cond_1

    .line 956
    iget-object v1, p0, Landroid/widget/VideoView;->mPendingTracknfo:Landroid/widget/VideoView$PendingTrackInfo;

    iget-object v0, p0, Landroid/widget/VideoView;->mTimedText:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/widget/VideoView$PendingTrackInfo;->timeTextIndex:I

    .line 964
    :cond_0
    :goto_0
    return-void

    .line 958
    :cond_1
    iget-object v0, p0, Landroid/widget/VideoView;->mTimedText:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 959
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
    .line 322
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 323
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 326
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 327
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

    .line 333
    iput-boolean v0, p0, Landroid/widget/VideoView;->mbForceNuPlayer:Z

    .line 334
    iput-object p1, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    .line 335
    iput-object p2, p0, Landroid/widget/VideoView;->mHeaders:Ljava/util/Map;

    .line 336
    iput v0, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    .line 337
    invoke-direct {p0}, Landroid/widget/VideoView;->openVideo()V

    .line 338
    invoke-virtual {p0}, Landroid/widget/VideoView;->requestLayout()V

    .line 339
    invoke-virtual {p0}, Landroid/widget/VideoView;->invalidate()V

    .line 340
    return-void
.end method

.method public setVideoZoomLevel(D)V
    .locals 2
    .parameter "level"

    .prologue
    .line 150
    iget-object v0, p0, Landroid/widget/VideoView;->mCurZoomType:Landroid/widget/VideoView$ZoomType;

    sget-object v1, Landroid/widget/VideoView$ZoomType;->ZOOM_LEVEL:Landroid/widget/VideoView$ZoomType;

    if-ne v0, v1, :cond_1

    .line 151
    iget v0, p0, Landroid/widget/VideoView;->mFitVideoWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/VideoView;->mFitVideoHeight:I

    if-nez v0, :cond_2

    .line 152
    :cond_0
    iget-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mFitVideoWidth, mFitVideoHeight  is :0 "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    invoke-virtual {p0}, Landroid/widget/VideoView;->requestLayout()V

    .line 157
    invoke-virtual {p0}, Landroid/widget/VideoView;->invalidate()V

    .line 161
    :cond_1
    return-void

    .line 154
    :cond_2
    iput-wide p1, p0, Landroid/widget/VideoView;->mZoomScale:D

    goto :goto_0
.end method

.method public setVideoZoomType(Landroid/widget/VideoView$ZoomType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 146
    iput-object p1, p0, Landroid/widget/VideoView;->mCurZoomType:Landroid/widget/VideoView$ZoomType;

    .line 147
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 807
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 809
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 811
    :cond_0
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 812
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 343
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 345
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 347
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 348
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 349
    invoke-virtual {p0, v1}, Landroid/widget/VideoView;->sendDirectState(Z)V

    .line 351
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 825
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/VideoView;->release(Z)V

    .line 826
    return-void
.end method
