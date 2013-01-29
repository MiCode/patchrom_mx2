.class public Lcom/android/gallery3d/app/MovieActivity;
.super Landroid/app/Activity;
.source "MovieActivity.java"

# interfaces
.implements Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/MovieActivity$SensorRotation;
    }
.end annotation


# instance fields
.field private mAudioFocusChangeLis:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCurrentWindowFocus:Z

.field private mFileUri:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFinishOnCompletion:Z

.field private mHandler:Landroid/os/Handler;

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

.field private mHomeButtonAnimationBrightness:I

.field private mHomeButtonSystemBrightness:I

.field private mIntent:Landroid/content/Intent;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsBatteryLow:Z

.field private mIsHdmiOn:Z

.field private mIsOnLineVideo:Z

.field private mIsOnPause:Z

.field private mIsbackKey:Z

.field private mMmsPlayer:Lcom/android/gallery3d/app/MovieMmsPlayer;

.field private mOnLineHighMmsId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnLineHighUri:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnLineMediaId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnLineSmoothMmsId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnLineSmoothUri:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnLineTitle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnlineCurrentIndex:I

.field private mOnlineVideoPlayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/app/RemoteVideoPlayList;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

.field private mRemoteVideoCid:Ljava/lang/String;

.field private mRemoteVideoVid:Ljava/lang/String;

.field private mRootView:Landroid/view/View;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeTextPath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeTextType:Ljava/util/ArrayList;
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

