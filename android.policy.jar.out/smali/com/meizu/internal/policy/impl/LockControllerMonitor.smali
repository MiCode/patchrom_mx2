.class public Lcom/meizu/internal/policy/impl/LockControllerMonitor;
.super Ljava/lang/Object;
.source "LockControllerMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/internal/policy/impl/LockControllerMonitor$IRemoteControlDisplayWeak;,
        Lcom/meizu/internal/policy/impl/LockControllerMonitor$Metadata;,
        Lcom/meizu/internal/policy/impl/LockControllerMonitor$CallingInfoCallback;,
        Lcom/meizu/internal/policy/impl/LockControllerMonitor$UsbMassStateCallbacks;,
        Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicInfoCallback;,
        Lcom/meizu/internal/policy/impl/LockControllerMonitor$NotificationQueueEntry;,
        Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;
    }
.end annotation


# static fields
.field public static final CMDNAME:Ljava/lang/String; = "command"

.field static final CURRENT_DEVICE_ACTION:Ljava/lang/String; = "com.android.music.current_device"

.field private static final DEBUG:Z = false

.field static final DOUBLE_CLICK_HOME_ACTION:Ljava/lang/String; = "meizu.intent.double_home_key"

.field private static final INTERNAL_CLEAR_MUSIC_TIMEOUT:I = 0x1388

.field public static final META_CHANGED:Ljava/lang/String; = "com.android.music.metachanged"

.field private static final MSG_CALLING_STATE_CHANGED:I = 0x13a

.field private static final MSG_CALLING_TIMER:I = 0x139

.field private static final MSG_CLEAR_MUSIC_TIMEOUT:I = 0x13f

.field private static final MSG_DOUBLE_CLICK_HOME:I = 0x13e

.field private static final MSG_META_CHANGED:I = 0x12c

.field private static final MSG_MUSIC_APP_NAME_CHANGED:I = 0x130

.field private static final MSG_NAME_STATE_CHANGED:I = 0x12f

.field private static final MSG_PLAYBACK_COMPLETE:I = 0x12d

.field private static final MSG_PLAYSTATE_CHANGED:I = 0x12e

.field private static final MSG_SET_GENERATION_ID:I = 0x13d

.field private static final MSG_SET_METADATA:I = 0x13c

.field private static final MSG_UPDATE_STATE:I = 0x13b

.field private static final MSG_USBMASS_CONNECTED_CHANGED:I = 0x138

.field private static final MSG_USBMASS_STATE_CHANGED:I = 0x137

.field private static final MSG_USBMASS_UNMOUNTED:I = 0x136

.field public static final MUSICONLINE_META_CHANGED:Ljava/lang/String; = "com.android.musiconline.metachanged"

.field public static final MUSICONLINE_NAME_STATE:Ljava/lang/String; = "com.android.musiconline.name_state"

.field public static final MUSICONLINE_PLAYBACK_COMPLETE:Ljava/lang/String; = "com.android.musiconline.playbackcomplete"

.field public static final MUSICONLINE_PLAYSTATE_CHANGED:Ljava/lang/String; = "com.android.musiconline.playstatechanged"

.field public static final MUSIC_PROCESS:Ljava/lang/String; = "com.android.music"

.field public static final MUSIC_PROCESS_ONLINE:Ljava/lang/String; = "com.meizu.musiconline"

.field public static final NAME_STATE:Ljava/lang/String; = "com.android.music.name_state"

.field public static final PLAYBACK_COMPLETE:Ljava/lang/String; = "com.android.music.playbackcomplete"

.field public static final PLAYSTATE_CHANGED:Ljava/lang/String; = "com.android.music.playstatechanged"

.field static final REMOTE_VOLUME_ACTION:Ljava/lang/String; = "com.android.music.remote_volume"

.field public static final SERVICECMD:Ljava/lang/String; = "com.android.music.COMMAND"

.field private static final TAG:Ljava/lang/String; = "LockControllerMonitor"

.field private static final TAG_KEYGUARD:Ljava/lang/String; = "Keyguard"

.field private static final TAG_MUSIC:Ljava/lang/String; = "LockMusic"

