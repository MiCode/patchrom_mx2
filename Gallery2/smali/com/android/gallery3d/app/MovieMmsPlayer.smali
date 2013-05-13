.class public Lcom/android/gallery3d/app/MovieMmsPlayer;
.super Ljava/lang/Object;
.source "MovieMmsPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Lcom/android/gallery3d/app/MovieMmsController$MmsPlayerListener;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/gallery3d/app/MovieMmsController;

.field private mCurAudioVolum:I

.field private mHandler:Landroid/os/Handler;

.field private mMaxAudioVolum:I

.field private final mPlayingChecker:Ljava/lang/Runnable;

.field private mUri:Landroid/net/Uri;

.field private mVideoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 6
    .parameter "rootView"
    .parameter "movieActivity"
    .parameter "uri"
    .parameter "title"
    .parameter "isFromRecord"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/android/gallery3d/app/MovieMmsPlayer$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MovieMmsPlayer$1;-><init>(Lcom/android/gallery3d/app/MovieMmsPlayer;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mHandler:Landroid/os/Handler;

    .line 39
    new-instance v0, Lcom/android/gallery3d/app/MovieMmsPlayer$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MovieMmsPlayer$2;-><init>(Lcom/android/gallery3d/app/MovieMmsPlayer;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mPlayingChecker:Ljava/lang/Runnable;

    .line 52
    const v0, 0x7f0d00eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mVideoView:Landroid/widget/VideoView;

    .line 53
    new-instance v0, Lcom/android/gallery3d/app/MovieMmsController;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/MovieMmsController;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;ZLcom/android/gallery3d/app/MovieMmsController$MmsPlayerListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mController:Lcom/android/gallery3d/app/MovieMmsController;

    .line 54
    iput-object p3, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mUri:Landroid/net/Uri;

    .line 55
    iput-object p2, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mContext:Landroid/content/Context;

    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 57
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mController:Lcom/android/gallery3d/app/MovieMmsController;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieMmsController;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 58
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieMmsPlayer;->realInit()V

    .line 59
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieMmsPlayer;->resetVolum()V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/MovieMmsPlayer;)Landroid/widget/VideoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/MovieMmsPlayer;)Lcom/android/gallery3d/app/MovieMmsController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mController:Lcom/android/gallery3d/app/MovieMmsController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/MovieMmsPlayer;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mPlayingChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/MovieMmsPlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private realInit()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 152
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 153
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 154
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieMmsPlayer;->startVideo()V

    .line 155
    return-void
.end method

.method private setVolumLevel(I)V
    .locals 3
    .parameter "Level"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/16 v2, 0x10

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 70
    return-void
.end method

.method private startVideo()V
    .locals 5

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, scheme:Ljava/lang/String;
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "rtsp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mPlayingChecker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 161
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mPlayingChecker:Ljava/lang/Runnable;

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    .line 166
    return-void
.end method


# virtual methods
.method public isVideoPlaying()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    .line 173
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieActivity;->finish()V

    .line 83
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mController:Lcom/android/gallery3d/app/MovieMmsController;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MovieMmsController;->showErrorMessage(Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    const/16 v4, 0x3e8

    const/4 v1, 0x1

    .line 92
    const/16 v2, 0x18

    if-eq p1, v2, :cond_1

    const/16 v2, 0x19

    if-eq p1, v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-lt v2, v1, :cond_1

    .line 94
    const/16 v0, 0x4f

    if-ne p1, v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    move v0, v1

    .line 141
    :goto_0
    return v0

    .line 100
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 112
    :sswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mController:Lcom/android/gallery3d/app/MovieMmsController;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieMmsController;->getShowFlag()Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mController:Lcom/android/gallery3d/app/MovieMmsController;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieMmsController;->showPlaying()V

    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieActivity;->turnOnLed()V

    :goto_1
    move v0, v1

    .line 119
    goto :goto_0

    .line 105
    :sswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x226

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move v0, v1

    .line 109
    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieActivity;->finish()V

    goto :goto_1

    .line 122
    :sswitch_2
    iget v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mCurAudioVolum:I

    iget v2, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mMaxAudioVolum:I

    if-ge v0, v2, :cond_3

    .line 123
    iget v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mCurAudioVolum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mCurAudioVolum:I

    .line 127
    :goto_2
    iget v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mCurAudioVolum:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieMmsPlayer;->setVolumLevel(I)V

    move v0, v1

    .line 129
    goto :goto_0

    .line 125
    :cond_3
    iget v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mMaxAudioVolum:I

    iput v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mCurAudioVolum:I

    goto :goto_2

    .line 132
    :sswitch_3
    iget v2, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mCurAudioVolum:I

    if-lez v2, :cond_4

    .line 133
    iget v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mCurAudioVolum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mCurAudioVolum:I

    .line 137
    :goto_3
    iget v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mCurAudioVolum:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieMmsPlayer;->setVolumLevel(I)V

    move v0, v1

    .line 139
    goto :goto_0

    .line 135
    :cond_4
    iput v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mCurAudioVolum:I

    goto :goto_3

    .line 100
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_2
        0x19 -> :sswitch_3
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
    .end sparse-switch
.end method

.method public onPlayPause()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto :goto_0
.end method

.method public resetVolum()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mMaxAudioVolum:I

    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mCurAudioVolum:I

    .line 65
    return-void
.end method

.method public setSpdifStatus(Z)V
    .locals 1
    .parameter "status"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setSpdifStatus(Z)V

    .line 148
    :cond_0
    return-void
.end method
