.class Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;
.super Landroid/os/Handler;
.source "ScreenshotHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/ScreenshotHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 173
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 212
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 175
    :pswitch_1
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$500(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 178
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 179
    .local v1, ret:I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 180
    .local v2, which:I
    if-eq v1, v4, :cond_1

    if-ne v1, v6, :cond_2

    :cond_1
    move v0, v4

    .line 181
    .local v0, isScreenshotSuccess:Z
    :goto_1
    if-eqz v0, :cond_0

    .line 185
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #setter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mScreenshotFinish:Z
    invoke-static {v5, v4}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$602(Lcom/meizu/internal/policy/impl/ScreenshotHelper;Z)Z

    .line 186
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #setter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mIsNeedUpdateLauncherWallpaper:Z
    invoke-static {v4, v3}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$702(Lcom/meizu/internal/policy/impl/ScreenshotHelper;Z)Z

    .line 187
    if-nez v2, :cond_3

    .line 188
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$500(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 189
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$800(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsBitmapCopy:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$900(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/graphics/Bitmap;

    move-result-object v5

    #calls: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->copyStatusbar(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    invoke-static {v3, v4, v5}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$1000(Lcom/meizu/internal/policy/impl/ScreenshotHelper;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 191
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$500(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;->invalidateActivity()V

    goto :goto_0

    .end local v0           #isScreenshotSuccess:Z
    :cond_2
    move v0, v3

    .line 180
    goto :goto_1

    .line 193
    .restart local v0       #isScreenshotSuccess:Z
    :cond_3
    if-ne v2, v6, :cond_4

    .line 194
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$500(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 195
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$1100(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsBitmapCopy:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$1200(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/graphics/Bitmap;

    move-result-object v5

    #calls: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->copyStatusbar(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    invoke-static {v3, v4, v5}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$1000(Lcom/meizu/internal/policy/impl/ScreenshotHelper;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 197
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$500(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;->invalidateActivity()V

    goto :goto_0

    .line 199
    :cond_4
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 200
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$500(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 201
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailShareBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$1300(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailBitmapCopy:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$1400(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/graphics/Bitmap;

    move-result-object v5

    #calls: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->copyStatusbar(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    invoke-static {v3, v4, v5}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$1000(Lcom/meizu/internal/policy/impl/ScreenshotHelper;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 203
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$500(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;->invalidateActivity()V

    goto/16 :goto_0

    .line 208
    .end local v0           #isScreenshotSuccess:Z
    .end local v1           #ret:I
    .end local v2           #which:I
    :pswitch_2
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$1500(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmapCopy:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$1600(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/graphics/Bitmap;

    move-result-object v5

    #calls: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->copyStatusbar(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    invoke-static {v3, v4, v5}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$1000(Lcom/meizu/internal/policy/impl/ScreenshotHelper;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 209
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$500(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;->invalidateStatusbar()V

    goto/16 :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
