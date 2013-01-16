.class public Landroid/media/dlna/DlnaClient;
.super Ljava/lang/Object;
.source "DlnaClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/dlna/DlnaClient$ActionResultXmlHandler;,
        Landroid/media/dlna/DlnaClient$GetProtocolListener;,
        Landroid/media/dlna/DlnaClient$PlaybackInfoListener;,
        Landroid/media/dlna/DlnaClient$RemoteCallListener;,
        Landroid/media/dlna/DlnaClient$SeekListener3;,
        Landroid/media/dlna/DlnaClient$SeekListener2;,
        Landroid/media/dlna/DlnaClient$SeekListener1;
    }
.end annotation


# static fields
.field private static final ACTION_RESULT:I = 0xc8

.field private static final PLAYBACKINFO_QUERY:I = 0x65

.field private static final TAG:Ljava/lang/String; = "DlnaClient"

.field private static mCallbackPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static mCookieIndex:I

.field private static mPlaybackState:I

.field private static mPosition:J

.field private static mVolume:I

.field private static mVolumeToSet:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDlnaHandler:Landroid/os/Handler;

.field private mLastUri:Ljava/lang/String;

.field private mPlaybackInfoListener:Landroid/media/dlna/DlnaClient$PlaybackInfoListener;

.field private mPositionToSeek:J

.field private mSeekFormat:I

.field private mSeeking:Z

.field private mTryingToPause:Z

.field private mTryingToPlay:Z

