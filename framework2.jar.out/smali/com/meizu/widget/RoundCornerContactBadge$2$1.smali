.class Lcom/meizu/widget/RoundCornerContactBadge$2$1;
.super Ljava/lang/Object;
.source "RoundCornerContactBadge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/widget/RoundCornerContactBadge$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/widget/RoundCornerContactBadge$2;


# direct methods
.method constructor <init>(Lcom/meizu/widget/RoundCornerContactBadge$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1330
    iput-object p1, p0, Lcom/meizu/widget/RoundCornerContactBadge$2$1;->this$1:Lcom/meizu/widget/RoundCornerContactBadge$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge$2$1;->this$1:Lcom/meizu/widget/RoundCornerContactBadge$2;

    iget-object v0, v0, Lcom/meizu/widget/RoundCornerContactBadge$2;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    #getter for: Lcom/meizu/widget/RoundCornerContactBadge;->mAnimDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v0}, Lcom/meizu/widget/RoundCornerContactBadge;->access$1200(Lcom/meizu/widget/RoundCornerContactBadge;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge$2$1;->this$1:Lcom/meizu/widget/RoundCornerContactBadge$2;

    iget-object v0, v0, Lcom/meizu/widget/RoundCornerContactBadge$2;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    #getter for: Lcom/meizu/widget/RoundCornerContactBadge;->mAnimDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v0}, Lcom/meizu/widget/RoundCornerContactBadge;->access$1200(Lcom/meizu/widget/RoundCornerContactBadge;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1335
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge$2$1;->this$1:Lcom/meizu/widget/RoundCornerContactBadge$2;

    iget-object v0, v0, Lcom/meizu/widget/RoundCornerContactBadge$2;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    const/4 v1, 0x0

    #setter for: Lcom/meizu/widget/RoundCornerContactBadge;->mAnimDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v0, v1}, Lcom/meizu/widget/RoundCornerContactBadge;->access$1202(Lcom/meizu/widget/RoundCornerContactBadge;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 1336
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge$2$1;->this$1:Lcom/meizu/widget/RoundCornerContactBadge$2;

    iget-object v0, v0, Lcom/meizu/widget/RoundCornerContactBadge$2;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    invoke-virtual {v0}, Lcom/meizu/widget/RoundCornerContactBadge;->invalidate()V

    .line 1338
    :cond_0
    return-void
.end method
