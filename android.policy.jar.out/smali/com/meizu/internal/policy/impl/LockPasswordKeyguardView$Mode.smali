.class final enum Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;
.super Ljava/lang/Enum;
.source "LockPasswordKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

.field public static final enum LockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

.field public static final enum UnlockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    new-instance v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    const-string v1, "LockScreen"

    invoke-direct {v0, v1, v2}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->LockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    .line 92
    new-instance v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    const-string v1, "UnlockScreen"

    invoke-direct {v0, v1, v3}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->UnlockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->LockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->UnlockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->$VALUES:[Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

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
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;
    .locals 1
    .parameter "name"

    .prologue
    .line 90
    const-class v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    return-object v0
.end method

.method public static values()[Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->$VALUES:[Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    invoke-virtual {v0}, [Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    return-object v0
.end method
