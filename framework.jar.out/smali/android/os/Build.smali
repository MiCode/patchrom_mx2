.class public Landroid/os/Build;
.super Ljava/lang/Object;
.source "Build.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Build$VERSION_CODES;,
        Landroid/os/Build$VERSION;
    }
.end annotation


# static fields
.field public static final AUTORECORDER:Ljava/lang/String; = null

.field public static final BOARD:Ljava/lang/String; = null

.field public static final BOOTLOADER:Ljava/lang/String; = null

.field public static final BRAND:Ljava/lang/String; = null

.field public static final BUILD_MASK:Ljava/lang/String; = null

.field public static final CHINAUNICOM_VALUE:Ljava/lang/String; = null

.field public static final CPU_ABI:Ljava/lang/String; = null

.field public static final CPU_ABI2:Ljava/lang/String; = null

.field public static final CTA:Ljava/lang/String; = null

.field public static final CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean; = null

.field public static final CUSTOMIZE_PCCW:Ljava/lang/String; = null

.field public static final DEVICE:Ljava/lang/String; = null

.field public static final DISPLAY:Ljava/lang/String; = null

.field public static final FINGERPRINT:Ljava/lang/String; = null

.field public static final HARDWARE:Ljava/lang/String; = null

.field public static final HAS_PERMANENTKEY:Ljava/lang/Boolean; = null

.field public static final HOST:Ljava/lang/String; = null

.field public static final ID:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final IS_DEBUGGABLE:Z = false

.field public static final IS_M9:Ljava/lang/Boolean; = null

.field public static final IS_MX:Ljava/lang/Boolean; = null

.field public static final IS_MX2:Ljava/lang/Boolean; = null

.field public static final IS_PCCW:Ljava/lang/Boolean; = null

.field public static final M030:Ljava/lang/String; = "M030"

.field public static final M031:Ljava/lang/String; = "M031"

.field public static final M032:Ljava/lang/String; = "M032"

.field public static final M040:Ljava/lang/String; = "M040"

.field public static final M9:Ljava/lang/String; = "M9"

.field public static final MANUFACTURER:Ljava/lang/String; = null

.field public static final MEIZU_SECURITY:Ljava/lang/String; = null

.field public static final MODEL:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final MZ_USE_NAVBAR:Z = false

.field public static final MeizuSecurity:Ljava/lang/Boolean; = null

.field public static final PERMANENTKEY:Ljava/lang/String; = null

.field public static final PRODUCT:Ljava/lang/String; = null

.field public static final RADIO:Ljava/lang/String; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SERIAL:Ljava/lang/String; = null

.field public static final TAGS:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final TIME:J = 0x0L

.field public static final TYPE:Ljava/lang/String; = null

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final USER:Ljava/lang/String;

