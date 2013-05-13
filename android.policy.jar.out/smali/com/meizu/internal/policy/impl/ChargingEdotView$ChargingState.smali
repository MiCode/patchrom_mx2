.class public final enum Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;
.super Ljava/lang/Enum;
.source "ChargingEdotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/ChargingEdotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChargingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

.field public static final enum charging:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

.field public static final enum noPlugging:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

.field public static final enum pause:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

.field public static final enum plugged:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    new-instance v0, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    const-string v1, "noPlugging"

    invoke-direct {v0, v1, v2}, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;->noPlugging:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    new-instance v0, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    const-string v1, "charging"

    invoke-direct {v0, v1, v3}, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;->charging:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    new-instance v0, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    const-string v1, "pause"

    invoke-direct {v0, v1, v4}, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;->pause:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    new-instance v0, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    const-string v1, "plugged"

    invoke-direct {v0, v1, v5}, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;->plugged:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    .line 93
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    sget-object v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;->noPlugging:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;->charging:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;->pause:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;->plugged:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;->$VALUES:[Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;
    .locals 1
    .parameter "name"

    .prologue
    .line 93
    const-class v0, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    return-object v0
.end method

.method public static values()[Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;->$VALUES:[Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    invoke-virtual {v0}, [Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    return-object v0
.end method
