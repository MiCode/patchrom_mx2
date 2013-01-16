.class Lcom/meizu/internal/telephony/PhoneStateListenerEx$1;
.super Lcom/meizu/internal/telephony/IPhoneStateListenerEx$Stub;
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
    .line 18
    iput-object p1, p0, Lcom/meizu/internal/telephony/PhoneStateListenerEx$1;->this$0:Lcom/meizu/internal/telephony/PhoneStateListenerEx;

    invoke-direct {p0}, Lcom/meizu/internal/telephony/IPhoneStateListenerEx$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreciseCallStateChange([Lcom/meizu/internal/telephony/CallInfo;)V
    .locals 3
    .parameter "callInfoArray"

    .prologue
    const/4 v2, 0x0

    .line 20
    iget-object v0, p0, Lcom/meizu/internal/telephony/PhoneStateListenerEx$1;->this$0:Lcom/meizu/internal/telephony/PhoneStateListenerEx;

    iget-object v0, v0, Lcom/meizu/internal/telephony/PhoneStateListenerEx;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 21
    return-void
.end method
