.class public abstract Landroid/content/Context;
.super Ljava/lang/Object;
.source "Context.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/Context$F;
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_SERVICE:Ljava/lang/String; = "accessibility"

.field public static final ACCESS_CONTROL_SERVICE:Ljava/lang/String; = "access_control"

.field public static final ACCOUNT_SERVICE:Ljava/lang/String; = "account"

.field public static final ACTIVITY_SERVICE:Ljava/lang/String; = "activity"

.field public static final ALARM_SERVICE:Ljava/lang/String; = "alarm"

.field public static final APPWIDGET_SERVICE:Ljava/lang/String; = "appwidget"

.field public static final AUDIO_SERVICE:Ljava/lang/String; = "audio"

.field public static final BACKUP_SERVICE:Ljava/lang/String; = "backup"

.field public static final BIND_ABOVE_CLIENT:I = 0x8

.field public static final BIND_ADJUST_WITH_ACTIVITY:I = 0x80

.field public static final BIND_ALLOW_OOM_MANAGEMENT:I = 0x10

.field public static final BIND_AUTO_CREATE:I = 0x1

.field public static final BIND_DEBUG_UNBIND:I = 0x2

.field public static final BIND_IMPORTANT:I = 0x40

.field public static final BIND_NOT_FOREGROUND:I = 0x4

.field public static final BIND_NOT_VISIBLE:I = 0x40000000

.field public static final BIND_WAIVE_PRIORITY:I = 0x20

.field public static final CLIPBOARD_SERVICE:Ljava/lang/String; = "clipboard"

.field public static final CONNECTIVITY_SERVICE:Ljava/lang/String; = "connectivity"

.field public static final CONTEXT_IGNORE_SECURITY:I = 0x2

.field public static final CONTEXT_INCLUDE_CODE:I = 0x1

.field public static final CONTEXT_RESTRICTED:I = 0x4

.field public static final COUNTRY_DETECTOR:Ljava/lang/String; = "country_detector"

.field public static final DEVICE_POLICY_SERVICE:Ljava/lang/String; = "device_policy"

.field public static final DOWNLOAD_SERVICE:Ljava/lang/String; = "download"

.field public static final DROPBOX_SERVICE:Ljava/lang/String; = "dropbox"

.field private static F1:Landroid/content/Context$F; = null

.field private static F2:Landroid/content/Context$F; = null

.field private static F3:Landroid/content/Context$F; = null

.field private static F4:Landroid/content/Context$F; = null

.field private static final HASH_BLOCK_WORDS:I = 0x10

.field private static final HASH_HASH_WORDS:I = 0x4

.field public static final INPUT_METHOD_SERVICE:Ljava/lang/String; = "input_method"

.field public static final INPUT_SERVICE:Ljava/lang/String; = "input"

.field public static final KEYGUARD_SERVICE:Ljava/lang/String; = "keyguard"

.field public static final LAYOUT_INFLATER_SERVICE:Ljava/lang/String; = "layout_inflater"

.field public static final LOCATION_SERVICE:Ljava/lang/String; = "location"

.field public static final MEDIA_ROUTER_SERVICE:Ljava/lang/String; = "media_router"

.field public static final MODE_APPEND:I = 0x8000

.field public static final MODE_ENABLE_WRITE_AHEAD_LOGGING:I = 0x8

.field public static final MODE_MULTI_PROCESS:I = 0x4

.field public static final MODE_PRIVATE:I = 0x0

.field public static final MODE_WORLD_READABLE:I = 0x1

.field public static final MODE_WORLD_WRITEABLE:I = 0x2

.field public static final NETWORKMANAGEMENT_SERVICE:Ljava/lang/String; = "network_management"

.field public static final NETWORK_POLICY_SERVICE:Ljava/lang/String; = "netpolicy"

.field public static final NETWORK_STATS_SERVICE:Ljava/lang/String; = "netstats"

.field public static final NFC_SERVICE:Ljava/lang/String; = "nfc"

.field public static final NOTIFICATION_SERVICE:Ljava/lang/String; = "notification"

.field public static final NSD_SERVICE:Ljava/lang/String; = "servicediscovery"

.field public static final POWER_SERVICE:Ljava/lang/String; = "power"

.field public static final PPPOE_SERVICE:Ljava/lang/String; = "pppoe"

.field public static final SAMBA_CLIENT_SERVICE:Ljava/lang/String; = "samba_client"

.field public static final SAMBA_SERVER_SERVICE:Ljava/lang/String; = "samba_server"

.field public static final SCHEDULING_POLICY_SERVICE:Ljava/lang/String; = "scheduling_policy"

.field public static final SEARCH_SERVICE:Ljava/lang/String; = "search"

.field public static final SENSOR_SERVICE:Ljava/lang/String; = "sensor"

.field public static final SERIAL_SERVICE:Ljava/lang/String; = "serial"

.field public static final SIP_SERVICE:Ljava/lang/String; = "sip"

.field public static final STATUS_BAR_SERVICE:Ljava/lang/String; = "statusbar"

.field public static final STORAGE_SERVICE:Ljava/lang/String; = "storage"

.field public static final TELEPHONY_SERVICE:Ljava/lang/String; = "phone"

.field public static final TEXT_SERVICES_MANAGER_SERVICE:Ljava/lang/String; = "textservices"

.field public static final THROTTLE_SERVICE:Ljava/lang/String; = "throttle"