.field public static final sShowUsb:Z


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mArtistName:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallingInfoCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/internal/policy/impl/LockControllerMonitor$CallingInfoCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mClientGeneration:I

.field private mClientIntent:Landroid/app/PendingIntent;

.field private mContext:Landroid/content/Context;

.field private mCreateTime:J

.field private mCurrentPlayState:I

.field private mCurrentTime:J

.field private mForceShowMusic:Z

.field private mHandler:Landroid/os/Handler;

.field private mIRCD:Lcom/meizu/internal/policy/impl/LockControllerMonitor$IRemoteControlDisplayWeak;

.field private mIsOnlineMusicPlaying:Z

.field private mIsPhoneRecordMode:Z

.field private mIsPlaying:Z

.field private mIsUsbMassConnected:Z

.field private mMetadata:Lcom/meizu/internal/policy/impl/LockControllerMonitor$Metadata;

.field private mMusicAppName:Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;

.field private mMusicInfoCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicInfoCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mMusicName:Ljava/lang/String;

.field public mNotifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/internal/statusbar/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field private mOnlineArtistName:Ljava/lang/String;

.field private mOnlineMusicName:Ljava/lang/String;

.field private mPhoneState:I

.field private mPhoneStateListenerEx:Lcom/meizu/internal/telephony/PhoneStateListenerEx;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUsbMassState:Ljava/lang/String;

