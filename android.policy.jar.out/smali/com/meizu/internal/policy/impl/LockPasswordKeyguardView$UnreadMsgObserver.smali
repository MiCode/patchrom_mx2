.class public Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnreadMsgObserver;
.super Landroid/database/ContentObserver;
.source "LockPasswordKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UnreadMsgObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;


# direct methods
.method public constructor <init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 974
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnreadMsgObserver;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    .line 975
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 976
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 987
    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    return v0
.end method

.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/16 v2, 0x65

    .line 980
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 981
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnreadMsgObserver;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mQueryHandler:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1700(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;->removeMessages(I)V

    .line 982
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnreadMsgObserver;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mQueryHandler:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1700(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnreadMsgObserver;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mQueryHandler:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1700(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 983
    return-void
.end method
