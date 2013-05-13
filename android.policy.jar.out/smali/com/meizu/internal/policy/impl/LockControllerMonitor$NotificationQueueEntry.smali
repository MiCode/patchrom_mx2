.class Lcom/meizu/internal/policy/impl/LockControllerMonitor$NotificationQueueEntry;
.super Ljava/lang/Object;
.source "LockControllerMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/LockControllerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationQueueEntry"
.end annotation


# instance fields
.field key:Landroid/os/IBinder;

.field notification:Lcom/android/internal/statusbar/StatusBarNotification;

.field final synthetic this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;


# direct methods
.method private constructor <init>(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$NotificationQueueEntry;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