.field public static final VOICEMAIL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 26
    const-string/jumbo v2, "ro.build.mz_use_navbar"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Landroid/os/Build;->MZ_USE_NAVBAR:Z

    .line 32
    const-string/jumbo v2, "ro.build.id"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 35
    const-string/jumbo v2, "ro.build.display.id"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 38
    const-string/jumbo v2, "ro.build.mask.id"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->BUILD_MASK:Ljava/lang/String;

    .line 41
    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 44
    const-string/jumbo v2, "ro.product.device"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 47
    invoke-static {}, Landroid/os/Build;->isMX2()Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    .line 48
    invoke-static {}, Landroid/os/Build;->isMX()Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->IS_MX:Ljava/lang/Boolean;

    .line 49
    invoke-static {}, Landroid/os/Build;->isM9()Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->IS_M9:Ljava/lang/Boolean;

    .line 53
    const-string/jumbo v2, "ro.product.board"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 56
    const-string/jumbo v2, "ro.product.cpu.abi"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 59
    const-string/jumbo v2, "ro.product.cpu.abi2"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    .line 62
    const-string/jumbo v2, "ro.product.manufacturer"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 65
    const-string/jumbo v2, "ro.product.brand"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 68
    const-string/jumbo v2, "ro.product.model"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 71
    const-string/jumbo v2, "ro.bootloader"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    .line 82
    const-string v2, "gsm.version.baseband"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->RADIO:Ljava/lang/String;

    .line 85
    const-string/jumbo v2, "ro.hardware"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 88
    const-string/jumbo v2, "ro.serialno"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 90
    const-string/jumbo v2, "ro.build.cta"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->CTA:Ljava/lang/String;

    .line 92
    const-string/jumbo v2, "ro.meizu.permanentkey"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->PERMANENTKEY:Ljava/lang/String;

    .line 444
    const-string/jumbo v2, "ro.build.type"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 447
    const-string/jumbo v2, "ro.build.tags"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 450
    const-string/jumbo v2, "ro.build.fingerprint"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 453
    const-string/jumbo v2, "ro.build.date.utc"

    invoke-static {v2}, Landroid/os/Build;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    sput-wide v2, Landroid/os/Build;->TIME:J

    .line 454
    const-string/jumbo v2, "ro.build.user"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->USER:Ljava/lang/String;

    .line 455
    const-string/jumbo v2, "ro.build.host"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->HOST:Ljava/lang/String;

    .line 457
    const-string/jumbo v2, "ro.meizu.customize.pccw"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->CUSTOMIZE_PCCW:Ljava/lang/String;

    .line 458
    const-string/jumbo v2, "ro.meizu.autorecorder"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->AUTORECORDER:Ljava/lang/String;

    .line 459
    const-string/jumbo v2, "ro.meizu.visualvoicemail"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->VOICEMAIL:Ljava/lang/String;

    .line 460
    const-string/jumbo v2, "ro.meizu.security"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->MEIZU_SECURITY:Ljava/lang/String;

    .line 463
    invoke-static {}, Landroid/os/Build;->isPCCW()Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->IS_PCCW:Ljava/lang/Boolean;

    .line 464
    invoke-static {}, Landroid/os/Build;->isMeizuSecurity()Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->MeizuSecurity:Ljava/lang/Boolean;

    .line 465
    invoke-static {}, Landroid/os/Build;->hasPermanentKey()Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    .line 468
    const-string/jumbo v2, "ro.customize.isp"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->CHINAUNICOM_VALUE:Ljava/lang/String;

    .line 469
    invoke-static {}, Landroid/os/Build;->isChinaUnicom()Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Landroid/os/Build;->CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

    .line 474
    const-string/jumbo v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 156
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-static {p0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLong(Ljava/lang/String;)J
    .locals 3
    .parameter "property"

    .prologue
    .line 532
    :try_start_0
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 534
    :goto_0
    return-wide v1

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, e:Ljava/lang/NumberFormatException;
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public static getRadioVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 482
    const-string v0, "gsm.version.baseband"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "property"

    .prologue
    .line 486
    const-string/jumbo v0, "unknown"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hasPermanentKey()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 525
    sget-object v0, Landroid/os/Build;->PERMANENTKEY:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->PERMANENTKEY:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 528
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private static isChinaUnicom()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 561
    sget-object v0, Landroid/os/Build;->CHINAUNICOM_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->CHINAUNICOM_VALUE:Ljava/lang/String;

    const-string v1, "chinaunicom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 564
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private static isM9()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 504
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "m9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 507
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private static isMX()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 497
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "mx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 500
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private static isMX2()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 490
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "mx2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 493
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private static isMeizuSecurity()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 518
    sget-object v0, Landroid/os/Build;->MEIZU_SECURITY:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MEIZU_SECURITY:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 521
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private static isPCCW()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 511
    sget-object v0, Landroid/os/Build;->CUSTOMIZE_PCCW:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->CUSTOMIZE_PCCW:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 514
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static isProductInternational()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 545
    :try_start_0
    const-string/jumbo v2, "ro.product.locale.language"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ro.product.locale.region"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 549
    .local v0, e:Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v1

    .line 546
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 547
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
