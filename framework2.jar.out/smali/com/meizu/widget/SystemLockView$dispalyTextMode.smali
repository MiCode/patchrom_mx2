.class final enum Lcom/meizu/widget/SystemLockView$dispalyTextMode;
.super Ljava/lang/Enum;
.source "SystemLockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/SystemLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "dispalyTextMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/widget/SystemLockView$dispalyTextMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/widget/SystemLockView$dispalyTextMode;

.field public static final enum NORMAL:Lcom/meizu/widget/SystemLockView$dispalyTextMode;

.field public static final enum PASSWORD:Lcom/meizu/widget/SystemLockView$dispalyTextMode;

.field public static final enum SPECIAL:Lcom/meizu/widget/SystemLockView$dispalyTextMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    new-instance v0, Lcom/meizu/widget/SystemLockView$dispalyTextMode;

    const-string v1, "PASSWORD"

    invoke-direct {v0, v1, v2}, Lcom/meizu/widget/SystemLockView$dispalyTextMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/widget/SystemLockView$dispalyTextMode;->PASSWORD:Lcom/meizu/widget/SystemLockView$dispalyTextMode;

    new-instance v0, Lcom/meizu/widget/SystemLockView$dispalyTextMode;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/meizu/widget/SystemLockView$dispalyTextMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/widget/SystemLockView$dispalyTextMode;->NORMAL:Lcom/meizu/widget/SystemLockView$dispalyTextMode;

    new-instance v0, Lcom/meizu/widget/SystemLockView$dispalyTextMode;

    const-string v1, "SPECIAL"

    invoke-direct {v0, v1, v4}, Lcom/meizu/widget/SystemLockView$dispalyTextMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/widget/SystemLockView$dispalyTextMode;->SPECIAL:Lcom/meizu/widget/SystemLockView$dispalyTextMode;

    .line 104
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/meizu/widget/SystemLockView$dispalyTextMode;

    sget-object v1, Lcom/meizu/widget/SystemLockView$dispalyTextMode;->PASSWORD:Lcom/meizu/widget/SystemLockView$dispalyTextMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/widget/SystemLockView$dispalyTextMode;->NORMAL:Lcom/meizu/widget/SystemLockView$dispalyTextMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/widget/SystemLockView$dispalyTextMode;->SPECIAL:Lcom/meizu/widget/SystemLockView$dispalyTextMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/meizu/widget/SystemLockView$dispalyTextMode;->$VALUES:[Lcom/meizu/widget/SystemLockView$dispalyTextMode;

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
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/widget/SystemLockView$dispalyTextMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 104
    const-class v0, Lcom/meizu/widget/SystemLockView$dispalyTextMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/SystemLockView$dispalyTextMode;

    return-object v0
.end method

.method public static values()[Lcom/meizu/widget/SystemLockView$dispalyTextMode;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/meizu/widget/SystemLockView$dispalyTextMode;->$VALUES:[Lcom/meizu/widget/SystemLockView$dispalyTextMode;

    invoke-virtual {v0}, [Lcom/meizu/widget/SystemLockView$dispalyTextMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/widget/SystemLockView$dispalyTextMode;

    return-object v0
.end method
