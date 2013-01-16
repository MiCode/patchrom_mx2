.class Lcom/meizu/widget/RoundCornerContactBadge$2;
.super Ljava/lang/Object;
.source "RoundCornerContactBadge.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/RoundCornerContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/RoundCornerContactBadge;


# direct methods
.method constructor <init>(Lcom/meizu/widget/RoundCornerContactBadge;)V
    .locals 0
    .parameter

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/meizu/widget/RoundCornerContactBadge$2;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 1325
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge$2;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    #getter for: Lcom/meizu/widget/RoundCornerContactBadge;->mMakeCallAnim:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/meizu/widget/RoundCornerContactBadge;->access$900(Lcom/meizu/widget/RoundCornerContactBadge;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1326
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge$2;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    #setter for: Lcom/meizu/widget/RoundCornerContactBadge;->mMakeCallAnim:Landroid/view/animation/Animation;
    invoke-static {v0, v2}, Lcom/meizu/widget/RoundCornerContactBadge;->access$902(Lcom/meizu/widget/RoundCornerContactBadge;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 1327
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge$2;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    #getter for: Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/meizu/widget/RoundCornerContactBadge;->access$1100(Lcom/meizu/widget/RoundCornerContactBadge;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge$2;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    #getter for: Lcom/meizu/widget/RoundCornerContactBadge;->mCallIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/meizu/widget/RoundCornerContactBadge;->access$1000(Lcom/meizu/widget/RoundCornerContactBadge;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1328
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge$2;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    #setter for: Lcom/meizu/widget/RoundCornerContactBadge;->mCallIntent:Landroid/content/Intent;
    invoke-static {v0, v2}, Lcom/meizu/widget/RoundCornerContactBadge;->access$1002(Lcom/meizu/widget/RoundCornerContactBadge;Landroid/content/Intent;)Landroid/content/Intent;

    .line 1330
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge$2;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    new-instance v1, Lcom/meizu/widget/RoundCornerContactBadge$2$1;

    invoke-direct {v1, p0}, Lcom/meizu/widget/RoundCornerContactBadge$2$1;-><init>(Lcom/meizu/widget/RoundCornerContactBadge$2;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/widget/RoundCornerContactBadge;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1347
    :cond_0
    :goto_0
    return-void

    .line 1340
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge$2;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    #getter for: Lcom/meizu/widget/RoundCornerContactBadge;->mHangupCallAnim:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/meizu/widget/RoundCornerContactBadge;->access$1300(Lcom/meizu/widget/RoundCornerContactBadge;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1341
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge$2;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    #setter for: Lcom/meizu/widget/RoundCornerContactBadge;->mHangupCallAnim:Landroid/view/animation/Animation;
    invoke-static {v0, v2}, Lcom/meizu/widget/RoundCornerContactBadge;->access$1302(Lcom/meizu/widget/RoundCornerContactBadge;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 1342
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge$2;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    #getter for: Lcom/meizu/widget/RoundCornerContactBadge;->mAnimDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v0}, Lcom/meizu/widget/RoundCornerContactBadge;->access$1200(Lcom/meizu/widget/RoundCornerContactBadge;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1343
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge$2;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    #getter for: Lcom/meizu/widget/RoundCornerContactBadge;->mAnimDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v0}, Lcom/meizu/widget/RoundCornerContactBadge;->access$1200(Lcom/meizu/widget/RoundCornerContactBadge;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1344
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge$2;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    #setter for: Lcom/meizu/widget/RoundCornerContactBadge;->mAnimDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v0, v2}, Lcom/meizu/widget/RoundCornerContactBadge;->access$1202(Lcom/meizu/widget/RoundCornerContactBadge;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1321
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1315
    return-void
.end method
