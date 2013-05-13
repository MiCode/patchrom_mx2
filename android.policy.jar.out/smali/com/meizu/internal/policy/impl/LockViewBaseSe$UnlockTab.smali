.class public final enum Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;
.super Ljava/lang/Enum;
.source "LockViewBaseSe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/LockViewBaseSe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnlockTab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

.field public static final enum camera:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

.field public static final enum email:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

.field public static final enum mms:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

.field public static final enum normal:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

.field public static final enum phone:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

.field public static final enum topApp:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    const-string v1, "normal"

    invoke-direct {v0, v1, v3}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->normal:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    new-instance v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    const-string v1, "topApp"

    invoke-direct {v0, v1, v4}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->topApp:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    new-instance v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    const-string v1, "phone"

    invoke-direct {v0, v1, v5}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->phone:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    new-instance v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    const-string v1, "mms"

    invoke-direct {v0, v1, v6}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->mms:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    new-instance v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    const-string v1, "camera"

    invoke-direct {v0, v1, v7}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->camera:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    new-instance v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    const-string v1, "email"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->email:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    .line 53
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->normal:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->topApp:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->phone:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->mms:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    aput-object v1, v0, v6

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->camera:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->email:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->$VALUES:[Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;
    .locals 1
    .parameter "name"

    .prologue
    .line 53
    const-class v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    return-object v0
.end method

.method public static values()[Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->$VALUES:[Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    invoke-virtual {v0}, [Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    return-object v0
.end method
