.class Lcom/meizu/internal/policy/impl/ChargingEdotView$IlluminantInfo;
.super Ljava/lang/Object;
.source "ChargingEdotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/ChargingEdotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IlluminantInfo"
.end annotation


# instance fields
.field public mAlpha:I

.field public mPosition:Landroid/graphics/Point;

.field public mScaleX:F

.field final synthetic this$0:Lcom/meizu/internal/policy/impl/ChargingEdotView;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/ChargingEdotView;)V
    .locals 1
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView$IlluminantInfo;->this$0:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 206
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView$IlluminantInfo;->mPosition:Landroid/graphics/Point;

    .line 207
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView$IlluminantInfo;->mScaleX:F

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView$IlluminantInfo;->mAlpha:I

    return-void
.end method