.field private mbSpdifOn:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mTimeTextPath:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mTimeTextType:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mFileUri:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineHighUri:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineSmoothUri:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineHighMmsId:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineSmoothMmsId:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineTitle:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineMediaId:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnlineVideoPlayList:Ljava/util/ArrayList;

    .line 97
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsOnLineVideo:Z

    .line 98
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsBatteryLow:Z

    .line 99
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsbackKey:Z

    .line 100
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mCurrentWindowFocus:Z

    .line 101
    iput v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnlineCurrentIndex:I

    .line 102
    iput v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonSystemBrightness:I

    .line 103
    iput v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonAnimationBrightness:I

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mRemoteVideoCid:Ljava/lang/String;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mRemoteVideoVid:Ljava/lang/String;

    .line 229
    new-instance v0, Lcom/android/gallery3d/app/MovieActivity$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MovieActivity$2;-><init>(Lcom/android/gallery3d/app/MovieActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 267
    new-instance v0, Lcom/android/gallery3d/app/MovieActivity$3;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MovieActivity$3;-><init>(Lcom/android/gallery3d/app/MovieActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 276
    new-instance v0, Lcom/android/gallery3d/app/MovieActivity$4;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MovieActivity$4;-><init>(Lcom/android/gallery3d/app/MovieActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mAudioFocusChangeLis:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 370
    new-instance v0, Lcom/android/gallery3d/app/MovieActivity$5;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MovieActivity$5;-><init>(Lcom/android/gallery3d/app/MovieActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/MovieActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsOnLineVideo:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/MovieActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieActivity;->setInterceptHomeKey(Z)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/gallery3d/app/MovieActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsbackKey:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/MovieActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsOnPause:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MovieMmsPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMmsPlayer:Lcom/android/gallery3d/app/MovieMmsPlayer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/MovieActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->getHdmiStatus()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/MovieActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsHdmiOn:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/MovieActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonAnimationBrightness:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/gallery3d/app/MovieActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonAnimationBrightness:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/MovieActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonSystemBrightness:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/MovieActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getHdmiStatus()V
    .locals 2

    .prologue
    .line 363
    const-string v1, "multimedia.hdmi.status"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, s:Ljava/lang/String;
    const-string v1, "available"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsHdmiOn:Z

    .line 369
    :goto_0
    return-void

    .line 367
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsHdmiOn:Z

    goto :goto_0
.end method

.method private initNativePlay()V
    .locals 19

    .prologue
    .line 169
    const/4 v10, 0x1

    .line 170
    .local v10, isSingleVideo:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mIntent:Landroid/content/Intent;

    const-string v2, "http_headers"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mHeaders:Ljava/util/HashMap;

    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mIntent:Landroid/content/Intent;

    const-string v2, "meizu_video_record"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 172
    .local v14, isFromRecordMms:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mIntent:Landroid/content/Intent;

    const-string v2, "media-path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 173
    .local v17, mediaSetPath:Ljava/lang/String;
    if-nez v17, :cond_1

    .line 174
    const/4 v10, 0x1

    .line 178
    :goto_0
    if-eqz v17, :cond_2

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/MovieActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v12

    .line 180
    .local v12, dm:Lcom/android/gallery3d/data/DataManager;
    invoke-static/range {v17 .. v17}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v16

    check-cast v16, Lcom/android/gallery3d/data/MediaSet;

    .line 181
    .local v16, mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    if-eqz v16, :cond_2

    .line 182
    invoke-virtual/range {v16 .. v16}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v11

    .line 183
    .local v11, count:I
    if-lez v11, :cond_2

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v11}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mFileUri:Ljava/util/ArrayList;

    .line 185
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v11}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/gallery3d/data/MediaItem;

    .line 186
    .local v15, itemInSet:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v15}, Lcom/android/gallery3d/data/MediaItem;->getLockState()I

    move-result v1

    if-nez v1, :cond_0

    .line 187
    invoke-virtual {v15}, Lcom/android/gallery3d/data/MediaItem;->getPlayUri()Landroid/net/Uri;

    move-result-object v18

    .line 188
    .local v18, playUri:Landroid/net/Uri;
    if-eqz v18, :cond_0

    .line 189
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mFileUri:Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 176
    .end local v11           #count:I
    .end local v12           #dm:Lcom/android/gallery3d/data/DataManager;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v15           #itemInSet:Lcom/android/gallery3d/data/MediaItem;
    .end local v16           #mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    .end local v18           #playUri:Landroid/net/Uri;
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 195
    :cond_2
    if-eqz v14, :cond_3

    .line 196
    new-instance v1, Lcom/android/gallery3d/app/MovieMmsPlayer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mRootView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/MovieActivity;->mIntent:Landroid/content/Intent;

    const-string v5, "video_title"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/gallery3d/app/MovieMmsPlayer;-><init>(Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;Landroid/net/Uri;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mMmsPlayer:Lcom/android/gallery3d/app/MovieMmsPlayer;

    .line 209
    :goto_2
    return-void

    .line 198
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mTimeTextPath:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mTimeTextType:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/app/MovieActivityUtils;->findSubTitleFromUri(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;)V

    .line 199
    new-instance v1, Lcom/android/gallery3d/app/MovieActivity$1;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/MovieActivity;->mRootView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/app/MovieActivity;->mHeaders:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/gallery3d/app/MovieActivity;->mTimeTextPath:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/gallery3d/app/MovieActivity;->mTimeTextType:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/gallery3d/app/MovieActivity;->mFileUri:Ljava/util/ArrayList;

    move-object/from16 v2, p0

    move-object/from16 v4, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/gallery3d/app/MovieActivity$1;-><init>(Lcom/android/gallery3d/app/MovieActivity;Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;Landroid/net/Uri;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    goto :goto_2
.end method

.method private initOnlinePlay()V
    .locals 14

    .prologue
    const/4 v2, 0x1

    .line 211
    const/4 v12, 0x1

    .line 212
    .local v12, isSingleVideo:Z
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "remoteVideoPalyList"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnlineVideoPlayList:Ljava/util/ArrayList;

    .line 213
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnlineVideoPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineHighUri:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnlineVideoPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/RemoteVideoPlayList;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->getRemoteVideoHignPlayURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineSmoothUri:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnlineVideoPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/RemoteVideoPlayList;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->getRemoteVideoStandardPlayURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineTitle:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnlineVideoPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/RemoteVideoPlayList;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->getRemoteVideoTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineMediaId:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnlineVideoPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/RemoteVideoPlayList;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->getRemoteVideoMediaId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineHighMmsId:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnlineVideoPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/RemoteVideoPlayList;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->getRemoteVideoHighMmsid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineSmoothMmsId:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnlineVideoPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/RemoteVideoPlayList;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->getRemoteVideoStandardMmsid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnlineVideoPlayList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnlineCurrentIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/RemoteVideoPlayList;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->getRemoteVideoMediaId()Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, mediaId:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineHighUri:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineSmoothUri:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 223
    const/4 v12, 0x1

    .line 227
    :goto_1
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mRootView:Landroid/view/View;

    iget v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnlineCurrentIndex:I

    add-int/lit8 v3, v2, -0x1

    iget-object v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineHighUri:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineSmoothUri:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineHighMmsId:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineSmoothMmsId:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineMediaId:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieActivity;->mRemoteVideoCid:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/gallery3d/app/MovieActivity;->mRemoteVideoVid:Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v0 .. v12}, Lcom/android/gallery3d/app/MoviePlayer;-><init>(Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    .line 228
    return-void

    .line 225
    :cond_1
    const/4 v12, 0x0

    goto :goto_1
.end method

.method private removeAllMessage()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 158
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 159
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    return-void
.end method

.method private setInterceptHomeKey(Z)V
    .locals 2
    .parameter "intercept"

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 164
    .local v0, win:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 165
    .local v1, winParams:Landroid/view/WindowManager$LayoutParams;
    iput-boolean p1, v1, Landroid/view/WindowManager$LayoutParams;->isInterceptHomeKey:Z

    .line 166
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 167
    return-void
.end method

.method private setResult()V
    .locals 2

    .prologue
    .line 457
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 458
    .local v0, data:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/app/MovieActivity;->setResult(ILandroid/content/Intent;)V

    .line 459
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/16 v6, 0x3eb

    const/16 v5, 0x3e9

    const/16 v4, 0xfa

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 473
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 474
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 475
    iget v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonSystemBrightness:I

    if-lez v1, :cond_0

    .line 476
    iget v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonAnimationBrightness:I

    if-gtz v1, :cond_1

    .line 477
    iget v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonSystemBrightness:I

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/MovieActivity;->setHomeButtonBrightness(I)V

    .line 478
    iget v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonSystemBrightness:I

    iput v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonAnimationBrightness:I

    .line 479
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsbackKey:Z

    .line 480
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/MovieActivity;->setInterceptHomeKey(Z)V

    .line 481
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 483
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 502
    :goto_0
    return v0

    .line 488
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonAnimationBrightness:I

    if-gtz v1, :cond_1

    .line 489
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/MovieActivity;->setHomeButtonBrightness(I)V

    .line 490
    iput v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonAnimationBrightness:I

    .line 491
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsbackKey:Z

    .line 492
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/MovieActivity;->setInterceptHomeKey(Z)V

    .line 493
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 495
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 502
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public finishVideo()V
    .locals 1

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsbackKey:Z

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->finish()V

    .line 532
    :cond_0
    return-void
.end method

.method public getHdmiState()Z
    .locals 1

    .prologue
    .line 612
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsHdmiOn:Z

    return v0
.end method

.method public getHomeButtonBrightness()I
    .locals 3

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "button_brightness"

    const/16 v2, 0xfa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVideoTitle()Ljava/lang/String;
    .locals 5

    .prologue
    .line 563
    const/4 v1, 0x0

    .line 564
    .local v1, title:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsOnLineVideo:Z

    if-eqz v3, :cond_0

    .line 565
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/MoviePlayer;->getOnLineVideoCurIndex()I

    move-result v0

    .line 566
    .local v0, index:I
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineTitle:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #title:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1       #title:Ljava/lang/String;
    move-object v3, v1

    .line 579
    .end local v0           #index:I
    :goto_0
    return-object v3

    .line 569
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mIntent:Landroid/content/Intent;

    const-string v4, "video_title"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 570
    if-nez v1, :cond_2

    .line 572
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    if-eqz v3, :cond_1

    .line 573
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/MoviePlayer;->getVideoUri()Landroid/net/Uri;

    move-result-object v2

    .line 577
    .local v2, uri:Landroid/net/Uri;
    :goto_1
    invoke-static {p0, v2}, Lcom/android/gallery3d/app/MovieActivityUtils;->findVideoTitle(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 575
    .end local v2           #uri:Landroid/net/Uri;
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    .restart local v2       #uri:Landroid/net/Uri;
    goto :goto_1

    .end local v2           #uri:Landroid/net/Uri;
    :cond_2
    move-object v3, v1

    .line 579
    goto :goto_0
.end method

.method public lockScreenSensor(Lcom/android/gallery3d/app/MovieActivity$SensorRotation;)V
    .locals 1
    .parameter "sensor"

    .prologue
    .line 535
    sget-object v0, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;->VIDEO_ORIENTATION_LANDSCAPE:Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

    if-ne p1, v0, :cond_0

    .line 536
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->setRequestedOrientation(I)V

    .line 542
    :goto_0
    return-void

    .line 537
    :cond_0
    sget-object v0, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;->VIDEO_ORIENTATION_PORTRAIT:Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

    if-ne p1, v0, :cond_1

    .line 538
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 540
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 114
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 115
    const v4, 0x7f040041

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/MovieActivity;->setContentView(I)V

    .line 116
    const v4, 0x7f0d00e8

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/MovieActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mRootView:Landroid/view/View;

    .line 117
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mIntent:Landroid/content/Intent;

    .line 118
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mIntent:Landroid/content/Intent;

    const-string v5, "android.intent.extra.finishOnCompletion"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mFinishOnCompletion:Z

    .line 120
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    .line 121
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mIntent:Landroid/content/Intent;

    const-string v5, "remoteVideoIndex"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnlineCurrentIndex:I

    .line 122
    iget v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnlineCurrentIndex:I

    if-eq v4, v8, :cond_1

    .line 123
    iput-boolean v7, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsOnLineVideo:Z

    .line 124
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mIntent:Landroid/content/Intent;

    const-string v5, "remoteVideoCid"

    const-string v6, "-1"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mRemoteVideoCid:Ljava/lang/String;

    .line 125
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mIntent:Landroid/content/Intent;

    const-string v5, "remoteVideoVid"

    const-string v6, "-1"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mRemoteVideoVid:Ljava/lang/String;

    .line 126
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->initOnlinePlay()V

    .line 131
    :goto_0
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    if-eqz v4, :cond_0

    .line 132
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v4, p0}, Lcom/android/gallery3d/app/MoviePlayer;->setMeizuExt(Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;)V

    .line 135
    :cond_0
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 136
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/MovieActivity;->setVolumeControlStream(I)V

    .line 138
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 139
    .local v2, win:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 140
    .local v3, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v4, v4, 0x100

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 141
    const/4 v4, 0x0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 142
    iput-boolean v7, v3, Landroid/view/WindowManager$LayoutParams;->isInterceptHomeKey:Z

    .line 143
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 144
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    .local v1, screenfilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/android/gallery3d/app/MovieActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 149
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v4, "android.media.audio.HEADSET_PLUG"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v4, "android.intent.action.MEIZU_HDMI_STATUS_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v4, "media.dlnaservice.action.devicesChanged"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0, v9, v9}, Lcom/android/gallery3d/app/MovieActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 154
    return-void

    .line 128
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #screenfilter:Landroid/content/IntentFilter;
    .end local v2           #win:Landroid/view/Window;
    .end local v3           #winParams:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsOnLineVideo:Z

    .line 129
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->initNativePlay()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->onDestroy()V

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 467
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 468
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->setResult()V

    .line 469
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 470
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 507
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    if-eqz v2, :cond_2

    .line 508
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/app/MoviePlayer;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 515
    :cond_1
    :goto_0
    return v0

    .line 511
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mMmsPlayer:Lcom/android/gallery3d/app/MovieMmsPlayer;

    if-eqz v2, :cond_4

    .line 512
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mMmsPlayer:Lcom/android/gallery3d/app/MovieMmsPlayer;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/app/MovieMmsPlayer;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    .line 515
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    if-eqz v0, :cond_2

    .line 521
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/app/MoviePlayer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 524
    :goto_0
    return v0

    .line 521
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 524
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsOnPause:Z

    .line 347
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->onPause()V

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMmsPlayer:Lcom/android/gallery3d/app/MovieMmsPlayer;

    if-eqz v0, :cond_1

    .line 351
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->finish()V

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 354
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 355
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 356
    iget v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonSystemBrightness:I

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->setHomeButtonBrightness(I)V

    .line 357
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mAudioFocusChangeLis:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 358
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 359
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 425
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    if-eqz v1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MoviePlayer;->broadcasePause()V

    .line 428
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v4, v4, -0x21

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 429
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsOnPause:Z

    .line 430
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 431
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "sound_spdif"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mbSpdifOn:Z

    .line 432
    iput v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonAnimationBrightness:I

    .line 433
    iget v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonAnimationBrightness:I

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/MovieActivity;->setHomeButtonBrightness(I)V

    .line 434
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getHomeButtonBrightness()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonSystemBrightness:I

    .line 435
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->getHdmiStatus()V

    .line 436
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    if-eqz v1, :cond_1

    .line 437
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mbSpdifOn:Z

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/MoviePlayer;->setSpdifStatus(Z)V

    .line 438
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MoviePlayer;->onResume()V

    .line 440
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mMmsPlayer:Lcom/android/gallery3d/app/MovieMmsPlayer;

    if-eqz v1, :cond_2

    .line 441
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mMmsPlayer:Lcom/android/gallery3d/app/MovieMmsPlayer;

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mbSpdifOn:Z

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/MovieMmsPlayer;->setSpdifStatus(Z)V

    .line 443
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mAudioFocusChangeLis:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v4, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 446
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 447
    return-void

    :cond_3
    move v1, v3

    .line 431
    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 451
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 452
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MoviePlayer;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 455
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 331
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 335
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 336
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 339
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 341
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 342
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    .line 316
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieActivity;->mCurrentWindowFocus:Z

    .line 317
    if-eqz p1, :cond_0

    .line 318
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->setInterceptHomeKey(Z)V

    .line 319
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->removeAllMessage()V

    .line 320
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 327
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->removeAllMessage()V

    .line 323
    iget v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonSystemBrightness:I

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->setHomeButtonBrightness(I)V

    .line 324
    iget v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonSystemBrightness:I

    iput v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonAnimationBrightness:I

    .line 325
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->setInterceptHomeKey(Z)V

    goto :goto_0
.end method

.method public setHomeButtonBrightness(I)V
    .locals 0
    .parameter "brightness"

    .prologue
    .line 600
    invoke-static {p1}, Lcom/android/gallery3d/app/MovieActivityUtils;->setHomeButtonBrightness(I)V

    .line 601
    return-void
.end method

.method public setWinBrightness(I)V
    .locals 1
    .parameter "brightness"

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/gallery3d/app/MovieActivityUtils;->setWinBrightness(Landroid/view/Window;I)V

    .line 547
    return-void
.end method

.method public showSystemTitle(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/16 v2, 0x400

    .line 551
    const/16 v0, 0x700

    .line 553
    .local v0, flags:I
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 554
    if-eqz p1, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 559
    :goto_0
    return-void

    .line 557
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method public turnOffLed()V
    .locals 4

    .prologue
    .line 604
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mCurrentWindowFocus:Z

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 606
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 607
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 609
    :cond_0
    return-void
.end method

.method public turnOnLed()V
    .locals 4

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mCurrentWindowFocus:Z

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 588
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 589
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 592
    :cond_0
    return-void
.end method
