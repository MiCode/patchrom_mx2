.class final enum Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;
.super Ljava/lang/Enum;
.source "LockScreenSe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/LockScreenSe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ANIM_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;

.field public static final enum LOCK:Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;

.field public static final enum NONE:Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;

.field public static final enum UNLOCK:Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;->NONE:Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;

    .line 38
    new-instance v0, Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;

    const-string v1, "LOCK"

    invoke-direct {v0, v1, v3}, Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;->LOCK:Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;

    .line 39
    new-instance v0, Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;

    const-string v1, "UNLOCK"

    invoke-direct {v0, v1, v4}, Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;->UNLOCK:Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;->NONE:Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;->LOCK:Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;->UNLOCK:Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;->$VALUES:[Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;
    .locals 1
    .parameter "name"

    .prologue
    .line 36
    const-class v0, Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;

    return-object v0
.end method

.method public static values()[Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;->$VALUES:[Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;

    invoke-virtual {v0}, [Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;

    return-object v0
.end method
