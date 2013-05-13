.class Lcom/meizu/widget/MultiWaveView$Ease$Quad;
.super Ljava/lang/Object;
.source "MultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/MultiWaveView$Ease;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Quad"
.end annotation


# static fields
.field public static final easeIn:Landroid/animation/TimeInterpolator;

.field public static final easeInOut:Landroid/animation/TimeInterpolator;

.field public static final easeOut:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1457
    new-instance v0, Lcom/meizu/widget/MultiWaveView$Ease$Quad$1;

    invoke-direct {v0}, Lcom/meizu/widget/MultiWaveView$Ease$Quad$1;-><init>()V

    sput-object v0, Lcom/meizu/widget/MultiWaveView$Ease$Quad;->easeIn:Landroid/animation/TimeInterpolator;

    .line 1462
    new-instance v0, Lcom/meizu/widget/MultiWaveView$Ease$Quad$2;

    invoke-direct {v0}, Lcom/meizu/widget/MultiWaveView$Ease$Quad$2;-><init>()V

    sput-object v0, Lcom/meizu/widget/MultiWaveView$Ease$Quad;->easeOut:Landroid/animation/TimeInterpolator;

    .line 1467
    new-instance v0, Lcom/meizu/widget/MultiWaveView$Ease$Quad$3;

    invoke-direct {v0}, Lcom/meizu/widget/MultiWaveView$Ease$Quad$3;-><init>()V

    sput-object v0, Lcom/meizu/widget/MultiWaveView$Ease$Quad;->easeInOut:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1456
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