.field public static final UI_MODE_SERVICE:Ljava/lang/String; = "uimode"

.field public static final UPDATE_LOCK_SERVICE:Ljava/lang/String; = "updatelock"

.field public static final USB_SERVICE:Ljava/lang/String; = "usb"

.field public static final VIBRATOR_SERVICE:Ljava/lang/String; = "vibrator"

.field public static final WALLPAPER_SERVICE:Ljava/lang/String; = "wallpaper"

.field public static final WIFI_P2P_SERVICE:Ljava/lang/String; = "wifip2p"

.field public static final WIFI_SERVICE:Ljava/lang/String; = "wifi"

.field public static final WINDOW_SERVICE:Ljava/lang/String; = "window"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 294
    new-instance v0, Landroid/content/Context$1;

    invoke-direct {v0}, Landroid/content/Context$1;-><init>()V

    sput-object v0, Landroid/content/Context;->F1:Landroid/content/Context$F;

    .line 300
    new-instance v0, Landroid/content/Context$2;

    invoke-direct {v0}, Landroid/content/Context$2;-><init>()V

    sput-object v0, Landroid/content/Context;->F2:Landroid/content/Context$F;

    .line 306
    new-instance v0, Landroid/content/Context$3;

    invoke-direct {v0}, Landroid/content/Context$3;-><init>()V

    sput-object v0, Landroid/content/Context;->F3:Landroid/content/Context$F;

    .line 312
    new-instance v0, Landroid/content/Context$4;

    invoke-direct {v0}, Landroid/content/Context$4;-><init>()V

    sput-object v0, Landroid/content/Context;->F4:Landroid/content/Context$F;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static HASHSTEP(Landroid/content/Context$F;JJJJJJ)J
    .locals 9
    .parameter "f"
    .parameter "w"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "in"
    .parameter "s"

    .prologue
    .line 320
    move-object v2, p0

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-interface/range {v2 .. v8}, Landroid/content/Context$F;->fun(JJJ)J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const-wide v4, 0xffffffffL

    and-long v4, v4, p9

    add-long/2addr v2, v4

    add-long/2addr p1, v2

    .line 321
    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    .line 323
    move-wide/from16 v0, p11

    long-to-int v2, v0

    shl-long v2, p1, v2

    const-wide/16 v4, 0x20

    sub-long v4, v4, p11

    long-to-int v4, v4

    shr-long v4, p1, v4

    or-long/2addr v2, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v4, p3

    add-long/2addr v2, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    return-wide v2
.end method

