.class Landroid/net/wifi/WifiStateMachine$SupplicantStartingState$1;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->processMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;)V
    .locals 0
    .parameter

    .prologue
    .line 2410
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2414
    const-wide/16 v0, 0x1f40

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2418
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->startScan(Z)V

    .line 2419
    return-void

    .line 2415
    :catch_0
    move-exception v0

    goto :goto_0
.end method
