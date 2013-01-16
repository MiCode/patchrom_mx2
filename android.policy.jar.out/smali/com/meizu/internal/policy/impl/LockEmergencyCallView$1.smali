.class Lcom/meizu/internal/policy/impl/LockEmergencyCallView$1;
.super Landroid/telephony/PhoneStateListener;
.source "LockEmergencyCallView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/LockEmergencyCallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/LockEmergencyCallView;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$1;->this$0:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$1;->this$0:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    #getter for: Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mIsCalling:Z
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->access$100(Lcom/meizu/internal/policy/impl/LockEmergencyCallView;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$1;->this$0:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    const/4 v1, 0x0

    #setter for: Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mIsCalling:Z
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->access$102(Lcom/meizu/internal/policy/impl/LockEmergencyCallView;Z)Z

    .line 94
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$1;->this$0:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    #calls: Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->updateView()V
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->access$200(Lcom/meizu/internal/policy/impl/LockEmergencyCallView;)V

    .line 96
    :cond_0
    return-void
.end method
