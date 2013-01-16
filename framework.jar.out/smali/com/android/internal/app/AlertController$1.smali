.class Lcom/android/internal/app/AlertController$1;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/AlertController;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AlertController;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 150
    const/4 v1, 0x0

    .line 151
    .local v1, m:Landroid/os/Message;
    const/4 v0, 0x1

    .line 152
    .local v0, dismiss:Z
    iget-object v2, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/internal/app/AlertController;->access$000(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v2}, Lcom/android/internal/app/AlertController;->access$100(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 153
    iget-object v2, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v2}, Lcom/android/internal/app/AlertController;->access$100(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 154
    iget-object v2, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mButtonPositiveDismiss:Z
    invoke-static {v2}, Lcom/android/internal/app/AlertController;->access$200(Lcom/android/internal/app/AlertController;)Z

    move-result v0

    .line 162
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 163
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 166
    :cond_1
    if-nez v0, :cond_4

    .line 173
    :goto_1
    return-void

    .line 155
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/internal/app/AlertController;->access$300(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v2}, Lcom/android/internal/app/AlertController;->access$400(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 156
    iget-object v2, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v2}, Lcom/android/internal/app/AlertController;->access$400(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 157
    iget-object v2, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mButtonNegativeDismiss:Z
    invoke-static {v2}, Lcom/android/internal/app/AlertController;->access$500(Lcom/android/internal/app/AlertController;)Z

    move-result v0

    goto :goto_0

    .line 158
    :cond_3
    iget-object v2, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/internal/app/AlertController;->access$600(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v2}, Lcom/android/internal/app/AlertController;->access$700(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v2}, Lcom/android/internal/app/AlertController;->access$700(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 160
    iget-object v2, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mButtonNeutralDismiss:Z
    invoke-static {v2}, Lcom/android/internal/app/AlertController;->access$800(Lcom/android/internal/app/AlertController;)Z

    move-result v0

    goto :goto_0

    .line 171
    :cond_4
    iget-object v2, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/app/AlertController;->access$1000(Lcom/android/internal/app/AlertController;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v4}, Lcom/android/internal/app/AlertController;->access$900(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method
