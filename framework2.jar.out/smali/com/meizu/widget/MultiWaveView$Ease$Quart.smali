.class Lcom/meizu/widget/MultiWaveView$Ease$Quart;
.super Ljava/lang/Object;
.source "MultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/MultiWaveView$Ease;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Quart"
.end annotation


# static fields
.field public static final easeIn:Landroid/animation/TimeInterpolator;

.field public static final easeInOut:Landroid/animation/TimeInterpolator;

.field public static final easeOut:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1473
    new-instance v0, Lcom/meizu/widget/MultiWaveView$Ease$Quart$1;

    invoke-direct {v0}, Lcom/meizu/widget/MultiWaveView$Ease$Quart$1;-><init>()V

    sput-object v0, Lcom/meizu/widget/MultiWaveView$Ease$Quart;->easeIn:Landroid/animation/TimeInterpolator;

    .line 1478
    new-instance v0, Lcom/meizu/widget/MultiWaveView$Ease$Quart$2;

    invoke-direct {v0}, Lcom/meizu/widget/MultiWaveView$Ease$Quart$2;-><init>()V

    sput-object v0, Lcom/meizu/widget/MultiWaveView$Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    .line 1483
    new-instance v0, Lcom/meizu/widget/MultiWaveView$Ease$Quart$3;

    invoke-direct {v0}, Lcom/meizu/widget/MultiWaveView$Ease$Quart$3;-><init>()V

    sput-object v0, Lcom/meizu/widget/MultiWaveView$Ease$Quart;->easeInOut:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1472
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
