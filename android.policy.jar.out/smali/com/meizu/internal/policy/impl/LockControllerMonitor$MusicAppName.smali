.class public final enum Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;
.super Ljava/lang/Enum;
.source "LockControllerMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/LockControllerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MusicAppName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;

.field public static final enum MUSICONLINE_APP:Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;

.field public static final enum MUSIC_APP:Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-instance v0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;

    const-string v1, "MUSIC_APP"

    invoke-direct {v0, v1, v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;->MUSIC_APP:Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;

    .line 73
    new-instance v0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;

    const-string v1, "MUSICONLINE_APP"

    invoke-direct {v0, v1, v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;->MUSICONLINE_APP:Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;->MUSIC_APP:Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;->MUSICONLINE_APP:Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;

    aput-object v1, v0, v3

    sput-object v0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;->$VALUES:[Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;

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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;
    .locals 1
    .parameter "name"

    .prologue
    .line 71
    const-class v0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;

    return-object v0
.end method

.method public static values()[Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;->$VALUES:[Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;

    invoke-virtual {v0}, [Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;

    return-object v0
.end method
