.class Lcom/android/server/am/UndertableStartingManagerService$1;
.super Landroid/os/Handler;
.source "UndertableStartingManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UndertableStartingManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/UndertableStartingManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/UndertableStartingManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/server/am/UndertableStartingManagerService$1;->this$0:Lcom/android/server/am/UndertableStartingManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, ne:Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 66
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #ne:Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;
    check-cast v0, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;

    .line 67
    .restart local v0       #ne:Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;
    iget-object v1, p0, Lcom/android/server/am/UndertableStartingManagerService$1;->this$0:Lcom/android/server/am/UndertableStartingManagerService;

    #calls: Lcom/android/server/am/UndertableStartingManagerService;->handleAddNewNotification(Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;)V
    invoke-static {v1, v0}, Lcom/android/server/am/UndertableStartingManagerService;->access$000(Lcom/android/server/am/UndertableStartingManagerService;Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;)V

    goto :goto_0

    .line 70
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #ne:Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;
    check-cast v0, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;

    .line 71
    .restart local v0       #ne:Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;
    iget-object v1, p0, Lcom/android/server/am/UndertableStartingManagerService$1;->this$0:Lcom/android/server/am/UndertableStartingManagerService;

    #calls: Lcom/android/server/am/UndertableStartingManagerService;->handleUpdateNewNotification(Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;)V
    invoke-static {v1, v0}, Lcom/android/server/am/UndertableStartingManagerService;->access$100(Lcom/android/server/am/UndertableStartingManagerService;Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;)V

    goto :goto_0

    .line 74
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #ne:Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;
    check-cast v0, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;

    .line 75
    .restart local v0       #ne:Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;
    iget-object v1, p0, Lcom/android/server/am/UndertableStartingManagerService$1;->this$0:Lcom/android/server/am/UndertableStartingManagerService;

    #calls: Lcom/android/server/am/UndertableStartingManagerService;->handleRemoveNewNotification(Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;)V
    invoke-static {v1, v0}, Lcom/android/server/am/UndertableStartingManagerService;->access$200(Lcom/android/server/am/UndertableStartingManagerService;Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;)V

    goto :goto_0

    .line 78
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/am/UndertableStartingManagerService$1;->this$0:Lcom/android/server/am/UndertableStartingManagerService;

    #calls: Lcom/android/server/am/UndertableStartingManagerService;->startList()V
    invoke-static {v1}, Lcom/android/server/am/UndertableStartingManagerService;->access$300(Lcom/android/server/am/UndertableStartingManagerService;)V

    .line 79
    iget-object v1, p0, Lcom/android/server/am/UndertableStartingManagerService$1;->this$0:Lcom/android/server/am/UndertableStartingManagerService;

    #getter for: Lcom/android/server/am/UndertableStartingManagerService;->mAutoStartingWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/am/UndertableStartingManagerService;->access$400(Lcom/android/server/am/UndertableStartingManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
