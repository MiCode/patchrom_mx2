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
    .line 167
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 170
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 221
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 172
    :pswitch_1
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$500(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 175
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 176
    .local v2, ret:I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 177
    .local v3, which:I
    if-eq v2, v5, :cond_1

    if-ne v2, v7, :cond_2

    :cond_1
    move v1, v5

    .line 178
    .local v1, isScreenshotSuccess:Z
    :goto_1
    if-eqz v1, :cond_0

    .line 182
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #setter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mScreenshotFinish:Z
    invoke-static {v6, v5}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$602(Lcom/meizu/internal/policy/impl/ScreenshotHelper;Z)Z

    .line 183
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #setter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mIsNeedUpdateLauncherWallpaper:Z
    invoke-static {v5, v4}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$702(Lcom/meizu/internal/policy/impl/ScreenshotHelper;Z)Z

    .line 184
    if-nez v3, :cond_3

    .line 185
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$500(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 186
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$800(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsBitmapCopy:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$900(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/graphics/Bitmap;

    move-result-object v6

    #calls: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->copyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    invoke-static {v4, v5, v6}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$1000(Lcom/meizu/internal/policy/impl/ScreenshotHelper;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 188
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$500(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;->invalidateActivity()V

    goto :goto_0

    .end local v1           #isScreenshotSuccess:Z
    :cond_2
    move v1, v4

    .line 177
    goto :goto_1

    .line 190
    .restart local v1       #isScreenshotSuccess:Z
    :cond_3
    if-ne v3, v7, :cond_4

    .line 191
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$500(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 192
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$1100(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsBitmapCopy:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$1200(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/graphics/Bitmap;

    move-result-object v6

    #calls: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->copyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    invoke-static {v4, v5, v6}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$1000(Lcom/meizu/internal/policy/impl/ScreenshotHelper;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 194
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$500(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;->invalidateActivity()V

    goto :goto_0

    .line 196
    :cond_4
    if-ne v3, v8, :cond_0

    .line 197
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$500(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 198
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailShareBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$1300(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailBitmapCopy:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$1400(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/graphics/Bitmap;

    move-result-object v6

    #calls: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->copyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    invoke-static {v4, v5, v6}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$1000(Lcom/meizu/internal/policy/impl/ScreenshotHelper;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 200
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$500(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;->invalidateActivity()V

    goto/16 :goto_0

    .line 205
    .end local v1           #isScreenshotSuccess:Z
    .end local v2           #ret:I
    .end local v3           #which:I
    :pswitch_2
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$1500(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmapCopy:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$1600(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/graphics/Bitmap;

    move-result-object v6

    #calls: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->copyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    invoke-static {v4, v5, v6}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$1000(Lcom/meizu/internal/policy/impl/ScreenshotHelper;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 206
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$500(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;->invalidateStatusbar()V

    goto/16 :goto_0

    .line 209
    :pswitch_3
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mSystemReady:Z
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$1700(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 210
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 211
    .local v0, extra:Ljava/lang/String;
    invoke-static {}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$100()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 212
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    invoke-virtual {v4, v7}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->requestScreenshotAndNoUpdate(I)V

    goto/16 :goto_0

    .line 213
    :cond_5
    invoke-static {}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$300()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 214
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    invoke-virtual {v5, v4}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->requestScreenshotAndNoUpdate(I)V

    goto/16 :goto_0

    .line 215
    :cond_6
    invoke-static {}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$200()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 216
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    invoke-virtual {v4, v8}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->requestScreenshotAndNoUpdate(I)V

    goto/16 :goto_0

    .line 170
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