.field private mUriSent:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 49
    invoke-static {}, Landroid/media/dlna/DlnaClient;->native_init()V

    .line 165
    const/16 v0, 0x3e8

    sput v0, Landroid/media/dlna/DlnaClient;->mCookieIndex:I

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/dlna/DlnaClient;->mCallbackPool:Ljava/util/Map;

    .line 644
    sput v2, Landroid/media/dlna/DlnaClient;->mVolume:I

    .line 645
    const/4 v0, -0x1

    sput v0, Landroid/media/dlna/DlnaClient;->mVolumeToSet:I

    .line 646
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/media/dlna/DlnaClient;->mPosition:J

    .line 647
    sput v2, Landroid/media/dlna/DlnaClient;->mPlaybackState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object v4, p0, Landroid/media/dlna/DlnaClient;->mContext:Landroid/content/Context;

    .line 89
    iput-object v4, p0, Landroid/media/dlna/DlnaClient;->mLastUri:Ljava/lang/String;

    .line 90
    iput-object v4, p0, Landroid/media/dlna/DlnaClient;->mUriSent:Ljava/lang/String;

    .line 231
    iput-boolean v3, p0, Landroid/media/dlna/DlnaClient;->mTryingToPlay:Z

    .line 255
    iput-boolean v3, p0, Landroid/media/dlna/DlnaClient;->mTryingToPause:Z

    .line 274
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/media/dlna/DlnaClient;->mPositionToSeek:J

    .line 283
    iput-boolean v3, p0, Landroid/media/dlna/DlnaClient;->mSeeking:Z

    .line 284
    iput v3, p0, Landroid/media/dlna/DlnaClient;->mSeekFormat:I

    .line 473
    new-instance v1, Landroid/media/dlna/DlnaClient$3;

    invoke-direct {v1, p0}, Landroid/media/dlna/DlnaClient$3;-><init>(Landroid/media/dlna/DlnaClient;)V

    iput-object v1, p0, Landroid/media/dlna/DlnaClient;->mDlnaHandler:Landroid/os/Handler;

    .line 649
    iput-object v4, p0, Landroid/media/dlna/DlnaClient;->mPlaybackInfoListener:Landroid/media/dlna/DlnaClient$PlaybackInfoListener;

    .line 723
    iput-object v4, p0, Landroid/media/dlna/DlnaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 93
    const-string v1, "DlnaClient"

    const-string v2, "dlna client init"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 96
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x20000001

    const-class v2, Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroid/media/dlna/DlnaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 98
    iget-object v1, p0, Landroid/media/dlna/DlnaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 100
    iput-object p1, p0, Landroid/media/dlna/DlnaClient;->mContext:Landroid/content/Context;

    .line 101
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Landroid/media/dlna/DlnaClient;->upnpInit(Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method static synthetic access$002(Landroid/media/dlna/DlnaClient;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Landroid/media/dlna/DlnaClient;->mTryingToPlay:Z

    return p1
.end method

.method static synthetic access$1000()J
    .locals 2

    .prologue
    .line 45
    sget-wide v0, Landroid/media/dlna/DlnaClient;->mPosition:J

    return-wide v0
.end method

.method static synthetic access$1002(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    sput-wide p0, Landroid/media/dlna/DlnaClient;->mPosition:J

    return-wide p0
.end method

.method static synthetic access$102(Landroid/media/dlna/DlnaClient;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Landroid/media/dlna/DlnaClient;->mTryingToPause:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/media/dlna/DlnaClient;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 45
    iget-wide v0, p0, Landroid/media/dlna/DlnaClient;->mPositionToSeek:J

    return-wide v0
.end method

.method static synthetic access$1102(Landroid/media/dlna/DlnaClient;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-wide p1, p0, Landroid/media/dlna/DlnaClient;->mPositionToSeek:J

    return-wide p1
.end method

.method static synthetic access$1200(Landroid/media/dlna/DlnaClient;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/media/dlna/DlnaClient;->stateToInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    .line 45
    sget v0, Landroid/media/dlna/DlnaClient;->mPlaybackState:I

    return v0
.end method

.method static synthetic access$1302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    sput p0, Landroid/media/dlna/DlnaClient;->mPlaybackState:I

    return p0
.end method

.method static synthetic access$1400(Landroid/media/dlna/DlnaClient;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/media/dlna/DlnaClient;->seekLong(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/media/dlna/DlnaClient;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Landroid/media/dlna/DlnaClient;->mUriSent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Landroid/media/dlna/DlnaClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Landroid/media/dlna/DlnaClient;->mUriSent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Landroid/media/dlna/DlnaClient;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Landroid/media/dlna/DlnaClient;->mLastUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Landroid/media/dlna/DlnaClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Landroid/media/dlna/DlnaClient;->mLastUri:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Landroid/media/dlna/DlnaClient;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/media/dlna/DlnaClient;->requestState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Landroid/media/dlna/DlnaClient;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/media/dlna/DlnaClient;->requestVolume()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Landroid/media/dlna/DlnaClient;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/media/dlna/DlnaClient;->requestPosition()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/media/dlna/DlnaClient;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Landroid/media/dlna/DlnaClient;->mSeekFormat:I

    return v0
.end method

.method static synthetic access$202(Landroid/media/dlna/DlnaClient;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Landroid/media/dlna/DlnaClient;->mSeekFormat:I

    return p1
.end method

.method static synthetic access$300(Landroid/media/dlna/DlnaClient;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Landroid/media/dlna/DlnaClient;->mSeeking:Z

    return v0
.end method

.method static synthetic access$302(Landroid/media/dlna/DlnaClient;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Landroid/media/dlna/DlnaClient;->mSeeking:Z

    return p1
.end method

.method static synthetic access$400(Landroid/media/dlna/DlnaClient;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/dlna/DlnaClient;->callAction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600()Ljava/util/Map;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Landroid/media/dlna/DlnaClient;->mCallbackPool:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 45
    sget v0, Landroid/media/dlna/DlnaClient;->mVolumeToSet:I

    return v0
.end method

.method static synthetic access$702(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    sput p0, Landroid/media/dlna/DlnaClient;->mVolumeToSet:I

    return p0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 45
    sget v0, Landroid/media/dlna/DlnaClient;->mVolume:I

    return v0
.end method

.method static synthetic access$802(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    sput p0, Landroid/media/dlna/DlnaClient;->mVolume:I

    return p0
.end method

.method static synthetic access$900(Landroid/media/dlna/DlnaClient;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/media/dlna/DlnaClient;->setVolumeInt(I)Z

    move-result v0

    return v0
.end method

.method private final callAction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 5
    .parameter "serviceName"
    .parameter "actionName"
    .parameter "paramArray"
    .parameter "obj"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 173
    if-nez p4, :cond_2

    .line 174
    invoke-direct {p0, p1, p2, p3, v3}, Landroid/media/dlna/DlnaClient;->upnpCallAction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    .line 189
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 174
    goto :goto_0

    .line 176
    :cond_2
    sget v3, Landroid/media/dlna/DlnaClient;->mCookieIndex:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroid/media/dlna/DlnaClient;->mCookieIndex:I

    .line 179
    sget v3, Landroid/media/dlna/DlnaClient;->mCookieIndex:I

    invoke-direct {p0, p1, p2, p3, v3}, Landroid/media/dlna/DlnaClient;->upnpCallAction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v1

    .line 181
    .local v1, ret:I
    if-nez v1, :cond_3

    .line 182
    sget-object v3, Landroid/media/dlna/DlnaClient;->mCallbackPool:Ljava/util/Map;

    sget v4, Landroid/media/dlna/DlnaClient;->mCookieIndex:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 184
    :cond_3
    instance-of v3, p4, Landroid/media/dlna/DlnaClient$RemoteCallListener;

    if-eqz v3, :cond_0

    move-object v0, p4

    .line 185
    check-cast v0, Landroid/media/dlna/DlnaClient$RemoteCallListener;

    .line 186
    .local v0, remote:Landroid/media/dlna/DlnaClient$RemoteCallListener;
    const-string v3, "local error"

    invoke-interface {v0, v1, v3}, Landroid/media/dlna/DlnaClient$RemoteCallListener;->onActionEnd(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getActionResultDom([B)Ljava/util/Map;
    .locals 15
    .parameter "xmlBuf"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 767
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 770
    .local v9, retMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 772
    .local v6, is:Ljava/io/ByteArrayInputStream;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 773
    .local v4, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 775
    .local v1, db:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v1, v6}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 776
    .local v2, document:Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v10

    .line 777
    .local v10, rootElement:Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 779
    .local v0, childList:Lorg/w3c/dom/NodeList;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ge v5, v12, :cond_1

    .line 780
    invoke-interface {v0, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 781
    .local v8, node:Lorg/w3c/dom/Node;
    const/4 v12, 0x1

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    if-eq v12, v13, :cond_0

    .line 779
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 784
    :cond_0
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    .line 785
    .local v7, key:Ljava/lang/String;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    .line 786
    .local v11, value:Ljava/lang/String;
    invoke-interface {v9, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 789
    .end local v0           #childList:Lorg/w3c/dom/NodeList;
    .end local v1           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #document:Lorg/w3c/dom/Document;
    .end local v4           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5           #i:I
    .end local v6           #is:Ljava/io/ByteArrayInputStream;
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #node:Lorg/w3c/dom/Node;
    .end local v10           #rootElement:Lorg/w3c/dom/Element;
    .end local v11           #value:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 790
    .local v3, e:Ljava/lang/Exception;
    const-string v12, "DlnaClient"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DOM parser xml exception:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    .end local v3           #e:Ljava/lang/Exception;
    :cond_1
    return-object v9
.end method

.method private getService()Landroid/media/dlna/IDLNAService;
    .locals 4

    .prologue
    .line 111
    const-string v2, "media.dlna"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 112
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/dlna/IDLNAService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/dlna/IDLNAService;

    move-result-object v1

    .line 113
    .local v1, service:Landroid/media/dlna/IDLNAService;
    if-nez v1, :cond_0

    .line 114
    const-string v2, "DlnaClient"

    const-string v3, "get dlna service NULL !!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    return-object v1
.end method

.method private static final native native_init()V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .parameter "dlnaClient_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 76
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/dlna/DlnaClient;

    .line 77
    .local v0, dc:Landroid/media/dlna/DlnaClient;
    if-nez v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-virtual {v0}, Landroid/media/dlna/DlnaClient;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 82
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 84
    .local v2, m:Landroid/os/Message;
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private requestPosition()Z
    .locals 4

    .prologue
    .line 430
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "InstanceID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "0"

    aput-object v2, v0, v1

    .line 433
    .local v0, params:[Ljava/lang/String;
    const-string v1, "AVTransport"

    const-string v2, "GetPositionInfo"

    iget-object v3, p0, Landroid/media/dlna/DlnaClient;->mPlaybackInfoListener:Landroid/media/dlna/DlnaClient$PlaybackInfoListener;

    invoke-direct {p0, v1, v2, v0, v3}, Landroid/media/dlna/DlnaClient;->callAction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private requestState()Z
    .locals 4

    .prologue
    .line 437
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "InstanceID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "0"

    aput-object v2, v0, v1

    .line 440
    .local v0, params:[Ljava/lang/String;
    const-string v1, "AVTransport"

    const-string v2, "GetTransportInfo"

    iget-object v3, p0, Landroid/media/dlna/DlnaClient;->mPlaybackInfoListener:Landroid/media/dlna/DlnaClient$PlaybackInfoListener;

    invoke-direct {p0, v1, v2, v0, v3}, Landroid/media/dlna/DlnaClient;->callAction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private requestVolume()Z
    .locals 4

    .prologue
    .line 421
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "InstanceID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Channel"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Master"

    aput-object v2, v0, v1

    .line 426
    .local v0, params:[Ljava/lang/String;
    const-string v1, "RenderingControl"

    const-string v2, "GetVolume"

    iget-object v3, p0, Landroid/media/dlna/DlnaClient;->mPlaybackInfoListener:Landroid/media/dlna/DlnaClient$PlaybackInfoListener;

    invoke-direct {p0, v1, v2, v0, v3}, Landroid/media/dlna/DlnaClient;->callAction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private seekLong(J)Z
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    .line 388
    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    .line 390
    const-string v1, "DlnaClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seek position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iput-boolean v4, p0, Landroid/media/dlna/DlnaClient;->mSeeking:Z

    .line 392
    iget v1, p0, Landroid/media/dlna/DlnaClient;->mSeekFormat:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/media/dlna/DlnaClient;->mSeekFormat:I

    if-ne v1, v4, :cond_2

    .line 393
    :cond_0
    new-instance v0, Landroid/media/dlna/DlnaClient$SeekListener1;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/dlna/DlnaClient$SeekListener1;-><init>(Landroid/media/dlna/DlnaClient;J)V

    .line 394
    .local v0, l:Landroid/media/dlna/DlnaClient$SeekListener1;
    const-string v1, "AVTransport"

    const-string v2, "Seek"

    iget-object v3, v0, Landroid/media/dlna/DlnaClient$SeekListener1;->mParams:[Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/media/dlna/DlnaClient;->callAction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Z

    .line 402
    .end local v0           #l:Landroid/media/dlna/DlnaClient$SeekListener1;
    :cond_1
    :goto_0
    return v4

    .line 395
    :cond_2
    iget v1, p0, Landroid/media/dlna/DlnaClient;->mSeekFormat:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 396
    new-instance v0, Landroid/media/dlna/DlnaClient$SeekListener2;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/dlna/DlnaClient$SeekListener2;-><init>(Landroid/media/dlna/DlnaClient;J)V

    .line 397
    .local v0, l:Landroid/media/dlna/DlnaClient$SeekListener2;
    const-string v1, "AVTransport"

    const-string v2, "Seek"

    iget-object v3, v0, Landroid/media/dlna/DlnaClient$SeekListener2;->mParams:[Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/media/dlna/DlnaClient;->callAction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 398
    .end local v0           #l:Landroid/media/dlna/DlnaClient$SeekListener2;
    :cond_3
    iget v1, p0, Landroid/media/dlna/DlnaClient;->mSeekFormat:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 399
    new-instance v0, Landroid/media/dlna/DlnaClient$SeekListener3;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/dlna/DlnaClient$SeekListener3;-><init>(Landroid/media/dlna/DlnaClient;J)V

    .line 400
    .local v0, l:Landroid/media/dlna/DlnaClient$SeekListener3;
    const-string v1, "AVTransport"

    const-string v2, "Seek"

    #getter for: Landroid/media/dlna/DlnaClient$SeekListener3;->mParams:[Ljava/lang/String;
    invoke-static {v0}, Landroid/media/dlna/DlnaClient$SeekListener3;->access$500(Landroid/media/dlna/DlnaClient$SeekListener3;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/media/dlna/DlnaClient;->callAction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setVolumeInt(I)Z
    .locals 4
    .parameter "volume"

    .prologue
    .line 411
    const/4 v1, 0x6

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "InstanceID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Channel"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Master"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "DesiredVolume"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 417
    .local v0, params:[Ljava/lang/String;
    const-string v1, "RenderingControl"

    const-string v2, "SetVolume"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v0, v3}, Landroid/media/dlna/DlnaClient;->callAction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private stateToInt(Ljava/lang/String;)I
    .locals 1
    .parameter "stateStr"

    .prologue
    .line 694
    const-string v0, "NO_MEDIA_PRESENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    const/4 v0, 0x1

    .line 704
    :goto_0
    return v0

    .line 696
    :cond_0
    const-string v0, "STOPPED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 697
    const/4 v0, 0x2

    goto :goto_0

    .line 698
    :cond_1
    const-string v0, "TRANSITIONING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 699
    const/4 v0, 0x4

    goto :goto_0

    .line 700
    :cond_2
    const-string v0, "PLAYING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 701
    const/16 v0, 0x8

    goto :goto_0

    .line 702
    :cond_3
    const-string v0, "PAUSED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 703
    const/16 v0, 0x10

    goto :goto_0

    .line 704
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stateToString(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 708
    sparse-switch p1, :sswitch_data_0

    .line 720
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 710
    :sswitch_0
    const-string v0, "No Media"

    goto :goto_0

    .line 712
    :sswitch_1
    const-string v0, "Paused"

    goto :goto_0

    .line 714
    :sswitch_2
    const-string v0, "Playing"

    goto :goto_0

    .line 716
    :sswitch_3
    const-string v0, "Stopped"

    goto :goto_0

    .line 718
    :sswitch_4
    const-string v0, "Transitioning"

    goto :goto_0

    .line 708
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x4 -> :sswitch_4
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method private stayAwake(Z)V
    .locals 3
    .parameter "awake"

    .prologue
    .line 744
    const-string v0, "DlnaClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stay awake "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object v0, p0, Landroid/media/dlna/DlnaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 746
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/media/dlna/DlnaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 747
    iget-object v0, p0, Landroid/media/dlna/DlnaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/media/dlna/DlnaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Landroid/media/dlna/DlnaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private final native upnpCallAction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
.end method

.method private final native upnpInit(Ljava/lang/Object;)V
.end method

.method private final native upnpSetService(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private final native upnpUninit()V
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 105
    const-string v0, "DlnaClient"

    const-string v1, "dlna client uninit"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-direct {p0}, Landroid/media/dlna/DlnaClient;->upnpUninit()V

    .line 107
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 108
    return-void
.end method

.method public getActionResult([B)Ljava/util/Map;
    .locals 8
    .parameter "xmlBuf"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 796
    if-nez p1, :cond_0

    .line 797
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 811
    :goto_0
    return-object v5

    .line 799
    :cond_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 800
    .local v1, factory:Ljavax/xml/parsers/SAXParserFactory;
    new-instance v2, Landroid/media/dlna/DlnaClient$ActionResultXmlHandler;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Landroid/media/dlna/DlnaClient$ActionResultXmlHandler;-><init>(Landroid/media/dlna/DlnaClient;Landroid/media/dlna/DlnaClient$1;)V

    .line 803
    .local v2, handler:Landroid/media/dlna/DlnaClient$ActionResultXmlHandler;
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 804
    .local v3, inStream:Ljava/io/ByteArrayInputStream;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 805
    .local v4, parser:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v4, v3, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 806
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    .end local v3           #inStream:Ljava/io/ByteArrayInputStream;
    .end local v4           #parser:Ljavax/xml/parsers/SAXParser;
    :goto_1
    invoke-virtual {v2}, Landroid/media/dlna/DlnaClient$ActionResultXmlHandler;->getResult()Ljava/util/Map;

    move-result-object v5

    goto :goto_0

    .line 808
    :catch_0
    move-exception v0

    .line 809
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "DlnaClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parser xml exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Landroid/media/dlna/DlnaClient;->mDlnaHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getPosition()J
    .locals 4

    .prologue
    .line 452
    iget-wide v0, p0, Landroid/media/dlna/DlnaClient;->mPositionToSeek:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 453
    iget-wide v0, p0, Landroid/media/dlna/DlnaClient;->mPositionToSeek:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 455
    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Landroid/media/dlna/DlnaClient;->mPosition:J

    goto :goto_0
.end method

.method public getProtocolInfo(Landroid/media/dlna/DlnaClient$GetProtocolListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 685
    const-string v0, "DlnaClient"

    const-string v1, "GetProtocolInfo not impl yet"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    return-void
.end method

.method public getVolume()F
    .locals 2

    .prologue
    .line 459
    sget v0, Landroid/media/dlna/DlnaClient;->mVolume:I

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    return v0
.end method

.method public isPlaying()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 444
    iget-boolean v1, p0, Landroid/media/dlna/DlnaClient;->mTryingToPause:Z

    if-eqz v1, :cond_1

    .line 447
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Landroid/media/dlna/DlnaClient;->mTryingToPlay:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/media/dlna/DlnaClient;->mLastUri:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/dlna/DlnaClient;->mUriSent:Ljava/lang/String;

    if-nez v1, :cond_3

    :cond_2
    sget v1, Landroid/media/dlna/DlnaClient;->mPlaybackState:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    sget v1, Landroid/media/dlna/DlnaClient;->mPlaybackState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSupported(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 690
    const/4 v0, 0x1

    return v0
.end method

.method public listPlayers()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/dlna/DlnaDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v0, devices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/media/dlna/DlnaDevice;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/media/dlna/DlnaClient;->getService()Landroid/media/dlna/IDLNAService;

    move-result-object v4

    invoke-interface {v4}, Landroid/media/dlna/IDLNAService;->getPlayerList()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 147
    .local v3, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 149
    .local v2, entry:Ljava/util/Map$Entry;
    new-instance v6, Landroid/media/dlna/DlnaDevice;

    const/4 v7, 0x2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v6, v7, v4, v5}, Landroid/media/dlna/DlnaDevice;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    .end local v2           #entry:Ljava/util/Map$Entry;
    .end local v3           #iter:Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 159
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "DlnaClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dlna service call error [listPlayers] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    return-object v0
.end method

.method public pause(Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z
    .locals 5
    .parameter "listener"

    .prologue
    const/4 v4, 0x1

    .line 258
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "InstanceID"

    aput-object v3, v1, v2

    const-string v2, "0"

    aput-object v2, v1, v4

    .line 260
    .local v1, params:[Ljava/lang/String;
    iput-boolean v4, p0, Landroid/media/dlna/DlnaClient;->mTryingToPause:Z

    .line 261
    new-instance v0, Landroid/media/dlna/DlnaClient$2;

    invoke-direct {v0, p0, p1}, Landroid/media/dlna/DlnaClient$2;-><init>(Landroid/media/dlna/DlnaClient;Landroid/media/dlna/DlnaClient$RemoteCallListener;)V

    .line 271
    .local v0, l:Landroid/media/dlna/DlnaClient$RemoteCallListener;
    const-string v2, "AVTransport"

    const-string v3, "Pause"

    invoke-direct {p0, v2, v3, v1, v0}, Landroid/media/dlna/DlnaClient;->callAction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public play(Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z
    .locals 5
    .parameter "listener"

    .prologue
    const/4 v4, 0x1

    .line 234
    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "InstanceID"

    aput-object v3, v1, v2

    const-string v2, "0"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "Speed"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "1"

    aput-object v3, v1, v2

    .line 235
    .local v1, params:[Ljava/lang/String;
    iput-boolean v4, p0, Landroid/media/dlna/DlnaClient;->mTryingToPlay:Z

    .line 237
    new-instance v0, Landroid/media/dlna/DlnaClient$1;

    invoke-direct {v0, p0, p1}, Landroid/media/dlna/DlnaClient$1;-><init>(Landroid/media/dlna/DlnaClient;Landroid/media/dlna/DlnaClient$RemoteCallListener;)V

    .line 247
    .local v0, l:Landroid/media/dlna/DlnaClient$RemoteCallListener;
    const-string v2, "AVTransport"

    const-string v3, "Play"

    invoke-direct {p0, v2, v3, v1, v0}, Landroid/media/dlna/DlnaClient;->callAction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public seek(J)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 276
    iput-wide p1, p0, Landroid/media/dlna/DlnaClient;->mPositionToSeek:J

    .line 277
    sget v0, Landroid/media/dlna/DlnaClient;->mPlaybackState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 278
    invoke-direct {p0, p1, p2}, Landroid/media/dlna/DlnaClient;->seekLong(J)Z

    move-result v0

    .line 280
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public selectPlayer(Ljava/lang/String;)Z
    .locals 6
    .parameter "deviceId"

    .prologue
    .line 120
    :try_start_0
    invoke-direct {p0}, Landroid/media/dlna/DlnaClient;->getService()Landroid/media/dlna/IDLNAService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/media/dlna/IDLNAService;->getPlayerService(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 123
    .local v2, iter:Ljava/util/Iterator;
    sget-object v3, Landroid/media/dlna/DlnaClient;->mCallbackPool:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 124
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Landroid/media/dlna/DlnaClient;->upnpSetService(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 129
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Landroid/media/dlna/DlnaClient;->upnpSetService(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    .end local v1           #entry:Ljava/util/Map$Entry;
    .end local v2           #iter:Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DlnaClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "service call error [selectPlayer]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v3, 0x0

    .line 138
    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    return v3

    .restart local v2       #iter:Ljava/util/Iterator;
    :cond_0
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public setDataSource(Ljava/lang/String;Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z
    .locals 13
    .parameter "location"
    .parameter "listener"

    .prologue
    .line 193
    move-object v9, p1

    .line 194
    .local v9, url:Ljava/lang/String;
    const-string v6, "video/mp4"

    .line 195
    .local v6, mimeType:Ljava/lang/String;
    const-string v5, "object.item.videoItem"

    .line 196
    .local v5, mimeClass:Ljava/lang/String;
    const-string v8, "Remote media"

    .line 198
    .local v8, title:Ljava/lang/String;
    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v11, "http"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 200
    :try_start_0
    invoke-direct {p0}, Landroid/media/dlna/DlnaClient;->getService()Landroid/media/dlna/IDLNAService;

    move-result-object v10

    invoke-interface {v10, p1}, Landroid/media/dlna/IDLNAService;->getFileMeta(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 201
    .local v4, meta:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "url"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    .line 202
    const-string v10, "mimeType"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 203
    const-string v10, "mimeClass"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 205
    const-string v10, "DlnaClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " -> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v4           #meta:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v2, "<DIDL-Lite xmlns=\"urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/\" xmlns:upnp=\"urn:schemas-upnp-org:metadata-1-0/upnp/\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\">"

    .line 214
    .local v2, didl_head:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "<item><dc:title>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</dc:title><upnp:class>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</upnp:class><res protocolInfo=\"http-get:*:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":*\">"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</res></item></DIDL-Lite>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, didl:Ljava/lang/String;
    const/4 v10, 0x6

    new-array v7, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "InstanceID"

    aput-object v11, v7, v10

    const/4 v10, 0x1

    const-string v11, "0"

    aput-object v11, v7, v10

    const/4 v10, 0x2

    const-string v11, "CurrentURI"

    aput-object v11, v7, v10

    const/4 v10, 0x3

    aput-object v9, v7, v10

    const/4 v10, 0x4

    const-string v11, "CurrentURIMetaData"

    aput-object v11, v7, v10

    const/4 v10, 0x5

    aput-object v1, v7, v10

    .line 225
    .local v7, params:[Ljava/lang/String;
    iget-object v10, p0, Landroid/media/dlna/DlnaClient;->mUriSent:Ljava/lang/String;

    iput-object v10, p0, Landroid/media/dlna/DlnaClient;->mLastUri:Ljava/lang/String;

    .line 226
    iput-object v9, p0, Landroid/media/dlna/DlnaClient;->mUriSent:Ljava/lang/String;

    .line 228
    const-string v10, "AVTransport"

    const-string v11, "SetAVTransportURI"

    invoke-direct {p0, v10, v11, v7, p2}, Landroid/media/dlna/DlnaClient;->callAction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v10

    .end local v1           #didl:Ljava/lang/String;
    .end local v2           #didl_head:Ljava/lang/String;
    .end local v7           #params:[Ljava/lang/String;
    :goto_0
    return v10

    .line 207
    :catch_0
    move-exception v3

    .line 208
    .local v3, e:Ljava/lang/Exception;
    const-string v10, "DlnaClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dlna service call error [setDataSource] : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public setPlaybackInfoListener(Landroid/media/dlna/DlnaClient$PlaybackInfoListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    const/16 v4, 0x65

    const/4 v3, 0x0

    .line 651
    iput-object p1, p0, Landroid/media/dlna/DlnaClient;->mPlaybackInfoListener:Landroid/media/dlna/DlnaClient$PlaybackInfoListener;

    .line 653
    invoke-virtual {p0}, Landroid/media/dlna/DlnaClient;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 654
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 656
    iget-object v2, p0, Landroid/media/dlna/DlnaClient;->mPlaybackInfoListener:Landroid/media/dlna/DlnaClient$PlaybackInfoListener;

    if-eqz v2, :cond_0

    .line 658
    const/4 v2, 0x0

    invoke-virtual {v0, v4, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 659
    .local v1, m:Landroid/os/Message;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 661
    .end local v1           #m:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public setVolume(F)Z
    .locals 1
    .parameter "volume"

    .prologue
    .line 406
    const/high16 v0, 0x42c8

    mul-float/2addr v0, p1

    float-to-int v0, v0

    rem-int/lit8 v0, v0, 0x65

    sput v0, Landroid/media/dlna/DlnaClient;->mVolumeToSet:I

    .line 407
    const/4 v0, 0x1

    return v0
.end method

.method public stop(Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z
    .locals 3
    .parameter "listener"

    .prologue
    .line 251
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "InstanceID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "0"

    aput-object v2, v0, v1

    .line 252
    .local v0, params:[Ljava/lang/String;
    const-string v1, "AVTransport"

    const-string v2, "Stop"

    invoke-direct {p0, v1, v2, v0, p1}, Landroid/media/dlna/DlnaClient;->callAction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
