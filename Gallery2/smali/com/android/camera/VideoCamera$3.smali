.class Lcom/android/camera/VideoCamera$3;
.super Landroid/telephony/PhoneStateListener;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/camera/VideoCamera$3;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 457
    packed-switch p1, :pswitch_data_0

    .line 463
    :goto_0
    return-void

    .line 459
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera$3;->this$0:Lcom/android/camera/VideoCamera;

    invoke-virtual {v0}, Lcom/android/camera/VideoCamera;->finish()V

    goto :goto_0

    .line 457
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
