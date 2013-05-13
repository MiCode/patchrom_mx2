.class final enum Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;
.super Ljava/lang/Enum;
.source "LockViewBaseSe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/LockViewBaseSe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ANIM_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

.field public static final enum LOCK_H:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

.field public static final enum LOCK_V:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

.field public static final enum NONE:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

.field public static final enum UNLOCK_H:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

.field public static final enum UNLOCK_V:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->NONE:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    .line 59
    new-instance v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    const-string v1, "LOCK_V"

    invoke-direct {v0, v1, v3}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->LOCK_V:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    .line 60
    new-instance v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    const-string v1, "UNLOCK_V"

    invoke-direct {v0, v1, v4}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->UNLOCK_V:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    .line 61
    new-instance v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    const-string v1, "LOCK_H"

    invoke-direct {v0, v1, v5}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->LOCK_H:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    .line 62
    new-instance v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    const-string v1, "UNLOCK_H"

    invoke-direct {v0, v1, v6}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->UNLOCK_H:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    .line 57
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->NONE:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->LOCK_V:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->UNLOCK_V:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->LOCK_H:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->UNLOCK_H:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->$VALUES:[Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;
    .locals 1
    .parameter "name"

    .prologue
    .line 57
    const-class v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    return-object v0
.end method

.method public static values()[Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->$VALUES:[Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    invoke-virtual {v0}, [Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    return-object v0
.end method
