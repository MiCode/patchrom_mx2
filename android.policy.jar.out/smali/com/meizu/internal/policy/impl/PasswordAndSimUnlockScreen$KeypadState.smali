.class final enum Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;
.super Ljava/lang/Enum;
.source "PasswordAndSimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "KeypadState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

.field public static final enum password:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

.field public static final enum sim:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-instance v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    const-string v1, "sim"

    invoke-direct {v0, v1, v2}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;->sim:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    new-instance v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    const-string v1, "password"

    invoke-direct {v0, v1, v3}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;->password:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    sget-object v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;->sim:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;->password:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;->$VALUES:[Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

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
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;
    .locals 1
    .parameter "name"

    .prologue
    .line 69
    const-class v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    return-object v0
.end method

.method public static values()[Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;->$VALUES:[Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    invoke-virtual {v0}, [Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    return-object v0
.end method