.field private mUsbMassStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/internal/policy/impl/LockControllerMonitor$UsbMassStateCallbacks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 357
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mNotifications:Ljava/util/HashMap;

    .line 106
    iput-object v4, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mArtistName:Ljava/lang/String;

    .line 107
    iput-object v4, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicName:Ljava/lang/String;

    .line 108
    iput-boolean v5, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsPlaying:Z

    .line 109
    iput-object v4, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mOnlineMusicName:Ljava/lang/String;

    .line 110
    iput-object v4, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mOnlineArtistName:Ljava/lang/String;

    .line 111
    iput-boolean v5, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsOnlineMusicPlaying:Z

    .line 112
    sget-object v3, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;->MUSIC_APP:Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicAppName:Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;

    .line 113
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    .line 117
    iput-object v4, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 118
    const-string v3, "unmounted"

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mUsbMassState:Ljava/lang/String;

    .line 119
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mUsbMassStateCallbacks:Ljava/util/ArrayList;

    .line 122
    new-instance v3, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;

    invoke-direct {v3, p0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;-><init>(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 190
    iput-wide v6, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mCurrentTime:J

    .line 191
    iput-wide v6, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mCreateTime:J

    .line 192
    const/16 v3, 0x3e8

    iput v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mPhoneState:I

    .line 193
    iput-boolean v5, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsPhoneRecordMode:Z

    .line 194
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mCallingInfoCallbacks:Ljava/util/ArrayList;

    .line 195
    new-instance v3, Lcom/meizu/internal/policy/impl/LockControllerMonitor$2;

    invoke-direct {v3, p0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor$2;-><init>(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mPhoneStateListenerEx:Lcom/meizu/internal/telephony/PhoneStateListenerEx;

    .line 241
    new-instance v3, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;

    invoke-direct {v3, p0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;-><init>(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;

    .line 901
    iput-boolean v5, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mForceShowMusic:Z

    .line 906
    new-instance v3, Lcom/meizu/internal/policy/impl/LockControllerMonitor$Metadata;

    invoke-direct {v3, p0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor$Metadata;-><init>(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMetadata:Lcom/meizu/internal/policy/impl/LockControllerMonitor$Metadata;

    .line 358
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mContext:Landroid/content/Context;

    .line 359
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 364
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "com.android.musiconline.playstatechanged"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    const-string v3, "com.android.musiconline.playbackcomplete"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    const-string v3, "com.android.musiconline.metachanged"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    const-string v3, "com.android.musiconline.name_state"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    const-string v3, "com.android.music.remote_volume"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    const-string v3, "com.android.music.current_device"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 373
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    const-string v3, "meizu.intent.action.phone_recorder_mode_changed"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 375
    const-string v3, "meizu.intent.double_home_key"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 376
    new-instance v3, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;

    invoke-direct {v3, p0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;-><init>(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 509
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 510
    .local v1, filterPackage:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 511
    const-string v3, "package"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 512
    new-instance v3, Lcom/meizu/internal/policy/impl/LockControllerMonitor$5;

    invoke-direct {v3, p0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor$5;-><init>(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 538
    iput-boolean v5, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsUsbMassConnected:Z

    .line 539
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mUsbMassState:Ljava/lang/String;

    .line 546
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 548
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mPhoneStateListenerEx:Lcom/meizu/internal/telephony/PhoneStateListenerEx;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listenEx(Lcom/meizu/internal/telephony/PhoneStateListenerEx;I)V

    .line 550
    new-instance v3, Lcom/meizu/internal/policy/impl/LockControllerMonitor$IRemoteControlDisplayWeak;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, v4}, Lcom/meizu/internal/policy/impl/LockControllerMonitor$IRemoteControlDisplayWeak;-><init>(Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIRCD:Lcom/meizu/internal/policy/impl/LockControllerMonitor$IRemoteControlDisplayWeak;

    .line 551
    iput v5, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mCurrentPlayState:I

    .line 552
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mUsbMassState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mUsbMassState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/meizu/internal/policy/impl/LockControllerMonitor;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mCreateTime:J

    return-wide p1
.end method

.method static synthetic access$1202(Lcom/meizu/internal/policy/impl/LockControllerMonitor;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mCurrentTime:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->handleMetaChanged()V

    return-void
.end method

.method static synthetic access$1400(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->handlePlaybackComplete()V

    return-void
.end method

.method static synthetic access$1500(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->handlePlaystateChanded()V

    return-void
.end method

.method static synthetic access$1600(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->handleNamestateChanded()V

    return-void
.end method

.method static synthetic access$1700(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->handleMusicAppChanged(Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->handleCallingStateChanged()V

    return-void
.end method

.method static synthetic access$1900(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->handleCallingUpdateTime()V

    return-void
.end method

.method static synthetic access$2000(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->handleUsbMassStateChanded()V

    return-void
.end method

.method static synthetic access$202(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->handleUsbMassConnectedChanded()V

    return-void
.end method

.method static synthetic access$2200(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mClientGeneration:I

    return v0
.end method

.method static synthetic access$2202(Lcom/meizu/internal/policy/impl/LockControllerMonitor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mClientGeneration:I

    return p1
.end method

.method static synthetic access$2300(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mCurrentPlayState:I

    return v0
.end method

.method static synthetic access$2302(Lcom/meizu/internal/policy/impl/LockControllerMonitor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mCurrentPlayState:I

    return p1
.end method

.method static synthetic access$2400(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Lcom/meizu/internal/policy/impl/LockControllerMonitor$Metadata;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMetadata:Lcom/meizu/internal/policy/impl/LockControllerMonitor$Metadata;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Landroid/os/Bundle;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mForceShowMusic:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->handleMusicClientClear()V

    return-void
.end method

.method static synthetic access$302(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mArtistName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mClientIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->handleDoubleClickHome()V

    return-void
.end method

.method static synthetic access$3300(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsPlaying:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsPlaying:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->listenMusicAppChanged(Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsOnlineMusicPlaying:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsOnlineMusicPlaying:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsPhoneRecordMode:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsPhoneRecordMode:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mOnlineMusicName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mOnlineArtistName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsUsbMassConnected:Z

    return v0
.end method

.method static synthetic access$602(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsUsbMassConnected:Z

    return p1
.end method

.method static synthetic access$700(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/storage/StorageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mPhoneState:I

    return v0
.end method

.method static synthetic access$802(Lcom/meizu/internal/policy/impl/LockControllerMonitor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mPhoneState:I

    return p1
.end method

.method static synthetic access$900(Lcom/meizu/internal/policy/impl/LockControllerMonitor;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->isCalling(I)Z

    move-result v0

    return v0
.end method

.method private getMdString(Landroid/os/Bundle;I)Ljava/lang/String;
    .locals 1
    .parameter "data"
    .parameter "id"

    .prologue
    .line 887
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleCallingStateChanged()V
    .locals 3

    .prologue
    .line 786
    const-string v1, "Keyguard"

    const-string v2, "handleCallingStateChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mCallingInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 788
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mCallingInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/internal/policy/impl/LockControllerMonitor$CallingInfoCallback;

    invoke-interface {v1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor$CallingInfoCallback;->onCallingStateChanged()V

    .line 787
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 790
    :cond_0
    return-void
.end method

.method private handleCallingUpdateTime()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x3e8

    const/16 v3, 0x139

    .line 777
    iget-wide v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mCurrentTime:J

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mCurrentTime:J

    .line 778
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 779
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 780
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mCallingInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 781
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mCallingInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/internal/policy/impl/LockControllerMonitor$CallingInfoCallback;

    invoke-interface {v1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor$CallingInfoCallback;->onUpdateCallingTime()V

    .line 780
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 783
    :cond_0
    return-void
.end method

.method private handleDoubleClickHome()V
    .locals 2

    .prologue
    .line 742
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 743
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicInfoCallback;

    invoke-interface {v1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicInfoCallback;->onDoubleClickHome()V

    .line 742
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 745
    :cond_0
    return-void
.end method

.method private handleMetaChanged()V
    .locals 2

    .prologue
    .line 700
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 701
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicInfoCallback;

    invoke-interface {v1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicInfoCallback;->onMetaChanged()V

    .line 700
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 703
    :cond_0
    return-void
.end method

.method private handleMusicAppChanged(Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;)V
    .locals 2
    .parameter "appName"

    .prologue
    .line 730
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 731
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicInfoCallback;

    invoke-interface {v1, p1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicInfoCallback;->onMusicApp(Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;)V

    .line 730
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 733
    :cond_0
    return-void
.end method

.method private handleMusicClientClear()V
    .locals 2

    .prologue
    .line 736
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 737
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicInfoCallback;

    invoke-interface {v1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicInfoCallback;->onMusicClientClear()V

    .line 736
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 739
    :cond_0
    return-void
.end method

.method private handleMusicVolumeChanged(I)V
    .locals 2
    .parameter "volume"

    .prologue
    .line 724
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 725
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicInfoCallback;

    invoke-interface {v1, p1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicInfoCallback;->onMusicVolumeChanged(I)V

    .line 724
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 727
    :cond_0
    return-void
.end method

.method private handleNamestateChanded()V
    .locals 2

    .prologue
    .line 718
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 719
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicInfoCallback;

    invoke-interface {v1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicInfoCallback;->onNameStateChanged()V

    .line 718
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 721
    :cond_0
    return-void
.end method

.method private handlePlaybackComplete()V
    .locals 2

    .prologue
    .line 706
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 707
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicInfoCallback;

    invoke-interface {v1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicInfoCallback;->onPlaybackComplete()V

    .line 706
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 709
    :cond_0
    return-void
.end method

.method private handlePlaystateChanded()V
    .locals 2

    .prologue
    .line 712
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 713
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicInfoCallback;

    invoke-interface {v1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicInfoCallback;->onPlaystateChanged()V

    .line 712
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 715
    :cond_0
    return-void
.end method

.method private handleUsbMassConnectedChanded()V
    .locals 3

    .prologue
    .line 764
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mUsbMassStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 765
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mUsbMassStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/internal/policy/impl/LockControllerMonitor$UsbMassStateCallbacks;

    iget-boolean v2, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsUsbMassConnected:Z

    invoke-interface {v1, v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor$UsbMassStateCallbacks;->onUsbMassConnectedChanged(Z)V

    .line 764
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 767
    :cond_0
    return-void
.end method

.method private handleUsbMassStateChanded()V
    .locals 3

    .prologue
    .line 758
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mUsbMassStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 759
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mUsbMassStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/internal/policy/impl/LockControllerMonitor$UsbMassStateCallbacks;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mUsbMassState:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor$UsbMassStateCallbacks;->onUsbMassStateChanged(Ljava/lang/String;)V

    .line 758
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 761
    :cond_0
    return-void
.end method

.method private isCalling(I)Z
    .locals 1
    .parameter "phoneState"

    .prologue
    .line 648
    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3ec

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3eb

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3ed

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3ee

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private listenMusicAppChanged(Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;)V
    .locals 3
    .parameter "appName"

    .prologue
    .line 587
    monitor-enter p0

    .line 588
    :try_start_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicAppName:Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;

    if-eq v0, p1, :cond_0

    .line 589
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicAppName:Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;

    .line 590
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x130

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 592
    :cond_0
    monitor-exit p0

    .line 593
    return-void

    .line 592
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public cleanForceShowMusic()V
    .locals 1

    .prologue
    .line 884
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mForceShowMusic:Z

    .line 885
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 596
    const-string v7, ""

    .line 597
    .local v7, name:Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 598
    .local v1, phoneUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 599
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move-object v8, v7

    .line 610
    .end local v7           #name:Ljava/lang/String;
    .local v8, name:Ljava/lang/String;
    :goto_0
    return-object v8

    .line 602
    .end local v8           #name:Ljava/lang/String;
    .restart local v7       #name:Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 608
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v8, v7

    .line 610
    .end local v7           #name:Ljava/lang/String;
    .restart local v8       #name:Ljava/lang/String;
    goto :goto_0

    .line 605
    .end local v8           #name:Ljava/lang/String;
    .restart local v7       #name:Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mAddress:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 608
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicAppName:Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;->MUSICONLINE_APP:Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;

    if-ne v0, v1, :cond_0

    .line 574
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mOnlineArtistName:Ljava/lang/String;

    .line 576
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mArtistName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 14

    .prologue
    const-wide/16 v12, 0x3c

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 614
    iget v5, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mPhoneState:I

    const/16 v6, 0x3e9

    if-ne v5, v6, :cond_1

    .line 615
    iget-wide v5, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mCurrentTime:J

    const-wide/16 v7, 0x3e8

    div-long v3, v5, v7

    .line 616
    .local v3, sec:J
    div-long v5, v3, v12

    long-to-int v1, v5

    .line 617
    .local v1, min:I
    div-int/lit8 v0, v1, 0x3c

    .line 618
    .local v0, hour:I
    rem-int/lit8 v1, v1, 0x3c

    .line 619
    rem-long/2addr v3, v12

    .line 621
    if-lez v0, :cond_0

    .line 622
    const-string v5, "%02d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 625
    .local v2, ret:Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040561

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 630
    .end local v0           #hour:I
    .end local v1           #min:I
    .end local v2           #ret:Ljava/lang/String;
    .end local v3           #sec:J
    :goto_1
    return-object v2

    .line 624
    .restart local v0       #hour:I
    .restart local v1       #min:I
    .restart local v3       #sec:J
    :cond_0
    const-string v5, "%02d:%02d"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_0

    .line 627
    .end local v0           #hour:I
    .end local v1           #min:I
    .end local v2           #ret:Ljava/lang/String;
    .end local v3           #sec:J
    :cond_1
    iget v5, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mPhoneState:I

    const/16 v6, 0x3ea

    if-ne v5, v6, :cond_2

    .line 628
    const-string v2, ""

    goto :goto_1

    .line 630
    :cond_2
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040560

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public getIsUsbMassConnected()Z
    .locals 1

    .prologue
    .line 801
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsUsbMassConnected:Z

    return v0
.end method

.method public getMetaTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMetadata:Lcom/meizu/internal/policy/impl/LockControllerMonitor$Metadata;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor$Metadata;->access$2700(Lcom/meizu/internal/policy/impl/LockControllerMonitor$Metadata;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMusicAppName()Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;
    .locals 1

    .prologue
    .line 581
    monitor-enter p0

    .line 582
    :try_start_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicAppName:Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;

    monitor-exit p0

    return-object v0

    .line 583
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMusicName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->getMetaTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsbMassState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mUsbMassState:Ljava/lang/String;

    return-object v0
.end method

.method public isCalling()Z
    .locals 1

    .prologue
    .line 644
    iget v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mPhoneState:I

    invoke-direct {p0, v0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->isCalling(I)Z

    move-result v0

    return v0
.end method

.method public isMusicPlaying()Z
    .locals 1

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isPhoneRecordMode()Z
    .locals 1

    .prologue
    .line 654
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsPhoneRecordMode:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 856
    iget v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mCurrentPlayState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registRemoteControlDisplay()V
    .locals 2

    .prologue
    .line 808
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mAudioManager:Landroid/media/AudioManager;

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 814
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIRCD:Lcom/meizu/internal/policy/impl/LockControllerMonitor$IRemoteControlDisplayWeak;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 816
    :cond_1
    return-void
.end method

.method public registerCallingInfoCallback(Lcom/meizu/internal/policy/impl/LockControllerMonitor$CallingInfoCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 793
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mCallingInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    return-void
.end method

.method public registerMusicInfoCallback(Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicInfoCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 694
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 695
    :try_start_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    monitor-exit v1

    .line 697
    return-void

    .line 696
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerUsbMassStateCallback(Lcom/meizu/internal/policy/impl/LockControllerMonitor$UsbMassStateCallbacks;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 754
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mUsbMassStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    return-void
.end method

.method public removeCallback(Ljava/lang/Object;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 668
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 669
    :try_start_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 670
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mUsbMassStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 672
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mCallingInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 673
    return-void

    .line 670
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public sendMediaButtonClick(I)V
    .locals 8
    .parameter "keyCode"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 820
    const-string v6, "LockMusic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendMediaButtonClick keyCode = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", ClientIntent is null ? "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mClientIntent:Landroid/app/PendingIntent;

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mClientIntent:Landroid/app/PendingIntent;

    if-nez v3, :cond_1

    .line 824
    const-string v3, "LockMusic"

    const-string v4, "sendMediaButtonClick(): No client is currently registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :goto_1
    return-void

    :cond_0
    move v3, v5

    .line 820
    goto :goto_0

    .line 830
    :cond_1
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v5, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 831
    .local v2, keyEvent:Landroid/view/KeyEvent;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 832
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 834
    :try_start_0
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mClientIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 840
    :goto_2
    new-instance v2, Landroid/view/KeyEvent;

    .end local v2           #keyEvent:Landroid/view/KeyEvent;
    invoke-direct {v2, v4, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 841
    .restart local v2       #keyEvent:Landroid/view/KeyEvent;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 842
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 844
    :try_start_1
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mClientIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 845
    :catch_0
    move-exception v0

    .line 846
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    const-string v3, "LockMusic"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error sending intent for media button up: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_1

    .line 835
    .end local v0           #e:Landroid/app/PendingIntent$CanceledException;
    :catch_1
    move-exception v0

    .line 836
    .restart local v0       #e:Landroid/app/PendingIntent$CanceledException;
    const-string v3, "LockMusic"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error sending intent for media button down: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_2
.end method

.method public startMusic()V
    .locals 6

    .prologue
    const/16 v5, 0x13f

    .line 860
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mForceShowMusic:Z

    .line 861
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mClientIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_2

    .line 862
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 864
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mClientIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 876
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->getMusicName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->getMusicName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 877
    :cond_0
    const-string v2, "LockMusic"

    const-string v3, "send msg MSG_CLEAR_MUSIC_TIMEOUT"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 879
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 881
    :cond_1
    return-void

    .line 865
    :catch_0
    move-exception v0

    .line 866
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    const-string v2, "LockMusic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error sending intent for media button down: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0

    .line 870
    .end local v0           #e:Landroid/app/PendingIntent$CanceledException;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 871
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.android.music.COMMAND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 872
    const-string v2, "command"

    const-string v3, "lock_request_info"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 873
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public updateCallTime()V
    .locals 8

    .prologue
    const/16 v4, 0x139

    .line 635
    iget v2, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mPhoneState:I

    const/16 v3, 0x3e9

    if-eq v2, v3, :cond_0

    .line 641
    :goto_0
    return-void

    .line 637
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 638
    .local v0, now:J
    iget-wide v2, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mCreateTime:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mCurrentTime:J

    .line 639
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 640
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method
