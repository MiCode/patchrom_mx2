.class public Lcom/meizu/internal/policy/impl/ChargingEdotView;
.super Landroid/view/View;
.source "ChargingEdotView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/internal/policy/impl/ChargingEdotView$1;,
        Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotHandler;,
        Lcom/meizu/internal/policy/impl/ChargingEdotView$IlluminantInfo;,
        Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;,
        Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;
    }
.end annotation


# static fields
.field private static final COST_OF_BATTERYBOX_OUT:I = 0xc8

.field private static final COST_OF_EDOT_DIED_ANIM:I = 0x3e8

.field private static final COST_OF_ILLUMINANT_OUT:I = 0xc8

.field private static final DIP_ANIMATE_EXTERNAL_EDGE:I = 0xa

.field private static final DIP_BATTERY_CAPACITY:I = 0x5c

.field private static final DIP_BATTERY_CAPACITY_GAP:I = 0x0

.field private static final DIP_BOX_BOTTOM_HEIGHT:I = 0xb

.field private static final DIP_MAX_EDOT_RADIUS:I = 0x35

.field private static final EDOT_TYPE_COUNT:I = 0x3

.field private static final INTERVAL_BORN_EDOT:I = 0x2bc

.field private static final INTERVAL_UPDATE_EDOT:I = 0x12

.field private static final INTERVAL_UPDATE_EDOT_FOR_DIED:I = 0x10

.field private static final LOW_LEVEL:I = 0xa

.field private static final MAX_EDOT_COUNT:I = 0x6

.field private static final MAX_ILLUMINANT_COUNT:I = 0x4

.field private static final MSG_BORN_EDOT:I = 0x3ea

.field private static final MSG_KILL_ALL_EDOT:I = 0x3f2

.field private static final MSG_START_EDOT_DIED_ANIM:I = 0x3ee

.field private static final MSG_STOP_ANIMATING:I = 0x3eb

.field private static final MSG_STOP_BORNING_EDOT:I = 0x3ec

.field private static final MSG_UPDATE_BATTERYBOX_FOR_OUT:I = 0x3f0

.field private static final MSG_UPDATE_EDOT:I = 0x3e9

.field private static final MSG_UPDATE_EDOT_FOR_DIED:I = 0x3ed

.field private static final MSG_UPDATE_ILLIMINANT_IN:I = 0x3f1

.field private static final MSG_UPDATE_ILLUMINANT_FOR_OUT:I = 0x3ef

.field private static final PX_ANIMATE_FADE_IN_SPACE:I = 0x32

.field private static final PX_ANIMATE_FADE_OUT_SPACE:I = 0x1e

.field private static final PX_ANIMATE_VERTICAL_SPACE:I = 0x1ea

.field public static final TAG_CHARGING:Ljava/lang/String; = "KeyguardCharging"


# instance fields
.field private final ANIM_BORNING:I

.field private final ANIM_CHARGING:I

.field private final ANIM_PLUGGING:I

.field private final ANIM_QUITING:I

.field mAnimMode:I

.field mBatteryAlpha:I

.field private mBatteryBox:Landroid/graphics/drawable/Drawable;

.field private mBatteryFill:Landroid/graphics/drawable/Drawable;

.field private mBatteryLevel:I

.field mBatteryOutStartTime:J

.field private mDelayChargingAnimting:Z

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mDrawBattery:Z

.field private mEdotList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEdotMiddle:Landroid/graphics/drawable/Drawable;

.field private mEdotMin:Landroid/graphics/drawable/Drawable;

.field private mEdotSmall:Landroid/graphics/drawable/Drawable;

.field private mHandler:Landroid/os/Handler;

.field mIlluminantDuration:I

.field private mIlluminantInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/internal/policy/impl/ChargingEdotView$IlluminantInfo;",
            ">;"
        }
    .end annotation
.end field

.field mIlluminantQuitTop:J

.field mIlluminantStartTime:J

