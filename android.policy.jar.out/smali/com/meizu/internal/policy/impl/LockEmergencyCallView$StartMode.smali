.class public final enum Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;
.super Ljava/lang/Enum;
.source "LockEmergencyCallView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/LockEmergencyCallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StartMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;

.field public static final enum LockPhone:Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;

.field public static final enum LockPin:Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;

.field public static final enum LockPuk:Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;

    const-string v1, "LockPhone"

    invoke-direct {v0, v1, v2}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;->LockPhone:Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;

    .line 36
    new-instance v0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;

    const-string v1, "LockPin"

    invoke-direct {v0, v1, v3}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;->LockPin:Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;

    .line 37
    new-instance v0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;

    const-string v1, "LockPuk"

    invoke-direct {v0, v1, v4}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;->LockPuk:Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;->LockPhone:Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;->LockPin:Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;->LockPuk:Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;->$VALUES:[Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 34
    const-class v0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;

    return-object v0
.end method

.method public static values()[Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;->$VALUES:[Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;

    invoke-virtual {v0}, [Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;

    return-object v0
.end method
