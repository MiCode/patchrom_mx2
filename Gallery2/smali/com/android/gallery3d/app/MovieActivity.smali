.class public Lcom/android/gallery3d/app/MovieActivity;
.super Landroid/app/Activity;
.source "MovieActivity.java"

# interfaces
.implements Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/MovieActivity$NetworkDialogListener;,
        Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;,
        Lcom/android/gallery3d/app/MovieActivity$SensorRotation;
    }
.end annotation


# instance fields
.field private mAccelerometerRotationObserver:Landroid/database/ContentObserver;

.field private mAudioFocusChangeLis:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBlueWifiState:Landroid/net/NetworkInfo$State;

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

.field private mIsHdmiOn:Z

.field private mIsHeadSetPlugIn:Z

.field private mIsM040:Z

.field private mIsOnLineVideo:Z

.field private mIsOnPause:Z

.field private mIsOnlyUseWifi:Z

.field private mIsbackKey:Z

.field private mMmsPlayer:Lcom/android/gallery3d/app/MovieMmsPlayer;

.field private mMobileState:Landroid/net/NetworkInfo$State;

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

.field private mWifiState:Landroid/net/NetworkInfo$State;

.field private mbSpdifOn:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mTimeTextPath:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mTimeTextType:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mFileUri:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineHeadDuration:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineTailDuration:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineHighUri:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineSmoothUri:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineHighMmsId:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineSmoothMmsId:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineTitle:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineMediaId:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnlineVideoPlayList:Ljava/util/ArrayList;

    .line 108
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsOnLineVideo:Z

    .line 109
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsbackKey:Z

    .line 110
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsOnlyUseWifi:Z

    .line 111
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mCurrentWindowFocus:Z

    .line 112
    iput v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnlineCurrentIndex:I

    .line 113
    iput v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonSystemBrightness:I

    .line 114
    iput v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonAnimationBrightness:I

    .line 115
    sget-object v0, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsM040:Z

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mRemoteVideoCid:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mRemoteVideoVid:Ljava/lang/String;

    .line 120
    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mWifiState:Landroid/net/NetworkInfo$State;

    .line 121
    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMobileState:Landroid/net/NetworkInfo$State;

    .line 122
    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mBlueWifiState:Landroid/net/NetworkInfo$State;

    .line 325
    new-instance v0, Lcom/android/gallery3d/app/MovieActivity$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MovieActivity$2;-><init>(Lcom/android/gallery3d/app/MovieActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 441
    new-instance v0, Lcom/android/gallery3d/app/MovieActivity$3;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MovieActivity$3;-><init>(Lcom/android/gallery3d/app/MovieActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 450
    new-instance v0, Lcom/android/gallery3d/app/MovieActivity$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/MovieActivity$4;-><init>(Lcom/android/gallery3d/app/MovieActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    .line 457
    new-instance v0, Lcom/android/gallery3d/app/MovieActivity$5;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MovieActivity$5;-><init>(Lcom/android/gallery3d/app/MovieActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mAudioFocusChangeLis:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 524
    new-instance v0, Lcom/android/gallery3d/app/MovieActivity$6;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MovieActivity$6;-><init>(Lcom/android/gallery3d/app/MovieActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/MovieActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsOnLineVideo:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/MovieActivity;)Landroid/net/NetworkInfo$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mWifiState:Landroid/net/NetworkInfo$State;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/gallery3d/app/MovieActivity;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieActivity;->mWifiState:Landroid/net/NetworkInfo$State;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/MovieActivity;)Landroid/net/NetworkInfo$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMobileState:Landroid/net/NetworkInfo$State;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/gallery3d/app/MovieActivity;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieActivity;->mMobileState:Landroid/net/NetworkInfo$State;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/MovieActivity;)Landroid/net/NetworkInfo$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mBlueWifiState:Landroid/net/NetworkInfo$State;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/gallery3d/app/MovieActivity;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieActivity;->mBlueWifiState:Landroid/net/NetworkInfo$State;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/MovieActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsOnlyUseWifi:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/MovieActivity;Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieActivity;->showNetworkAlertDialog(Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/MovieActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonAnimationBrightness:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/gallery3d/app/MovieActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonAnimationBrightness:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/app/MovieActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonSystemBrightness:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/app/MovieActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/app/MovieActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieActivity;->setInterceptHomeKey(Z)V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/gallery3d/app/MovieActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsbackKey:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/MovieActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsOnPause:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/MovieActivity;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/MovieActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsHeadSetPlugIn:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/gallery3d/app/MovieActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsHeadSetPlugIn:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/MovieActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->setIsSilentMode()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MovieMmsPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMmsPlayer:Lcom/android/gallery3d/app/MovieMmsPlayer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/MovieActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->getHdmiStatus()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/MovieActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsHdmiOn:Z

    return v0
.end method

.method private getHdmiStatus()V
    .locals 2

    .prologue
    .line 517
    const-string v1, "multimedia.hdmi.status"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, s:Ljava/lang/String;
    const-string v1, "available"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsHdmiOn:Z

    .line 523
    :goto_0
    return-void

    .line 521
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsHdmiOn:Z

    goto :goto_0
.end method

.method private getSystemSensor()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 198
    .local v1, resolver:Landroid/content/ContentResolver;
    :try_start_0
    const-string v4, "accelerometer_rotation"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 200
    .local v2, sensorOn:I
    if-nez v2, :cond_0

    .line 208
    .end local v2           #sensorOn:I
    :goto_0
    return v3

    .line 203
    .restart local v2       #sensorOn:I
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 205
    .end local v2           #sensorOn:I
    :catch_0
    move-exception v0

    .line 206
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private initNativePlay()V
    .locals 19

    .prologue
    .line 242
    const/4 v10, 0x1

    .line 243
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

    .line 244
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mIntent:Landroid/content/Intent;

    const-string v2, "meizu_video_record"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 245
    .local v14, isFromRecordMms:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mIntent:Landroid/content/Intent;

    const-string v2, "media-path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 246
    .local v17, mediaSetPath:Ljava/lang/String;
    if-eqz v17, :cond_2

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/MovieActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v12

    .line 248
    .local v12, dm:Lcom/android/gallery3d/data/DataManager;
    invoke-static/range {v17 .. v17}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v16

    check-cast v16, Lcom/android/gallery3d/data/MediaSet;

    .line 249
    .local v16, mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    if-eqz v16, :cond_2

    .line 250
    invoke-virtual/range {v16 .. v16}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v11

    .line 251
    .local v11, count:I
    if-lez v11, :cond_1

    .line 252
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v11}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mFileUri:Ljava/util/ArrayList;

    .line 253
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v11}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/gallery3d/data/MediaItem;

    .line 254
    .local v15, itemInSet:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v15}, Lcom/android/gallery3d/data/MediaItem;->getLockState()I

    move-result v1

    if-nez v1, :cond_0

    .line 255
    invoke-virtual {v15}, Lcom/android/gallery3d/data/MediaItem;->getPlayUri()Landroid/net/Uri;

    move-result-object v18

    .line 256
    .local v18, playUri:Landroid/net/Uri;
    if-eqz v18, :cond_0

    .line 257
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mFileUri:Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 261
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v15           #itemInSet:Lcom/android/gallery3d/data/MediaItem;
    .end local v18           #playUri:Landroid/net/Uri;
    :cond_1
    const/4 v1, 0x1

    if-gt v11, v1, :cond_3

    .line 262
    const/4 v10, 0x1

    .line 268
    .end local v11           #count:I
    .end local v12           #dm:Lcom/android/gallery3d/data/DataManager;
    .end local v16           #mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    :cond_2
    :goto_1
    if-eqz v14, :cond_4

    .line 269
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

    .line 282
    :goto_2
    return-void

    .line 264
    .restart local v11       #count:I
    .restart local v12       #dm:Lcom/android/gallery3d/data/DataManager;
    .restart local v16       #mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 271
    .end local v11           #count:I
    .end local v12           #dm:Lcom/android/gallery3d/data/DataManager;
    .end local v16           #mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mTimeTextPath:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mTimeTextType:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/app/MovieActivityUtils;->findSubTitleFromUri(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;)V

    .line 272
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
    .locals 18

    .prologue
    .line 284
    const/16 v16, 0x1

    .line 285
    .local v16, isSingleVideo:Z
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mHeaders:Ljava/util/HashMap;

    .line 286
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mIntent:Landroid/content/Intent;

    const-string v2, "remoteVideoPalyList"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mOnlineVideoPlayList:Ljava/util/ArrayList;

    .line 287
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mOnlineVideoPlayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v0, v17

    if-ge v0, v1, :cond_0

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineHeadDuration:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mOnlineVideoPlayList:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/RemoteVideoPlayList;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->getRemoteVideoHeadDuration()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineTailDuration:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mOnlineVideoPlayList:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/RemoteVideoPlayList;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->getRemoteVideoTailDuration()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineHighUri:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mOnlineVideoPlayList:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/RemoteVideoPlayList;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->getRemoteVideoHignPlayURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineSmoothUri:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mOnlineVideoPlayList:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/RemoteVideoPlayList;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->getRemoteVideoStandardPlayURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineTitle:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mOnlineVideoPlayList:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/RemoteVideoPlayList;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->getRemoteVideoTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineMediaId:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mOnlineVideoPlayList:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/RemoteVideoPlayList;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->getRemoteVideoMediaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineHighMmsId:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mOnlineVideoPlayList:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/RemoteVideoPlayList;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->getRemoteVideoHighMmsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineSmoothMmsId:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mOnlineVideoPlayList:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/RemoteVideoPlayList;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->getRemoteVideoStandardMmsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 297
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mOnlineVideoPlayList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mOnlineCurrentIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/RemoteVideoPlayList;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->getRemoteVideoMediaId()Ljava/lang/String;

    move-result-object v5

    .line 298
    .local v5, mediaId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineHighUri:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineSmoothUri:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 299
    const/16 v16, 0x1

    .line 303
    :goto_1
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mRootView:Landroid/view/View;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/app/MovieActivity;->mOnlineCurrentIndex:I

    add-int/lit8 v4, v3, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/app/MovieActivity;->mHeaders:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineHeadDuration:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineTailDuration:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineHighUri:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineSmoothUri:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineHighMmsId:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineSmoothMmsId:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineMediaId:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/MovieActivity;->mRemoteVideoCid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/app/MovieActivity;->mRemoteVideoVid:Ljava/lang/String;

    move-object/from16 v3, p0

    invoke-direct/range {v1 .. v16}, Lcom/android/gallery3d/app/MoviePlayer;-><init>(Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;ILjava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    .line 304
    return-void

    .line 301
    :cond_1
    const/16 v16, 0x0

    goto :goto_1
.end method

.method private registerContentObservers()V
    .locals 4

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 649
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "accelerometer_rotation"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 651
    .local v0, accelerometerRotationUri:Landroid/net/Uri;
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 653
    return-void
.end method

.method private removeAllMessage()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 189
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 190
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 191
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 192
    return-void
.end method

.method private setInterceptHomeKey(Z)V
    .locals 3
    .parameter "intercept"

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 233
    .local v0, win:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 234
    .local v1, winParams:Landroid/view/WindowManager$LayoutParams;
    iget-boolean v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsM040:Z

    if-eqz v2, :cond_0

    .line 235
    iput-boolean p1, v1, Landroid/view/WindowManager$LayoutParams;->isInterceptHomeKey:Z

    .line 239
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 240
    return-void

    .line 237
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/view/WindowManager$LayoutParams;->isInterceptHomeKey:Z

    goto :goto_0
.end method

.method private setIsSilentMode()V
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsHeadSetPlugIn:Z

    if-nez v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MoviePlayer;->setIsSilentMode(Z)V

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MoviePlayer;->setIsSilentMode(Z)V

    goto :goto_0
.end method

.method private setResult()V
    .locals 2

    .prologue
    .line 633
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 634
    .local v0, data:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/app/MovieActivity;->setResult(ILandroid/content/Intent;)V

    .line 635
    return-void
.end method

.method private setScreenSensor()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 212
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 213
    .local v2, outSize:Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 214
    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/graphics/Point;->y:I

    if-le v5, v6, :cond_0

    const/4 v1, 0x1

    .line 215
    .local v1, isScreenHorizontal:Z
    :goto_0
    const-string v5, "com.meizu.videoplayer"

    invoke-virtual {p0, v5, v4}, Lcom/android/gallery3d/app/MovieActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 216
    .local v3, preferences:Landroid/content/SharedPreferences;
    if-nez v3, :cond_1

    .line 217
    sget-object v4, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;->VIDEO_ORIENTATION_LANDSCAPE_SENSOR:Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/MovieActivity;->lockScreenSensor(Lcom/android/gallery3d/app/MovieActivity$SensorRotation;)V

    .line 230
    :goto_1
    return-void

    .end local v1           #isScreenHorizontal:Z
    .end local v3           #preferences:Landroid/content/SharedPreferences;
    :cond_0
    move v1, v4

    .line 214
    goto :goto_0

    .line 219
    .restart local v1       #isScreenHorizontal:Z
    .restart local v3       #preferences:Landroid/content/SharedPreferences;
    :cond_1
    const-string v5, "screen-sensor"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 220
    .local v0, isAutoVerScreen:Z
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->getSystemSensor()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 221
    sget-object v4, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;->VIDEO_ORIENTATION_PORTRAIT:Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/MovieActivity;->lockScreenSensor(Lcom/android/gallery3d/app/MovieActivity$SensorRotation;)V

    goto :goto_1

    .line 223
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->getSystemSensor()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 224
    sget-object v4, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;->VIDEO_ORIENTATION_LANDSCAPE_SENSOR:Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/MovieActivity;->lockScreenSensor(Lcom/android/gallery3d/app/MovieActivity$SensorRotation;)V

    goto :goto_1

    .line 226
    :cond_3
    sget-object v4, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;->VIDEO_ORIENTATION_LANDSCAPE:Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/MovieActivity;->lockScreenSensor(Lcom/android/gallery3d/app/MovieActivity$SensorRotation;)V

    goto :goto_1
.end method

.method private showNetworkAlertDialog(Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;)V
    .locals 5
    .parameter "networkType"

    .prologue
    const v4, 0x7f0a01ca

    const v3, 0x7f0a000e

    .line 306
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v2, 0x1030323

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 307
    .local v1, networkDialog:Landroid/app/AlertDialog$Builder;
    new-instance v0, Lcom/android/gallery3d/app/MovieActivity$NetworkDialogListener;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/app/MovieActivity$NetworkDialogListener;-><init>(Lcom/android/gallery3d/app/MovieActivity;Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;)V

    .line 308
    .local v0, cdl:Lcom/android/gallery3d/app/MovieActivity$NetworkDialogListener;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 309
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 310
    const v2, 0x7f0a0145

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 311
    sget-object v2, Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;->NO_CONNECT:Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;

    if-ne p1, v2, :cond_0

    .line 312
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 323
    :goto_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 324
    return-void

    .line 313
    :cond_0
    sget-object v2, Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;->ONLY_WIFI:Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;

    if-ne p1, v2, :cond_1

    .line 314
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 315
    const v2, 0x7f0a001b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 316
    :cond_1
    sget-object v2, Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;->WIFI_MOBILE:Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;

    if-ne p1, v2, :cond_2

    .line 317
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 318
    const v2, 0x7f0a001c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 319
    const v2, 0x7f0a0153

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 321
    :cond_2
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private unregisterContentObservers()V
    .locals 2

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 656
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 657
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

    .line 659
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 660
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 661
    iget v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonSystemBrightness:I

    if-lez v1, :cond_0

    .line 662
    iget v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonAnimationBrightness:I

    if-gtz v1, :cond_1

    .line 663
    iget v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonSystemBrightness:I

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/MovieActivity;->setHomeButtonBrightness(I)V

    .line 664
    iget v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonSystemBrightness:I

    iput v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonAnimationBrightness:I

    .line 665
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsbackKey:Z

    .line 666
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/MovieActivity;->setInterceptHomeKey(Z)V

    .line 667
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 669
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 688
    :goto_0
    return v0

    .line 674
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonAnimationBrightness:I

    if-gtz v1, :cond_1

    .line 675
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/MovieActivity;->setHomeButtonBrightness(I)V

    .line 676
    iput v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonAnimationBrightness:I

    .line 677
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsbackKey:Z

    .line 678
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/MovieActivity;->setInterceptHomeKey(Z)V

    .line 679
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 681
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 688
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public finishVideo()V
    .locals 1

    .prologue
    .line 715
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsbackKey:Z

    if-eqz v0, :cond_0

    .line 716
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->finish()V

    .line 718
    :cond_0
    return-void
.end method

.method public getHdmiState()Z
    .locals 1

    .prologue
    .line 818
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsHdmiOn:Z

    return v0
.end method

.method public getHomeButtonBrightness()I
    .locals 3

    .prologue
    .line 802
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "button_brightness"

    const/16 v2, 0xfa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLedBrightness()I
    .locals 1

    .prologue
    .line 799
    iget v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonAnimationBrightness:I

    return v0
.end method

.method public getScreenRotation()I
    .locals 1

    .prologue
    .line 721
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method public getVideoTitle()Ljava/lang/String;
    .locals 5

    .prologue
    .line 756
    const/4 v1, 0x0

    .line 757
    .local v1, title:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsOnLineVideo:Z

    if-eqz v3, :cond_0

    .line 758
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/MoviePlayer;->getOnLineVideoCurIndex()I

    move-result v0

    .line 759
    .local v0, index:I
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnLineTitle:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #title:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1       #title:Ljava/lang/String;
    move-object v3, v1

    .line 772
    .end local v0           #index:I
    :goto_0
    return-object v3

    .line 762
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mIntent:Landroid/content/Intent;

    const-string v4, "video_title"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 763
    if-nez v1, :cond_2

    .line 765
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    if-eqz v3, :cond_1

    .line 766
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/MoviePlayer;->getVideoUri()Landroid/net/Uri;

    move-result-object v2

    .line 770
    .local v2, uri:Landroid/net/Uri;
    :goto_1
    invoke-static {p0, v2}, Lcom/android/gallery3d/app/MovieActivityUtils;->findVideoTitle(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 768
    .end local v2           #uri:Landroid/net/Uri;
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    .restart local v2       #uri:Landroid/net/Uri;
    goto :goto_1

    .end local v2           #uri:Landroid/net/Uri;
    :cond_2
    move-object v3, v1

    .line 772
    goto :goto_0
.end method

.method public lockScreenSensor(Lcom/android/gallery3d/app/MovieActivity$SensorRotation;)V
    .locals 1
    .parameter "sensor"

    .prologue
    .line 725
    sget-object v0, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;->VIDEO_ORIENTATION_LANDSCAPE:Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

    if-ne p1, v0, :cond_0

    .line 726
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->setRequestedOrientation(I)V

    .line 734
    :goto_0
    return-void

    .line 727
    :cond_0
    sget-object v0, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;->VIDEO_ORIENTATION_LANDSCAPE_SENSOR:Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

    if-ne p1, v0, :cond_1

    .line 728
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 729
    :cond_1
    sget-object v0, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;->VIDEO_ORIENTATION_PORTRAIT:Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

    if-ne p1, v0, :cond_2

    .line 730
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 732
    :cond_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v7, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 131
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x400

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 133
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 134
    const v5, 0x7f040042

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/app/MovieActivity;->setContentView(I)V

    .line 135
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->setScreenSensor()V

    .line 136
    const v5, 0x7f0d00ea

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/app/MovieActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mRootView:Landroid/view/View;

    .line 137
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mIntent:Landroid/content/Intent;

    .line 138
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mIntent:Landroid/content/Intent;

    const-string v6, "android.intent.extra.finishOnCompletion"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mFinishOnCompletion:Z

    .line 140
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    .line 141
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mIntent:Landroid/content/Intent;

    const-string v6, "remoteVideoIndex"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnlineCurrentIndex:I

    .line 142
    iget v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mOnlineCurrentIndex:I

    if-eq v5, v7, :cond_1

    .line 143
    iput-boolean v8, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsOnLineVideo:Z

    .line 144
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mIntent:Landroid/content/Intent;

    const-string v6, "remoteVideoCid"

    const-string v7, "-1"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mRemoteVideoCid:Ljava/lang/String;

    .line 145
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mIntent:Landroid/content/Intent;

    const-string v6, "remoteVideoVid"

    const-string v7, "-1"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mRemoteVideoVid:Ljava/lang/String;

    .line 146
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mIntent:Landroid/content/Intent;

    const-string v6, "setOnlyWifiUse"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsOnlyUseWifi:Z

    .line 147
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->initOnlinePlay()V

    .line 152
    :goto_0
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    if-eqz v5, :cond_0

    .line 153
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v5, p0}, Lcom/android/gallery3d/app/MoviePlayer;->setMeizuExt(Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;)V

    .line 156
    :cond_0
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 158
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v10}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v2

    .line 159
    .local v2, volumeType:I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 160
    iput-boolean v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsHeadSetPlugIn:Z

    .line 164
    :goto_1
    invoke-virtual {p0, v10}, Lcom/android/gallery3d/app/MovieActivity;->setVolumeControlStream(I)V

    .line 166
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 167
    .local v3, win:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 168
    .local v4, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 169
    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 170
    iget-boolean v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsM040:Z

    if-eqz v5, :cond_3

    .line 171
    iput-boolean v8, v4, Landroid/view/WindowManager$LayoutParams;->isInterceptHomeKey:Z

    .line 175
    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 176
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 177
    .local v1, screenfilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lcom/android/gallery3d/app/MovieActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 180
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v5, "android.media.audio.HEADSET_PLUG"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string v5, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v5, "android.intent.action.MEIZU_HDMI_STATUS_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v0, v11, v11}, Lcom/android/gallery3d/app/MovieActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 186
    return-void

    .line 149
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #screenfilter:Landroid/content/IntentFilter;
    .end local v2           #volumeType:I
    .end local v3           #win:Landroid/view/Window;
    .end local v4           #winParams:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    iput-boolean v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsOnLineVideo:Z

    .line 150
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->initNativePlay()V

    goto :goto_0

    .line 162
    .restart local v2       #volumeType:I
    :cond_2
    iput-boolean v8, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsHeadSetPlugIn:Z

    goto :goto_1

    .line 173
    .restart local v3       #win:Landroid/view/Window;
    .restart local v4       #winParams:Landroid/view/WindowManager$LayoutParams;
    :cond_3
    iput-boolean v9, v4, Landroid/view/WindowManager$LayoutParams;->isInterceptHomeKey:Z

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->onDestroy()V

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 643
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 644
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->setResult()V

    .line 645
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 646
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 693
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    if-eqz v2, :cond_2

    .line 694
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/app/MoviePlayer;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 701
    :cond_1
    :goto_0
    return v0

    .line 697
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mMmsPlayer:Lcom/android/gallery3d/app/MovieMmsPlayer;

    if-eqz v2, :cond_4

    .line 698
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

    .line 701
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
    .line 706
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    if-eqz v0, :cond_2

    .line 707
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/app/MoviePlayer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 710
    :goto_0
    return v0

    .line 707
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 710
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsOnPause:Z

    .line 500
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->onPause()V

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMmsPlayer:Lcom/android/gallery3d/app/MovieMmsPlayer;

    if-eqz v0, :cond_1

    .line 504
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->finish()V

    .line 506
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->unregisterContentObservers()V

    .line 507
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 508
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 509
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 510
    iget v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonSystemBrightness:I

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->setHomeButtonBrightness(I)V

    .line 511
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mAudioFocusChangeLis:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 512
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 513
    return-void
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 590
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    if-eqz v5, :cond_0

    .line 591
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/MoviePlayer;->broadcasePause()V

    .line 593
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->setIsSilentMode()V

    .line 594
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mIntent:Landroid/content/Intent;

    const-string v8, "isLockView"

    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 595
    .local v0, isLockView:Z
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mIntent:Landroid/content/Intent;

    const-string v8, "isSecurity"

    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 596
    .local v1, isSecurity:Z
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 597
    .local v4, win:Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 598
    .local v2, params:Landroid/view/WindowManager$LayoutParams;
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v5, v5, -0x21

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 599
    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 600
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 601
    const/high16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 604
    :cond_1
    iput-boolean v6, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsOnPause:Z

    .line 605
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 606
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v5, "sound_spdif"

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_4

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mbSpdifOn:Z

    .line 607
    iput v6, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonAnimationBrightness:I

    .line 608
    iget v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonAnimationBrightness:I

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/app/MovieActivity;->setHomeButtonBrightness(I)V

    .line 609
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getHomeButtonBrightness()I

    move-result v5

    iput v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonSystemBrightness:I

    .line 610
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->getHdmiStatus()V

    .line 611
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->registerContentObservers()V

    .line 612
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    if-eqz v5, :cond_2

    .line 613
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    iget-boolean v6, p0, Lcom/android/gallery3d/app/MovieActivity;->mbSpdifOn:Z

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/app/MoviePlayer;->setSpdifStatus(Z)V

    .line 614
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/MoviePlayer;->onResume()V

    .line 616
    :cond_2
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mMmsPlayer:Lcom/android/gallery3d/app/MovieMmsPlayer;

    if-eqz v5, :cond_3

    .line 617
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mMmsPlayer:Lcom/android/gallery3d/app/MovieMmsPlayer;

    iget-boolean v6, p0, Lcom/android/gallery3d/app/MovieActivity;->mbSpdifOn:Z

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/app/MovieMmsPlayer;->setSpdifStatus(Z)V

    .line 619
    :cond_3
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v6, p0, Lcom/android/gallery3d/app/MovieActivity;->mAudioFocusChangeLis:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v8, 0x3

    invoke-virtual {v5, v6, v8, v7}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 622
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 623
    return-void

    :cond_4
    move v5, v7

    .line 606
    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 627
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 628
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MoviePlayer;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 631
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 484
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 488
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 489
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 492
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 494
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 495
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    const/4 v0, 0x1

    .line 469
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieActivity;->mCurrentWindowFocus:Z

    .line 470
    if-eqz p1, :cond_0

    .line 471
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->setMenuEnabled(Z)V

    .line 472
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->removeAllMessage()V

    .line 473
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsbackKey:Z

    .line 480
    :goto_0
    return-void

    .line 475
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->setMenuEnabled(Z)V

    .line 476
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->removeAllMessage()V

    .line 477
    iget v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonSystemBrightness:I

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->setHomeButtonBrightness(I)V

    .line 478
    iget v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonSystemBrightness:I

    iput v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonAnimationBrightness:I

    goto :goto_0