.field private mIlluminants:[Landroid/graphics/drawable/Drawable;

.field mLastEdotType:I

.field mPluggingFrameCount:I

.field mQuittingFrameCount:I

.field mState:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

.field private mStopTime:J

.field mTest:I

.field private mToRight:Z

.field mTypeCount:I

.field private mWarningBatteryFill:Landroid/graphics/drawable/Drawable;

.field private final sIlluminantOutBegin:[I

.field private final sIlluminantOutEnd:[I

.field private final sLightBegin:[I

.field private final sLightEnd:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 284
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/meizu/internal/policy/impl/ChargingEdotView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 285
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 289
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x6

    const/4 v6, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 254
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    new-array v3, v8, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->sLightBegin:[I

    .line 84
    new-array v3, v8, [I

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->sLightEnd:[I

    .line 85
    new-array v3, v8, [I

    fill-array-data v3, :array_2

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->sIlluminantOutBegin:[I

    .line 86
    new-array v3, v8, [I

    fill-array-data v3, :array_3

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->sIlluminantOutEnd:[I

    .line 87
    iput v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->ANIM_CHARGING:I

    .line 88
    const/16 v3, 0x10

    iput v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->ANIM_BORNING:I

    .line 89
    const/16 v3, 0x100

    iput v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->ANIM_QUITING:I

    .line 90
    const/16 v3, 0x1000

    iput v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->ANIM_PLUGGING:I

    .line 96
    iput v7, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mAnimMode:I

    .line 97
    sget-object v3, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;->noPlugging:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mState:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    .line 98
    iput v7, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mPluggingFrameCount:I

    .line 99
    iput v7, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mQuittingFrameCount:I

    .line 119
    new-array v3, v8, [Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mIlluminants:[Landroid/graphics/drawable/Drawable;

    .line 156
    iput-boolean v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mToRight:Z

    .line 158
    const/4 v3, -0x1

    iput v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mLastEdotType:I

    .line 159
    iput v7, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mTypeCount:I

    .line 161
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mStopTime:J

    .line 163
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 168
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotList:Ljava/util/ArrayList;

    .line 203
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mIlluminantInfoList:Ljava/util/ArrayList;

    .line 210
    new-instance v3, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotHandler;-><init>(Lcom/meizu/internal/policy/impl/ChargingEdotView;Lcom/meizu/internal/policy/impl/ChargingEdotView$1;)V

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    .line 496
    iput v7, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mIlluminantDuration:I

    .line 497
    iput-wide v10, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mIlluminantStartTime:J

    .line 498
    const-wide/16 v3, -0x2710

    iput-wide v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mIlluminantQuitTop:J

    .line 499
    iput-wide v10, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryOutStartTime:J

    .line 500
    iput v7, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryAlpha:I

    .line 565
    const/16 v3, 0x35

    iput v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mTest:I

    .line 888
    iput-boolean v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mDrawBattery:Z

    .line 256
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10800e6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryFill:Landroid/graphics/drawable/Drawable;

    .line 257
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10800e7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mWarningBatteryFill:Landroid/graphics/drawable/Drawable;

    .line 258
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10800e0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryBox:Landroid/graphics/drawable/Drawable;

    .line 259
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mIlluminants:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10800e2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v7

    .line 260
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mIlluminants:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10800e3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v6

    .line 261
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mIlluminants:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10800e4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v3, v4

    .line 262
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mIlluminants:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10800e5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v3, v4

    .line 263
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10800ea

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotSmall:Landroid/graphics/drawable/Drawable;

    .line 264
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10800e9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotMin:Landroid/graphics/drawable/Drawable;

    .line 265
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10800e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotMiddle:Landroid/graphics/drawable/Drawable;

    .line 267
    iput v7, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryLevel:I

    .line 269
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v9, :cond_0

    .line 270
    new-instance v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;

    invoke-direct {v1, p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;-><init>(Lcom/meizu/internal/policy/impl/ChargingEdotView;)V

    .line 271
    .local v1, info:Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    .end local v1           #info:Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v8, :cond_1

    .line 275
    new-instance v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$IlluminantInfo;

    invoke-direct {v1, p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView$IlluminantInfo;-><init>(Lcom/meizu/internal/policy/impl/ChargingEdotView;)V

    .line 276
    .local v1, info:Lcom/meizu/internal/policy/impl/ChargingEdotView$IlluminantInfo;
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mIlluminantInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 279
    .end local v1           #info:Lcom/meizu/internal/policy/impl/ChargingEdotView$IlluminantInfo;
    :cond_1
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 280
    .local v2, windowManager:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v3, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 281
    return-void

    .line 83
    nop

    :array_0
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 84
    :array_1
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 85
    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 86
    :array_3
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/meizu/internal/policy/impl/ChargingEdotView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->updateEdot()V

    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/internal/policy/impl/ChargingEdotView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->killAllEdot()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/internal/policy/impl/ChargingEdotView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->bornEdot()V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/internal/policy/impl/ChargingEdotView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/internal/policy/impl/ChargingEdotView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mStopTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/meizu/internal/policy/impl/ChargingEdotView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mStopTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/meizu/internal/policy/impl/ChargingEdotView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->updateEdotForDied()V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/internal/policy/impl/ChargingEdotView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->startEdoitDiedAnim()V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/internal/policy/impl/ChargingEdotView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->handleUpdateIlluminantOut()V

    return-void
.end method

.method static synthetic access$800(Lcom/meizu/internal/policy/impl/ChargingEdotView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->updateBatteryBoxOut()V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/internal/policy/impl/ChargingEdotView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->handleUpdateIlliminantIn()V

    return-void
.end method

.method private bornEdot()V
    .locals 15

    .prologue
    .line 567
    iget v11, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mAnimMode:I

    and-int/lit8 v11, v11, 0x10

    if-nez v11, :cond_0

    .line 662
    :goto_0
    return-void

    .line 569
    :cond_0
    iget-object v11, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mIlluminants:[Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 570
    .local v5, rcIlluminant:Landroid/graphics/Rect;
    iget-object v11, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryBox:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 571
    .local v4, rcBatteryBox:Landroid/graphics/Rect;
    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    if-eqz v11, :cond_1

    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    if-nez v11, :cond_2

    .line 572
    :cond_1
    iget-object v11, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    const/16 v12, 0x3ea

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 573
    iget-object v11, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    const/16 v13, 0x3ea

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    const-wide/16 v13, 0x2bc

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 577
    :cond_2
    const/4 v2, 0x0

    .line 578
    .local v2, i:I
    const/4 v2, 0x0

    :goto_1
    iget-object v11, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_4

    .line 579
    iget-object v11, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotList:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;

    .line 580
    .local v1, edotInfo:Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;
    iget-boolean v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->isLive:Z

    if-nez v11, :cond_d

    .line 581
    const/4 v11, 0x1

    iput-boolean v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->isLive:Z

    .line 584
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide/high16 v13, 0x4024

    mul-double/2addr v11, v13

    const-wide/high16 v13, 0x4008

    rem-double/2addr v11, v13

    double-to-int v11, v11

    iput v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->edotType:I

    .line 585
    iget v11, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mLastEdotType:I

    iget v12, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->edotType:I

    if-eq v11, v12, :cond_6

    .line 586
    iget v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->edotType:I

    iput v11, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mLastEdotType:I

    .line 587
    const/4 v11, 0x0

    iput v11, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mTypeCount:I

    .line 596
    :goto_2
    iget v11, v5, Landroid/graphics/Rect;->left:I

    iget v12, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    div-int/lit8 v3, v11, 0x2

    .line 597
    .local v3, middle:I
    const/4 v0, 0x0

    .line 598
    .local v0, edotH:I
    iget v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->edotType:I

    if-nez v11, :cond_8

    .line 599
    iget-object v11, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotSmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v3, v11

    .line 600
    iget-object v11, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotSmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 601
    const/16 v11, 0xaf0

    iput v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->verticalDuration:I

    .line 612
    :goto_3
    iget-object v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    iput v3, v11, Landroid/graphics/Point;->x:I

    .line 613
    iget-object v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v0

    iput v12, v11, Landroid/graphics/Point;->y:I

    .line 614
    iget-object v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    iput v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->startY:I

    .line 615
    iget-object v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    iput v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->startX:I

    .line 616
    iget-boolean v11, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mToRight:Z

    iput-boolean v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->toRight:Z

    .line 617
    iget-boolean v11, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mToRight:Z

    if-nez v11, :cond_a

    const/4 v11, 0x1

    :goto_4
    iput-boolean v11, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mToRight:Z

    .line 619
    iget v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->verticalDuration:I

    mul-int/lit8 v11, v11, 0x32

    div-int/lit16 v11, v11, 0x1ea

    iput v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->alphaDuration:I

    .line 620
    const/4 v11, 0x0

    iput v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->alpha:I

    .line 623
    const/16 v11, 0x8

    const/16 v12, 0x35

    invoke-direct {p0, v11, v12}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->getRandomPosition(II)I

    move-result v11

    iput v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->radius:I

    .line 626
    iget v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->radius:I

    const/16 v12, 0x14

    if-ge v11, v12, :cond_b

    .line 628
    iget v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->verticalDuration:I

    div-int/lit8 v11, v11, 0x4

    iput v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->horizontalDuration:I

    .line 636
    :cond_3
    :goto_5
    const/4 v11, 0x0

    iput v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->horizontalAnimType:I

    .line 637
    const/high16 v11, 0x43f5

    iget v12, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->verticalDuration:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    iput v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->lastV:F

    .line 641
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iput-wide v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->verticalStartTime:J

    iput-wide v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->horizontalStartTime:J

    iput-wide v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->alphaStartTime:J

    .line 650
    .end local v0           #edotH:I
    .end local v1           #edotInfo:Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;
    .end local v3           #middle:I
    :cond_4
    iget-object v11, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-eq v2, v11, :cond_5

    .line 651
    iget v11, v4, Landroid/graphics/Rect;->left:I

    const/high16 v12, 0x4120

    iget-object v13, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v12, v13

    float-to-int v12, v12

    sub-int v8, v11, v12

    .line 652
    .local v8, uLeft:I
    iget v11, v4, Landroid/graphics/Rect;->right:I

    const/high16 v12, 0x4120

    iget-object v13, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v12, v13

    float-to-int v12, v12

    add-int v9, v11, v12

    .line 653
    .local v9, uRight:I
    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v10, v11, -0xa

    .line 654
    .local v10, uTop:I
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->getBottom()I

    move-result v7

    .line 655
    .local v7, uBottom:I
    invoke-virtual {p0, v8, v10, v9, v7}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->invalidate(IIII)V

    .line 659
    .end local v7           #uBottom:I
    .end local v8           #uLeft:I
    .end local v9           #uRight:I
    .end local v10           #uTop:I
    :cond_5
    const/16 v6, 0x2bc

    .line 660
    .local v6, time:I
    iget-object v11, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    const/16 v12, 0x3ea

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 661
    iget-object v11, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    const/16 v13, 0x3ea

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    int-to-long v13, v6

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 588
    .end local v6           #time:I
    .restart local v1       #edotInfo:Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;
    :cond_6
    iget v11, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mTypeCount:I

    const/4 v12, 0x1

    if-lt v11, v12, :cond_7

    .line 589
    const/4 v11, 0x0

    iput v11, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mTypeCount:I

    .line 590
    iget v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->edotType:I

    add-int/lit8 v11, v11, 0x1

    rem-int/lit8 v11, v11, 0x3

    iput v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->edotType:I

    iput v11, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mLastEdotType:I

    goto/16 :goto_2

    .line 592
    :cond_7
    iget v11, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mTypeCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mTypeCount:I

    goto/16 :goto_2

    .line 602
    .restart local v0       #edotH:I
    .restart local v3       #middle:I
    :cond_8
    iget v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->edotType:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9

    .line 603
    iget-object v11, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotMin:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v3, v11

    .line 604
    const/16 v11, 0xe10

    iput v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->verticalDuration:I

    .line 605
    iget-object v11, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotMin:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto/16 :goto_3

    .line 607
    :cond_9
    iget-object v11, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotMiddle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v3, v11

    .line 608
    const/16 v11, 0xfa0

    iput v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->verticalDuration:I

    .line 609
    iget-object v11, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotMiddle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto/16 :goto_3

    .line 617
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 629
    :cond_b
    iget v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->radius:I

    const/16 v12, 0x14

    if-lt v11, v12, :cond_c

    iget v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->radius:I

    const/16 v12, 0x28

    if-ge v11, v12, :cond_c

    .line 631
    iget v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->verticalDuration:I

    div-int/lit8 v11, v11, 0x6

    iput v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->horizontalDuration:I

    goto/16 :goto_5

    .line 632
    :cond_c
    iget v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->radius:I

    const/16 v12, 0x28

    if-lt v11, v12, :cond_3

    .line 634
    iget v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->verticalDuration:I

    div-int/lit8 v11, v11, 0x6

    iput v11, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->horizontalDuration:I

    goto/16 :goto_5

    .line 578
    .end local v0           #edotH:I
    .end local v3           #middle:I
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method private getRandomPosition(II)I
    .locals 4
    .parameter "min"
    .parameter "max"

    .prologue
    .line 558
    if-gt p2, p1, :cond_0

    .line 562
    .end local p1
    :goto_0
    return p1

    .line 560
    .restart local p1
    :cond_0
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 561
    .local v0, rand:Ljava/util/Random;
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v3, p2, p1

    rem-int/2addr v2, v3

    add-int v1, p1, v2

    .local v1, ret:I
    move p1, v1

    .line 562
    goto :goto_0
.end method

.method private handleUpdateIlliminantIn()V
    .locals 9

    .prologue
    const/16 v8, 0x3f1

    const/16 v7, 0x15

    .line 997
    iget v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mPluggingFrameCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mPluggingFrameCount:I

    .line 998
    const/4 v3, 0x0

    .line 999
    .local v3, more:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v5, 0x4

    if-ge v1, v5, :cond_2

    .line 1000
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mIlluminantInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/internal/policy/impl/ChargingEdotView$IlluminantInfo;

    .line 1001
    .local v2, info:Lcom/meizu/internal/policy/impl/ChargingEdotView$IlluminantInfo;
    iget v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mPluggingFrameCount:I

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->sLightEnd:[I

    aget v6, v6, v1

    if-ge v5, v6, :cond_0

    .line 1002
    const/4 v3, 0x1

    .line 1004
    :cond_0
    iget v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mPluggingFrameCount:I

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->sLightEnd:[I

    aget v6, v6, v1

    if-gt v5, v6, :cond_1

    iget v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mPluggingFrameCount:I

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->sLightBegin:[I

    aget v6, v6, v1

    if-lt v5, v6, :cond_1

    .line 1005
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->sLightEnd:[I

    aget v5, v5, v1

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->sLightBegin:[I

    aget v6, v6, v1

    sub-int/2addr v5, v6

    add-int/lit8 v0, v5, 0x1

    .line 1006
    .local v0, duration:I
    iget v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mPluggingFrameCount:I

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->sLightBegin:[I

    aget v6, v6, v1

    sub-int/2addr v5, v6

    add-int/lit8 v4, v5, 0x1

    .line 1007
    .local v4, rate:I
    mul-int/lit16 v5, v4, 0xff

    div-int/2addr v5, v0

    iput v5, v2, Lcom/meizu/internal/policy/impl/ChargingEdotView$IlluminantInfo;->mAlpha:I

    .line 1008
    if-nez v1, :cond_1

    .line 1009
    mul-int/lit8 v5, v4, 0x64

    div-int/2addr v5, v0

    int-to-float v5, v5

    iput v5, v2, Lcom/meizu/internal/policy/impl/ChargingEdotView$IlluminantInfo;->mScaleX:F

    .line 999
    .end local v0           #duration:I
    .end local v4           #rate:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1014
    .end local v2           #info:Lcom/meizu/internal/policy/impl/ChargingEdotView$IlluminantInfo;
    :cond_2
    iget v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mPluggingFrameCount:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_3

    iget v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mPluggingFrameCount:I

    if-gt v5, v7, :cond_3

    .line 1015
    const/16 v0, 0xb

    .line 1016
    .restart local v0       #duration:I
    iget v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mPluggingFrameCount:I

    add-int/lit8 v5, v5, -0xb

    add-int/lit8 v4, v5, 0x1

    .line 1017
    .restart local v4       #rate:I
    mul-int/lit16 v5, v4, 0xff

    div-int/2addr v5, v0

    iput v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryAlpha:I

    .line 1019
    .end local v0           #duration:I
    .end local v4           #rate:I
    :cond_3
    iget v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mPluggingFrameCount:I

    if-ge v5, v7, :cond_4

    .line 1020
    const/4 v3, 0x1

    .line 1022
    :cond_4
    if-eqz v3, :cond_6

    .line 1023
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1024
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x10

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1034
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->invalidate()V

    .line 1035
    return-void

    .line 1026
    :cond_6
    const/4 v5, 0x0

    iput v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mPluggingFrameCount:I

    .line 1027
    iget v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mAnimMode:I

    and-int/lit16 v5, v5, -0x1001

    iput v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mAnimMode:I

    .line 1028
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mState:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    sget-object v6, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;->noPlugging:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    if-ne v5, v6, :cond_7

    .line 1029
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->realStopChargingAndPlugin()V

    goto :goto_1

    .line 1030
    :cond_7
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mState:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    sget-object v6, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;->charging:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    if-ne v5, v6, :cond_5

    .line 1031
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->startChargingEdot()V

    goto :goto_1
.end method

.method private handleUpdateIlluminantOut()V
    .locals 9

    .prologue
    const/16 v7, 0x3ef

    .line 932
    iget v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mQuittingFrameCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mQuittingFrameCount:I

    .line 933
    const/4 v3, 0x0

    .line 934
    .local v3, more:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v5, 0x4

    if-ge v1, v5, :cond_2

    .line 935
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mIlluminantInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/internal/policy/impl/ChargingEdotView$IlluminantInfo;

    .line 936
    .local v2, info:Lcom/meizu/internal/policy/impl/ChargingEdotView$IlluminantInfo;
    iget v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mQuittingFrameCount:I

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->sIlluminantOutEnd:[I

    aget v6, v6, v1

    if-ge v5, v6, :cond_0

    .line 937
    const/4 v3, 0x1

    .line 939
    :cond_0
    iget v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mQuittingFrameCount:I

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->sIlluminantOutEnd:[I

    aget v6, v6, v1

    if-gt v5, v6, :cond_1

    iget v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mQuittingFrameCount:I

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->sIlluminantOutBegin:[I

    aget v6, v6, v1

    if-lt v5, v6, :cond_1

    .line 940
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->sIlluminantOutEnd:[I

    aget v5, v5, v1

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->sIlluminantOutBegin:[I

    aget v6, v6, v1

    sub-int/2addr v5, v6

    add-int/lit8 v0, v5, 0x1

    .line 941
    .local v0, duration:I
    iget v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mQuittingFrameCount:I

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->sIlluminantOutBegin:[I

    aget v6, v6, v1

    sub-int/2addr v5, v6

    add-int/lit8 v4, v5, 0x1

    .line 942
    .local v4, rate:I
    mul-int/lit16 v5, v4, 0xff

    div-int/2addr v5, v0

    rsub-int v5, v5, 0xff

    iput v5, v2, Lcom/meizu/internal/policy/impl/ChargingEdotView$IlluminantInfo;->mAlpha:I

    .line 934
    .end local v0           #duration:I
    .end local v4           #rate:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 945
    .end local v2           #info:Lcom/meizu/internal/policy/impl/ChargingEdotView$IlluminantInfo;
    :cond_2
    if-nez v3, :cond_3

    .line 947
    iget v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mAnimMode:I

    and-int/lit8 v5, v5, -0x2

    iput v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mAnimMode:I

    .line 948
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3e9

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 949
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x3ee

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 954
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->invalidate()V

    .line 955
    return-void

    .line 951
    :cond_3
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 952
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x10

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private killAllEdot()V
    .locals 3

    .prologue
    .line 488
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 489
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;

    .line 490
    .local v0, edotInfo:Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;
    iget-boolean v2, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->isLive:Z

    if-eqz v2, :cond_0

    .line 491
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->isLive:Z

    .line 488
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 493
    .end local v0           #edotInfo:Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->invalidate()V

    .line 494
    return-void
.end method

.method private realStopChargingAndPlugin()V
    .locals 4

    .prologue
    .line 518
    iget v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mAnimMode:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mAnimMode:I

    .line 519
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->stopBornEdot()V

    .line 522
    const/16 v0, 0xc8

    iput v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mIlluminantDuration:I

    .line 523
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mIlluminantStartTime:J

    .line 524
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ef

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 525
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mQuittingFrameCount:I

    .line 526
    return-void
.end method

.method private renewEdotStartTime()V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    .line 452
    iget-wide v4, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mStopTime:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_0

    .line 464
    :goto_0
    return-void

    .line 454
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mStopTime:J

    sub-long v2, v4, v6

    .line 455
    .local v2, offset:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 456
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;

    .line 457
    .local v0, edotInfo:Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;
    iget-boolean v4, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->isLive:Z

    if-eqz v4, :cond_1

    .line 458
    iget-wide v4, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->alphaStartTime:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->alphaStartTime:J

    .line 459
    iget-wide v4, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->horizontalStartTime:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->horizontalStartTime:J

    .line 460
    iget-wide v4, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->verticalStartTime:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->verticalStartTime:J

    .line 455
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 463
    .end local v0           #edotInfo:Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;
    :cond_2
    iput-wide v8, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mStopTime:J

    goto :goto_0
.end method

.method private startEdoitDiedAnim()V
    .locals 11

    .prologue
    const/16 v10, 0x3ed

    const/16 v9, 0xff

    const/high16 v8, 0x3f80

    .line 780
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_6

    .line 781
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;

    .line 782
    .local v1, edotInfo:Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;
    iget-boolean v6, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->isLive:Z

    if-nez v6, :cond_0

    .line 780
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 784
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->verticalStartTime:J

    iput-wide v6, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->horizontalStartTime:J

    .line 785
    iget v6, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->startY:I

    iget-object v7, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x43f5

    div-float/2addr v6, v7

    sub-float v4, v8, v6

    .line 786
    .local v4, rate:F
    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 787
    const/high16 v6, 0x447a

    mul-float/2addr v6, v4

    float-to-int v0, v6

    .line 788
    .local v0, duration:I
    const/16 v6, 0x384

    if-lt v0, v6, :cond_3

    .line 789
    add-int/lit16 v0, v0, -0xc8

    .line 793
    :cond_1
    :goto_2
    iput v0, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->verticalDuration:I

    iput v0, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->horizontalDuration:I

    .line 794
    iget v6, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->startY:I

    rsub-int v6, v6, 0x1ea

    iget-object v7, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v7

    iput v6, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->spaceForDiedY:I

    .line 797
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mIlluminants:[Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 798
    .local v5, rcIlluminant:Landroid/graphics/Rect;
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    div-int/lit8 v3, v6, 0x2

    .line 799
    .local v3, middle:I
    iget v6, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->edotType:I

    if-nez v6, :cond_4

    .line 800
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotSmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    .line 807
    :goto_3
    iget-object v6, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int v6, v3, v6

    iput v6, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->spaceForDiedX:I

    .line 809
    iget v6, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->alpha:I

    if-ge v6, v9, :cond_2

    iget-object v6, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->startY:I

    add-int/lit8 v7, v7, -0x32

    add-int/lit8 v7, v7, -0x14

    if-lt v6, v7, :cond_2

    .line 810
    iput v9, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->alpha:I

    .line 812
    :cond_2
    iget-object v6, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iput v6, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->startX:I

    .line 813
    iget-object v6, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iput v6, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->startY:I

    .line 816
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->invalidate()V

    goto :goto_1

    .line 790
    .end local v3           #middle:I
    .end local v5           #rcIlluminant:Landroid/graphics/Rect;
    :cond_3
    const/16 v6, 0x320

    if-lt v0, v6, :cond_1

    .line 791
    add-int/lit8 v0, v0, -0x64

    goto :goto_2

    .line 801
    .restart local v3       #middle:I
    .restart local v5       #rcIlluminant:Landroid/graphics/Rect;
    :cond_4
    iget v6, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->edotType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 802
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotMin:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    goto :goto_3

    .line 804
    :cond_5
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotMiddle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    goto :goto_3

    .line 819
    .end local v0           #duration:I
    .end local v1           #edotInfo:Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;
    .end local v3           #middle:I
    .end local v4           #rate:F
    .end local v5           #rcIlluminant:Landroid/graphics/Rect;
    :cond_6
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 820
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x10

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 822
    return-void
.end method

.method private stopBornEdot()V
    .locals 3

    .prologue
    const/16 v2, 0x3ec

    .line 482
    iget v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mAnimMode:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mAnimMode:I

    .line 483
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 484
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 485
    return-void
.end method

.method private updateBatteryBoxOut()V
    .locals 10

    .prologue
    const/16 v9, 0x3f1

    const/high16 v8, 0x3f80

    const/16 v7, 0x3f0

    const/4 v6, 0x0

    .line 961
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 962
    .local v1, current:J
    iget-wide v4, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryOutStartTime:J

    sub-long v4, v1, v4

    long-to-float v4, v4

    const/high16 v5, 0x4348

    div-float v3, v4, v5

    .line 963
    .local v3, rate:F
    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 964
    mul-float/2addr v3, v3

    .line 965
    const/high16 v4, 0x437f

    mul-float/2addr v4, v3

    float-to-int v0, v4

    .line 966
    .local v0, alpha:I
    rsub-int v4, v0, 0xff

    iput v4, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryAlpha:I

    .line 969
    cmpl-float v4, v3, v8

    if-nez v4, :cond_1

    .line 970
    iget v4, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mAnimMode:I

    and-int/lit16 v4, v4, -0x101

    iput v4, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mAnimMode:I

    .line 971
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mState:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    sget-object v5, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;->noPlugging:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    if-eq v4, v5, :cond_0

    .line 973
    iput-boolean v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mDelayChargingAnimting:Z

    .line 974
    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mDrawBattery:Z

    invoke-virtual {p0, v4, v5}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->setVisible(ZZ)V

    .line 976
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 977
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 978
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 979
    const/16 v4, 0x1000

    iput v4, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mAnimMode:I

    .line 980
    iput v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mPluggingFrameCount:I

    .line 982
    const-string v4, "KeyguardCharging"

    const-string v5, "updateBatteryBoxOut and plug again"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    :goto_0
    return-void

    .line 986
    :cond_0
    invoke-virtual {p0, v6, v6}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->setVisible(ZZ)V

    .line 987
    const-string v4, "KeyguardCharging"

    const-string v5, "updateBatteryBoxOut and The end "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 990
    :cond_1
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryBox:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->invalidate(Landroid/graphics/Rect;)V

    .line 991
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 992
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x10

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private updateEdot()V
    .locals 27

    .prologue
    .line 665
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mAnimMode:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x1

    if-nez v23, :cond_0

    .line 774
    :goto_0
    return-void

    .line 667
    :cond_0
    const/4 v12, 0x1

    .line 668
    .local v12, isAlldead:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryBox:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    .line 669
    .local v15, rcBatteryBox:Landroid/graphics/Rect;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v11, v0, :cond_e

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;

    .line 671
    .local v8, edotInfo:Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;
    iget-boolean v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->isLive:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 672
    const/4 v12, 0x0

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mIlluminants:[Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v16

    .line 676
    .local v16, rcIlluminant:Landroid/graphics/Rect;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    add-int v23, v23, v24

    div-int/lit8 v13, v23, 0x2

    .line 677
    .local v13, middle:I
    iget v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->edotType:I

    move/from16 v23, v0

    if-nez v23, :cond_6

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotSmall:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    sub-int v13, v13, v23

    .line 686
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 687
    .local v6, currentTime:J
    iget-wide v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->verticalStartTime:J

    move-wide/from16 v23, v0

    sub-long v23, v6, v23

    move-wide/from16 v0, v23

    long-to-float v0, v0

    move/from16 v23, v0

    iget v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->verticalDuration:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v21, v23, v24

    .line 688
    .local v21, verticalTime:F
    const/high16 v23, 0x3f80

    move/from16 v0, v21

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v23

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(FF)F

    move-result v21

    .line 689
    const/high16 v23, 0x43f5

    mul-float v23, v23, v21

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v22, v0

    .line 690
    .local v22, yOffset:I
    iget-object v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    move-object/from16 v23, v0

    iget v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->startY:I

    move/from16 v24, v0

    sub-int v24, v24, v22

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 693
    const/16 v23, 0x1cc

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_9

    .line 694
    iget v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->alphaDuration:I

    move/from16 v23, v0

    if-nez v23, :cond_8

    .line 695
    iput-wide v6, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->alphaStartTime:J

    .line 696
    iget-wide v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->verticalStartTime:J

    move-wide/from16 v23, v0

    iget v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->verticalDuration:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    add-long v23, v23, v25

    iget-wide v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->alphaStartTime:J

    move-wide/from16 v25, v0

    sub-long v23, v23, v25

    move-wide/from16 v0, v23

    long-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->alphaDuration:I

    .line 712
    :cond_1
    :goto_3
    iget-wide v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->horizontalStartTime:J

    move-wide/from16 v23, v0

    sub-long v23, v6, v23

    move-wide/from16 v0, v23

    long-to-float v0, v0

    move/from16 v23, v0

    iget v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->horizontalDuration:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v10, v23, v24

    .line 713
    .local v10, horizontalTime:F
    const/high16 v23, 0x3f80

    move/from16 v0, v23

    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    move-result v23

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 714
    const/4 v14, 0x0

    .line 715
    .local v14, offset:I
    iget v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->horizontalAnimType:I

    move/from16 v23, v0

    if-nez v23, :cond_a

    .line 717
    const/high16 v23, 0x3f80

    const/high16 v24, 0x3f80

    sub-float v24, v24, v10

    const/high16 v25, 0x3f80

    sub-float v25, v25, v10

    mul-float v24, v24, v25

    sub-float v23, v23, v24

    iget v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->radius:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v14, v0

    .line 722
    :cond_2
    :goto_4
    iget-boolean v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->toRight:Z

    move/from16 v23, v0

    if-eqz v23, :cond_b

    .line 723
    iget-object v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    move-object/from16 v23, v0

    iget v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->startX:I

    move/from16 v24, v0

    add-int v24, v24, v14

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 728
    :goto_5
    iget-object v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    sub-int v23, v23, v13

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 733
    .local v9, gap:I
    const/high16 v23, 0x3f80

    cmpl-float v23, v10, v23

    if-nez v23, :cond_4

    .line 734
    iget v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->radius:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v9, v0, :cond_d

    .line 735
    iget-object v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->startX:I

    .line 736
    iget-boolean v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->toRight:Z

    move/from16 v23, v0

    if-nez v23, :cond_c

    const/16 v23, 0x1

    :goto_6
    move/from16 v0, v23

    iput-boolean v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->toRight:Z

    .line 737
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->horizontalAnimType:I

    .line 742
    :cond_3
    :goto_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v23

    move-wide/from16 v0, v23

    iput-wide v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->horizontalStartTime:J

    .line 752
    :cond_4
    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x3ff0

    cmpl-double v23, v23, v25

    if-nez v23, :cond_5

    .line 753
    const/16 v23, 0x0

    move/from16 v0, v23

    iput-boolean v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->isLive:Z

    .line 669
    .end local v6           #currentTime:J
    .end local v9           #gap:I
    .end local v10           #horizontalTime:F
    .end local v13           #middle:I
    .end local v14           #offset:I
    .end local v16           #rcIlluminant:Landroid/graphics/Rect;
    .end local v21           #verticalTime:F
    .end local v22           #yOffset:I
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 679
    .restart local v13       #middle:I
    .restart local v16       #rcIlluminant:Landroid/graphics/Rect;
    :cond_6
    iget v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->edotType:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotMin:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    sub-int v13, v13, v23

    goto/16 :goto_2

    .line 682
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotMiddle:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    sub-int v13, v13, v23

    goto/16 :goto_2

    .line 698
    .restart local v6       #currentTime:J
    .restart local v21       #verticalTime:F
    .restart local v22       #yOffset:I
    :cond_8
    iget-wide v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->alphaStartTime:J

    move-wide/from16 v23, v0

    sub-long v23, v6, v23

    move-wide/from16 v0, v23

    long-to-float v0, v0

    move/from16 v23, v0

    iget v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->alphaDuration:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v5, v23, v24

    .line 699
    .local v5, alphaTime:F
    const/high16 v23, 0x3f80

    move/from16 v0, v23

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v23

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 700
    const/high16 v23, 0x437f

    mul-float v23, v23, v5

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    rsub-int v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->alpha:I

    goto/16 :goto_3

    .line 702
    .end local v5           #alphaTime:F
    :cond_9
    iget v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->alphaDuration:I

    move/from16 v23, v0

    if-eqz v23, :cond_1

    .line 703
    iget-wide v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->alphaStartTime:J

    move-wide/from16 v23, v0

    sub-long v23, v6, v23

    move-wide/from16 v0, v23

    long-to-float v0, v0

    move/from16 v23, v0

    iget v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->alphaDuration:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v5, v23, v24

    .line 704
    .restart local v5       #alphaTime:F
    const/high16 v23, 0x3f80

    move/from16 v0, v23

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v23

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 705
    const/high16 v23, 0x437f

    mul-float v23, v23, v5

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->alpha:I

    .line 706
    iget v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->alpha:I

    move/from16 v23, v0

    const/16 v24, 0xff

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 707
    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->alphaDuration:I

    goto/16 :goto_3

    .line 718
    .end local v5           #alphaTime:F
    .restart local v10       #horizontalTime:F
    .restart local v14       #offset:I
    :cond_a
    iget v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->horizontalAnimType:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 720
    mul-float v23, v10, v10

    iget v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->radius:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v14, v0

    goto/16 :goto_4

    .line 725
    :cond_b
    iget-object v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    move-object/from16 v23, v0

    iget v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->startX:I

    move/from16 v24, v0

    sub-int v24, v24, v14

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/Point;->x:I

    goto/16 :goto_5

    .line 736
    .restart local v9       #gap:I
    :cond_c
    const/16 v23, 0x0

    goto/16 :goto_6

    .line 738
    :cond_d
    if-nez v9, :cond_3

    .line 739
    iget-object v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->startX:I

    .line 740
    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v8, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->horizontalAnimType:I

    goto/16 :goto_7

    .line 762
    .end local v6           #currentTime:J
    .end local v8           #edotInfo:Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;
    .end local v9           #gap:I
    .end local v10           #horizontalTime:F
    .end local v13           #middle:I
    .end local v14           #offset:I
    .end local v16           #rcIlluminant:Landroid/graphics/Rect;
    .end local v21           #verticalTime:F
    .end local v22           #yOffset:I
    :cond_e
    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    const/high16 v24, 0x4120

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    sub-int v18, v23, v24

    .line 763
    .local v18, uLeft:I
    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    const/high16 v24, 0x4120

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    add-int v19, v23, v24

    .line 764
    .local v19, uRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryBox:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    add-int/lit8 v20, v23, -0xa

    .line 765
    .local v20, uTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->getBottom()I

    move-result v17

    .line 766
    .local v17, uBottom:I
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->invalidate(IIII)V

    .line 768
    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mAnimMode:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x10

    if-nez v23, :cond_f

    .line 769
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mAnimMode:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, -0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mAnimMode:I

    goto/16 :goto_0

    .line 771
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x3e9

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x3e9

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    const-wide/16 v25, 0x12

    invoke-virtual/range {v23 .. v26}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method private updateEdotForDied()V
    .locals 26

    .prologue
    .line 829
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mAnimMode:I

    move/from16 v22, v0

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x100

    move/from16 v22, v0

    if-nez v22, :cond_0

    .line 886
    :goto_0
    return-void

    .line 831
    :cond_0
    const/4 v3, 0x1

    .line 832
    .local v3, allDied:Z
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_3

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;

    .line 834
    .local v7, edotInfo:Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;
    iget-boolean v0, v7, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->isLive:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 835
    const/4 v3, 0x0

    .line 838
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 839
    .local v5, current:J
    long-to-float v0, v5

    move/from16 v22, v0

    iget-wide v0, v7, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->verticalStartTime:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    long-to-float v0, v0

    move/from16 v23, v0

    sub-float v12, v22, v23

    .line 840
    .local v12, time:F
    long-to-float v0, v5

    move/from16 v22, v0

    iget-wide v0, v7, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->verticalStartTime:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    long-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    iget v0, v7, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->verticalDuration:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v17, v22, v23

    .line 841
    .local v17, verticalRate:F
    const/high16 v22, 0x3f80

    move/from16 v0, v17

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(FF)F

    move-result v17

    .line 842
    mul-float v22, v17, v17

    iget v0, v7, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->spaceForDiedY:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 843
    .local v20, yOffset1:I
    iget v0, v7, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->lastV:F

    move/from16 v22, v0

    mul-float v22, v22, v12

    iget v0, v7, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->lastV:F

    move/from16 v23, v0

    mul-float v23, v23, v12

    mul-float v23, v23, v12

    iget v0, v7, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->verticalDuration:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    sub-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    .line 845
    .local v21, yOffset2:I
    add-int v19, v20, v21

    .line 846
    .local v19, yOffset:I
    iget-object v0, v7, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    move-object/from16 v22, v0

    iget v0, v7, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->startY:I

    move/from16 v23, v0

    sub-int v23, v23, v19

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 849
    iget-wide v0, v7, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->horizontalStartTime:J

    move-wide/from16 v22, v0

    sub-long v22, v5, v22

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    iget v0, v7, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->horizontalDuration:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v8, v22, v23

    .line 850
    .local v8, horizonalRate:F
    const/high16 v22, 0x3f80

    move/from16 v0, v22

    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 851
    mul-float v22, v8, v8

    iget v0, v7, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->spaceForDiedX:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v18, v0

    .line 852
    .local v18, xOffset:I
    iget-object v0, v7, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    move-object/from16 v22, v0

    iget v0, v7, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->startX:I

    move/from16 v23, v0

    add-int v23, v23, v18

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 855
    iget v0, v7, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->horizontalDuration:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v22, v22, v5

    iget-wide v0, v7, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->horizontalStartTime:J

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-float v10, v0

    .line 856
    .local v10, leftTime:F
    const/high16 v22, 0x4316

    cmpg-float v22, v10, v22

    if-gez v22, :cond_1

    .line 857
    const/high16 v22, 0x4316

    div-float v4, v10, v22

    .line 858
    .local v4, alphaRate:F
    const/high16 v22, 0x3f80

    move/from16 v0, v22

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 859
    const/high16 v22, 0x437f

    mul-float v22, v22, v4

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v7, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->alpha:I

    .line 862
    .end local v4           #alphaRate:F
    :cond_1
    const/high16 v22, 0x3f80

    cmpl-float v22, v17, v22

    if-nez v22, :cond_2

    .line 863
    const/16 v22, 0x0

    move/from16 v0, v22

    iput-boolean v0, v7, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->isLive:Z

    .line 832
    .end local v5           #current:J
    .end local v8           #horizonalRate:F
    .end local v10           #leftTime:F
    .end local v12           #time:F
    .end local v17           #verticalRate:F
    .end local v18           #xOffset:I
    .end local v19           #yOffset:I
    .end local v20           #yOffset1:I
    .end local v21           #yOffset2:I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 870
    .end local v7           #edotInfo:Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryBox:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 871
    .local v11, rcBatteryBox:Landroid/graphics/Rect;
    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    const/high16 v23, 0x4120

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    sub-int v14, v22, v23

    .line 872
    .local v14, uLeft:I
    iget v0, v11, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    const/high16 v23, 0x4120

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v15, v22, v23

    .line 873
    .local v15, uRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryBox:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    add-int/lit8 v16, v22, -0xa

    .line 874
    .local v16, uTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->getBottom()I

    move-result v13

    .line 875
    .local v13, uBottom:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v14, v1, v15, v13}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->invalidate(IIII)V

    .line 877
    if-nez v3, :cond_4

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x3ed

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->removeMessages(I)V

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x3ed

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    const-wide/16 v24, 0x10

    invoke-virtual/range {v22 .. v25}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 882
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryOutStartTime:J

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x3f0

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->removeMessages(I)V

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x3f0

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    const-wide/16 v24, 0x10

    invoke-virtual/range {v22 .. v25}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public chargingFull()V
    .locals 4

    .prologue
    const/16 v3, 0x3f2

    .line 414
    const-string v0, "KeyguardCharging"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chargingFull, mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mState:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnimMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mAnimMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mState:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    sget-object v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;->plugged:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    if-ne v0, v1, :cond_1

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->stopBornEdot()V

    .line 419
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mState:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    sget-object v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;->pause:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mAnimMode:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    .line 420
    :cond_2
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 421
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 423
    :cond_3
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mState:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    sget-object v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;->charging:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mState:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    sget-object v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;->pause:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    if-ne v0, v1, :cond_0

    .line 425
    :cond_4
    sget-object v0, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;->plugged:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mState:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    goto :goto_0
.end method

.method public getChargingState()Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;
    .locals 1

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mState:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 336
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryBox:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryAlpha:I

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 337
    iget-boolean v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mDrawBattery:Z

    if-eqz v6, :cond_0

    .line 338
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryBox:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 339
    :cond_0
    iget v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryLevel:I

    const/16 v7, 0xa

    if-ge v6, v7, :cond_3

    .line 340
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mWarningBatteryFill:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryAlpha:I

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 341
    iget-boolean v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mDrawBattery:Z

    if-eqz v6, :cond_1

    .line 342
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mWarningBatteryFill:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 351
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 352
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;

    .line 353
    .local v2, edotInfo:Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;
    iget-boolean v6, v2, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->isLive:Z

    if-eqz v6, :cond_2

    .line 354
    iget v6, v2, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->edotType:I

    packed-switch v6, :pswitch_data_0

    .line 365
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotMiddle:Landroid/graphics/drawable/Drawable;

    .line 368
    .local v1, edot:Landroid/graphics/drawable/Drawable;
    :goto_2
    iget-object v6, v2, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int v5, v6, v7

    .line 369
    .local v5, r:I
    iget-object v6, v2, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int v0, v6, v7

    .line 370
    .local v0, b:I
    iget-object v6, v2, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, v2, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v6, v7, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 371
    iget v6, v2, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->alpha:I

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 372
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 351
    .end local v0           #b:I
    .end local v1           #edot:Landroid/graphics/drawable/Drawable;
    .end local v5           #r:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 344
    .end local v2           #edotInfo:Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;
    .end local v3           #i:I
    :cond_3
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryFill:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryAlpha:I

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 345
    iget-boolean v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mDrawBattery:Z

    if-eqz v6, :cond_1

    .line 346
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryFill:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 356
    .restart local v2       #edotInfo:Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;
    .restart local v3       #i:I
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotSmall:Landroid/graphics/drawable/Drawable;

    .line 357
    .restart local v1       #edot:Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 359
    .end local v1           #edot:Landroid/graphics/drawable/Drawable;
    :pswitch_1
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotMin:Landroid/graphics/drawable/Drawable;

    .line 360
    .restart local v1       #edot:Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 362
    .end local v1           #edot:Landroid/graphics/drawable/Drawable;
    :pswitch_2
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mEdotMiddle:Landroid/graphics/drawable/Drawable;

    .line 363
    .restart local v1       #edot:Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 377
    .end local v1           #edot:Landroid/graphics/drawable/Drawable;
    .end local v2           #edotInfo:Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;
    :cond_4
    const/4 v3, 0x0

    :goto_3
    const/4 v6, 0x4

    if-ge v3, v6, :cond_5

    .line 378
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mIlluminantInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/internal/policy/impl/ChargingEdotView$IlluminantInfo;

    .line 379
    .local v4, info:Lcom/meizu/internal/policy/impl/ChargingEdotView$IlluminantInfo;
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mIlluminants:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v3

    iget v7, v4, Lcom/meizu/internal/policy/impl/ChargingEdotView$IlluminantInfo;->mAlpha:I

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 387
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mIlluminants:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v3

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 377
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 390
    .end local v4           #info:Lcom/meizu/internal/policy/impl/ChargingEdotView$IlluminantInfo;
    :cond_5
    return-void

    .line 354
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 20
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 293
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mAnimMode:I

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x100

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 332
    :cond_0
    return-void

    .line 295
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryBox:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 296
    .local v8, dwBatteryBox:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryBox:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 299
    .local v4, dhBatteryBox:I
    sub-int v17, p4, v8

    add-int v17, v17, p2

    div-int/lit8 v14, v17, 0x2

    .line 300
    .local v14, l:I
    move/from16 v16, p3

    .line 301
    .local v16, t:I
    add-int v15, v14, v8

    .line 302
    .local v15, r:I
    add-int v3, v16, v4

    .line 303
    .local v3, b:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryBox:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v14, v1, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryFill:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 307
    .local v9, dwBatteryFill:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryFill:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 308
    .local v5, dhBatteryFill:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mWarningBatteryFill:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 309
    .local v7, dhWarningBatteryFill:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryLevel:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x5c

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    const/high16 v18, 0x42c8

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v11, v0

    .line 310
    .local v11, fillHeight:I
    int-to-float v0, v11

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v11, v0

    .line 311
    if-ge v11, v5, :cond_2

    move v11, v5

    .line 312
    :cond_2
    sub-int v17, p4, v9

    add-int v17, v17, p2

    div-int/lit8 v14, v17, 0x2

    .line 313
    add-int v15, v14, v9

    .line 314
    const/high16 v17, 0x4130

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    sub-int v3, v3, v17

    .line 315
    sub-int v16, v3, v11

    .line 316
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryLevel:I

    move/from16 v17, v0

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mWarningBatteryFill:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    sub-int v18, v3, v7

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v14, v1, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 322
    :goto_0
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v12, v0, :cond_0

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mIlluminantInfoList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/meizu/internal/policy/impl/ChargingEdotView$IlluminantInfo;

    .line 324
    .local v13, info:Lcom/meizu/internal/policy/impl/ChargingEdotView$IlluminantInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mIlluminants:[Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    aget-object v17, v17, v12

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 325
    .local v10, dwIlluminant:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mIlluminants:[Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    aget-object v17, v17, v12

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 326
    .local v6, dhIlluminant:I
    sub-int v17, p4, v10

    add-int v17, v17, p2

    div-int/lit8 v14, v17, 0x2

    .line 327
    add-int v15, v14, v10

    .line 328
    iget-object v0, v13, Lcom/meizu/internal/policy/impl/ChargingEdotView$IlluminantInfo;->mPosition:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v14, v0, Landroid/graphics/Point;->x:I

    .line 329
    iget-object v0, v13, Lcom/meizu/internal/policy/impl/ChargingEdotView$IlluminantInfo;->mPosition:Landroid/graphics/Point;

    move-object/from16 v17, v0

    sub-int v18, p5, v6

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mIlluminants:[Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    aget-object v17, v17, v12

    sub-int v18, p5, v6

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, p5

    invoke-virtual {v0, v14, v1, v15, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 322
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 319
    .end local v6           #dhIlluminant:I
    .end local v10           #dwIlluminant:I
    .end local v12           #i:I
    .end local v13           #info:Lcom/meizu/internal/policy/impl/ChargingEdotView$IlluminantInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryFill:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v14, v1, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public pauseBornAndUpdateEdot()V
    .locals 4

    .prologue
    .line 469
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mState:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    sget-object v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;->charging:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    if-ne v0, v1, :cond_0

    .line 470
    sget-object v0, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;->pause:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mState:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    .line 471
    iget v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mAnimMode:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mAnimMode:I

    .line 472
    iget v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mAnimMode:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mAnimMode:I

    .line 473
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 474
    const-string v0, "KeyguardCharging"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StopEdot anim time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_0
    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 7
    .parameter "batteryLevel"

    .prologue
    const/16 v6, 0xa

    .line 532
    iget v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryLevel:I

    if-ne v3, p1, :cond_0

    .line 555
    :goto_0
    return-void

    .line 535
    :cond_0
    iget v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryLevel:I

    if-ge v3, v6, :cond_1

    .line 536
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mWarningBatteryFill:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 541
    .local v2, oldBound:Landroid/graphics/Rect;
    :goto_1
    iput p1, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryLevel:I

    .line 542
    iget v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryLevel:I

    mul-int/lit8 v3, v3, 0x5c

    int-to-float v3, v3

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c8

    div-float/2addr v3, v4

    float-to-int v1, v3

    .line 543
    .local v1, fillHeight:I
    int-to-float v3, v1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v1, v3

    .line 545
    iget v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryLevel:I

    if-ge v3, v6, :cond_2

    .line 546
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mWarningBatteryFill:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 547
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mWarningBatteryFill:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 554
    :goto_2
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->invalidate()V

    goto :goto_0

    .line 538
    .end local v1           #fillHeight:I
    .end local v2           #oldBound:Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryFill:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .restart local v2       #oldBound:Landroid/graphics/Rect;
    goto :goto_1

    .line 549
    .restart local v1       #fillHeight:I
    :cond_2
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryFill:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 550
    .local v0, dhBatteryFill:I
    if-ge v1, v0, :cond_3

    move v1, v0

    .line 551
    :cond_3
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 552
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mBatteryFill:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_2
.end method

.method public setVisible(ZZ)V
    .locals 1
    .parameter "isVisible"
    .parameter "batteryShow"

    .prologue
    .line 890
    if-eqz p1, :cond_0

    .line 891
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->setVisibility(I)V

    .line 892
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->requestLayout()V

    .line 896
    :goto_0
    iput-boolean p2, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mDrawBattery:Z

    .line 897
    return-void

    .line 894
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->setVisibility(I)V

    goto :goto_0
.end method

.method public startChargingEdot()V
    .locals 5

    .prologue
    const/16 v4, 0x3ea

    const/16 v3, 0x3e9

    .line 433
    const-string v0, "KeyguardCharging"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startChargingEdot, mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mState:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnimMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mAnimMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mState:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    sget-object v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;->noPlugging:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    if-ne v0, v1, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    iget v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mAnimMode:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 438
    const/16 v0, 0x11

    iput v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mAnimMode:I

    .line 439
    sget-object v0, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;->charging:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mState:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    .line 441
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 442
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 443
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 444
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 446
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->renewEdotStartTime()V

    .line 447
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 448
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public startPlugging(Z)V
    .locals 3
    .parameter "isCharing"

    .prologue
    const/16 v2, 0x3f1

    .line 394
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mState:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    sget-object v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;->noPlugging:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    if-eq v0, v1, :cond_0

    .line 408
    :goto_0
    return-void

    .line 397
    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;->charging:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    :goto_1
    iput-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mState:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    .line 400
    iget v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mAnimMode:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2

    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mDelayChargingAnimting:Z

    goto :goto_0

    .line 397
    :cond_1
    sget-object v0, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;->plugged:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    goto :goto_1

    .line 403
    :cond_2
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 404
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 405
    const/16 v0, 0x1000

    iput v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mAnimMode:I

    .line 406
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mPluggingFrameCount:I

    goto :goto_0
.end method

.method public stopChargingAndPlugin()V
    .locals 2

    .prologue
    .line 506
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mDelayChargingAnimting:Z

    .line 507
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mState:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    sget-object v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;->noPlugging:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    if-ne v0, v1, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    sget-object v0, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;->noPlugging:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mState:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    .line 511
    iget v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView;->mAnimMode:I

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_0

    .line 514
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->realStopChargingAndPlugin()V

    goto :goto_0
.end method
