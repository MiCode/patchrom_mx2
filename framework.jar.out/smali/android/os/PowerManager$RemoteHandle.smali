.class public final enum Landroid/os/PowerManager$RemoteHandle;
.super Ljava/lang/Enum;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RemoteHandle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/os/PowerManager$RemoteHandle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/os/PowerManager$RemoteHandle;

.field public static final enum Lock:Landroid/os/PowerManager$RemoteHandle;

.field public static final enum None:Landroid/os/PowerManager$RemoteHandle;

.field public static final enum Root:Landroid/os/PowerManager$RemoteHandle;

.field public static final enum Unlock:Landroid/os/PowerManager$RemoteHandle;

.field public static final enum Unroot:Landroid/os/PowerManager$RemoteHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 233
    new-instance v0, Landroid/os/PowerManager$RemoteHandle;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Landroid/os/PowerManager$RemoteHandle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/PowerManager$RemoteHandle;->None:Landroid/os/PowerManager$RemoteHandle;

    new-instance v0, Landroid/os/PowerManager$RemoteHandle;

    const-string v1, "Root"

    invoke-direct {v0, v1, v3}, Landroid/os/PowerManager$RemoteHandle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/PowerManager$RemoteHandle;->Root:Landroid/os/PowerManager$RemoteHandle;

    new-instance v0, Landroid/os/PowerManager$RemoteHandle;

    const-string v1, "Unroot"

    invoke-direct {v0, v1, v4}, Landroid/os/PowerManager$RemoteHandle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/PowerManager$RemoteHandle;->Unroot:Landroid/os/PowerManager$RemoteHandle;

    new-instance v0, Landroid/os/PowerManager$RemoteHandle;

    const-string v1, "Lock"

    invoke-direct {v0, v1, v5}, Landroid/os/PowerManager$RemoteHandle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/PowerManager$RemoteHandle;->Lock:Landroid/os/PowerManager$RemoteHandle;

    new-instance v0, Landroid/os/PowerManager$RemoteHandle;

    const-string v1, "Unlock"

    invoke-direct {v0, v1, v6}, Landroid/os/PowerManager$RemoteHandle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/PowerManager$RemoteHandle;->Unlock:Landroid/os/PowerManager$RemoteHandle;

    .line 232
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/os/PowerManager$RemoteHandle;

    sget-object v1, Landroid/os/PowerManager$RemoteHandle;->None:Landroid/os/PowerManager$RemoteHandle;

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/PowerManager$RemoteHandle;->Root:Landroid/os/PowerManager$RemoteHandle;

    aput-object v1, v0, v3

    sget-object v1, Landroid/os/PowerManager$RemoteHandle;->Unroot:Landroid/os/PowerManager$RemoteHandle;

    aput-object v1, v0, v4

    sget-object v1, Landroid/os/PowerManager$RemoteHandle;->Lock:Landroid/os/PowerManager$RemoteHandle;

    aput-object v1, v0, v5

    sget-object v1, Landroid/os/PowerManager$RemoteHandle;->Unlock:Landroid/os/PowerManager$RemoteHandle;

    aput-object v1, v0, v6

    sput-object v0, Landroid/os/PowerManager$RemoteHandle;->$VALUES:[Landroid/os/PowerManager$RemoteHandle;

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
    .line 232
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/os/PowerManager$RemoteHandle;
    .locals 1
    .parameter "name"

    .prologue
    .line 232
    const-class v0, Landroid/os/PowerManager$RemoteHandle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager$RemoteHandle;

    return-object v0
.end method

.method public static values()[Landroid/os/PowerManager$RemoteHandle;
    .locals 1

    .prologue
    .line 232
    sget-object v0, Landroid/os/PowerManager$RemoteHandle;->$VALUES:[Landroid/os/PowerManager$RemoteHandle;

    invoke-virtual {v0}, [Landroid/os/PowerManager$RemoteHandle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/PowerManager$RemoteHandle;

    return-object v0
.end method