.end method

.method public setHomeButtonBrightness(I)V
    .locals 0
    .parameter "brightness"

    .prologue
    .line 806
    invoke-static {p1}, Lcom/android/gallery3d/app/MovieActivityUtils;->setHomeButtonBrightness(I)V

    .line 807
    return-void
.end method

.method public setWinBrightness(I)V
    .locals 1
    .parameter "brightness"

    .prologue
    .line 738
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/gallery3d/app/MovieActivityUtils;->setWinBrightness(Landroid/view/Window;I)V

    .line 739
    return-void
.end method

.method public showSystemTitle(Z)V
    .locals 4
    .parameter "show"

    .prologue
    const/16 v3, 0x400

    .line 743
    const/16 v0, 0x700

    .line 745
    .local v0, flags:I
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 746
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 747
    if-eqz p1, :cond_0

    .line 748
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 752
    :goto_0
    return-void

    .line 750
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method public turnOffLed()V
    .locals 4

    .prologue
    .line 810
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mCurrentWindowFocus:Z

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 812
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 813
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 815
    :cond_0
    return-void
.end method

.method public turnOnLed()V
    .locals 4

    .prologue
    .line 779
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mCurrentWindowFocus:Z

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 781
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 782
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 784
    :cond_0
    return-void
.end method

.method public turnOnM03XLed()V
    .locals 4

    .prologue
    const/16 v2, 0xfa

    .line 787
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mCurrentWindowFocus:Z

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 789
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 790
    iget v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonSystemBrightness:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonAnimationBrightness:I

    if-gtz v0, :cond_1

    .line 791
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/MovieActivity;->setHomeButtonBrightness(I)V

    .line 792
    iput v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonAnimationBrightness:I

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 795
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
