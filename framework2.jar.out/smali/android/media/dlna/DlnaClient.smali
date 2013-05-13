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
        Landroid/media/dlna/DlnaClient$SeekListener;
    }
.end annotation


# static fields
.field private static final ACTION_RESULT:I = 0xc8

.field public static final ALBUM_KEY:Ljava/lang/String; = "album"

.field public static final ARTIST_KEY:Ljava/lang/String; = "artist"

.field public static final DIDL_KEY:Ljava/lang/String; = "didl"

.field public static final DURATION_KEY:Ljava/lang/String; = "duration"

.field private static final PLAYBACKINFO_QUERY:I = 0x65

.field private static final PLAYBACK_INFO_COOKIE:I = 0x3e7

.field private static final TAG:Ljava/lang/String; = "DlnaClient"

.field public static final TITLE_KEY:Ljava/lang/String; = "title"

.field public static final URL_KEY:Ljava/lang/String; = "url"

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

    .line 51
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Landroid/media/dlna/DlnaClient;->native_init()V

    .line 179
    const/16 v0, 0x3e8

    sput v0, Landroid/media/dlna/DlnaClient;->mCookieIndex:I

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/dlna/DlnaClient;->mCallbackPool:Ljava/util/Map;

    .line 679
    sput v2, Landroid/media/dlna/DlnaClient;->mVolume:I

    .line 680
    const/4 v0, -0x1

    sput v0, Landroid/media/dlna/DlnaClient;->mVolumeToSet:I

    .line 681
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/media/dlna/DlnaClient;->mPosition:J

    .line 682
    sput v2, Landroid/media/dlna/DlnaClient;->mPlaybackState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object v3, p0, Landroid/media/dlna/DlnaClient;->mContext:Landroid/content/Context;

    .line 99
    iput-object v3, p0, Landroid/media/dlna/DlnaClient;->mLastUri:Ljava/lang/String;

    .line 100
    iput-object v3, p0, Landroid/media/dlna/DlnaClient;->mUriSent:Ljava/lang/String;

    .line 313
    iput-boolean v4, p0, Landroid/media/dlna/DlnaClient;->mTryingToPlay:Z

    .line 343
    iput-boolean v4, p0, Landroid/media/dlna/DlnaClient;->mTryingToPause:Z

    .line 362
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/media/dlna/DlnaClient;->mPositionToSeek:J

    .line 363
    iput-boolean v4, p0, Landroid/media/dlna/DlnaClient;->mSeeking:Z

    .line 469
    new-instance v1, Landroid/media/dlna/DlnaClient$3;

    invoke-direct {v1, p0}, Landroid/media/dlna/DlnaClient$3;-><init>(Landroid/media/dlna/DlnaClient;)V

    iput-object v1, p0, Landroid/media/dlna/DlnaClient;->mDlnaHandler:Landroid/os/Handler;

    .line 684
    iput-object v3, p0, Landroid/media/dlna/DlnaClient;->mPlaybackInfoListener:Landroid/media/dlna/DlnaClient$PlaybackInfoListener;

    .line 771
    iput-object v3, p0, Landroid/media/dlna/DlnaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 103
    const-string v1, "DlnaClient"

    const-string v2, "dlna client init"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 106
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x20000001

    const-class v2, Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroid/media/dlna/DlnaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 108
    iget-object v1, p0, Landroid/media/dlna/DlnaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 110
    iput-object p1, p0, Landroid/media/dlna/DlnaClient;->mContext:Landroid/content/Context;

    .line 111
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Landroid/media/dlna/DlnaClient;->upnpInit(Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method static synthetic access$002(Landroid/media/dlna/DlnaClient;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Landroid/media/dlna/DlnaClient;->mTryingToPlay:Z

    return p1
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 48
    sget v0, Landroid/media/dlna/DlnaClient;->mVolume:I

    return v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 48
    sget v0, Landroid/media/dlna/DlnaClient;->mPlaybackState:I

    return v0
.end method

.method static synthetic access$1002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    sput p0, Landroid/media/dlna/DlnaClient;->mPlaybackState:I

    return p0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    sput p0, Landroid/media/dlna/DlnaClient;->mVolume:I

    return p0
.end method

.method static synthetic access$1100(Landroid/media/dlna/DlnaClient;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/media/dlna/DlnaClient;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/media/dlna/DlnaClient;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/media/dlna/DlnaClient;->seekLong(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/media/dlna/DlnaClient;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/media/dlna/DlnaClient;->mUriSent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/media/dlna/DlnaClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Landroid/media/dlna/DlnaClient;->mUriSent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Landroid/media/dlna/DlnaClient;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/media/dlna/DlnaClient;->mLastUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Landroid/media/dlna/DlnaClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Landroid/media/dlna/DlnaClient;->mLastUri:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500()Ljava/util/Map;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Landroid/media/dlna/DlnaClient;->mCallbackPool:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/media/dlna/DlnaClient;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/media/dlna/DlnaClient;->requestState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/media/dlna/DlnaClient;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/media/dlna/DlnaClient;->requestPosition()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Landroid/media/dlna/DlnaClient;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/media/dlna/DlnaClient;->requestVolume()Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Landroid/media/dlna/DlnaClient;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Landroid/media/dlna/DlnaClient;->mTryingToPause:Z

    return p1
.end method

.method static synthetic access$300(Landroid/media/dlna/DlnaClient;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Landroid/media/dlna/DlnaClient;->mSeeking:Z

    return v0
.end method

.method static synthetic access$302(Landroid/media/dlna/DlnaClient;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Landroid/media/dlna/DlnaClient;->mSeeking:Z

    return p1
.end method

.method static synthetic access$400(Landroid/media/dlna/DlnaClient;)Landroid/media/dlna/DlnaClient$PlaybackInfoListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/media/dlna/DlnaClient;->mPlaybackInfoListener:Landroid/media/dlna/DlnaClient$PlaybackInfoListener;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 48
    sget v0, Landroid/media/dlna/DlnaClient;->mVolumeToSet:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    sput p0, Landroid/media/dlna/DlnaClient;->mVolumeToSet:I

    return p0
.end method

.method static synthetic access$600(Landroid/media/dlna/DlnaClient;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/media/dlna/DlnaClient;->setVolumeInt(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700()J
    .locals 2

    .prologue
    .line 48
    sget-wide v0, Landroid/media/dlna/DlnaClient;->mPosition:J

    return-wide v0
.end method

.method static synthetic access$702(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    sput-wide p0, Landroid/media/dlna/DlnaClient;->mPosition:J

    return-wide p0
.end method

.method static synthetic access$800(Landroid/media/dlna/DlnaClient;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 48
    iget-wide v0, p0, Landroid/media/dlna/DlnaClient;->mPositionToSeek:J

    return-wide v0
.end method

.method static synthetic access$802(Landroid/media/dlna/DlnaClient;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-wide p1, p0, Landroid/media/dlna/DlnaClient;->mPositionToSeek:J

    return-wide p1
.end method

.method static synthetic access$900(Landroid/media/dlna/DlnaClient;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/media/dlna/DlnaClient;->stateToInt(Ljava/lang/String;)I

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

    .line 187
    if-nez p4, :cond_2

    .line 188
    invoke-direct {p0, p1, p2, p3, v3}, Landroid/media/dlna/DlnaClient;->upnpCallAction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 188
    goto :goto_0

    .line 190
    :cond_2
    sget v3, Landroid/media/dlna/DlnaClient;->mCookieIndex:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroid/media/dlna/DlnaClient;->mCookieIndex:I

    .line 193
    sget v3, Landroid/media/dlna/DlnaClient;->mCookieIndex:I

    invoke-direct {p0, p1, p2, p3, v3}, Landroid/media/dlna/DlnaClient;->upnpCallAction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v1

    .line 195
    .local v1, ret:I
    if-nez v1, :cond_3

    .line 196
    sget-object v3, Landroid/media/dlna/DlnaClient;->mCallbackPool:Ljava/util/Map;

    sget v4, Landroid/media/dlna/DlnaClient;->mCookieIndex:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 198
    :cond_3
    instance-of v3, p4, Landroid/media/dlna/DlnaClient$RemoteCallListener;

    if-eqz v3, :cond_0

    move-object v0, p4

    .line 199
    check-cast v0, Landroid/media/dlna/DlnaClient$RemoteCallListener;

    .line 200
    .local v0, remote:Landroid/media/dlna/DlnaClient$RemoteCallListener;
    const-string v3, "local error"

    invoke-interface {v0, v1, v3}, Landroid/media/dlna/DlnaClient$RemoteCallListener;->onActionEnd(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private convertMediaInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 211
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "<unknown>"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    const-string v0, "\\&"

    const-string v1, "&amp;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 213
    const-string v0, "<"

    const-string v1, "&lt;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 214
    const-string v0, ">"

    const-string v1, "&gt;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 215
    const-string v0, "\""

    const-string v1, "&quot;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    .line 218
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

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
    .line 815
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 816
    .local v9, retMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 847
    :cond_0
    :goto_0
    return-object v9

    .line 821
    :cond_1
    :try_start_0
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 823
    .local v6, is:Ljava/io/ByteArrayInputStream;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 824
    .local v4, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 826
    .local v1, db:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v1, v6}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 827
    .local v2, document:Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v10

    .line 828
    .local v10, rootElement:Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 830
    .local v0, childList:Lorg/w3c/dom/NodeList;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ge v5, v12, :cond_0

    .line 831
    invoke-interface {v0, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 832
    .local v8, node:Lorg/w3c/dom/Node;
    const/4 v12, 0x1

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v13

    if-eq v12, v13, :cond_2

    .line 830
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 836
    :cond_2
    :try_start_1
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    .line 837
    .local v7, key:Ljava/lang/String;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    .line 838
    .local v11, value:Ljava/lang/String;
    invoke-interface {v9, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 840
    .end local v7           #key:Ljava/lang/String;
    .end local v11           #value:Ljava/lang/String;
    :catch_0
    move-exception v12

    goto :goto_2

    .line 844
    .end local v0           #childList:Lorg/w3c/dom/NodeList;
    .end local v1           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #document:Lorg/w3c/dom/Document;
    .end local v4           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5           #i:I
    .end local v6           #is:Ljava/io/ByteArrayInputStream;
    .end local v8           #node:Lorg/w3c/dom/Node;
    .end local v10           #rootElement:Lorg/w3c/dom/Element;
    :catch_1
    move-exception v3

    .line 845
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

    goto :goto_0
.end method

.method private getService()Landroid/media/dlna/IDLNAService;
    .locals 4

    .prologue
    .line 121
    const-string v2, "media.dlna"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 122
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/dlna/IDLNAService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/dlna/IDLNAService;

    move-result-object v1

    .line 123
    .local v1, service:Landroid/media/dlna/IDLNAService;
    if-nez v1, :cond_0

    .line 124
    const-string v2, "DlnaClient"

    const-string v3, "get dlna service NULL !!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
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
    .line 86
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/dlna/DlnaClient;

    .line 87
    .local v0, dc:Landroid/media/dlna/DlnaClient;
    if-nez v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {v0}, Landroid/media/dlna/DlnaClient;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 92
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 94
    .local v2, m:Landroid/os/Message;
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private requestPosition()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 426
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "InstanceID"

    aput-object v3, v0, v2

    const-string v3, "0"

    aput-object v3, v0, v1

    .line 429
    .local v0, params:[Ljava/lang/String;
    const-string v3, "AVTransport"

    const-string v4, "GetPositionInfo"

    const/16 v5, 0x3e7

    invoke-direct {p0, v3, v4, v0, v5}, Landroid/media/dlna/DlnaClient;->upnpCallAction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private requestState()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 433
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "InstanceID"

    aput-object v3, v0, v2

    const-string v3, "0"

    aput-object v3, v0, v1

    .line 436
    .local v0, params:[Ljava/lang/String;
    const-string v3, "AVTransport"

    const-string v4, "GetTransportInfo"

    const/16 v5, 0x3e7

    invoke-direct {p0, v3, v4, v0, v5}, Landroid/media/dlna/DlnaClient;->upnpCallAction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private requestVolume()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 417
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "InstanceID"

    aput-object v3, v0, v2

    const-string v3, "0"

    aput-object v3, v0, v1

    const/4 v3, 0x2

    const-string v4, "Channel"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "Master"

    aput-object v4, v0, v3

    .line 422
    .local v0, params:[Ljava/lang/String;
    const-string v3, "RenderingControl"

    const-string v4, "GetVolume"

    const/16 v5, 0x3e7

    invoke-direct {p0, v3, v4, v0, v5}, Landroid/media/dlna/DlnaClient;->upnpCallAction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private seekLong(J)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 393
    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    .line 394
    const-string v1, "DlnaClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SEEK position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    new-instance v0, Landroid/media/dlna/DlnaClient$SeekListener;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/dlna/DlnaClient$SeekListener;-><init>(Landroid/media/dlna/DlnaClient;J)V

    .line 397
    .local v0, l:Landroid/media/dlna/DlnaClient$SeekListener;
    const-string v1, "AVTransport"

    const-string v2, "Seek"

    iget-object v3, v0, Landroid/media/dlna/DlnaClient$SeekListener;->mParams:[Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/media/dlna/DlnaClient;->callAction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Z

    .line 398
    const/4 v1, 0x1

    return v1
.end method

.method private setVolumeInt(I)Z
    .locals 4
    .parameter "volume"

    .prologue
    .line 407
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

    .line 413
    .local v0, params:[Ljava/lang/String;
    const-string v1, "RenderingControl"

    const-string v2, "SetVolume"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v0, v3}, Landroid/media/dlna/DlnaClient;->callAction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private stateToInt(Ljava/lang/String;)I
    .locals 4
    .parameter "stateStr"

    .prologue
    const/4 v0, 0x0

    .line 741
    const-string v1, "NO_MEDIA_PRESENT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 742
    const/4 v0, 0x1

    .line 752
    :goto_0
    return v0

    .line 743
    :cond_0
    const-string v1, "STOPPED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 744
    const/4 v0, 0x2

    goto :goto_0

    .line 745
    :cond_1
    const-string v1, "TRANSITIONING"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 746
    const/4 v0, 0x4

    goto :goto_0

    .line 747
    :cond_2
    const-string v1, "PLAYING"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 748
    const/16 v0, 0x8

    goto :goto_0

    .line 749
    :cond_3
    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PAUSED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 750
    const/16 v0, 0x10

    goto :goto_0

    .line 751
    :cond_4
    const-string v1, "DlnaClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XXXXXXXXXXXXXXXXXXXXXXXXXXXXX unknow state string : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stateToString(I)Ljava/lang/String;
    .locals 2
    .parameter "state"

    .prologue
    .line 756
    sparse-switch p1, :sswitch_data_0

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 758
    :sswitch_0
    const-string v0, "No Media"

    goto :goto_0

    .line 760
    :sswitch_1
    const-string v0, "Paused"

    goto :goto_0

    .line 762
    :sswitch_2
    const-string v0, "Playing"

    goto :goto_0

    .line 764
    :sswitch_3
    const-string v0, "Stopped"

    goto :goto_0

    .line 766
    :sswitch_4
    const-string v0, "Transitioning"

    goto :goto_0

    .line 756
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
    .line 792
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

    .line 793
    iget-object v0, p0, Landroid/media/dlna/DlnaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 794
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/media/dlna/DlnaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 795
    iget-object v0, p0, Landroid/media/dlna/DlnaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/media/dlna/DlnaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
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
    .line 115
    const-string v0, "DlnaClient"

    const-string v1, "dlna client uninit"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-direct {p0}, Landroid/media/dlna/DlnaClient;->upnpUninit()V

    .line 117
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 118
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
    .line 851
    if-nez p1, :cond_0

    .line 852
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 866
    :goto_0
    return-object v5

    .line 854
    :cond_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 855
    .local v1, factory:Ljavax/xml/parsers/SAXParserFactory;
    new-instance v2, Landroid/media/dlna/DlnaClient$ActionResultXmlHandler;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Landroid/media/dlna/DlnaClient$ActionResultXmlHandler;-><init>(Landroid/media/dlna/DlnaClient;Landroid/media/dlna/DlnaClient$1;)V

    .line 858
    .local v2, handler:Landroid/media/dlna/DlnaClient$ActionResultXmlHandler;
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 859
    .local v3, inStream:Ljava/io/ByteArrayInputStream;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 860
    .local v4, parser:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v4, v3, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 861
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    .end local v3           #inStream:Ljava/io/ByteArrayInputStream;
    .end local v4           #parser:Ljavax/xml/parsers/SAXParser;
    :goto_1
    invoke-virtual {v2}, Landroid/media/dlna/DlnaClient$ActionResultXmlHandler;->getResult()Ljava/util/Map;

    move-result-object v5

    goto :goto_0

    .line 863
    :catch_0
    move-exception v0

    .line 864
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
    .line 459
    iget-object v0, p0, Landroid/media/dlna/DlnaClient;->mDlnaHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getPosition()J
    .locals 4

    .prologue
    .line 448
    iget-wide v0, p0, Landroid/media/dlna/DlnaClient;->mPositionToSeek:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 449
    iget-wide v0, p0, Landroid/media/dlna/DlnaClient;->mPositionToSeek:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 451
    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Landroid/media/dlna/DlnaClient;->mPosition:J

    goto :goto_0
.end method

.method public getProtocolInfo(Landroid/media/dlna/DlnaClient$GetProtocolListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 720
    const/4 v2, 0x0

    new-array v1, v2, [Ljava/lang/String;

    .line 722
    .local v1, params:[Ljava/lang/String;
    new-instance v0, Landroid/media/dlna/DlnaClient$4;

    invoke-direct {v0, p0}, Landroid/media/dlna/DlnaClient$4;-><init>(Landroid/media/dlna/DlnaClient;)V

    .line 732
    .local v0, l:Landroid/media/dlna/DlnaClient$RemoteCallListener;
    const-string v2, "ConnectionManager"

    const-string v3, "GetProtocolInfo"

    invoke-direct {p0, v2, v3, v1, v0}, Landroid/media/dlna/DlnaClient;->callAction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Z

    .line 733
    return-void
.end method

.method public getVolume()F
    .locals 2

    .prologue
    .line 455
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

    .line 440
    iget-boolean v1, p0, Landroid/media/dlna/DlnaClient;->mTryingToPause:Z

    if-eqz v1, :cond_1

    .line 443
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
    .line 737
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
    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
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

    .line 161
    .local v3, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 163
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

    .line 172
    .end local v2           #entry:Ljava/util/Map$Entry;
    .end local v3           #iter:Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 173
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

    .line 176
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    return-object v0
.end method

.method public pause(Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z
    .locals 5
    .parameter "listener"

    .prologue
    const/4 v4, 0x1

    .line 346
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "InstanceID"

    aput-object v3, v1, v2

    const-string v2, "0"

    aput-object v2, v1, v4

    .line 348
    .local v1, params:[Ljava/lang/String;
    iput-boolean v4, p0, Landroid/media/dlna/DlnaClient;->mTryingToPause:Z

    .line 349
    new-instance v0, Landroid/media/dlna/DlnaClient$2;

    invoke-direct {v0, p0, p1}, Landroid/media/dlna/DlnaClient$2;-><init>(Landroid/media/dlna/DlnaClient;Landroid/media/dlna/DlnaClient$RemoteCallListener;)V

    .line 359
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

    .line 316
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

    .line 317
    .local v1, params:[Ljava/lang/String;
    iput-boolean v4, p0, Landroid/media/dlna/DlnaClient;->mTryingToPlay:Z

    .line 319
    new-instance v0, Landroid/media/dlna/DlnaClient$1;

    invoke-direct {v0, p0, p1}, Landroid/media/dlna/DlnaClient$1;-><init>(Landroid/media/dlna/DlnaClient;Landroid/media/dlna/DlnaClient$RemoteCallListener;)V

    .line 335
    .local v0, l:Landroid/media/dlna/DlnaClient$RemoteCallListener;
    const-string v2, "AVTransport"

    const-string v3, "Play"

    invoke-direct {p0, v2, v3, v1, v0}, Landroid/media/dlna/DlnaClient;->callAction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public seek(J)Z
    .locals 4
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    .line 366
    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 367
    const-string v0, "dlna. FIXME XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position ERROR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    iput-boolean v3, p0, Landroid/media/dlna/DlnaClient;->mSeeking:Z

    .line 369
    iput-wide p1, p0, Landroid/media/dlna/DlnaClient;->mPositionToSeek:J

    .line 370
    return v3
.end method

.method public selectPlayer(Ljava/lang/String;)Z
    .locals 6
    .parameter "deviceId"

    .prologue
    .line 130
    :try_start_0
    invoke-direct {p0}, Landroid/media/dlna/DlnaClient;->getService()Landroid/media/dlna/IDLNAService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/media/dlna/IDLNAService;->getPlayerService(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 134
    .local v2, iter:Ljava/util/Iterator;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Landroid/media/dlna/DlnaClient;->upnpSetService(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 139
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

    .line 148
    .end local v1           #entry:Ljava/util/Map$Entry;
    .end local v2           #iter:Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 149
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

    .line 150
    const/4 v3, 0x0

    .line 153
    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    return v3

    .line 143
    .restart local v2       #iter:Ljava/util/Iterator;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v3}, Landroid/media/dlna/DlnaClient;->getProtocolInfo(Landroid/media/dlna/DlnaClient$GetProtocolListener;)V

    .line 144
    invoke-direct {p0}, Landroid/media/dlna/DlnaClient;->requestState()Z

    .line 145
    invoke-direct {p0}, Landroid/media/dlna/DlnaClient;->requestPosition()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public setDataSource(Ljava/lang/String;Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z
    .locals 1
    .parameter "location"
    .parameter "listener"

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/dlna/DlnaClient;->setDataSource(Ljava/lang/String;Landroid/media/dlna/DlnaClient$RemoteCallListener;Ljava/util/HashMap;)Z

    move-result v0

    return v0
.end method

.method public setDataSource(Ljava/lang/String;Landroid/media/dlna/DlnaClient$RemoteCallListener;Ljava/util/HashMap;)Z
    .locals 33
    .parameter "location"
    .parameter "listener"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/media/dlna/DlnaClient$RemoteCallListener;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 222
    .local p3, mediaInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v23, p1

    .line 223
    .local v23, url:Ljava/lang/String;
    const-string v19, "video/mp4"

    .line 224
    .local v19, mimeType:Ljava/lang/String;
    const-string v18, "object.item.videoItem"

    .line 226
    .local v18, mimeClass:Ljava/lang/String;
    const/16 v25, 0x0

    const/16 v26, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    const-string v26, "http"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 228
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/media/dlna/DlnaClient;->getService()Landroid/media/dlna/IDLNAService;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/media/dlna/IDLNAService;->getFileMeta(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v17

    .line 229
    .local v17, meta:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v25, "url"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    check-cast v0, Ljava/lang/String;

    move-object/from16 v23, v0

    .line 230
    const-string v25, "mimeType"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    check-cast v0, Ljava/lang/String;

    move-object/from16 v19, v0

    .line 231
    const-string v25, "mimeClass"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    check-cast v0, Ljava/lang/String;

    move-object/from16 v18, v0

    .line 233
    const-string v25, "DlnaClient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " -> "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v17           #meta:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v5, "<DIDL-Lite xmlns=\"urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/\" xmlns:upnp=\"urn:schemas-upnp-org:metadata-1-0/upnp/\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\"><item>"

    .line 244
    .local v5, didl:Ljava/lang/String;
    if-nez p3, :cond_1

    .line 245
    new-instance p3, Ljava/util/HashMap;

    .end local p3           #mediaInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p3 .. p3}, Ljava/util/HashMap;-><init>()V

    .line 247
    .restart local p3       #mediaInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string v25, "title"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_2

    .line 248
    const-string v25, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v21

    .line 249
    .local v21, separator:I
    const-string v25, "."

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 250
    .local v6, dot:I
    if-ltz v21, :cond_4

    add-int/lit8 v22, v21, 0x1

    .line 251
    .local v22, start:I
    :goto_0
    if-ltz v6, :cond_5

    move/from16 v0, v22

    if-le v6, v0, :cond_5

    move v12, v6

    .line 252
    .local v12, end:I
    :goto_1
    const-string v25, "title"

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .end local v6           #dot:I
    .end local v12           #end:I
    .end local v21           #separator:I
    .end local v22           #start:I
    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 255
    .local v16, key:Ljava/lang/String;
    const-string v25, "title"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 256
    const-string v25, "title"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/media/dlna/DlnaClient;->convertMediaInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 257
    .local v24, value:Ljava/lang/String;
    if-eqz v24, :cond_3

    .line 258
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "<dc:title>"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "</dc:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "title"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ">"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 235
    .end local v5           #didl:Ljava/lang/String;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #key:Ljava/lang/String;
    .end local v24           #value:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 236
    .local v11, e:Ljava/lang/Exception;
    const-string v25, "DlnaClient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "dlna service call error [setDataSource] : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/16 v25, 0x0

    .line 310
    .end local v11           #e:Ljava/lang/Exception;
    :goto_3
    return v25

    .line 250
    .restart local v5       #didl:Ljava/lang/String;
    .restart local v6       #dot:I
    .restart local v21       #separator:I
    :cond_4
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 251
    .restart local v22       #start:I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    goto/16 :goto_1

    .line 260
    .end local v6           #dot:I
    .end local v21           #separator:I
    .end local v22           #start:I
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v16       #key:Ljava/lang/String;
    :cond_6
    const-string v25, "artist"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 261
    const-string v25, "artist"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/media/dlna/DlnaClient;->convertMediaInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 262
    .restart local v24       #value:Ljava/lang/String;
    if-eqz v24, :cond_3

    .line 263
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "<dc:creator>"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "</dc:creator>"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 266
    .end local v24           #value:Ljava/lang/String;
    :cond_7
    const-string v25, "duration"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_3

    const-string v25, "url"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_3

    const-string v25, "didl"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_3

    .line 267
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/media/dlna/DlnaClient;->convertMediaInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 268
    .restart local v24       #value:Ljava/lang/String;
    if-eqz v24, :cond_3

    .line 269
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "<upnp:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ">"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "</upnp:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ">"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 274
    .end local v16           #key:Ljava/lang/String;
    .end local v24           #value:Ljava/lang/String;
    :cond_8
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "<upnp:class>"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "</upnp:class>"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "<res protocolInfo=\"http-get:*:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ":DLNA.ORG_OP=01\""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 277
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->length()J

    move-result-wide v13

    .line 278
    .local v13, fileSize:J
    const-wide/16 v25, 0x0

    cmp-long v25, v13, v25

    if-lez v25, :cond_9

    .line 279
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " size=\""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 282
    :cond_9
    const-string v25, "duration"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 283
    const-string v25, "duration"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 284
    .local v9, durationMillisec:J
    const-wide/16 v25, 0x3e8

    div-long v7, v9, v25

    .line 285
    .local v7, duration:J
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " %s=\"%02d:%02d:%02d.%03d\""

    const/16 v27, 0x5

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-string v29, "duration"

    aput-object v29, v27, v28

    const/16 v28, 0x1

    const-wide/16 v29, 0xe10

    div-long v29, v7, v29

    const-wide/16 v31, 0xa

    rem-long v29, v29, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x2

    const-wide/16 v29, 0x3c

    div-long v29, v7, v29

    const-wide/16 v31, 0x3c

    rem-long v29, v29, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x3

    const-wide/16 v29, 0x3c

    rem-long v29, v7, v29

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x4

    const-wide/16 v29, 0x3e8

    rem-long v29, v9, v29

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 290
    .end local v7           #duration:J
    .end local v9           #durationMillisec:J
    :cond_a
    const-string v25, "url"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 291
    const-string v25, "url"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .end local v23           #url:Ljava/lang/String;
    check-cast v23, Ljava/lang/String;

    .line 294
    .restart local v23       #url:Ljava/lang/String;
    :cond_b
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ">"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "</res>"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "</item></DIDL-Lite>"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 297
    const-string v25, "didl"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 298
    const-string v25, "didl"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #didl:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 301
    .restart local v5       #didl:Ljava/lang/String;
    :cond_c
    const/16 v25, 0x6

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v25, 0x0

    const-string v26, "InstanceID"

    aput-object v26, v20, v25

    const/16 v25, 0x1

    const-string v26, "0"

    aput-object v26, v20, v25

    const/16 v25, 0x2

    const-string v26, "CurrentURI"

    aput-object v26, v20, v25

    const/16 v25, 0x3

    aput-object v23, v20, v25

    const/16 v25, 0x4

    const-string v26, "CurrentURIMetaData"

    aput-object v26, v20, v25

    const/16 v25, 0x5

    aput-object v5, v20, v25

    .line 307
    .local v20, params:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient;->mUriSent:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/dlna/DlnaClient;->mLastUri:Ljava/lang/String;

    .line 308
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/dlna/DlnaClient;->mUriSent:Ljava/lang/String;

    .line 310
    const-string v25, "AVTransport"

    const-string v26, "SetAVTransportURI"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v20

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/dlna/DlnaClient;->callAction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v25

    goto/16 :goto_3
.end method

.method public setPlaybackInfoListener(Landroid/media/dlna/DlnaClient$PlaybackInfoListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    const/16 v4, 0x65

    const/4 v3, 0x0

    .line 686
    iput-object p1, p0, Landroid/media/dlna/DlnaClient;->mPlaybackInfoListener:Landroid/media/dlna/DlnaClient$PlaybackInfoListener;

    .line 688
    invoke-virtual {p0}, Landroid/media/dlna/DlnaClient;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 689
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 691
    iget-object v2, p0, Landroid/media/dlna/DlnaClient;->mPlaybackInfoListener:Landroid/media/dlna/DlnaClient$PlaybackInfoListener;

    if-eqz v2, :cond_0

    .line 693
    const/4 v2, 0x0

    invoke-virtual {v0, v4, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 694
    .local v1, m:Landroid/os/Message;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 696
    .end local v1           #m:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public setVolume(F)Z
    .locals 1
    .parameter "volume"

    .prologue
    .line 402
    const/high16 v0, 0x42c8

    mul-float/2addr v0, p1

    float-to-int v0, v0

    rem-int/lit8 v0, v0, 0x65

    sput v0, Landroid/media/dlna/DlnaClient;->mVolumeToSet:I

    .line 403
    const/4 v0, 0x1

    return v0
.end method

.method public stop(Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z
    .locals 3
    .parameter "listener"

    .prologue
    .line 339
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "InstanceID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "0"

    aput-object v2, v0, v1

    .line 340
    .local v0, params:[Ljava/lang/String;
    const-string v1, "AVTransport"

    const-string v2, "Stop"

    invoke-direct {p0, v1, v2, v0, p1}, Landroid/media/dlna/DlnaClient;->callAction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
