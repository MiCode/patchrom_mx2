.class Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;
.super Ljava/lang/Object;
.source "ChargingEdotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/ChargingEdotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EdotInfo"
.end annotation


# instance fields
.field public alpha:I

.field public alphaDuration:I

.field public alphaStartTime:J

.field public edotType:I

.field public horizontalAnimType:I

.field public horizontalDuration:I

.field public horizontalStartTime:J

.field public isLive:Z

.field public lastV:F

.field public mEdotPosition:Landroid/graphics/Point;

.field public radius:I

.field public spaceForDiedX:I

.field public spaceForDiedY:I

.field public startX:I

.field public startY:I

.field final synthetic this$0:Lcom/meizu/internal/policy/impl/ChargingEdotView;

.field public toRight:Z

.field public verticalDuration:I

.field public verticalStartTime:J


# direct methods
.method public constructor <init>(Lcom/meizu/internal/policy/impl/ChargingEdotView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 191
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->this$0:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    .line 177
    iput-boolean v1, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->toRight:Z

    .line 178
    iput v1, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->radius:I

    .line 192
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 193
    iput-boolean v1, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->isLive:Z

    .line 195
    iput v1, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->alphaDuration:I

    .line 196
    iput v1, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->verticalDuration:I

    .line 197
    iput v1, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->horizontalDuration:I

    .line 199
    const/16 v0, 0xff

    iput v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotInfo;->alpha:I

    .line 200
    return-void
.end method
