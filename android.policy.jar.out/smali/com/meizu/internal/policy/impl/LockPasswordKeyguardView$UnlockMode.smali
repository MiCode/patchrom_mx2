.class public final enum Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;
.super Ljava/lang/Enum;
.source "LockPasswordKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnlockMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

.field public static final enum FindPhone:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

.field public static final enum PasswordOrSimPin:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

.field public static final enum Unknown:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    new-instance v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    const-string v1, "PasswordOrSimPin"

    invoke-direct {v0, v1, v2}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->PasswordOrSimPin:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    .line 107
    new-instance v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    const-string v1, "FindPhone"

    invoke-direct {v0, v1, v3}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->FindPhone:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    .line 112
    new-instance v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v4}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->Unknown:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    .line 98
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->PasswordOrSimPin:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->FindPhone:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->Unknown:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->$VALUES:[Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

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
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 98
    const-class v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    return-object v0
.end method

.method public static values()[Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->$VALUES:[Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    invoke-virtual {v0}, [Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    return-object v0
.end method
