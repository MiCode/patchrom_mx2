.class Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;
.super Ljava/lang/Object;
.source "UndertableStartingManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UndertableStartingManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationQueueEntry"
.end annotation


# instance fields
.field key:Landroid/os/IBinder;

.field notification:Lcom/android/internal/statusbar/StatusBarNotification;

.field final synthetic this$0:Lcom/android/server/am/UndertableStartingManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/am/UndertableStartingManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;->this$0:Lcom/android/server/am/UndertableStartingManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/UndertableStartingManagerService;Lcom/android/server/am/UndertableStartingManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;-><init>(Lcom/android/server/am/UndertableStartingManagerService;)V

    return-void
.end method
