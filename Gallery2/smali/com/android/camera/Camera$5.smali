.class Lcom/android/camera/Camera$5;
.super Landroid/telephony/PhoneStateListener;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 769
    iput-object p1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 772
    packed-switch p1, :pswitch_data_0

    .line 786
    :goto_0
    return-void

    .line 774
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0

    .line 778
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/Camera;->mIsCall_State_OffHook:Z
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$4402(Lcom/android/camera/Camera;Z)Z

    goto :goto_0

    .line 782
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/Camera;->mIsCall_State_OffHook:Z
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$4402(Lcom/android/camera/Camera;Z)Z

    goto :goto_0

    .line 772
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