.method private static verify_transform([J[J)V
    .locals 22
    .parameter "hash"
    .parameter "in"

    .prologue
    .line 330
    const/4 v0, 0x0

    const-wide/32 v9, 0x67452301

    aput-wide v9, p0, v0

    .line 331
    const/4 v0, 0x1

    const-wide/32 v9, -0x10325477

    aput-wide v9, p0, v0

    .line 332
    const/4 v0, 0x2

    const-wide/32 v9, -0x67452302

    aput-wide v9, p0, v0

    .line 333
    const/4 v0, 0x3

    const-wide/32 v9, 0x10325476

    aput-wide v9, p0, v0

    .line 335
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .line 336
    .local v1, a:J
    const/4 v0, 0x1

    aget-wide v3, p0, v0

    .line 337
    .local v3, b:J
    const/4 v0, 0x2

    aget-wide v5, p0, v0

    .line 338
    .local v5, c:J
    const/4 v0, 0x3

    aget-wide v7, p0, v0

    .line 340
    .local v7, d:J
    sget-object v0, Landroid/content/Context;->F1:Landroid/content/Context$F;

    const/4 v9, 0x0

    aget-wide v9, p1, v9

    const-wide/32 v11, -0x28955b88

    add-long/2addr v9, v11

    const-wide/16 v11, 0x7

    invoke-static/range {v0 .. v12}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v1

    .line 341
    sget-object v9, Landroid/content/Context;->F1:Landroid/content/Context$F;

    const/4 v0, 0x1

    aget-wide v10, p1, v0

    const-wide/32 v12, -0x173848aa

    add-long v18, v10, v12

    const-wide/16 v20, 0xc

    move-wide v10, v7

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v7

    .line 342
    sget-object v9, Landroid/content/Context;->F1:Landroid/content/Context$F;

    const/4 v0, 0x2

    aget-wide v10, p1, v0

    const-wide/32 v12, 0x242070db

    add-long v18, v10, v12

    const-wide/16 v20, 0x11

    move-wide v10, v5

    move-wide v12, v7

    move-wide v14, v1

    move-wide/from16 v16, v3

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v5

    .line 343
    sget-object v9, Landroid/content/Context;->F1:Landroid/content/Context$F;

    const/4 v0, 0x3

    aget-wide v10, p1, v0

    const-wide/32 v12, -0x3e423112

    add-long v18, v10, v12

    const-wide/16 v20, 0x16

    move-wide v10, v3

    move-wide v12, v5

    move-wide v14, v7

    move-wide/from16 v16, v1

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v3

    .line 344
    sget-object v0, Landroid/content/Context;->F1:Landroid/content/Context$F;

    const/4 v9, 0x4

    aget-wide v9, p1, v9

    const-wide/32 v11, -0xa83f051

    add-long/2addr v9, v11

    const-wide/16 v11, 0x7

    invoke-static/range {v0 .. v12}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v1

    .line 345
    sget-object v9, Landroid/content/Context;->F1:Landroid/content/Context$F;

    const/4 v0, 0x5

    aget-wide v10, p1, v0

    const-wide/32 v12, 0x4787c62a

    add-long v18, v10, v12

    const-wide/16 v20, 0xc

    move-wide v10, v7

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v7

    .line 346
    sget-object v9, Landroid/content/Context;->F1:Landroid/content/Context$F;

    const/4 v0, 0x6

    aget-wide v10, p1, v0

    const-wide/32 v12, -0x57cfb9ed

    add-long v18, v10, v12

    const-wide/16 v20, 0x11

    move-wide v10, v5

    move-wide v12, v7

    move-wide v14, v1

    move-wide/from16 v16, v3

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v5

    .line 347
    sget-object v9, Landroid/content/Context;->F1:Landroid/content/Context$F;

    const/4 v0, 0x7

    aget-wide v10, p1, v0

    const-wide/32 v12, -0x2b96aff

    add-long v18, v10, v12

    const-wide/16 v20, 0x16

    move-wide v10, v3

    move-wide v12, v5

    move-wide v14, v7

    move-wide/from16 v16, v1

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v3

    .line 348
    sget-object v0, Landroid/content/Context;->F1:Landroid/content/Context$F;

    const/16 v9, 0x8

    aget-wide v9, p1, v9

    const-wide/32 v11, 0x698098d8

    add-long/2addr v9, v11

    const-wide/16 v11, 0x7

    invoke-static/range {v0 .. v12}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v1

    .line 349
    sget-object v9, Landroid/content/Context;->F1:Landroid/content/Context$F;

    const/16 v0, 0x9

    aget-wide v10, p1, v0

    const-wide/32 v12, -0x74bb0851

    add-long v18, v10, v12

    const-wide/16 v20, 0xc

    move-wide v10, v7

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v7

    .line 350
    sget-object v9, Landroid/content/Context;->F1:Landroid/content/Context$F;

    const/16 v0, 0xa

    aget-wide v10, p1, v0

    const-wide/32 v12, -0xa44f

    add-long v18, v10, v12

    const-wide/16 v20, 0x11

    move-wide v10, v5

    move-wide v12, v7

    move-wide v14, v1

    move-wide/from16 v16, v3

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v5

    .line 351
    sget-object v9, Landroid/content/Context;->F1:Landroid/content/Context$F;

    const/16 v0, 0xb

    aget-wide v10, p1, v0

    const-wide/32 v12, -0x76a32842

    add-long v18, v10, v12

    const-wide/16 v20, 0x16

    move-wide v10, v3

    move-wide v12, v5

    move-wide v14, v7

    move-wide/from16 v16, v1

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v3

    .line 352
    sget-object v0, Landroid/content/Context;->F1:Landroid/content/Context$F;

    const/16 v9, 0xc

    aget-wide v9, p1, v9

    const-wide/32 v11, 0x6b901122

    add-long/2addr v9, v11

    const-wide/16 v11, 0x7

    invoke-static/range {v0 .. v12}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v1

    .line 353
    sget-object v9, Landroid/content/Context;->F1:Landroid/content/Context$F;

    const/16 v0, 0xd

    aget-wide v10, p1, v0

    const-wide/32 v12, -0x2678e6d

    add-long v18, v10, v12

    const-wide/16 v20, 0xc

    move-wide v10, v7

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v7

    .line 354
    sget-object v9, Landroid/content/Context;->F1:Landroid/content/Context$F;

    const/16 v0, 0xe

    aget-wide v10, p1, v0

    const-wide/32 v12, -0x5986bc72

    add-long v18, v10, v12

    const-wide/16 v20, 0x11

    move-wide v10, v5

    move-wide v12, v7

    move-wide v14, v1

    move-wide/from16 v16, v3

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v5

    .line 355
    sget-object v9, Landroid/content/Context;->F1:Landroid/content/Context$F;

    const/16 v0, 0xf

    aget-wide v10, p1, v0

    const-wide/32 v12, 0x49b40821

    add-long v18, v10, v12

    const-wide/16 v20, 0x16

    move-wide v10, v3

    move-wide v12, v5

    move-wide v14, v7

    move-wide/from16 v16, v1

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v3

    .line 357
    sget-object v0, Landroid/content/Context;->F2:Landroid/content/Context$F;

    const/4 v9, 0x1

    aget-wide v9, p1, v9

    const-wide/32 v11, -0x9e1da9e

    add-long/2addr v9, v11

    const-wide/16 v11, 0x5

    invoke-static/range {v0 .. v12}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v1

    .line 358
    sget-object v9, Landroid/content/Context;->F2:Landroid/content/Context$F;

    const/4 v0, 0x6

    aget-wide v10, p1, v0

    const-wide/32 v12, -0x3fbf4cc0

    add-long v18, v10, v12

    const-wide/16 v20, 0x9

    move-wide v10, v7

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v7

    .line 359
    sget-object v9, Landroid/content/Context;->F2:Landroid/content/Context$F;

    const/16 v0, 0xb

    aget-wide v10, p1, v0

    const-wide/32 v12, 0x265e5a51

    add-long v18, v10, v12

    const-wide/16 v20, 0xe

    move-wide v10, v5

    move-wide v12, v7

    move-wide v14, v1

    move-wide/from16 v16, v3

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v5

    .line 360
    sget-object v9, Landroid/content/Context;->F2:Landroid/content/Context$F;

    const/4 v0, 0x0

    aget-wide v10, p1, v0

    const-wide/32 v12, -0x16493856

    add-long v18, v10, v12

    const-wide/16 v20, 0x14

    move-wide v10, v3

    move-wide v12, v5

    move-wide v14, v7

    move-wide/from16 v16, v1

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v3

    .line 361
    sget-object v0, Landroid/content/Context;->F2:Landroid/content/Context$F;

    const/4 v9, 0x5

    aget-wide v9, p1, v9

    const-wide/32 v11, -0x29d0efa3

    add-long/2addr v9, v11

    const-wide/16 v11, 0x5

    invoke-static/range {v0 .. v12}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v1

    .line 362
    sget-object v9, Landroid/content/Context;->F2:Landroid/content/Context$F;

    const/16 v0, 0xa

    aget-wide v10, p1, v0

    const-wide/32 v12, 0x2441453

    add-long v18, v10, v12

    const-wide/16 v20, 0x9

    move-wide v10, v7

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v7

    .line 363
    sget-object v9, Landroid/content/Context;->F2:Landroid/content/Context$F;

    const/16 v0, 0xf

    aget-wide v10, p1, v0

    const-wide/32 v12, -0x275e197f

    add-long v18, v10, v12

    const-wide/16 v20, 0xe

    move-wide v10, v5

    move-wide v12, v7

    move-wide v14, v1

    move-wide/from16 v16, v3

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v5

    .line 364
    sget-object v9, Landroid/content/Context;->F2:Landroid/content/Context$F;

    const/4 v0, 0x4

    aget-wide v10, p1, v0

    const-wide/32 v12, -0x182c0438

    add-long v18, v10, v12

    const-wide/16 v20, 0x14

    move-wide v10, v3

    move-wide v12, v5

    move-wide v14, v7

    move-wide/from16 v16, v1

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v3

    .line 365
    sget-object v0, Landroid/content/Context;->F2:Landroid/content/Context$F;

    const/16 v9, 0x9

    aget-wide v9, p1, v9

    const-wide/32 v11, 0x21e1cde6

    add-long/2addr v9, v11

    const-wide/16 v11, 0x5

    invoke-static/range {v0 .. v12}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v1

    .line 366
    sget-object v9, Landroid/content/Context;->F2:Landroid/content/Context$F;

    const/16 v0, 0xe

    aget-wide v10, p1, v0

    const-wide/32 v12, -0x3cc8f82a

    add-long v18, v10, v12

    const-wide/16 v20, 0x9

    move-wide v10, v7

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v7

    .line 367
    sget-object v9, Landroid/content/Context;->F2:Landroid/content/Context$F;

    const/4 v0, 0x3

    aget-wide v10, p1, v0

    const-wide/32 v12, -0xb2af279

    add-long v18, v10, v12

    const-wide/16 v20, 0xe

    move-wide v10, v5

    move-wide v12, v7

    move-wide v14, v1

    move-wide/from16 v16, v3

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v5

    .line 368
    sget-object v9, Landroid/content/Context;->F2:Landroid/content/Context$F;

    const/16 v0, 0x8

    aget-wide v10, p1, v0

    const-wide/32 v12, 0x455a14ed

    add-long v18, v10, v12

    const-wide/16 v20, 0x14

    move-wide v10, v3

    move-wide v12, v5

    move-wide v14, v7

    move-wide/from16 v16, v1

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v3

    .line 369
    sget-object v0, Landroid/content/Context;->F2:Landroid/content/Context$F;

    const/16 v9, 0xd

    aget-wide v9, p1, v9

    const-wide/32 v11, -0x561c16fb

    add-long/2addr v9, v11

    const-wide/16 v11, 0x5

    invoke-static/range {v0 .. v12}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v1

    .line 370
    sget-object v9, Landroid/content/Context;->F2:Landroid/content/Context$F;

    const/4 v0, 0x2

    aget-wide v10, p1, v0

    const-wide/32 v12, -0x3105c08

    add-long v18, v10, v12

    const-wide/16 v20, 0x9

    move-wide v10, v7

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v7

    .line 371
    sget-object v9, Landroid/content/Context;->F2:Landroid/content/Context$F;

    const/4 v0, 0x7

    aget-wide v10, p1, v0

    const-wide/32 v12, 0x676f02d9

    add-long v18, v10, v12

    const-wide/16 v20, 0xe

    move-wide v10, v5

    move-wide v12, v7

    move-wide v14, v1

    move-wide/from16 v16, v3

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v5

    .line 372
    sget-object v9, Landroid/content/Context;->F2:Landroid/content/Context$F;

    const/16 v0, 0xc

    aget-wide v10, p1, v0

    const-wide/32 v12, -0x72d5b376

    add-long v18, v10, v12

    const-wide/16 v20, 0x14

    move-wide v10, v3

    move-wide v12, v5

    move-wide v14, v7

    move-wide/from16 v16, v1

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v3

    .line 374
    sget-object v0, Landroid/content/Context;->F3:Landroid/content/Context$F;

    const/4 v9, 0x5

    aget-wide v9, p1, v9

    const-wide/32 v11, -0x5c6be

    add-long/2addr v9, v11

    const-wide/16 v11, 0x4

    invoke-static/range {v0 .. v12}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v1

    .line 375
    sget-object v9, Landroid/content/Context;->F3:Landroid/content/Context$F;

    const/16 v0, 0x8

    aget-wide v10, p1, v0

    const-wide/32 v12, -0x788e097f

    add-long v18, v10, v12

    const-wide/16 v20, 0xb

    move-wide v10, v7

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v7

    .line 376
    sget-object v9, Landroid/content/Context;->F3:Landroid/content/Context$F;

    const/16 v0, 0xb

    aget-wide v10, p1, v0

    const-wide/32 v12, 0x6d9d6122

    add-long v18, v10, v12

    const-wide/16 v20, 0x10

    move-wide v10, v5

    move-wide v12, v7

    move-wide v14, v1

    move-wide/from16 v16, v3

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v5

    .line 377
    sget-object v9, Landroid/content/Context;->F3:Landroid/content/Context$F;

    const/16 v0, 0xe

    aget-wide v10, p1, v0

    const-wide/32 v12, -0x21ac7f4

    add-long v18, v10, v12

    const-wide/16 v20, 0x17

    move-wide v10, v3

    move-wide v12, v5

    move-wide v14, v7

    move-wide/from16 v16, v1

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v3

    .line 378
    sget-object v0, Landroid/content/Context;->F3:Landroid/content/Context$F;

    const/4 v9, 0x1

    aget-wide v9, p1, v9

    const-wide/32 v11, -0x5b4115bc

    add-long/2addr v9, v11

    const-wide/16 v11, 0x4

    invoke-static/range {v0 .. v12}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v1

    .line 379
    sget-object v9, Landroid/content/Context;->F3:Landroid/content/Context$F;

    const/4 v0, 0x4

    aget-wide v10, p1, v0

    const-wide/32 v12, 0x4bdecfa9

    add-long v18, v10, v12

    const-wide/16 v20, 0xb

    move-wide v10, v7

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v7

    .line 380
    sget-object v9, Landroid/content/Context;->F3:Landroid/content/Context$F;

    const/4 v0, 0x7

    aget-wide v10, p1, v0

    const-wide/32 v12, -0x944b4a0

    add-long v18, v10, v12

    const-wide/16 v20, 0x10

    move-wide v10, v5

    move-wide v12, v7

    move-wide v14, v1

    move-wide/from16 v16, v3

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v5

    .line 381
    sget-object v9, Landroid/content/Context;->F3:Landroid/content/Context$F;

    const/16 v0, 0xa

    aget-wide v10, p1, v0

    const-wide/32 v12, -0x41404390

    add-long v18, v10, v12

    const-wide/16 v20, 0x17

    move-wide v10, v3

    move-wide v12, v5

    move-wide v14, v7

    move-wide/from16 v16, v1

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v3

    .line 382
    sget-object v0, Landroid/content/Context;->F3:Landroid/content/Context$F;

    const/16 v9, 0xd

    aget-wide v9, p1, v9

    const-wide/32 v11, 0x289b7ec6

    add-long/2addr v9, v11

    const-wide/16 v11, 0x4

    invoke-static/range {v0 .. v12}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v1

    .line 383
    sget-object v9, Landroid/content/Context;->F3:Landroid/content/Context$F;

    const/4 v0, 0x0

    aget-wide v10, p1, v0

    const-wide/32 v12, -0x155ed806

    add-long v18, v10, v12

    const-wide/16 v20, 0xb

    move-wide v10, v7

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v7

    .line 384
    sget-object v9, Landroid/content/Context;->F3:Landroid/content/Context$F;

    const/4 v0, 0x3

    aget-wide v10, p1, v0

    const-wide/32 v12, -0x2b10cf7b

    add-long v18, v10, v12

    const-wide/16 v20, 0x10

    move-wide v10, v5

    move-wide v12, v7

    move-wide v14, v1

    move-wide/from16 v16, v3

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v5

    .line 385
    sget-object v9, Landroid/content/Context;->F3:Landroid/content/Context$F;

    const/4 v0, 0x6

    aget-wide v10, p1, v0

    const-wide/32 v12, 0x4881d05

    add-long v18, v10, v12

    const-wide/16 v20, 0x17

    move-wide v10, v3

    move-wide v12, v5

    move-wide v14, v7

    move-wide/from16 v16, v1

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v3

    .line 386
    sget-object v0, Landroid/content/Context;->F3:Landroid/content/Context$F;

    const/16 v9, 0x9

    aget-wide v9, p1, v9

    const-wide/32 v11, -0x262b2fc7

    add-long/2addr v9, v11

    const-wide/16 v11, 0x4

    invoke-static/range {v0 .. v12}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v1

    .line 387
    sget-object v9, Landroid/content/Context;->F3:Landroid/content/Context$F;

    const/16 v0, 0xc

    aget-wide v10, p1, v0

    const-wide/32 v12, -0x1924661b

    add-long v18, v10, v12

    const-wide/16 v20, 0xb

    move-wide v10, v7

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v7

    .line 388
    sget-object v9, Landroid/content/Context;->F3:Landroid/content/Context$F;

    const/16 v0, 0xf

    aget-wide v10, p1, v0

    const-wide/32 v12, 0x1fa27cf8

    add-long v18, v10, v12

    const-wide/16 v20, 0x10

    move-wide v10, v5

    move-wide v12, v7

    move-wide v14, v1

    move-wide/from16 v16, v3

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v5

    .line 389
    sget-object v9, Landroid/content/Context;->F3:Landroid/content/Context$F;

    const/4 v0, 0x2

    aget-wide v10, p1, v0

    const-wide/32 v12, -0x3b53a99b

    add-long v18, v10, v12

    const-wide/16 v20, 0x17

    move-wide v10, v3

    move-wide v12, v5

    move-wide v14, v7

    move-wide/from16 v16, v1

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v3

    .line 391
    sget-object v0, Landroid/content/Context;->F4:Landroid/content/Context$F;

    const/4 v9, 0x0

    aget-wide v9, p1, v9

    const-wide/32 v11, -0xbd6ddbc

    add-long/2addr v9, v11

    const-wide/16 v11, 0x6

    invoke-static/range {v0 .. v12}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v1

    .line 392
    sget-object v9, Landroid/content/Context;->F4:Landroid/content/Context$F;

    const/4 v0, 0x7

    aget-wide v10, p1, v0

    const-wide/32 v12, 0x432aff97

    add-long v18, v10, v12

    const-wide/16 v20, 0xa

    move-wide v10, v7

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v7

    .line 393
    sget-object v9, Landroid/content/Context;->F4:Landroid/content/Context$F;

    const/16 v0, 0xe

    aget-wide v10, p1, v0

    const-wide/32 v12, -0x546bdc59

    add-long v18, v10, v12

    const-wide/16 v20, 0xf

    move-wide v10, v5

    move-wide v12, v7

    move-wide v14, v1

    move-wide/from16 v16, v3

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v5

    .line 394
    sget-object v9, Landroid/content/Context;->F4:Landroid/content/Context$F;

    const/4 v0, 0x5

    aget-wide v10, p1, v0

    const-wide/32 v12, -0x36c5fc7

    add-long v18, v10, v12

    const-wide/16 v20, 0x15

    move-wide v10, v3

    move-wide v12, v5

    move-wide v14, v7

    move-wide/from16 v16, v1

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v3

    .line 395
    sget-object v0, Landroid/content/Context;->F4:Landroid/content/Context$F;

    const/16 v9, 0xc

    aget-wide v9, p1, v9

    const-wide/32 v11, 0x655b59c3

    add-long/2addr v9, v11

    const-wide/16 v11, 0x6

    invoke-static/range {v0 .. v12}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v1

    .line 396
    sget-object v9, Landroid/content/Context;->F4:Landroid/content/Context$F;

    const/4 v0, 0x3

    aget-wide v10, p1, v0

    const-wide/32 v12, -0x70f3336e

    add-long v18, v10, v12

    const-wide/16 v20, 0xa

    move-wide v10, v7

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v7

    .line 397
    sget-object v9, Landroid/content/Context;->F4:Landroid/content/Context$F;

    const/16 v0, 0xa

    aget-wide v10, p1, v0

    const-wide/32 v12, -0x100b83

    add-long v18, v10, v12

    const-wide/16 v20, 0xf

    move-wide v10, v5

    move-wide v12, v7

    move-wide v14, v1

    move-wide/from16 v16, v3

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v5

    .line 398
    sget-object v9, Landroid/content/Context;->F4:Landroid/content/Context$F;

    const/4 v0, 0x1

    aget-wide v10, p1, v0

    const-wide/32 v12, -0x7a7ba22f

    add-long v18, v10, v12

    const-wide/16 v20, 0x15

    move-wide v10, v3

    move-wide v12, v5

    move-wide v14, v7

    move-wide/from16 v16, v1

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v3

    .line 399
    sget-object v0, Landroid/content/Context;->F4:Landroid/content/Context$F;

    const/16 v9, 0x8

    aget-wide v9, p1, v9

    const-wide/32 v11, 0x6fa87e4f

    add-long/2addr v9, v11

    const-wide/16 v11, 0x6

    invoke-static/range {v0 .. v12}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v1

    .line 400
    sget-object v9, Landroid/content/Context;->F4:Landroid/content/Context$F;

    const/16 v0, 0xf

    aget-wide v10, p1, v0

    const-wide/32 v12, -0x1d31920

    add-long v18, v10, v12

    const-wide/16 v20, 0xa

    move-wide v10, v7

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v7

    .line 401
    sget-object v9, Landroid/content/Context;->F4:Landroid/content/Context$F;

    const/4 v0, 0x6

    aget-wide v10, p1, v0

    const-wide/32 v12, -0x5cfebcec

    add-long v18, v10, v12

    const-wide/16 v20, 0xf

    move-wide v10, v5

    move-wide v12, v7

    move-wide v14, v1

    move-wide/from16 v16, v3

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v5

    .line 402
    sget-object v9, Landroid/content/Context;->F4:Landroid/content/Context$F;

    const/16 v0, 0xd

    aget-wide v10, p1, v0

    const-wide/32 v12, 0x4e0811a1

    add-long v18, v10, v12

    const-wide/16 v20, 0x15

    move-wide v10, v3

    move-wide v12, v5

    move-wide v14, v7

    move-wide/from16 v16, v1

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v3

    .line 403
    sget-object v0, Landroid/content/Context;->F4:Landroid/content/Context$F;

    const/4 v9, 0x4

    aget-wide v9, p1, v9

    const-wide/32 v11, -0x8ac817e

    add-long/2addr v9, v11

    const-wide/16 v11, 0x6

    invoke-static/range {v0 .. v12}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v1

    .line 404
    sget-object v9, Landroid/content/Context;->F4:Landroid/content/Context$F;

    const/16 v0, 0xb

    aget-wide v10, p1, v0

    const-wide/32 v12, -0x42c50dcb

    add-long v18, v10, v12

    const-wide/16 v20, 0xa

    move-wide v10, v7

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v7

    .line 405
    sget-object v9, Landroid/content/Context;->F4:Landroid/content/Context$F;

    const/4 v0, 0x2

    aget-wide v10, p1, v0

    const-wide/32 v12, 0x2ad7d2bb

    add-long v18, v10, v12

    const-wide/16 v20, 0xf

    move-wide v10, v5

    move-wide v12, v7

    move-wide v14, v1

    move-wide/from16 v16, v3

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v5

    .line 406
    sget-object v9, Landroid/content/Context;->F4:Landroid/content/Context$F;

    const/16 v0, 0x9

    aget-wide v10, p1, v0

    const-wide/32 v12, -0x14792c6f

    add-long v18, v10, v12

    const-wide/16 v20, 0x15

    move-wide v10, v3

    move-wide v12, v5

    move-wide v14, v7

    move-wide/from16 v16, v1

    invoke-static/range {v9 .. v21}, Landroid/content/Context;->HASHSTEP(Landroid/content/Context$F;JJJJJJ)J

    move-result-wide v3

    .line 408
    const/4 v0, 0x0

    aget-wide v9, p0, v0

    const-wide v11, 0xffffffffL

    and-long/2addr v11, v1

    add-long/2addr v9, v11

    aput-wide v9, p0, v0

    .line 409
    const/4 v0, 0x1

    aget-wide v9, p0, v0

    const-wide v11, 0xffffffffL

    and-long/2addr v11, v3

    add-long/2addr v9, v11

    aput-wide v9, p0, v0

    .line 410
    const/4 v0, 0x2

    aget-wide v9, p0, v0

    const-wide v11, 0xffffffffL

    and-long/2addr v11, v5

    add-long/2addr v9, v11

    aput-wide v9, p0, v0

    .line 411
    const/4 v0, 0x3

    aget-wide v9, p0, v0

    const-wide v11, 0xffffffffL

    and-long/2addr v11, v7

    add-long/2addr v9, v11

    aput-wide v9, p0, v0

    .line 412
    return-void
.end method


# virtual methods
.method public abstract bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
.end method

.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z
    .locals 2
    .parameter "service"
    .parameter "conn"
    .parameter "flags"
    .parameter "userId"

    .prologue
    .line 1596
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract checkCallingOrSelfPermission(Ljava/lang/String;)I
.end method

.method public abstract checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I
.end method

.method public abstract checkCallingPermission(Ljava/lang/String;)I
.end method

.method public abstract checkCallingUriPermission(Landroid/net/Uri;I)I
.end method

.method public abstract checkInternalReadAndWriteContentPermission(Ljava/lang/String;II)I
.end method

.method public abstract checkPermission(Ljava/lang/String;II)I
.end method

.method public abstract checkUriPermission(Landroid/net/Uri;III)I
.end method

.method public abstract checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I
.end method

.method public abstract clearWallpaper()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract databaseList()[Ljava/lang/String;
.end method

.method public abstract deleteDatabase(Ljava/lang/String;)Z
.end method

.method public abstract deleteFile(Ljava/lang/String;)Z
.end method

.method public abstract enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
.end method

.method public abstract enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
.end method

.method public abstract enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
.end method

.method public abstract enforceUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V
.end method

.method public abstract enforceUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
.end method

.method public abstract fileList()[Ljava/lang/String;
.end method

.method public abstract getApplicationContext()Landroid/content/Context;
.end method

.method public abstract getApplicationInfo()Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract getAssets()Landroid/content/res/AssetManager;
.end method

.method public abstract getCacheDir()Ljava/io/File;
.end method

.method public abstract getClassLoader()Ljava/lang/ClassLoader;
.end method

.method public abstract getContentResolver()Landroid/content/ContentResolver;
.end method

.method public abstract getDatabasePath(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getDir(Ljava/lang/String;I)Ljava/io/File;
.end method

.method public abstract getExternalCacheDir()Ljava/io/File;
.end method

.method public abstract getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getFilesDir()Ljava/io/File;
.end method

.method public abstract getMainLooper()Landroid/os/Looper;
.end method

.method public abstract getObbDir()Ljava/io/File;
.end method

.method public abstract getPackageCodePath()Ljava/lang/String;
.end method

.method public abstract getPackageManager()Landroid/content/pm/PackageManager;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getPackageResourcePath()Ljava/lang/String;
.end method

.method public abstract getResources()Landroid/content/res/Resources;
.end method

.method public abstract getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
.end method

.method public abstract getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 14
    .parameter "resId"

    .prologue
    const/16 v13, 0x10

    .line 421
    const v11, -0x1f1f1f20

    if-lt p1, v11, :cond_6

    const v11, -0x1f1f0001

    if-gt p1, v11, :cond_6

    .line 423
    const-string/jumbo v11, "ro.kernel.qemu"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 424
    const-string/jumbo v10, "moc.uziem@"

    .line 479
    :cond_0
    :goto_0
    return-object v10

    .line 440
    :cond_1
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    .line 442
    .local v7, random:Ljava/util/Random;
    new-array v8, v13, [J

    .line 443
    .local v8, randomData:[J
    const/4 v0, 0x0

    .line 444
    .local v0, count:I
    const-wide/16 v5, 0x0

    .line 445
    .local v5, rand:J
    :goto_1
    array-length v11, v8

    if-ge v0, v11, :cond_2

    .line 446
    invoke-virtual {v7}, Ljava/util/Random;->nextLong()J

    move-result-wide v5

    .line 447
    const-wide v11, 0xffffffffL

    and-long/2addr v11, v5

    aput-wide v11, v8, v0

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 451
    :cond_2
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 453
    .local v10, retString:Ljava/lang/String;
    new-array v9, v13, [I

    .line 454
    .local v9, randomData2:[I
    const/4 v11, 0x4

    new-array v1, v11, [J

    .line 455
    .local v1, hashJava:[J
    const/4 v3, 0x0

    .line 456
    .local v3, i:I
    const/4 v3, 0x0

    :goto_2
    array-length v11, v9

    if-ge v3, v11, :cond_3

    .line 457
    aget-wide v11, v8, v3

    long-to-int v11, v11

    aput v11, v9, v3

    .line 456
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 460
    :cond_3
    new-array v4, v13, [I

    .line 462
    .local v4, outData:[I
    invoke-static {v1, v8}, Landroid/content/Context;->verify_transform([J[J)V

    .line 463
    invoke-static {v9, v4}, Landroid/graphics/Bitmap;->checkDeviceLegality([I[I)[J

    move-result-object v2

    .line 465
    .local v2, hashNative:[J
    array-length v11, v1

    array-length v12, v2

    if-ne v11, v12, :cond_0

    .line 466
    const/4 v0, 0x0

    :goto_3
    array-length v11, v1

    if-ge v0, v11, :cond_4

    .line 467
    aget-wide v11, v1, v0

    long-to-int v11, v11

    aget-wide v12, v2, v0

    long-to-int v12, v12

    if-eq v11, v12, :cond_5

    .line 472
    :cond_4
    array-length v11, v1

    if-ne v0, v11, :cond_0

    .line 473
    const-string/jumbo v10, "moc.uziem@"

    goto :goto_0

    .line 466
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 479
    .end local v0           #count:I
    .end local v1           #hashJava:[J
    .end local v2           #hashNative:[J
    .end local v3           #i:I
    .end local v4           #outData:[I
    .end local v5           #rand:J
    .end local v7           #random:Ljava/util/Random;
    .end local v8           #randomData:[J
    .end local v9           #randomData2:[I
    .end local v10           #retString:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "resId"
    .parameter "formatArgs"

    .prologue
    .line 493
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getSystemService(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "resId"

    .prologue
    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public abstract getTheme()Landroid/content/res/Resources$Theme;
.end method

.method public getThemeResId()I
    .locals 1

    .prologue
    .line 509
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getWallpaper()Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getWallpaperDesiredMinimumHeight()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getWallpaperDesiredMinimumWidth()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
.end method

.method public isDeviceDefaultTheme()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2609
    sget-object v1, Lcom/android/internal/R$styleable;->ThemeDeviceDefault:[I

    invoke-virtual {p0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2610
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    return v1
.end method

.method public isRestricted()Z
    .locals 1

    .prologue
    .line 2601
    const/4 v0, 0x0

    return v0
.end method

.method public final obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
    .locals 1
    .parameter "resid"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 538
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public final obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 2
    .parameter "set"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 550
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public final obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    .locals 1
    .parameter "set"
    .parameter "attrs"
    .parameter "defStyleAttr"
    .parameter "defStyleRes"

    .prologue
    .line 562
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public final obtainStyledAttributes([I)Landroid/content/res/TypedArray;
    .locals 1
    .parameter "attrs"

    .prologue
    .line 526
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public abstract openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
.end method

.method public abstract openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
.end method

.method public abstract peekWallpaper()Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 265
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 266
    return-void
.end method

.method public abstract registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
.end method

.method public abstract registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
.end method

.method public abstract removeStickyBroadcast(Landroid/content/Intent;)V
.end method

.method public abstract revokeUriPermission(Landroid/net/Uri;I)V
.end method

.method public abstract sendBroadcast(Landroid/content/Intent;)V
.end method

.method public sendBroadcast(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "userId"

    .prologue
    .line 1185
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
.end method

.method public abstract sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
.end method

.method public abstract sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract sendStickyBroadcast(Landroid/content/Intent;)V
.end method

.method public abstract sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract setTheme(I)V
.end method

.method public abstract setWallpaper(Landroid/graphics/Bitmap;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setWallpaper(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract startActivities([Landroid/content/Intent;)V
.end method

.method public abstract startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
.end method

.method public abstract startActivity(Landroid/content/Intent;)V
.end method

.method public abstract startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
.end method

.method public abstract startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z
.end method

.method public abstract startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation
.end method

.method public abstract startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation
.end method

.method public abstract startService(Landroid/content/Intent;)Landroid/content/ComponentName;
.end method

.method public abstract stopService(Landroid/content/Intent;)Z
.end method

.method public abstract unbindService(Landroid/content/ServiceConnection;)V
.end method

.method public unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 274
    return-void
.end method

.method public abstract unregisterReceiver(Landroid/content/BroadcastReceiver;)V
.end method
