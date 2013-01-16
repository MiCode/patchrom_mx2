.class Lcom/meizu/internal/telephony/PhoneStateListenerEx$2;
.super Landroid/os/Handler;
.source "PhoneStateListenerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/telephony/PhoneStateListenerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/telephony/PhoneStateListenerEx;


# direct methods
.method constructor <init>(Lcom/meizu/internal/telephony/PhoneStateListenerEx;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/meizu/internal/telephony/PhoneStateListenerEx$2;->this$0:Lcom/meizu/internal/telephony/PhoneStateListenerEx;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, i:I
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 35
    :goto_0
    return-void

    .line 32
    :pswitch_0
    iget-object v2, p0, Lcom/meizu/internal/telephony/PhoneStateListenerEx$2;->this$0:Lcom/meizu/internal/telephony/PhoneStateListenerEx;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Lcom/meizu/internal/telephony/CallInfo;

    check-cast v1, [Lcom/meizu/internal/telephony/CallInfo;

    invoke-virtual {v2, v1}, Lcom/meizu/internal/telephony/PhoneStateListenerEx;->onPreciseCallStateChange([Lcom/meizu/internal/telephony/CallInfo;)V

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
